create or replace package body xxsr_harmonization_records is
  function generateAuthCode return varchar2 IS
		  l_resp_clob clob;
          lv_status varchar2(4000);
          lv_msg varchar2(4000);
          lv_auth_key varchar2(4000);
	    begin
            APEX_WEB_SERVICE.g_request_headers.delete();
            APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
            APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
            APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
            APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
			APEX_WEB_SERVICE.g_request_headers(3).name := 'username';
            APEX_WEB_SERVICE.g_request_headers(3).value := p_username;
			APEX_WEB_SERVICE.g_request_headers(4).name := 'reference_key';
            APEX_WEB_SERVICE.g_request_headers(4).value := p_reference_key;
			DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = null');
            DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------------------------------');
		    l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/generate-keys?username='||p_username||'&reference_key='||p_reference_key||'',  
                                                              p_http_method => 'GET',
                                                              p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet'
                                                              --p_body => l_body_clob
                                                             );   
			DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob); 
            /* Parsing Webservice Response as JSON */
             if apex_web_service.g_status_code != 200 then
              lv_auth_key := ' status ' || apex_web_service.g_status_code;
            else
              apex_json.parse(l_resp_clob);   
            /* Get Data from Response */
            lv_status := apex_json.get_varchar2('status');
            lv_msg := apex_json.get_varchar2('message');
            lv_auth_key := apex_json.get_varchar2('data.authorization_key');
            /* Print Response */
            dbms_output.put_line('lv_status:- ' || lv_status);
            dbms_output.put_line('lv_msg:- ' || lv_msg);
			return lv_auth_key;
            end if;
            Exception when others then
                dbms_output.put_line(' status ' || apex_web_service.g_status_code);
  end generateAuthCode;
procedure uploadSoftsuiteMasterRecRest(p_month_code IN VARCHAR2) is  
    p_maxBatch number := 2;
    indx       pls_integer := 0;
    c_limit   CONSTANT PLS_INTEGER DEFAULT 5;
            cursor c_MasterRec is
                select 'softalliance' Soft_Alliance,
                a.PERSON_ID staff_id,
                a.PERSON_ID ippis_number,
                REGEXP_REPLACE(a.first_name, '[^a-zA-Z ]') first_name,
                nvl(a.sex, 'NA') gender,
                REGEXP_REPLACE(a.last_name, '[^a-zA-Z ]') surname,
                a.email_address email,
                a.state_of_origin,
                b.residence_State residential_state,
                b.residence_country residential_country,
                a.grade grade_name,
                a.grade grade_level,
                a.step grade_step,
                a.DATE_OF_BIRTH date_of_birth,          
                a.ORIGINAL_DATE_OF_HIRE date_of_hire,
                a.account_number account_number,
                a.mar_status marital_status,
                nvl(a.pfa_name, 'NA') pfa_name,
                nvl(a.pin_number, 0000000) pfa_pin,
                'NHF' nhf_number,
                a.sort_code,
                nvl(a.department, 'NA') department,
                a.residence_address residential_address,
                b.local_govt_Area residential_lga,
                b.local_govt_Area residential_city,
                a.SUB_ORGANIZATION mda,
                nvl(c.emp_duties, 'n/a') unit,
                a.job_title,
                'Payroll Name' payroll_name,
                'mother maiden name' mother_maiden_name,
                LGA_OF_ORIGIN lga_of_origin,
                'town of birth' home_town,
                'Section' Section, 
                a.FULL_BANK_NAME bank_name,
                nvl(a.TELEPHONE_NUMBER_1, 'NA') mobile_phone, 
                c.bank_branch,
                'tax_state' tax_state,
                a.bank_code,
                CASE
                     WHEN ADD_MONTHS (b.effective_start_date, 420) >
                          ADD_MONTHS (b.birth_Date, 720)
                     THEN
                          to_char(ADD_MONTHS (b.birth_Date, 720),'DD-Mon-YYYY')
                     ELSE
                          to_char(ADD_MONTHS (b.effective_start_date, 420),'DD-Mon-YYYY')
                END expected_date_of_retirement,
                a.ASSIGNMENT_STATUS  employment_status,
                a.job_title cadre,
                b.nationality,
                'rank' rank
        from XXHRMS.XXHRMS_MASTER_ALL a,  xxhrms.xxhrms_people b, xxhrms.xxhrms_assignments c
        where a.person_id = b.person_id
        and a.person_id = c.staff_id
        and rownum <= 5
        --and b.company_code =39
       -- and  a.SUB_ORGANIZATION_CODE = p_mda
        and   c.staff_id in (select staff_id from xxpay.xxpay_archive_pay_processing where paymonth_code = p_month_code)
        order by a.SUB_ORGANIZATION;
	   cursor c_Finacial_Record(p_employee_number IN VARCHAR2) is
		SELECT
            c.name element_name,
            c.element_category element_type,
            round(b.netpay, 2) amount,
            decode(c.PROCCESSING_TYPE, 'Closed', 'Yes', 'Open', 'No') statutory,
            decode(classification, 'EARNING', 'E', 'VOLUNTARY DEDUCTION', 'D') type,
            s_date period_start_Date,
            e_date period_end_Date
        FROM xxhrms.xxhrms_benefits a,
            xxpay.xxpay_archive_pay_processing b,
            xxhrms.xxhrms_elements c
        WHERE a.company_code = b.company_code
        AND a.staff_id = b.staff_id
        AND a.paymonth_code = b.paymonth_code
        AND a.payrun = b.payrun
        AND a.element_code = c.element_id
		AND b.staff_id = p_employee_number
		AND b.paymonth_code = p_month_code;
       TYPE master_rec IS TABLE OF c_MasterRec%rowtype INDEX BY BINARY_INTEGER;
       l_master         master_rec;
	   TYPE finacial_record IS TABLE OF c_Finacial_Record%rowtype INDEX BY BINARY_INTEGER;
       f_master         finacial_record;
       procedure uploadMasterService (l_body_clob clob) is
          l_resp_clob clob;
          lv_status varchar2(4000);
          lv_msg varchar2(4000);
          lv_batch_id varchar2(4000);
       begin
            Begin
                select generateAuthCode 
                into p_auth_key 
                from dual;        
            exception
                when no_Data_found then
                dbms_output.put_line('authorization key not found');
            end;
            
            DBMS_OUTPUT.ENABLE (buffer_size => NULL); 
            
            APEX_WEB_SERVICE.g_request_headers.delete();
            APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
            APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
            APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
            APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
            APEX_WEB_SERVICE.g_request_headers(3).name := 'Authorization';
            APEX_WEB_SERVICE.g_request_headers(3).value := p_auth_key;
            APEX_WEB_SERVICE.g_request_headers(4).name := 'Signature';
            APEX_WEB_SERVICE.g_request_headers(4).value := lower(p_signature);
            DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = ' || p_auth_key || ' : p_signature = ' || lower(p_signature));
            -- DBMS_OUTPUT.PUT_LINE('b4 calling service l_body_clob = ' || l_body_clob);
            DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------------------------------');
            l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/master-record-uploads',  
                                                              p_http_method => 'POST',
                                                            --  p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet',
                                                              p_body => l_body_clob
                                                             );   
            --DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob);                                                  
            /* Parsing Webservice Response as JSON */
            if apex_web_service.g_status_code != 200 then
              dbms_output.put_line(' status ' || apex_web_service.g_status_code);
             -- dbms_output.put_line(l_resp_clob);
            else
              apex_json.parse(l_resp_clob);   
            /* Get Data from Response */
            lv_status := apex_json.get_varchar2('status');
            lv_msg := apex_json.get_varchar2('message');
            lv_batch_id := apex_json.get_varchar2('data.batch_id');
            /* Print Response */
            dbms_output.put_line('lv_status:- ' || lv_status);
            dbms_output.put_line('lv_msg:- ' || lv_msg);
            dbms_output.put_line('lv_batch_id:- ' || lv_batch_id);
            INSERT INTO xx_harmonization_master_clob (body, resp, process_dt, batch_id, validated, paymonth, error) VALUES (l_body_clob, l_resp_clob, SYSDATE, lv_batch_id , 'N', p_month_code, null);
            commit;
           end if;
       Exception 
        when others then 
             dbms_output.put_line(' status ' || apex_web_service.g_status_code);
       end;       
  begin
    dbms_output.put_line('signature meth is: ' || p_signmeth);
    dbms_output.put_line('signature: ' || lower(p_signature));
    -- return;
 open c_MasterRec;
   loop
     fetch c_MasterRec bulk collect into l_master limit c_limit;
     exit when l_master.count = 0;
     --
     APEX_JSON.initialize_clob_output;
     APEX_JSON.open_object; -- {
     APEX_JSON.open_array('request'); -- request {
      for i in 1 .. l_master.count
      loop
            APEX_JSON.open_object; -- {\
            APEX_JSON.write('data_source', l_master(i).Soft_Alliance);
			APEX_JSON.write('staff_id', l_master(i).staff_id);
            APEX_JSON.write('ippis_number', l_master(i).ippis_number);
			APEX_JSON.write('first_name', l_master(i).first_name);
			APEX_JSON.write('gender', l_master(i).gender);
			APEX_JSON.write('surname', l_master(i).surname);
			APEX_JSON.write('email_address', l_master(i).email);
			APEX_JSON.write('state_of_origin', l_master(i).state_of_origin);
			APEX_JSON.write('residential_country', l_master(i).residential_country);
            APEX_JSON.write('residential_state', l_master(i).residential_state);
            APEX_JSON.write('grade_name', l_master(i).grade_name);
            APEX_JSON.write('grade_level', l_master(i).grade_level);
            APEX_JSON.write('grade_step', l_master(i).grade_step);
			APEX_JSON.write('date_of_birth', l_master(i).date_of_birth);
            APEX_JSON.write('date_of_hire', l_master(i).date_of_hire);
			APEX_JSON.write('account_number', l_master(i).account_number);
			APEX_JSON.write('marital_status', l_master(i).marital_status);
			APEX_JSON.write('pfa_name', l_master(i).pfa_name);
            APEX_JSON.write('pfa_pin', l_master(i).pfa_pin);
			APEX_JSON.write('nhf_number', l_master(i).nhf_number);
			APEX_JSON.write('sort_code', l_master(i).sort_code);
			APEX_JSON.write('department', l_master(i).department);
			APEX_JSON.write('residential_address', l_master(i).residential_address);
			APEX_JSON.write('residential_lga', l_master(i).residential_lga);
            APEX_JSON.write('residential_city', l_master(i).residential_city);
			APEX_JSON.write('mda', l_master(i).mda);
			APEX_JSON.write('payroll_name', l_master(i).payroll_name);
			APEX_JSON.write('expected_date_of_retirement', l_master(i).expected_date_of_retirement);
			APEX_JSON.write('maiden_name', l_master(i).mother_maiden_name);
			APEX_JSON.write('lga_of_origin', nvl(l_master(i).lga_of_origin,'N/A'));
            APEX_JSON.write('home_town', l_master(i).home_town);
			APEX_JSON.write('section', l_master(i).section);
			APEX_JSON.write('job_title', l_master(i).job_title);
			APEX_JSON.write('bank_name', l_master(i).bank_name);
			APEX_JSON.write('mobile_number', l_master(i).mobile_phone);  
			APEX_JSON.write('bank_branch', l_master(i).bank_branch);
			APEX_JSON.write('tax_state', l_master(i).tax_state);
			APEX_JSON.write('bank_code', l_master(i).bank_code);
			APEX_JSON.write('employment_status', l_master(i).employment_status);
			APEX_JSON.write('cadre', l_master(i).cadre);
			APEX_JSON.write('unit', l_master(i).unit);
			APEX_JSON.write('nationality', l_master(i).nationality);
			APEX_JSON.write('rank', l_master(i).rank);
				open c_Finacial_Record (l_master(i).ippis_number);  -- open financial record
                    APEX_JSON.open_array('financials');  --[
				loop
					fetch c_Finacial_Record bulk collect into f_master limit c_limit;
					exit when f_master.count = 0;
					for i in 1 .. f_master.count
					loop
                    APEX_JSON.open_object; --{
						APEX_JSON.write('element_name', f_master(i).element_name);
						APEX_JSON.write('element_type', f_master(i).element_type);
						APEX_JSON.write('amount', f_master(i).amount);
						APEX_JSON.write('statutory', f_master(i).statutory);
					    APEX_JSON.write('type', f_master(i).type);
						APEX_JSON.write('period_start_date', f_master(i).period_start_date);
						APEX_JSON.write('period_end_date', f_master(i).period_end_date);
                     APEX_JSON.close_object; --}
                    end loop;
				end loop;
                    APEX_JSON.close_array; -- ]
                close c_Finacial_Record;  -- close financial record
            APEX_JSON.close_object; -- } 
            -- increment index
            indx := indx + 1;
            
      end loop;
      APEX_JSON.close_array; -- } request
      APEX_JSON.close_object; -- }   
      --DBMS_OUTPUT.put_line(APEX_JSON.get_clob_output);
      -- call rest service here
     --if indx = p_maxBatch then
	     DBMS_OUTPUT.put_line(APEX_JSON.get_clob_output);
         uploadMasterService(APEX_JSON.get_clob_output);
     --end if;
      -- ends
      -- reset index
      indx := 0;
      APEX_JSON.free_output;
      --APEX_JSON.free_output;
   end loop;
   close c_MasterRec;    
  end uploadSoftsuiteMasterRecRest;
procedure stageSoftsuiteMasterRecRest is
cursor cStageRec is
select batch_id from xx_harmonization_master_clob 
where nvl(validated,'N') = 'N'
and batch_id is not null
--and batch_id = '6036'
;
l_resp_clob clob;
lv_err varchar2(4000);
lv_err_msg varchar2(4000);
begin
    --Get authorization key
    Begin
       select generateAuthCode 
       into p_auth_key 
       from dual;        
    exception
       when no_Data_found then
           dbms_output.put_line('authorization key not found');
    end;
    APEX_WEB_SERVICE.g_request_headers.delete();
    APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
    APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
    APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(3).name := 'Authorization';
    APEX_WEB_SERVICE.g_request_headers(3).value := p_auth_key;
    APEX_WEB_SERVICE.g_request_headers(4).name := 'Signature';
    APEX_WEB_SERVICE.g_request_headers(4).value := lower(p_signature);
    for i in cStageRec loop
            DBMS_OUTPUT.PUT_LINE(i.batch_id);
            DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = ' || p_auth_key || ' : p_signature = ' || lower(p_signature));
            l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/master-record-uploads/stagings/'||i.batch_id,  
                                                              p_http_method => 'GET',
                                                              p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet'
                                                             );   
            DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob);                                                  
            /* Parsing Webservice Response as JSON */
            apex_json.parse(l_resp_clob);
            /* transverse through Response for failed entries*/
          IF apex_json.does_exist('data') then
            for e in 1 .. apex_json.get_count('data') loop
                if apex_json.get_varchar2('data[%d].status', e) = 'false' then
                  lv_err    := apex_json.get_varchar2('data[%d].status', e);
                  lv_err_msg := apex_json.get_varchar2('data[%d].message', e);
                  exit;
                end if;
            end loop;
          end if;
            -- F: Failed; S: Staged Successfully; P: Processed Successfully
            if apex_json.get_count('data') = 0 or lv_err = 'false' then
               update xx_harmonization_master_clob set validated = 'F', error=lv_err_msg where batch_id = i.batch_id;
            else
              update xx_harmonization_master_clob set validated = 'S' where batch_id = i.batch_id;
            end if;
    end loop;
end stageSoftsuiteMasterRecRest;
procedure processSoftsuiteMasterRecRest is
cursor cProcessRec is
select batch_id from xx_harmonization_master_clob 
where nvl(validated,'N') = 'S' -- 'S' 
and batch_id is not null
--and batch_id = 6036
;
l_resp_clob clob;
begin
        --Get authorization key
    Begin
       select generateAuthCode 
       into p_auth_key 
       from dual;        
    exception
       when no_Data_found then
           dbms_output.put_line('authorization key not found');
    end;
    APEX_WEB_SERVICE.g_request_headers.delete();
    APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
    APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
    APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(3).name := 'Authorization';
    APEX_WEB_SERVICE.g_request_headers(3).value := p_auth_key;
    APEX_WEB_SERVICE.g_request_headers(4).name := 'Signature';
    APEX_WEB_SERVICE.g_request_headers(4).value := lower(p_signature);
    for i in cProcessRec loop
            DBMS_OUTPUT.PUT_LINE(i.batch_id);
            DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = ' || p_auth_key || ' : p_signature = ' || lower(p_signature));
            l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/master-record-uploads/process/'||i.batch_id,  
                                                              p_http_method => 'GET',
                                                              p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet'
                                                             );   
            DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob);                                                  
            /* Parsing Webservice Response as JSON */
            apex_json.parse(l_resp_clob);
            /* update only processed records. F: Failed; S: Staged Successfully; P: Processed Successfully */
            if apex_json.get_boolean('status') then
               update xx_harmonization_master_clob set validated = 'P' where batch_id = i.batch_id;
            end if;
    end loop;
end processSoftsuiteMasterRecRest;
procedure uploadSoftsuiteHistRecRest(p_month_code IN VARCHAR2, p_mda IN VARCHAR2) is
    p_maxBatch number := 50;
    indx       pls_integer := 0;
    c_limit   CONSTANT PLS_INTEGER DEFAULT 5;
    cursor c_HistoricalRec is
            select        'reference_id' reference_id,
                          'softalliance' Soft_Alliance,
                          a.PERSON_ID staff_id,
                          a.PERSON_ID ippis_number,
                          a.first_name,
                          nvl(a.sex, 'NA') gender,
                          a.last_name surname,
                          a.email email,
                          a.state_of_origin,
                          a.residence_State residential_state,
                          a.residence_country residential_country,
                          'grade_level' grade_level,
                          g.GRADE grade_name, 
                          'grade step' grade_step,
                          a.birth_Date date_of_birth,          
                          c.hire_Date date_of_hire,
                          c.acc_no account_number,
                          a.marital_status,
                          d.pfa_name,
                          c.pin_no pfa_pin,
                          'NHF' nhf_number,
                          z.sort_code,
                          nvl(d.NAME, 'NA') department,
                          a.residence_address residential_address,
                          a.local_govt_Area residential_lga,
                          a.local_govt_Area residential_city,
                          s.NAME mda,
                          'unit' unit,
                          NVL(SUBSTR (j.name, 1, 50), 'N/A') job_title,
                          'Payroll Name' payroll_name,
                          CASE
                               WHEN ADD_MONTHS (c.effective_start_date, 420) >
                                      ADD_MONTHS (a.birth_Date, 720)
                               THEN
                                  to_char(ADD_MONTHS (a.birth_Date, 720),'DD-Mon-YYYY')
                               ELSE
                                  to_char(ADD_MONTHS (c.effective_start_date, 420),'DD-Mon-YYYY')
                            END expected_date_of_retirement,
                        'mother maiden name' mother_maiden_name,
                        l.description lga_of_origin,
                        'town of birth' home_town,
                        'Section' Section, 
                        z.bank_name,
                        sysdate payroll_date,
                        nvl(a.TELEPHONE1, 'NA') mobile_phone, 
                        c.bank_branch,
                        'tax state' tax_state,
                        z.bank_code,
                        c.ASSIGNMENT_STATUS employment_status,
                        c.job_id cadre,
                        c.emp_duties units,
                        a.nationality,
                        'rank' rank
            from xxhrms.xxhrms_people a,
                 xxhrms.xxhrms_titles b,
                 xxhrms.xxhrms_Assignments c,
                 xxhrms.xxhrms_grades g,
                 xxhrms.xxhrms_pfa_Admin d,
                 xxhrms.xxhrms_banks z,
                 xxhrms.xxhrms_department d,
                 xxhrms.xxhrms_sub_organization s,
                 xxhrms.xxhrms_local_govt_codes l,
                 xxhrms.XXHRMS_JOBS j
            where a.title = b.title_code
            and   a.person_id = c.staff_id
            and   c.grade = g.id(+)
            and   d.pfadmin_id = c.pfa_admins
            and   c.bank_name = z.bank_code(+)
            and   c.dept_code = d.dept_id(+)
            AND   c.sub_organization_code = s.code(+)
            AND   a.local_govt_area = l.local_govt_code(+)
            AND   c.job_id = j.job_id(+)
            and rownum <= 50
            and   c.staff_id in (select staff_id from xxpay.xxpay_archive_pay_processing where paymonth_code = p_month_code)
            and  s.CODE = p_mda;
	   cursor c_Finacial_Record(p_employee_number IN VARCHAR2, p_month_code IN VARCHAR2) is
		SELECT
            c.name element_name,
            c.element_category element_type,
            round(b.netpay, 2) amount,
            'yes' statutory,
            decode(classification, 'EARNING', 'E', 'VOLUNTARY DEDUCTION', 'D') type,
            s_date period_start_Date,
            e_date period_end_Date
        FROM xxhrms.xxhrms_benefits a,
            xxpay.xxpay_archive_pay_processing b,
            xxhrms.xxhrms_elements c
        WHERE a.company_code = b.company_code
        AND a.staff_id = b.staff_id
        AND a.paymonth_code = b.paymonth_code
        AND a.payrun = b.payrun
        AND a.element_code = c.element_id
		AND b.staff_id = p_employee_number
		AND b.paymonth_code = p_month_code;
       TYPE hist_rec IS TABLE OF c_HistoricalRec%rowtype INDEX BY BINARY_INTEGER;
       l_historical         hist_rec;
	   TYPE finacial_record IS TABLE OF c_Finacial_Record%rowtype INDEX BY BINARY_INTEGER;
       f_historical         finacial_record;
       procedure uploadHistoricalService (l_body_clob clob) is
          l_resp_clob clob;
          lv_status varchar2(4000);
          lv_msg varchar2(4000);
          lv_batch_id varchar2(4000);
       begin
         --Get authorization key
        Begin
           select generateAuthCode 
           into p_auth_key 
           from dual;        
        exception
           when no_Data_found then
               dbms_output.put_line('authorization key not found');
        end;
        
        DBMS_OUTPUT.ENABLE (buffer_size => NULL); 
        
            APEX_WEB_SERVICE.g_request_headers.delete();
            APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
            APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
            APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
            APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
            APEX_WEB_SERVICE.g_request_headers(3).name := 'Authorization';
            APEX_WEB_SERVICE.g_request_headers(3).value := p_auth_key;
            APEX_WEB_SERVICE.g_request_headers(4).name := 'Signature';
            APEX_WEB_SERVICE.g_request_headers(4).value := lower(p_signature);
            DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = ' || p_auth_key || ' : p_signature = ' || lower(p_signature));
            -- DBMS_OUTPUT.PUT_LINE('b4 calling service l_body_clob = ' || l_body_clob);
            DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------------------------------');
            l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/historical-record-uploads',  
                                                              p_http_method => 'POST',
                                                              p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet',
                                                              p_body => l_body_clob
                                                             );   
            DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob);                                                  
            /* Parsing Webservice Response as JSON */
            if apex_web_service.g_status_code != 200 then
                dbms_output.put_line(' status ' || apex_web_service.g_status_code);
                dbms_output.put_line(l_resp_clob);
            else
                apex_json.parse(l_resp_clob);
                /* Get Data from Response */
                lv_status := apex_json.get_varchar2('status');
                lv_msg := apex_json.get_varchar2('message');
                lv_batch_id := apex_json.get_varchar2('data.batch_id');
                /* Print Response */
                dbms_output.put_line('lv_status:- ' || lv_status);
                dbms_output.put_line('lv_msg:- ' || lv_msg);
                dbms_output.put_line('lv_batch_id:- ' || lv_batch_id);
                INSERT INTO xx_harmonization_hist_clob (body, resp, process_dt, batch_id, validated, paymonth) VALUES (l_body_clob, l_resp_clob, SYSDATE, lv_batch_id , 'N', p_month_code);
                commit;
            end if;
        Exception 
            when others then
                dbms_output.put_line(' status ' || apex_web_service.g_status_code);
       end;       
  begin
    dbms_output.put_line('signature meth is: ' || p_signmeth);
    dbms_output.put_line('signature: ' || lower(p_signature));
    -- return;
 open c_HistoricalRec;
   loop
     fetch c_HistoricalRec bulk collect into l_historical limit c_limit;
     exit when l_historical.count = 0;
     --
     APEX_JSON.initialize_clob_output;
     APEX_JSON.open_object; -- {
     APEX_JSON.open_array('request'); -- request {
      for i in 1 .. l_historical.count
      loop
            APEX_JSON.open_object; -- {\
			APEX_JSON.write('reference_id', l_historical(i).reference_id);
            APEX_JSON.write('data_source', l_historical(i).Soft_Alliance);
			APEX_JSON.write('staff_id', l_historical(i).staff_id);
            APEX_JSON.write('ippis_number', l_historical(i).ippis_number);
			APEX_JSON.write('employee_first_name', l_historical(i).first_name);
			APEX_JSON.write('gender', l_historical(i).gender);
			APEX_JSON.write('employee_surname', l_historical(i).surname);
			APEX_JSON.write('employee_email_address', l_historical(i).email);
			APEX_JSON.write('state_of_origin', l_historical(i).state_of_origin);
			APEX_JSON.write('residential_state', l_historical(i).residential_state);
			APEX_JSON.write('residential_country', l_historical(i).residential_country);
            APEX_JSON.write('grade_name', l_historical(i).grade_name);
            APEX_JSON.write('grade_level', l_historical(i).grade_level);
            APEX_JSON.write('grade_step', l_historical(i).grade_step);
			APEX_JSON.write('date_of_hire', l_historical(i).date_of_hire);
			APEX_JSON.write('date_of_birth', l_historical(i).date_of_birth);
			APEX_JSON.write('account_number', l_historical(i).account_number);
			APEX_JSON.write('marital_status', l_historical(i).marital_status);
			APEX_JSON.write('pfa_name', l_historical(i).pfa_name);
            APEX_JSON.write('pfa_pin', l_historical(i).pfa_pin);
			APEX_JSON.write('nhf_number', l_historical(i).nhf_number);
			APEX_JSON.write('sort_code', l_historical(i).sort_code);
			APEX_JSON.write('department', l_historical(i).department);
			APEX_JSON.write('mda', l_historical(i).mda);
			APEX_JSON.write('payroll_name', l_historical(i).payroll_name);
			APEX_JSON.write('payroll_date', l_historical(i).payroll_date);
			APEX_JSON.write('section', l_historical(i).section);
			APEX_JSON.write('job_title', l_historical(i).job_title);
			APEX_JSON.write('bank_name', l_historical(i).bank_name);
			APEX_JSON.write('mobile_number', l_historical(i).mobile_phone);  
			APEX_JSON.write('bank_branch', l_historical(i).bank_branch);
			APEX_JSON.write('tax_state', l_historical(i).tax_state);
			APEX_JSON.write('bank_code', l_historical(i).bank_code);
			APEX_JSON.write('employment_status', l_historical(i).employment_status);
			APEX_JSON.write('rank', l_historical(i).rank);
				open c_Finacial_Record (l_historical(i).ippis_number, p_month_code);  -- open financial record
                    APEX_JSON.open_array('financials');  --[
				loop
					fetch c_Finacial_Record bulk collect into f_historical limit c_limit;
					exit when f_historical.count = 0;
					for i in 1 .. f_historical.count
					loop
                    APEX_JSON.open_object; --{
						APEX_JSON.write('element_name', f_historical(i).element_name);
						APEX_JSON.write('element_type', f_historical(i).element_type);
						APEX_JSON.write('amount', f_historical(i).amount);
						APEX_JSON.write('statutory', f_historical(i).statutory);
					    APEX_JSON.write('type', f_historical(i).type);
						APEX_JSON.write('period_start_date', f_historical(i).period_start_date);
						APEX_JSON.write('period_end_date', f_historical(i).period_end_date);
                     APEX_JSON.close_object; --}
                    end loop;
				end loop;
                    APEX_JSON.close_array; -- ]
                close c_Finacial_Record;  -- close financial record
            APEX_JSON.close_object; -- } 
            -- increment index
            indx := indx + 1;
      end loop;
      APEX_JSON.close_array; -- } request
      APEX_JSON.close_object; -- }   
      DBMS_OUTPUT.put_line(APEX_JSON.get_clob_output);
      -- call rest service here
       uploadHistoricalService(APEX_JSON.get_clob_output);
      -- ends
      -- reset index
      indx := 0;
      APEX_JSON.free_output;
      --APEX_JSON.free_output;
   end loop;
   close c_HistoricalRec;    
  end uploadSoftsuiteHistRecRest;
procedure stageSoftsuiteHistRecRest is
cursor cStageRec is
select batch_id from xx_harmonization_hist_clob 
where nvl(validated,'N') in ('N','F')
and batch_id is not null
--and batch_id = 2791
;
l_resp_clob clob;
lv_err varchar2(4000);
lv_err_msg varchar2(4000);
begin
  --Get authorization key
    Begin
       select generateAuthCode 
       into p_auth_key 
       from dual;        
    exception
       when no_Data_found then
           dbms_output.put_line('authorization key not found');
    end;
    APEX_WEB_SERVICE.g_request_headers.delete();
    APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
    APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
    APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(3).name := 'Authorization';
    APEX_WEB_SERVICE.g_request_headers(3).value := p_auth_key;
    APEX_WEB_SERVICE.g_request_headers(4).name := 'Signature';
    APEX_WEB_SERVICE.g_request_headers(4).value := lower(p_signature);
    for i in cStageRec loop
            DBMS_OUTPUT.PUT_LINE(i.batch_id);
            DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = ' || p_auth_key || ' : p_signature = ' || lower(p_signature));
            l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/historical-record-uploads/stagings/'||i.batch_id,  
                                                              p_http_method => 'GET',
                                                              p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet'
                                                             );   
            DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob);                                                  
            /* Parsing Webservice Response as JSON */
            apex_json.parse(l_resp_clob);
            /* transverse through Response for failed entries*/
          IF apex_json.does_exist('data') then
            for e in 1 .. apex_json.get_count('data') loop
                if apex_json.get_varchar2('data[%d].status', e) = 'false' then
                  lv_err    := apex_json.get_varchar2('data[%d].status', e);
                  lv_err_msg := apex_json.get_varchar2('data[%d].message', e);
                  exit;
                end if;
            end loop;
          end if;
            -- F: Failed; S: Staged Successfully; P: Processed Successfully
        if apex_json.get_count('data') = 0 or lv_err = 'false' then
               update xx_harmonization_hist_clob set validated = 'F' where batch_id = i.batch_id;
            else
              update xx_harmonization_hist_clob set validated = 'S' where batch_id = i.batch_id;
            end if;
    end loop;
end stageSoftsuiteHistRecRest;
procedure processSoftsuiteHistRecRest is
cursor cProcessRec is
select batch_id from xx_harmonization_hist_clob 
where nvl(validated,'N') = 'S' -- 'S' 
and batch_id is not null
--and batch_id = 6792
;
l_resp_clob clob;
begin
  --Get authorization key
    Begin
       select generateAuthCode 
       into p_auth_key 
       from dual;        
    exception
       when no_Data_found then
           dbms_output.put_line('authorization key not found');
    end;
    APEX_WEB_SERVICE.g_request_headers.delete();
    APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
    APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
    APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(3).name := 'Authorization';
    APEX_WEB_SERVICE.g_request_headers(3).value := p_auth_key;
    APEX_WEB_SERVICE.g_request_headers(4).name := 'Signature';
    APEX_WEB_SERVICE.g_request_headers(4).value := lower(p_signature);
    for i in cProcessRec loop
            DBMS_OUTPUT.PUT_LINE(i.batch_id);
            DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = ' || p_auth_key || ' : p_signature = ' || lower(p_signature));
            l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/historical-record-uploads/process/'||i.batch_id,  
                                                              p_http_method => 'GET',
                                                              p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet'
                                                             );   
            DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob);                                                  
            /* Parsing Webservice Response as JSON */
            apex_json.parse(l_resp_clob);
            /* update only processed records. F: Failed; S: Staged Successfully; P: Processed Successfully */
            if apex_json.get_boolean('status') then
               update xx_harmonization_hist_clob set validated = 'P' where batch_id = i.batch_id;
            end if;
    end loop;
end processSoftsuiteHistRecRest;
procedure runAllProcesses is
p_month varchar2(20);
p_mda varchar2(300);
cursor get_month is 
select '202301' --to_Char(sysdate, 'yyyymm') 
from dual;
-- cursor get_mda is 
-- select distinct code
-- from xxhrms.xxhrms_sub_organization
-- where upper(name)  = 'FEDERAL COLLEGE OF EDUCATION (TECHNICAL) OMOKU';
Begin
    open get_month;
    fetch get_month into p_month;
    close get_month;
    
    uploadSoftsuiteMasterRecRest(p_month);
    stageSoftsuiteMasterRecRest;
    processSoftsuiteMasterRecRest;
    runSoftsuiteMasterRecBatchlog;
            --process historical record
            /*uploadSoftsuiteHistRecRest(p_month, p_mda);
            stageSoftsuiteHistRecRest;
            processSoftsuiteHistRecRest;
            runSoftsuiteHistRecBatchlog;*/
    -- apps.XXSR_HARMONIZATION_RECORDS.runAllProcesses@APPS_IPPISTST;
     
end runAllProcesses;
 
procedure runSoftsuiteMasterRecBatchlog is
cursor cStageRec is
select batch_id from xx_harmonization_master_clob 
where nvl(validated,'N') = 'S'
and batch_id is not null
--and batch_id = 2791
;
l_resp_clob clob;
lv_err varchar2(4000);
lv_err_msg clob;
begin
    --Get authorization key
    DBMS_OUTPUT.ENABLE(500000);
    Begin
       select generateAuthCode 
       into p_auth_key 
       from dual;        
    exception
       when no_Data_found then
           dbms_output.put_line('authorization key not found');
    end;
    APEX_WEB_SERVICE.g_request_headers.delete();
    APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
    APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
    APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(3).name := 'Authorization';
    APEX_WEB_SERVICE.g_request_headers(3).value := p_auth_key;
    APEX_WEB_SERVICE.g_request_headers(4).name := 'Signature';
    APEX_WEB_SERVICE.g_request_headers(4).value := lower(p_signature);
    for i in cStageRec loop
          --  DBMS_OUTPUT.PUT_LINE(i.batch_id);
           -- DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = ' || p_auth_key || ' : p_signature = ' || lower(p_signature));
            l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/master-records/'||i.batch_id||'/logs',  
                                                              p_http_method => 'GET',
                                                              p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet'
                                                             );   
            --DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob);                                                  
            /* Parsing Webservice Response as JSON */
            apex_json.parse(l_resp_clob);
            /* transverse through Response for failed entries*/
                if apex_json.get_varchar2('status') = 'true' then
                  lv_err_msg := apex_json.get_varchar2('data.logs');
                        update xx_harmonization_master_clob
                        set error = lv_err_msg
                        where batch_id = i.batch_id;
                end if;
    end loop;
end runSoftsuiteMasterRecBatchlog;
procedure runSoftsuiteHistRecBatchlog is
cursor cStageRec is
select batch_id from xx_harmonization_hist_clob 
where nvl(validated,'N') = 'S'
and batch_id is not null
--and batch_id = 2791
;
l_resp_clob clob;
lv_err varchar2(4000);
lv_err_msg clob;
begin
    --Get authorization key
    DBMS_OUTPUT.ENABLE(500000);
    Begin
       select generateAuthCode 
       into p_auth_key 
       from dual;        
    exception
       when no_Data_found then
           dbms_output.put_line('authorization key not found');
    end;
    APEX_WEB_SERVICE.g_request_headers.delete();
    APEX_WEB_SERVICE.g_request_headers(1).name := 'Accept';
    APEX_WEB_SERVICE.g_request_headers(1).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(2).name := 'Content-Type';
    APEX_WEB_SERVICE.g_request_headers(2).value := 'application/json';
    APEX_WEB_SERVICE.g_request_headers(3).name := 'Authorization';
    APEX_WEB_SERVICE.g_request_headers(3).value := p_auth_key;
    APEX_WEB_SERVICE.g_request_headers(4).name := 'Signature';
    APEX_WEB_SERVICE.g_request_headers(4).value := lower(p_signature);
    for i in cStageRec loop
          --  DBMS_OUTPUT.PUT_LINE(i.batch_id);
           -- DBMS_OUTPUT.PUT_LINE('b4 calling service p_auth_key = ' || p_auth_key || ' : p_signature = ' || lower(p_signature));
            l_resp_clob := apex_web_service.make_rest_request(
                                                              p_url => 'http://ippis-harmonize.service.softalliance.local/ssl.ippisharmonization.com/api/master-records/'||i.batch_id||'/logs',  
                                                              p_http_method => 'GET',
                                                              p_wallet_path => 'file:///d01/app/oracle/product/11.2.0/dbhome_1/https_wallet'
                                                             );   
            --DBMS_OUTPUT.PUT_LINE('l_resp_clob = ' || l_resp_clob);                                                  
            /* Parsing Webservice Response as JSON */
            apex_json.parse(l_resp_clob);
            /* transverse through Response for failed entries*/
                if apex_json.get_varchar2('status') = 'true' then
                  lv_err_msg := apex_json.get_varchar2('data.logs');
                        update xx_harmonization_hist_clob
                        set error = substr(lv_err_msg, 1, 3000)
                        where batch_id = i.batch_id;
                end if;
    end loop;
end runSoftsuiteHistRecBatchlog;
end xxsr_harmonization_records;
