prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'AHOME'
,p_step_title=>'SoftSuite 2.0: Self Service'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'        border-radius: 15px;',
'}',
'#t_TreeNav{',
'    display:flex;',
'    flex-direction:column;',
'    height:100%;',
'}',
'',
'#t_TreeNav ul{',
'    flex: 0 0 auto;',
'}',
'',
'#t_PageBody.apex-side-nav.js-navCollapsed .log,#t_PageBody.apex-side-nav.js-navCollapsed .logs{',
'    display:none;',
'}',
'',
'.logo_img{',
'    /*border-radius:50%;*/',
'    display: block;',
'    margin-left: auto;',
'    margin-right: auto;',
'    width: 70%;',
'    margin-top:10px;',
'        ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2594534057224147)
,p_plug_name=>'Self Service'
,p_icon_css_classes=>'fa-user-circle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2898112696710106)
,p_plug_name=>'Menu'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_06'
,p_list_id=>wwv_flow_imp.id(2934641535723865)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2558986128224105)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22359530227787128)
,p_plug_name=>'Welcome &P1_NAME., <b>Password Change Required!!</b>'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_imp.id(2483875202224049)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_location=>null
,p_plug_source=>'You are required to change your password before you can use the application.'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'AP_CHANGE_PASSWORD'
,p_plug_display_when_cond2=>'1'
,p_plug_header=>'<div style="overflow: auto; overflow-x:hidden;" > '
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49875339141741622)
,p_plug_name=>'Welcome &P1_NAME.,  your last login was &P1_LOGIN.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'AP_CHANGE_PASSWORD'
,p_plug_display_when_cond2=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div style="overflow: auto; overflow-x:hidden;" > '
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49732440143615196)
,p_plug_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19070193883409044)
,p_name=>'Anniversaries'
,p_parent_plug_id=>wwv_flow_imp.id(49732440143615196)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding:margin-top-md'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--circular:t-BadgeList--stacked:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_grid_column_span=>2
,p_display_column=>1
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'(select count(1) from xxhrms.xxhrms_emp_anniv_list_v ',
' where ANNIV_TYPE = ''Birthday''',
' and org = :SS_COMPANY_CODE',
') "Birthdays This Month"',
'from dual;'))
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_read_only_when=>'AP_CHANGE_PASSWORD'
,p_read_only_when2=>'1'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2527917967224082)
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
 p_id=>wwv_flow_imp.id(19070260053409045)
,p_query_column_id=>1
,p_column_alias=>'Birthdays This Month'
,p_column_display_sequence=>1
,p_column_heading=>'Birthdays This Month'
,p_column_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48::'
,p_column_linktext=>'#Birthdays This Month#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54599055029220924)
,p_plug_name=>'Horizontal List'
,p_parent_plug_id=>wwv_flow_imp.id(49732440143615196)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--compact:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(19923746324886092)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2551940131224100)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_read_only_when=>'AP_CHANGE_PASSWORD'
,p_plug_read_only_when2=>'1'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55435093164677803)
,p_plug_name=>'Employee Image'
,p_parent_plug_id=>wwv_flow_imp.id(49732440143615196)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>2
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56457596543324060)
,p_plug_name=>'Attendance Dashboard'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000030'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64358469681938770)
,p_plug_name=>'Attendance This Month'
,p_parent_plug_id=>wwv_flow_imp.id(56457596543324060)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>280
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(64360541881000829)
,p_name=>'Dashboard'
,p_parent_plug_id=>wwv_flow_imp.id(64358469681938770)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>320
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--circular:t-BadgeList--fixed:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       xxta.GET_DAYS_EXPECTED (:AP_STAFF_ID, :P1_FIRST_DAY, :AP_GLOBAL_DATE, :AP_COMPANY_CODE) DAYS_EXPECTED,  ',
'       xxta.GET_DAYS_PRESENT (:AP_STAFF_ID, :P1_FIRST_DAY, :AP_GLOBAL_DATE, :AP_COMPANY_CODE) DAYS_PRESENT, ',
'       xxta.GET_DAYS_EXPECTED (:AP_STAFF_ID, :P1_FIRST_DAY, :AP_GLOBAL_DATE, :AP_COMPANY_CODE) -   xxta.GET_DAYS_PRESENT (:AP_STAFF_ID, :P1_FIRST_DAY, :AP_GLOBAL_DATE, :AP_COMPANY_CODE) DAYS_ABSENT, ',
'       xxta.GET_HOURS_EXPECTED (:AP_STAFF_ID, :P1_FIRST_DAY, :AP_GLOBAL_DATE, :AP_COMPANY_CODE) HOURS_EXPECTED,',
'       xxta.GET_WORK_HOURS (:AP_STAFF_ID, :P1_FIRST_DAY, :AP_GLOBAL_DATE, :AP_COMPANY_CODE) ACTUAL_HOURS',
'from dual'))
,p_translate_title=>'N'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2527917967224082)
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
 p_id=>wwv_flow_imp.id(313172269998428317)
,p_query_column_id=>1
,p_column_alias=>'DAYS_EXPECTED'
,p_column_display_sequence=>1
,p_column_heading=>'Days Expected'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313172341471428318)
,p_query_column_id=>2
,p_column_alias=>'DAYS_PRESENT'
,p_column_display_sequence=>2
,p_column_heading=>'Days Present'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313172438193428319)
,p_query_column_id=>3
,p_column_alias=>'DAYS_ABSENT'
,p_column_display_sequence=>3
,p_column_heading=>'Days Absent'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313172597987428320)
,p_query_column_id=>4
,p_column_alias=>'HOURS_EXPECTED'
,p_column_display_sequence=>4
,p_column_heading=>'Hours Expected'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313172679703428321)
,p_query_column_id=>5
,p_column_alias=>'ACTUAL_HOURS'
,p_column_display_sequence=>5
,p_column_heading=>'Actual Hours'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64361022983035829)
,p_plug_name=>'Attendance Analysis'
,p_parent_plug_id=>wwv_flow_imp.id(64358469681938770)
,p_region_template_options=>'js-modal:js-dialog-size480x320'
,p_region_attributes=>'RefreshModal'
,p_plug_template=>wwv_flow_imp.id(2505830901224066)
,p_plug_display_sequence=>315
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64371542586976062)
,p_plug_name=>'Attendance This Month'
,p_parent_plug_id=>wwv_flow_imp.id(64358469681938770)
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>317
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64358875479944944)
,p_plug_name=>'Clock Action'
,p_parent_plug_id=>wwv_flow_imp.id(56457596543324060)
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>290
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56466225888202069)
,p_plug_name=>'Attendance Horizontal List'
,p_parent_plug_id=>wwv_flow_imp.id(64358875479944944)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--compact:t-Cards--displayIcons:t-Cards--cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>27
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(19602350675184482)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2551940131224100)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(64104816706486748)
,p_name=>'Today''s Birthday(s)'
,p_region_name=>'pop'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_template=>wwv_flow_imp.id(2505830901224066)
,p_display_sequence=>140
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Distinct a.FULL_NAME, a.ANNIV_DATE from xxhrms.xxhrms_emp_anniv_list_v a, xxhrms_assignments_f b',
'where a.person_id = b.person_id',
'and a.org = b.company_code',
'and a.org = :AP_COMPANY_CODE',
'and a.ANNIV_DATE = to_char(sysdate, ''Mon-dd'')',
' and  a.ANNIV_TYPE =  ''Birthday''',
' order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2524155766224079)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No birthday(s) today.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64104913835486749)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Full Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64105047387486750)
,p_query_column_id=>2
,p_column_alias=>'ANNIV_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Anniv Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69289205727830557)
,p_plug_name=>'Internal Job Vacancies'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000017'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(102243500763039806)
,p_name=>'Job Vacancies'
,p_parent_plug_id=>wwv_flow_imp.id(69289205727830557)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>215
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID LINK,INITCAP(b.JOB_TITLE)||'' ''||TO_CHAR(DATE_LISTED,''DD-MON-YY'')  d,JOB_TITLE,',
'B.JOB_POSITION,B.EXPIRY_DATE',
'      ',
'  FROM xxrec.XXREC_JOB_DETAILS b--,XXHRMS.XXHRMS_LOOKUP_JOB_TITLE_V V',
'  WHERE WF_STATUS=''APPROVED''',
' -- AND UPPER(b.JOB_TITLE)=UPPER(V.VALUE_CODE)',
'  AND REC_SOURCE_ID in (2,3) and trunc(EXPIRY_DATE) > trunc(sysdate)',
'  AND EXISTS (SELECT * FROM xxrec.XXREC_PUBLISHED',
'           WHERE JOB_ID=B.ID)',
'  AND NOT EXISTS(Select 1 from xxrec.XXREC_APPLIED_FOR where staff_id = :AP_STAFF_ID and job_id = B.ID)',
'  ORDER BY DATE_LISTED DESC',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19691654071197106)
,p_query_column_id=>1
,p_column_alias=>'LINK'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP:P70_JOB_ID:#LINK#'
,p_column_linktext=>'Apply Now'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19692060767197107)
,p_query_column_id=>2
,p_column_alias=>'D'
,p_column_display_sequence=>2
,p_column_heading=>'Job Tilte'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48584727251701710)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19692426029197107)
,p_query_column_id=>3
,p_column_alias=>'JOB_TITLE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19692865720197108)
,p_query_column_id=>4
,p_column_alias=>'JOB_POSITION'
,p_column_display_sequence=>4
,p_column_heading=>'Job Position'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'	POSITION_NAME d,POSITION_CODE r',
'    from xxhrms.xxhrms_positions'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19693213279197108)
,p_query_column_id=>5
,p_column_alias=>'EXPIRY_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Expiry Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69595019109414716)
,p_plug_name=>'Jobs Applied For'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000017'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69599643594455432)
,p_name=>'Jobs Applied for'
,p_parent_plug_id=>wwv_flow_imp.id(69595019109414716)
,p_template=>wwv_flow_imp.id(2507973594224067)
,p_display_sequence=>209
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'     select job_id,( select distinct a.JOB_TITLE',
'                    From XXREC.XXREC_JOB_DETAILS a',
'                     where a.ID= i.JOB_ID)JOB_TITLE,CREATE_DATE DATE_APPLIED',
'                     FROM xxrec.XXREC_APPLIED_FOR i--, xxhrms_positions p ',
'                     where staff_id = :AP_STAFF_ID',
'         '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19694247462197110)
,p_query_column_id=>1
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Job Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19694692836197111)
,p_query_column_id=>2
,p_column_alias=>'JOB_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Job Title'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19695044297197111)
,p_query_column_id=>3
,p_column_alias=>'DATE_APPLIED'
,p_column_display_sequence=>3
,p_column_heading=>'Date Applied'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107595344993481933)
,p_plug_name=>'Assigned Worklist'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19068983212409032)
,p_plug_name=>'Worklist'
,p_parent_plug_id=>wwv_flow_imp.id(107595344993481933)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TRANS_TYPE,',
'       (select MEANING',
'       from xxhrms.XXHRMS_SEEDED_LOOKUPS a',
'       where LOOKUP_CODE = ''AUTHORIZATION_TYPE''',
'       and  a.LOOKUP_TYPE_CODE = TRANS_TYPE) TT,  ',
'       TRANS_ID,',
'       ''Level''||'' ''||APR_LVL APR_LVL,',
'       APR_ID,',
'       COMMENTS,',
'       STATUS STAT,',
'       CASE  ',
'          WHEN upper(STATUS) = ''PENDING'' THEN  ''<span class="fa fa-pie-chart-45" aria-hidden="true"></span> '' || ''<font color="blue">''|| STATUS  ',
'          WHEN upper(STATUS) = ''NEW'' THEN ''<span class="fa fa-check-circle" aria-hidden="true"></span> '' || ''<font color="green">'' || STATUS',
'         Else ''<span class="fa fa-times-circle" aria-hidden="true"></span> '' || ''<font color="red">'' ||''<b>''|| status || ''</font>''||''</b>''',
'         End CASE,',
'       CREATED_BY,',
'       CREATED_TIME,',
'       UPDATED_BY,',
'       UPDATED_TIME',
'  from XXHRMS.XXHRMS_APPROVAL_TAB',
'   where STATUS NOT IN (''APPROVED'',''REJECTED'')',
'and APR_ID = :AP_STAFF_ID',
'and NEXTS = ''Y''',
'AND COMMENTS IS NULL ',
' order by ID desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(30033863523845026)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SUITEUSER'
,p_internal_uid=>30033863523845026
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30033912566845027)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17:P17_ACTION,P17_ID,P17_REQ_ID,P17_STATUS,P17_LEVEL:#TRANS_TYPE#,#ID#,#TRANS_ID#,#STAT#,#APR_LVL#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29526927785485441)
,p_db_column_name=>'TT'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Transaction Type'
,p_column_html_expression=>'#TT# request by #CREATED_BY#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034034021845028)
,p_db_column_name=>'TRANS_TYPE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034141680845029)
,p_db_column_name=>'TRANS_ID'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Trans Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034309356845031)
,p_db_column_name=>'APR_ID'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Apr Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034466453845032)
,p_db_column_name=>'COMMENTS'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034555709845033)
,p_db_column_name=>'CASE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034655808845034)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30110881455904351)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034743580845035)
,p_db_column_name=>'CREATED_TIME'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Time of Request'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034898852845036)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30034967504845037)
,p_db_column_name=>'UPDATED_TIME'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Updated Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32810312943317306)
,p_db_column_name=>'APR_LVL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Approval Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33352418872631732)
,p_db_column_name=>'STAT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Stat'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30090659524079749)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'300907'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'ID:TT:APR_LVL:CASE:CREATED_TIME:'
,p_sort_column_1=>'CREATED_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297111436033111342)
,p_plug_name=>'Enrolled Courses'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000040'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(298550612563510035)
,p_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(297111436033111342)
,p_display_sequence=>20
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(distinct a.question_id)No_of_Question,',
'b.TEST_ID,b.TEST_NAME,b.START_DATE,b.END_DATE,d.course_id,',
'decode(c.score,null,''Not Scored'',c.SCORE ||'' ''||''out of''||'' ''||d.POINT) Score',
'from xxslm.XXSLM_QUESTIONS a, xxslm.XXSLM_TEST b, xxslm.XXSLM_EXAM_SUMMARY  d,',
'    (select sum(score) score, TEST_ID, course_id',
'      from XXSLM.XXSLM_QUESTIONS_OPTION  where staff_id = :AP_STAFF_ID',
'     group by TEST_ID, course_id) c',
'where a.test_id = b.test_id',
'and b.company_code = nvl(:AP_COMPANY_CODE,:SS_COMPANY_CODE)',
'--and c.COURSE_ID = d.COURSE_ID',
'and d.STAFF_ID = :AP_STAFF_ID',
'and d.TEST_ID = b.TEST_ID',
'and d.TEST_ID = a.TEST_ID',
'and c.COURSE_ID = d.COURSE_ID',
'and d.TEST_ID = c.TEST_ID and enrollment = ''Yes''',
'group by b.TEST_ID,b.TEST_NAME,b.START_DATE,b.END_DATE,d.course_id,decode(c.score,null,''Not Scored'',c.SCORE ||'' ''||''out of''||'' ''||d.POINT)',
''))
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
 p_id=>wwv_flow_imp.id(298551237002510041)
,p_query_column_id=>1
,p_column_alias=>'NO_OF_QUESTION'
,p_column_display_sequence=>6
,p_column_heading=>'No Of Question'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298550784427510036)
,p_query_column_id=>2
,p_column_alias=>'TEST_ID'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:RP:P28_COURSE,P28_TEST_ID:#COURSE_ID#,#TEST_ID#'
,p_column_linktext=>'View Summary'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298550803259510037)
,p_query_column_id=>3
,p_column_alias=>'TEST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Test Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298550959493510038)
,p_query_column_id=>4
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298551074701510039)
,p_query_column_id=>5
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298551121279510040)
,p_query_column_id=>6
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Course'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, course_id r',
'from xxslm.XXSLM_COURSES',
'where COMPANY_CODE = nvl(:AP_COMPANY_CODE,:SS_COMPANY_CODE)'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298551303086510042)
,p_query_column_id=>7
,p_column_alias=>'SCORE'
,p_column_display_sequence=>7
,p_column_heading=>'Score'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(298441121968648411)
,p_plug_name=>'Learning Admin'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000040'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(298441575047648415)
,p_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(298441121968648411)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.*',
'from XXSLM.XXSLM_COURSE_ADMIN a, xxslm.XXSLM_COURSES b',
'where  a.COURSE_ID = b.COURSE_ID',
'and a.staff_id = :AP_STAFF_ID',
'and b.NAME = nvl(:P1_COURSE_SEARCH, b.NAME)',
'order by b.CREATION_DATE desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_COURSE_SEARCH'
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
 p_id=>wwv_flow_imp.id(298441635619648416)
,p_query_column_id=>1
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Course ID'
,p_column_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:RP,27:P27_COURSE:#COURSE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298441746148648417)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Course Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298441899068648418)
,p_query_column_id=>3
,p_column_alias=>'OBJECT_VERSION_NUMBER'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298441987647648419)
,p_query_column_id=>4
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442093397648420)
,p_query_column_id=>5
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Creation Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442115543648421)
,p_query_column_id=>6
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442296128648422)
,p_query_column_id=>7
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442394029648423)
,p_query_column_id=>8
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Start Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442413380648424)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE1'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442576941648425)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442620757648426)
,p_query_column_id=>11
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442780025648427)
,p_query_column_id=>12
,p_column_alias=>'ATTRIBUTE3'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442855519648428)
,p_query_column_id=>13
,p_column_alias=>'ATTRIBUTE4'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298442957711648429)
,p_query_column_id=>14
,p_column_alias=>'ATTRIBUTE5'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443086448648430)
,p_query_column_id=>15
,p_column_alias=>'ATTRIBUTE6'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443161723648431)
,p_query_column_id=>16
,p_column_alias=>'ATTRIBUTE7'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443242788648432)
,p_query_column_id=>17
,p_column_alias=>'ATTRIBUTE8'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443378897648433)
,p_query_column_id=>18
,p_column_alias=>'ATTRIBUTE9'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443427405648434)
,p_query_column_id=>19
,p_column_alias=>'SELF_ENROLL'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443528728648435)
,p_query_column_id=>20
,p_column_alias=>'CATALOGUE_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Catalogue'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, catalogue_id r',
'from xxslm.XXSLM_CATALOGES',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443623014648436)
,p_query_column_id=>21
,p_column_alias=>'OFFERING_ID'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443753994648437)
,p_query_column_id=>22
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443869942648438)
,p_query_column_id=>23
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298443914659648439)
,p_query_column_id=>24
,p_column_alias=>'ACCESS_TYPE'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298444071639648440)
,p_query_column_id=>25
,p_column_alias=>'ASSESSMENT'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298444195191648441)
,p_query_column_id=>26
,p_column_alias=>'LEARN_ADMIN'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298444281046648442)
,p_query_column_id=>27
,p_column_alias=>'ACCESS_LIST'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(298444314755648443)
,p_query_column_id=>28
,p_column_alias=>'TEST_ID'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(307617241570063712)
,p_plug_name=>'Supervisor KPI Approval'
,p_parent_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000040'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(307617319093063713)
,p_plug_name=>'Employee Learning KPI Detials'
,p_parent_plug_id=>wwv_flow_imp.id(307617241570063712)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  ',
'  a.EMPLOYEE,               ',
'  b.APPRAISAL_PLAN APPRAISAL,',
'  b.INDICATOR_TYPE,',
'  b.COURSE_ID CourseName,',
'  b.COURSE_ID LINK',
'from xxpermgt_emp_task_setup a, xxslm.xxslm_performance_indicator b',
'where a.APPRAISAL_ID = b.APPRAISAL_PLAN',
'and ',
'--and ',
'b.COURSE_ID = NVL(:P1_COURSE,b.COURSE_ID)',
'--in (select APPRAISAL_PLAN from xxslm.xxslm_performance_indicator where COURSE_ID = NVL(:P1_COURSE,COURSE_ID) )',
'and a.appraisal_id =:P1_APPRAISAL                 ',
'and EMPLOYEE in (select person_id from xxhrms.xxhrms_assignments where supervisor = :AP_STAFF_ID and company_code = :AP_COMPANY_CODE)               ',
'and b.COMPANY_CODE = :AP_COMPANY_CODE',
'and EMPLOYEE in (select staff_id from xxslm.xxslm_exam_summary where COURSE_ID  = :P1_COURSE)    ',
'and SUPERVISOR_COMMENT is null'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1_COURSE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307617521862063715)
,p_name=>'EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(26312049180422727)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307617816351063718)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Indicator Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307618053889063720)
,p_name=>'APPRAISAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Appraisal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(300009633571926267)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307618829440063728)
,p_name=>'COURSENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSENAME'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Course Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(300046306771525956)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307618995623063729)
,p_name=>'LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'&nbsp'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:RP,39:P39_APPRAISAL,P39_COURSE,P39_STAFF:&APPRAISAL.,&COURSENAME.,&EMPLOYEE.'
,p_link_text=>'Click to Approve'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(307617486692063714)
,p_internal_uid=>307617486692063714
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(307629602151309250)
,p_interactive_grid_id=>wwv_flow_imp.id(307617486692063714)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(307629786065309250)
,p_report_id=>wwv_flow_imp.id(307629602151309250)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307630244687309252)
,p_view_id=>wwv_flow_imp.id(307629786065309250)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(307617521862063715)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307631740238309260)
,p_view_id=>wwv_flow_imp.id(307629786065309250)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(307617816351063718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307634131661343274)
,p_view_id=>wwv_flow_imp.id(307629786065309250)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(307618053889063720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307647175032522716)
,p_view_id=>wwv_flow_imp.id(307629786065309250)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(307618829440063728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307651186641545452)
,p_view_id=>wwv_flow_imp.id(307629786065309250)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(307618995623063729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22360494526787137)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22359530227787128)
,p_button_name=>'CHANGE_PASSWORD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Click here to change password'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19687718173197099)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(64361022983035829)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19686733156197097)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64358469681938770)
,p_button_name=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--primary:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'View More'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:RP,45:P45_START_DATE,P45_END_DATE:&P1_FIRST_DAY.,&AP_GLOBAL_DATE.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19645244293197017)
,p_name=>'P1_WLCM'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_prompt=>'New'
,p_source=>'Welcome &P1_NAME.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19645637036197018)
,p_name=>'P1_LOGIN2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19646006255197019)
,p_name=>'P1_NAME'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cattributes_element=>'Style="font-size:16px;font-weight:bold;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19646413323197021)
,p_name=>'P1_LOGIN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_prompt=>'Your Last Login:'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19646885791197022)
,p_name=>'P1_STAFF_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19647242288197023)
,p_name=>'P1_LVE_CNT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19647676402197024)
,p_name=>'P1_LON_CNT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19648067293197025)
,p_name=>'P1_AUTH_YN'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19683822616197092)
,p_name=>'P1_EMP_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55435093164677803)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:100px;height:120px"'
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select picture from xxhrms.xxhrms_picture',
    'where staff_id =(select staff_id from xxadm.XXADM_PASSWORD where LOGNAME = :AP_USERNAME)')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19685298714197094)
,p_name=>'P1_PRESENT_CNT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(56457596543324060)
,p_prompt=>'Present Cnt'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19685655166197095)
,p_name=>'P1_ABSENT_CNT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(56457596543324060)
,p_prompt=>'Absent Cnt'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19686008767197096)
,p_name=>'P1_EARLY_CNT'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(56457596543324060)
,p_prompt=>'Early Cnt'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19688188799197100)
,p_name=>'P1_ATT_START_DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(64361022983035829)
,p_prompt=>'Start Date'
,p_source=>'last_day(ADD_MONTHS(trunc(sysdate),-1))+1'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_date', '&P1_ATT_MAX_DT.',
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19688550762197100)
,p_name=>'P1_ATT_END_DATE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(64361022983035829)
,p_prompt=>'End Date'
,p_source=>'sysdate'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_date', '&P1_ATT_MAX_DT.',
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19688943297197101)
,p_name=>'P1_ATT_MAX_DT'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(64361022983035829)
,p_prompt=>'Att Max Dt'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19689397117197101)
,p_name=>'P1_ATT_CHK'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(64361022983035829)
,p_prompt=>'Att Chk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306922141495464207)
,p_name=>'P1_COURSE_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(298441575047648415)
,p_prompt=>'Course Search'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct b.name a, b.name b',
'from XXSLM.XXSLM_COURSE_ADMIN a, xxslm.XXSLM_COURSES b',
'where  a.COURSE_ID = b.COURSE_ID',
'and a.staff_id = :AP_STAFF_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'NOT_ENTERABLE',
  'initial_fetch', 'FIRST_ROWSET',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307618178949063721)
,p_name=>'P1_COURSE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(307617241570063712)
,p_prompt=>'Course Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.NAME COURSE_NAME, a.COURSE_ID R',
'FROM xxslm.xxslm_performance_indicator a, xxslm.xxslm_courses b',
'where a.COURSE_ID = b.COURSE_ID',
'and a.APPRAISAL_PLAN = :P1_APPRAISAL'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1_APPRAISAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307618425530063724)
,p_name=>'P1_APPRAISAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(307617241570063712)
,p_prompt=>'Appraisal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APPRAISAL PLAN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title d, SETUP_ID r',
'from xxpermgt.xxpermgt_appraisal_plan_setup',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313172895820428323)
,p_name=>'P1_FIRST_DAY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(49875339141741622)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(306922281062464208)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_COURSE_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306922342054464209)
,p_event_id=>wwv_flow_imp.id(306922281062464208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(298441575047648415)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307618264335063722)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_COURSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307618380365063723)
,p_event_id=>wwv_flow_imp.id(307618264335063722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(307617319093063713)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66576689981631101)
,p_name=>'POP UP'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'v_count number;',
'v_profile_option varchar2(2);',
'BEGIN',
'	select count(distinct a.full_name) into v_count from xxhrms.xxhrms_emp_anniv_list_v a, xxhrms_assignments_f b',
'	where a.person_id = b.person_id',
'	and a.org = b.company_code',
'	and a.org = :AP_COMPANY_CODE',
'	and a.ANNIV_DATE = to_char(sysdate, ''Mon-dd'')',
' 	and  a.ANNIV_TYPE =  ''Birthday''',
' 	and rownum <= 1;',
'	',
'	v_profile_option := XXADM.get_profile_option(''BIRTHDAY_POP'',:SS_COMPANY_CODE);',
'	',
'IF v_profile_option = ''Y'' and v_count > 0 then',
'	return true;',
'ELSE',
'	return false;',
'END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66576700368631102)
,p_event_id=>wwv_flow_imp.id(66576689981631101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64104816706486748)
,p_attribute_01=>'$(this.affectedElements).dialog(''open'')'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19068753219409030)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select NAME into :P1_NAME',
'from xxadm.XXADM_PASSWORD',
'where upper(LOGNAME) = upper(:AP_USERNAME);',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19068753219409030
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19068864031409031)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_last_login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select LAST_LOGIN_TIME into :P1_LOGIN',
'from xxadm.XXADM_PASSWORD',
'where upper(LOGNAME) = upper(:AP_USERNAME);',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19068864031409031
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(313172706858428322)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_first_day'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select trunc(sysdate,''mm'') into :P1_FIRST_DAY ',
'from dual;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>313172706858428322
);
wwv_flow_imp.component_end;
end;
/
