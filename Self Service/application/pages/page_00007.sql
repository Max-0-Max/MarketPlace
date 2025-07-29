prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'PaySlip'
,p_step_title=>'PaySlip'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_html_page_onload=>'onLoad="xlibJasperDemo_makeDemoUrl();"'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'',
'function setValue(pItemName, pValue){',
'  $x(pItemName).value = pValue;',
'  xlibJasperDemo_makeDemoUrl();',
'',
'  return false;',
'}',
'',
'function xlibJasperDemo_generateUrl(pBaseUrl, pRepName, pRepFormat, pOutFilename, pRepLocale, pRepEncoding, pAdditionalParams){',
'  var url;',
'',
'  url = pBaseUrl;',
'  url = url + "&_repName=" + pRepName;',
'  url = url + "&_repFormat=" + pRepFormat;',
'  url = url + "&_repLocale=" + "en_US";',
'  url = url + "&_repEncoding=" + pRepEncoding;',
'  if (pAdditionalParams)  url = url + "&" + pAdditionalParams;',
'',
'  return url;',
'}',
'',
'function xlibJasperDemo_makeDemoUrl(){ ',
'  $x(''P59_URL'').value=xlibJasperDemo_generateUrl($x(''P59_JASPER_URL'').value, $x(''P59_REP_NAME'').value, $x(''P59_FORMAT'').value, $x(''P59_PRD'').value, $x(''P59_DUMMY'').value, $x(''P59_DUMMY'').value, $x(''P59_PARAMS'').value );',
'/*if ($x(''P59_PP'').value == ''1''){',
'   xlibShowUrl($x(''P59_URL'').value);',
'  }*/',
'if ($x(''P59_PP'').value == ''2''){',
'   popUp2(''f?p=&APP_ID.:82:&SESSION.::NO::P82_PP:2'');',
'  }',
'}',
'',
'',
'',
'function xlibShowUrl(pUrl){',
'  window.open(pUrl,"reportwindow","height=1024,width=800,location=no");',
'  ',
'  return false; ',
'}',
'',
'</script>',
'',
'',
'<script src="https://cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8169064582815601)
,p_plug_name=>'Payslip'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8169198111815602)
,p_name=>'Earnings'
,p_parent_plug_id=>wwv_flow_imp.id(8169064582815601)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms.xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms.xxhrms_benefits',
'    --where COMPANY_CODE = :AP_COMPANY_CODE',
'    where COMPANY_CODE IN (select distinct company_code from xxhrms.xxhrms_people_f where person_id = :AP_STAFF_ID )',
'    and PAYMONTH_CODE = :P7_PERIOD',
'	--MAKE PROFILE OPTION',
'	and PAYRUN = CASE XXADM.get_profile_option(''ALL_PAYRUN'',:AP_COMPANY_CODE)    ',
'                        when ''Y'' then nvl(:P7_PAY_RUN,PAYRUN)',
'                        else :P7_PAY_RUN',
'                 END',
'    --',
'	and STAFF_ID = :AP_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_PERIOD,P7_PAY_RUN'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8169209093815603)
,p_query_column_id=>1
,p_column_alias=>'AMT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8169364083815604)
,p_query_column_id=>2
,p_column_alias=>'ELEMENT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Element Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8169471876815605)
,p_name=>'Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(8169064582815601)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms.xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms.xxhrms_deductions',
'    --where COMPANY_CODE = :AP_COMPANY_CODE',
'    where COMPANY_CODE IN (select distinct company_code from xxhrms.xxhrms_people_f where person_id = :AP_STAFF_ID )',
'    and PAYMONTH_CODE = :P7_PERIOD',
'	--MAKE PROFILE OPTION',
'	and PAYRUN = CASE XXADM.get_profile_option(''ALL_PAYRUN'',:AP_COMPANY_CODE)    ',
'                        when ''Y'' then nvl(:P7_PAY_RUN,PAYRUN)',
'                        else :P7_PAY_RUN',
'                 END',
'    --',
'	and STAFF_ID = :AP_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_PERIOD,P7_PAY_RUN'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8169526167815606)
,p_query_column_id=>1
,p_column_alias=>'AMT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8169634515815607)
,p_query_column_id=>2
,p_column_alias=>'ELEMENT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Element Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8169756503815608)
,p_name=>'Summary'
,p_parent_plug_id=>wwv_flow_imp.id(8169064582815601)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  replace(to_char(SUM(NVL(TOTAL_DEDUCTION,0)),''999G999G999G999G990D00''),'' '','''') TOTAL_DEDUCTION, ',
'        replace(to_char(SUM(NVL(NETPAY,0)),''999G999G999G999G990D00''),'' '','''') NETPAY, ',
'        replace(to_char(SUM(NVL(GROSSPAY,0)),''999G999G999G999G990D00''),'' '','''') GROSSPAY,   ',
'        replace(to_char(SUM(NVL(INCOME_TAX,0)),''999G999G999G999G990D00''),'' '','''') INCOME_TAX',
'from xxpay.XXPAY_ARCHIVE_PAY_PROCESSING a',
'    --where COMPANY_CODE = :AP_COMPANY_CODE',
'    where COMPANY_CODE IN (select distinct company_code from xxhrms.xxhrms_people_f where person_id = :AP_STAFF_ID )',
'    and PAYMONTH_CODE = :P7_PERIOD',
'	--MAKE PROFILE OPTION',
'	and PAYRUN = CASE XXADM.get_profile_option(''ALL_PAYRUN'',:AP_COMPANY_CODE)    ',
'                        when ''Y'' then nvl(:P7_PAY_RUN,PAYRUN)',
'                        else :P7_PAY_RUN',
'                 END',
'    --',
'	and STAFF_ID = :AP_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_PERIOD,P7_PAY_RUN'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8170031866815611)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_DEDUCTION'
,p_column_display_sequence=>3
,p_column_heading=>'Total Deduction'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8170105385815612)
,p_query_column_id=>2
,p_column_alias=>'NETPAY'
,p_column_display_sequence=>4
,p_column_heading=>'Netpay'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8170247986815613)
,p_query_column_id=>3
,p_column_alias=>'GROSSPAY'
,p_column_display_sequence=>1
,p_column_heading=>'Grosspay'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8170355381815614)
,p_query_column_id=>4
,p_column_alias=>'INCOME_TAX'
,p_column_display_sequence=>2
,p_column_heading=>'Income Tax'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23686783663321238)
,p_plug_name=>'PaySlip'
,p_icon_css_classes=>'fa-print'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29716980191658244)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8169064582815601)
,p_button_name=>'Print_paysip'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Payslip'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29601849578218407)
,p_name=>'P7_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8169064582815601)
,p_prompt=>'Period Ending'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT paymonths AS display_value, paymonth_code AS return_value',
'    FROM XXPAY.xxpay_payrun_log a',
'    WHERE paymonth_code in (select paymonth_code ',
'                               from xxpay.xxpay_enable_payslip  ',
'                               where PAYSLIP_ENABLED = ''Y'' ',
'                               --AND COMPANY_CODE = :SS_COMPANY_CODE',
'                               AND COMPANY_CODE IN (select distinct company_code from xxhrms.xxhrms_people_f where person_id = :AP_STAFF_ID )',
'                              )',
'       and  NVL (xxadm.GET_PROFILE_OPTION(''PAYSLIP_CNTL'',:SS_COMPANY_CODE), ''N'') = ''Y'' ',
'   ORDER BY paymonth_code DESC '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Period--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29601927299218408)
,p_name=>'P7_PAY_RUN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8169064582815601)
,p_prompt=>'Pay Run'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT d.value_desc d, a.payrun r',
'    FROM xxpay.xxpay_payrun_log a,XXHRMS_LOOKUP_PAY_RUN_V d',
'    where a.paymonth_code=:p7_period',
'    and a.payrun=d.value_code',
'   AND paymonth_code in (select paymonth_code ',
'                               from xxpay.xxpay_enable_payslip  ',
'                              where payrun = a.payrun',
'                             and PAYSLIP_ENABLED = ''Y'' ',
'                              --AND COMPANY_CODE = :SS_COMPANY_CODE',
'                              AND COMPANY_CODE IN (select distinct company_code from xxhrms.xxhrms_people_f where person_id = :AP_STAFF_ID )',
'                              )',
'         and  NVL (xxadm.GET_PROFILE_OPTION(''PAYSLIP_CNTL'',:SS_COMPANY_CODE), ''N'') = ''Y'' '))
,p_lov_cascade_parent_items=>'P7_PERIOD'
,p_ajax_items_to_submit=>'P7_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39138660365528605)
,p_name=>'P7_PAYRUN_OPT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8169064582815601)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29602233531218411)
,p_name=>'New_1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_PAY_RUN,P7_PERIOD'
,p_condition_element=>'P7_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8170412404815615)
,p_event_id=>wwv_flow_imp.id(29602233531218411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8169198111815602)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29602690407218415)
,p_event_id=>wwv_flow_imp.id(29602233531218411)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8169471876815605)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8170562230815616)
,p_event_id=>wwv_flow_imp.id(29602233531218411)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8169756503815608)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11633594636367701)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'aop_api_pkg.g_output_watermark := ''CONFIDENTIAL'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(29716980191658244)
,p_internal_uid=>11633594636367701
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49057437660187712)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_BE.APEXRND.AOP'
,p_process_name=>'AOP_NEW'
,p_attribute_03=>'&P7_PERIOD_NAME. Payslip'
,p_attribute_04=>'pdf'
,p_attribute_05=>'SQL'
,p_attribute_06=>'APEX'
,p_attribute_07=>'Payslip_Template1.docx'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'''file1'' "filename", ',
'cursor( ',
'        select a.STAFF_ID,',
'        a.P_MONTH,a.FULL_NAME, GRADE_STEP,ACC_NO Account_Number,PIN_NO,TAX_ID, to_char(HIRE_DATE,''DD-MON-YYYY'') HIRE_DATE,',
'        replace(to_char(TOTAL_DEDUCTION,''999G999G999G999G990D00''),'' '','''') TOTAL_DEDUCTION, ',
'        replace(to_char(NETPAY,''999G999G999G999G990D00''),'' '','''') NETPAY, ',
'        replace(to_char(GROSSPAY,''999G999G999G999G990D00''),'' '','''') GROSSPAY,   ',
'        replace(to_char(INCOME_TAX,''999G999G999G999G990D00''),'' '','''') INCOME_TAX,',
'        (select SEX from xxhrms_people pep where pep.person_id = a.staff_ID) Gender,',
'        (select other_id from xxhrms_people pep where pep.person_id = a.staff_ID) Legacy_id,',
'        (select to_char(BIRTH_DATE,''DD-MON-YYYY'') from xxhrms_people pep where pep.person_id = a.staff_ID) DOB,',
'        (select PFA_NAME from xxhrms_pfa_admin pfa where pfa.PFADMIN_ID = a.PFA_ADMINS and pfa.company_code = a.company_code) PFA_NAME,  ',
'        (select st.DESCRIPTION from xxhrms_assignments ass, xxhrms_states st where st.state_code = ass.ssn and ass.person_id = a.staff_ID) TAX_STATE,',
'        (select BANK_NAME from xxhrms_banks bnk where bnk.bank_code = a.BANK_NAME and bnk.company_code = a.company_code) Bank_Name,',
'        (select DECODE(a.company_code,''64'',SUBSTR(GRADE,0,INSTR(GRADE,''_'')-1),grade) from xxhrms_grades grd where grd.id = a.grade and grd.ORGANISATION = a.company_code) Grade,',
'        (select NAME from xxhrms_dep_location loc where loc.CODE = a.DEPT_LOCATION and loc.company_code = a.company_code) Location,',
'        (select NAME from xxhrms_jobs job where job.JOB_CODE= a.JOB_ID and job.company_code = a.company_code) Job,',
'        (select NAME from xxhrms_department dept where dept.dept_id= a.DEPT_CODE and dept.company_code = a.company_code) Department,',
'        (select NAME from xxhrms_sub_organization sub where sub.code = a.SUB_ORGANIZATION_CODE and sub.company_code = a.company_code) SUB_ORGANIZATION,',
'        (select COMPANY_NAME from xxhrms_companyinfo inf where inf.COMPANY_CODE = a.COMPANY_CODE) Company_name,',
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
'    cursor(',
'    select STAFF_ID, replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms_benefits',
'    where PAYMONTH_CODE = a.PAYMONTH_CODE',
'	and PAYRUN = a.PAYRUN',
'	and STAFF_ID = a.STAFF_ID',
'	) "Earnings",',
'	',
'	cursor(',
'    select STAFF_ID, replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms_deductions',
'    where PAYMONTH_CODE = a.PAYMONTH_CODE',
'	and PAYRUN = a.PAYRUN',
'	and STAFF_ID = a.STAFF_ID',
'	) "Deductions"',
'',
'from XXPAY_ARCHIVE_PAY_PROCESSING a',
'--where a.COMPANY_CODE = :AP_COMPANY_CODE',
'WHERE COMPANY_CODE IN (select distinct company_code from xxhrms.xxhrms_people_f where person_id = :AP_STAFF_ID )',
'and STAFF_ID = :AP_STAFF_ID',
'and PAYMONTH_CODE = :P7_PERIOD',
'and PAYRUN = nvl(:P7_PAY_RUN,PAYRUN)',
') as "data"',
'from dual'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(29716980191658244)
,p_process_when=>'P7_PAYRUN_OPT'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'Y'
,p_internal_uid=>49057437660187712
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39138874323528607)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_BE.APEXRND.AOP'
,p_process_name=>'AOP_PRINT_ALL_RUN'
,p_attribute_03=>'&P7_PERIOD_NAME. Payslip'
,p_attribute_04=>'pdf'
,p_attribute_05=>'SQL'
,p_attribute_06=>'APEX'
,p_attribute_07=>'Payslip_Template1.docx'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'''file1'' "filename", ',
'cursor( ',
'select a.STAFF_ID,',
'a.P_MONTH,a.FULL_NAME, GRADE_STEP,ACC_NO Account_Number,PIN_NO,TAX_ID, to_char(HIRE_DATE,''DD-MON-YYYY'') HIRE_DATE,',
'replace(to_char(TOTAL_DEDUCTION,''999G999G999G999G990D00''),'' '','''') TOTAL_DEDUCTION, ',
'replace(to_char(NETPAY,''999G999G999G999G990D00''),'' '','''') NETPAY, ',
'replace(to_char(GROSSPAY,''999G999G999G999G990D00''),'' '','''') GROSSPAY,   ',
'replace(to_char(INCOME_TAX,''999G999G999G999G990D00''),'' '','''') INCOME_TAX,',
'(select SEX from xxhrms_people pep where pep.person_id = a.staff_ID) Gender,',
'(select other_id from xxhrms_people pep where pep.person_id = a.staff_ID) Legacy_id,',
'(select to_char(BIRTH_DATE,''DD-MON-YYYY'') from xxhrms_people pep where pep.person_id = a.staff_ID) DOB,',
'(select PFA_NAME from xxhrms_pfa_admin pfa where pfa.PFADMIN_ID = a.PFA_ADMINS and pfa.company_code = a.company_code) PFA_NAME,  ',
'(select st.DESCRIPTION from xxhrms_assignments ass, xxhrms_states st where st.state_code = ass.ssn and ass.person_id = a.staff_ID) TAX_STATE,',
'(select BANK_NAME from xxhrms_banks bnk where bnk.bank_code = a.BANK_NAME and bnk.company_code = a.company_code) Bank_Name,',
'(select DECODE(a.company_code,''64'',SUBSTR(GRADE,0,INSTR(GRADE,''_'')-1),grade) from xxhrms_grades grd where grd.id = a.grade and grd.ORGANISATION = a.company_code) Grade,',
'(select NAME from xxhrms_dep_location loc where loc.CODE = a.DEPT_LOCATION and loc.company_code = a.company_code) Location,',
'(select NAME from xxhrms_jobs job where job.JOB_CODE= a.JOB_ID and job.company_code = a.company_code) Job,',
'(select NAME from xxhrms_department dept where dept.dept_id= a.DEPT_CODE and dept.company_code = a.company_code) Department,',
'(select NAME from xxhrms_sub_organization sub where sub.code = a.SUB_ORGANIZATION_CODE and sub.company_code = a.company_code) SUB_ORGANIZATION,',
'(select COMPANY_NAME from xxhrms_companyinfo inf where inf.COMPANY_CODE = a.COMPANY_CODE) Company_name,',
'    ',
'    cursor(',
'            select APEX_WEB_SERVICE.BLOB2CLOBBASE64(xxhrms.XXHRMS_RESIZE_IMG(p.id,a.STAFF_ID)) "image" ,',
'            10 "img_max_width",',
'            10 "img_max_height"',
'            from XXHRMS.XXHRMS_PICTURE p',
'            WHERE p.STAFF_ID = a.STAFF_ID',
'             )Images,',
'       cursor(',
'            select APEX_WEB_SERVICE.BLOB2CLOBBASE64(xxhrms.xxhrms_resize_comp_img(a.COMPANY_CODE)) "image" ,',
'            10 "img_max_width",',
'            10 "img_max_height"',
'            from XXHRMS.xxhrms_companyinfo p',
'            WHERE p.COMPANY_CODE = a.COMPANY_CODE',
'             )CoyImages,',
'	',
'    cursor(',
'    select STAFF_ID, replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms_benefits',
'    where PAYMONTH_CODE = a.PAYMONTH_CODE',
'	and STAFF_ID = a.STAFF_ID',
'	) "Earnings",',
'	',
'	cursor(',
'    select STAFF_ID, replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms_deductions',
'    where PAYMONTH_CODE = a.PAYMONTH_CODE',
'	and STAFF_ID = a.STAFF_ID',
'	) "Deductions"',
'',
'from(select STAFF_ID,',
'        P_MONTH,FULL_NAME, GRADE_STEP,ACC_NO ,PIN_NO,TAX_ID, HIRE_DATE,COMPANY_CODE,',
'         PFA_ADMINS,BANK_NAME,GRADE,DEPT_LOCATION,JOB_ID,DEPT_CODE,SUB_ORGANIZATION_CODE,NULL PAYRUN,PAYMONTH_CODE,',
'         SUM(NVL(TOTAL_DEDUCTION,0)) TOTAL_DEDUCTION, ',
'        SUM(NVL(NETPAY,0)) NETPAY, ',
'        SUM(NVL(GROSSPAY,0)) GROSSPAY,   ',
'        SUM(NVL(INCOME_TAX,0)) INCOME_TAX',
'from XXPAY_ARCHIVE_PAY_PROCESSING ',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and STAFF_ID = :AP_STAFF_ID',
'and PAYMONTH_CODE = :P7_PERIOD',
'--and PAYRUN = nvl(:P7_PAY_RUN,PAYRUN)',
'     group by STAFF_ID,P_MONTH,FULL_NAME, GRADE_STEP,ACC_NO ,PIN_NO,TAX_ID, HIRE_DATE,COMPANY_CODE,',
'     PFA_ADMINS,BANK_NAME,GRADE,DEPT_LOCATION,JOB_ID,DEPT_CODE,SUB_ORGANIZATION_CODE,PAYMONTH_CODE',
'    ) a',
') as "data"',
'from dual'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(29716980191658244)
,p_process_when=>'P7_PAYRUN_OPT'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
,p_internal_uid=>39138874323528607
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39138712131528606)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT XXADM.get_profile_option(''ALL_PAYRUN'',:AP_COMPANY_CODE) INTO :P7_PAYRUN_OPT FROM DUAL; --GET PAYRUN OPTION',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>39138712131528606
);
wwv_flow_imp.component_end;
end;
/
