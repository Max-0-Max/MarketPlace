prompt --application/pages/page_00075
begin
--   Manifest
--     PAGE: 00075
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>75
,p_name=>'historical_payslip'
,p_alias=>'AX7'
,p_page_mode=>'MODAL'
,p_step_title=>'historical_payslip'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15049244735599732)
,p_plug_name=>'<strong>Historical Payslip</strong>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15049347931599733)
,p_name=>'Earnings'
,p_parent_plug_id=>wwv_flow_imp.id(15049244735599732)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --e.ASSIGNMENT_NUMBER STAFF_ID,',
'        replace(to_char(e.RESULT_VALUE,''999G999G999G999G990D00''),'' '','''') AMOUNT,',
'        nvl(e.REPORTING_NAME,e.ELEMENT_NAME) ELEMENT_NAME',
'        from xxpay.xxsr_payroll_results_tbl e',
'        where EMPLOYEE_NUMBER=:P75_STAFF_ID',
'        and to_char(e.PERIOD_END_DATE,''YYYYMM'')=:P75_PAYMONTH',
'       -- and e.TIME_PERIOD_ID=:P75_PAYMONTH',
'        and NVL(e.RESULT_VALUE,0)>0',
'        and e.EARNING_OR_DEDUCTION=''E'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7625187574729355)
,p_query_column_id=>1
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7624785800729349)
,p_query_column_id=>2
,p_column_alias=>'ELEMENT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Element Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15049807154599737)
,p_name=>'Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(15049244735599732)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --e.ASSIGNMENT_NUMBER STAFF_ID,',
'        replace(to_char(e.RESULT_VALUE,''999G999G999G999G990D00''),'' '','''') AMOUNT,',
'        nvl(e.REPORTING_NAME,e.ELEMENT_NAME) ELEMENT_NAME',
'        from xxpay.xxsr_payroll_results_tbl e',
'        where EMPLOYEE_NUMBER=:P75_STAFF_ID',
'          and to_char(e.PERIOD_END_DATE,''YYYYMM'')=:P75_PAYMONTH',
'        --and e.TIME_PERIOD_ID=:P75_PAYMONTH',
'        and NVL(e.RESULT_VALUE,0)>0',
'        and e.EARNING_OR_DEDUCTION=''D''',
'        and e.CLASSIFICATION_NAME not in(''Tax Deductions'')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7626210145729358)
,p_query_column_id=>1
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7625846767729358)
,p_query_column_id=>2
,p_column_alias=>'ELEMENT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Element Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15049875079599738)
,p_name=>'Summary'
,p_parent_plug_id=>wwv_flow_imp.id(15049244735599732)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    replace(to_char(GROSSPAY,''999G999G999G999G990D00''),'' '','''') GROSSPAY,',
'    replace(to_char(INCOME_TAX,''999G999G999G999G990D00''),'' '','''') INCOME_TAX,',
'    replace(to_char(TOTAL_DEDUCTION,''999G999G999G999G990D00''),'' '','''') TOTAL_DEDUCTION,',
'    replace(to_char((GROSSPAY - TOTAL_DEDUCTION),''999G999G999G999G990D00''),'' '','''')	NETPAY	',
'from (select ',
'        SUM(Decode(p.EARNING_OR_DEDUCTION,''D'',NVL(p.RESULT_VALUE,0),0)) TOTAL_DEDUCTION, ',
'        SUM(Decode(p.EARNING_OR_DEDUCTION,''E'',NVL(p.RESULT_VALUE,0),0)) GROSSPAY,   ',
'        SUM(Decode(p.CLASSIFICATION_NAME,''Tax Deductions'',NVL(p.RESULT_VALUE,0),0)) INCOME_TAX',
'    from xxpay.xxsr_payroll_results_tbl p',
'    where p.EMPLOYEE_NUMBER=:P75_STAFF_ID',
'    --and b.COMPANY_CODE = :AP_COMPANY_CODE',
'    and to_char(p.PERIOD_END_DATE,''YYYYMM'')=:P75_PAYMONTH',
'     -- and p.TIME_PERIOD_ID=:P75_PAYMONTH',
'     )'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7626900650729361)
,p_query_column_id=>1
,p_column_alias=>'GROSSPAY'
,p_column_display_sequence=>1
,p_column_heading=>'Grosspay'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7627316701729362)
,p_query_column_id=>2
,p_column_alias=>'INCOME_TAX'
,p_column_display_sequence=>2
,p_column_heading=>'Income Tax'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7627780113729363)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_DEDUCTION'
,p_column_display_sequence=>3
,p_column_heading=>'Total Deduction'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7628174634729363)
,p_query_column_id=>4
,p_column_alias=>'NETPAY'
,p_column_display_sequence=>4
,p_column_heading=>'Netpay'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7623318219729298)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15049244735599732)
,p_button_name=>'Download_Payslip'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Download Payslip'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7623615525729311)
,p_name=>'P75_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15049244735599732)
,p_prompt=>'Employee Number:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PERSON_ID ||''-''||FULL_NAME d, PERSON_ID r',
'from xxhrms.xxhrms_people_f',
'where person_id=:P75_STAFF_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7624015215729330)
,p_name=>'P75_PAYMONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15049244735599732)
,p_prompt=>'Paymonth:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PERIOD_NAME  d, paymonth_code  r',
'from xxpay.xxsr_payroll_period_tbl',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7628582561729429)
,p_name=>'Refresh Payslip'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_PAYMONTH,P75_STAFF_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7628912806729433)
,p_event_id=>wwv_flow_imp.id(7628582561729429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'Null;',
'End;'))
,p_attribute_02=>'P75_STAFF_ID,P75_PAYMONTH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7629950823729438)
,p_event_id=>wwv_flow_imp.id(7628582561729429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15049244735599732)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7629476883729436)
,p_event_id=>wwv_flow_imp.id(7628582561729429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15049347931599733)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7630404045729439)
,p_event_id=>wwv_flow_imp.id(7628582561729429)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15049807154599737)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7630981952729440)
,p_event_id=>wwv_flow_imp.id(7628582561729429)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15049875079599738)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7631311182729442)
,p_name=>'Payslip_AOP'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7623318219729298)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7631884946729448)
,p_event_id=>wwv_flow_imp.id(7631311182729442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.APEXRND.AOP_DA'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_PAYMONTH,P75_STAFF_ID'
,p_attribute_04=>'pdf'
,p_attribute_05=>'SQL'
,p_attribute_06=>'APEX'
,p_attribute_07=>'Payslip_Template.docx'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'''file1'' "filename", ',
'cursor( ',
'        select a.STAFF_ID,',
'        a.P_MONTH,a.FULL_NAME, GRADE_STEP,ACC_NO Account_Number,PIN_NO,TAX_ID, to_char(HIRE_DATE,''DD-MON-YYYY'') HIRE_DATE,',
'        replace(to_char(TOTAL_DEDUCTION,''999G999G999G999G990D00''),'' '','''') TOTAL_DEDUCTION, ',
'        replace(to_char((NVL(GROSSPAY,0)-NVL(TOTAL_DEDUCTION,0)),''999G999G999G999G990D00''),'' '','''') NETPAY,',
'        replace(to_char(GROSSPAY,''999G999G999G999G990D00''),'' '','''') GROSSPAY,   ',
'        replace(to_char(INCOME_TAX,''999G999G999G999G990D00''),'' '','''') INCOME_TAX,',
'        (select SEX from xxhrms.xxhrms_people pep where pep.person_id = a.staff_ID) Gender,',
'        (select other_id from xxhrms.xxhrms_people pep where pep.person_id = a.staff_ID) Legacy_id,',
'        (select to_char(BIRTH_DATE,''DD-MON-YYYY'') from xxhrms.xxhrms_people pep where pep.person_id = a.staff_ID) DOB,',
'        a.PFA_NAME,  ',
'        a.TAX_STATE,',
'        a.Bank_Name,',
'        a.Grade,',
'        a.Location,',
'        a.Job,',
'        a.Department,',
'        a.SUB_ORGANIZATION,',
'        (select COMPANY_NAME from xxhrms.xxhrms_companyinfo inf where inf.COMPANY_CODE = a.COMPANY_CODE) Company_name,',
'    ',
'    cursor(',
'            select APEX_WEB_SERVICE.BLOB2CLOBBASE64(xxhrms.XXHRMS_RESIZE_IMG(p.id,a.STAFF_ID)) "image" ,',
'            --select APEX_WEB_SERVICE.BLOB2CLOBBASE64(p.PICTURE) "image",   ',
'            10 "img_max_width",',
'            10 "img_max_height"',
'            from XXHRMS.XXHRMS_PICTURE p',
'            WHERE p.STAFF_ID = a.STAFF_ID',
'             )Images,',
'	',
'    cursor(select e.ASSIGNMENT_NUMBER STAFF_ID,',
'        replace(to_char(e.RESULT_VALUE,''999G999G999G999G990D00''),'' '','''') AMT,',
'        nvl(e.REPORTING_NAME,e.ELEMENT_NAME) ELEMENT_NAME',
'        from xxpay.xxsr_payroll_results_tbl e',
'        where EMPLOYEE_NUMBER=a.STAFF_ID',
'        and to_char(e.PERIOD_END_DATE,''YYYYMM'')=a.PAYMONTH_CODE',
'        and NVL(e.RESULT_VALUE,0)>0',
'        and e.EARNING_OR_DEDUCTION=''E''',
'	) "Earnings",',
'	',
'	cursor( select e.ASSIGNMENT_NUMBER STAFF_ID,',
'        replace(to_char(e.RESULT_VALUE,''999G999G999G999G990D00''),'' '','''') AMT,',
'        nvl(e.REPORTING_NAME,e.ELEMENT_NAME) ELEMENT_NAME',
'        from xxpay.xxsr_payroll_results_tbl e',
'        where EMPLOYEE_NUMBER=a.STAFF_ID',
'        and to_char(e.PERIOD_END_DATE,''YYYYMM'')=a.PAYMONTH_CODE',
'	and NVL(e.RESULT_VALUE,0)>0',
'        and e.EARNING_OR_DEDUCTION=''D''',
'           and e.CLASSIFICATION_NAME not in(''Tax Deductions'')',
'	) "Deductions"',
'',
'from(select p.ASSIGNMENT_NUMBER STAFF_ID,',
'        p.PERIOD_NAME P_MONTH,',
'        p.EMPLOYEE_NAME FULL_NAME, ',
'        p.STEP GRADE_STEP,',
'        p.ACCOUNT_NO ACC_NO ,',
'        p.PFA_PIN PIN_NO,',
'        null TAX_ID,',
'        p.TAX_STATE, ',
'        b.HIRE_DATE,',
'        b.COMPANY_CODE,',
'        p.PFA_NAME,',
'        p.BANK_NAME,',
'        p.GRADE_LEVEL GRADE,',
'        p.SECTION Location,',
'        p.JOB_TITLE JOB,',
'        p.DEPT Department,',
'        p.MINISTRY_NAME SUB_ORGANIZATION,',
'        NULL PAYRUN,',
'	to_char(p.PERIOD_END_DATE,''YYYYMM'') PAYMONTH_CODE,',
'        SUM(Decode(p.EARNING_OR_DEDUCTION,''D'',NVL(p.RESULT_VALUE,0),0)) TOTAL_DEDUCTION, ',
'        SUM(Decode(p.EARNING_OR_DEDUCTION,''E'',NVL(p.RESULT_VALUE,0),0)) GROSSPAY,   ',
'        SUM(Decode(p.CLASSIFICATION_NAME,''Tax Deductions'',NVL(p.RESULT_VALUE,0),0)) INCOME_TAX',
'	from xxpay.xxsr_payroll_results_tbl p, xxhrms.xxhrms_assignments b',
'	where p.EMPLOYEE_NUMBER=b.staff_id',
'	and b.STAFF_ID = :P39_STAFF_ID',
'	and b.COMPANY_CODE = :AP_COMPANY_CODE',
'	and to_char(p.PERIOD_END_DATE,''YYYYMM'')=:P39_PAYMONTH',
'	group by p.ASSIGNMENT_NUMBER, p.PERIOD_NAME ,',
'        p.EMPLOYEE_NAME, ',
'        p.STEP ,',
'        p.ACCOUNT_NO  ,',
'        p.PFA_PIN ,',
'        p.TAX_STATE, ',
'        b.HIRE_DATE,',
'        b.COMPANY_CODE,',
'        p.PFA_NAME ,',
'        p.BANK_NAME,',
'        p.GRADE_LEVEL ,',
'        p.SECTION ,',
'        p.JOB_TITLE ,',
'        p.DEPT ,',
'        p.MINISTRY_NAME,',
'        p.PERIOD_END_DATE',
'    ) a',
') as "data"',
'from dual'))
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
