prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'PERFORMANCE APPRAISAL DISPUTE FORM'
,p_alias=>'AJ9'
,p_step_title=>'PERFORMANCE APPRAISAL DISPUTE FORM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ack_reg{',
'        line-height: 25px;',
'}'))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308093287809295739)
,p_plug_name=>'Section 3: Details of Performance Dispute   (attach supporting documents as required)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308093609912295743)
,p_plug_name=>'<P>1. Describe the nature and details of the grievance you have. Please be specific.</P>'
,p_parent_plug_id=>wwv_flow_imp.id(308093287809295739)
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308093768286295744)
,p_plug_name=>'<P>2. How is the grievance affecting your ability to perform on your job?</P>'
,p_parent_plug_id=>wwv_flow_imp.id(308093287809295739)
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308093883863295745)
,p_plug_name=>'3. Describe the attempts you have made to resolve the grievance and the outcome(s)?'
,p_parent_plug_id=>wwv_flow_imp.id(308093287809295739)
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308093970003295746)
,p_plug_name=>'<P>4.Describe some possible solutions to this grievance</P>'
,p_parent_plug_id=>wwv_flow_imp.id(308093287809295739)
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308093327207295740)
,p_plug_name=>'Confirmation & Acknowledgement'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_appraisee    varchar2(100);',
'BEGIN',
'select LAST_NAME||'' ''||FIRST_NAME||'' ''||MIDDLE_NAME into v_appraisee',
'from xxhrms.xxhrms_people a,XXHRMS_ASSIGNMENTS b',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER)',
'and a.person_id=b.staff_id;',
'HTP.P(''<div class="ack_reg">'');',
'HTP.P(''<p>I,<b><u> ''||v_appraisee ||''</u></b>, (Appraisee) hereby formally submit this Performance Appraisal Dispute Form ',
'      to seek a resolution to my grievance as stated above.</p>'');',
'',
'HTP.P(''<p>I also understand that if I do not receive a response from the appraiser and/or the Human Resources Department within 5',
'      working days, I will appeal directly to the Junior/Senior Staff Committee, as appropriate.</p>'');htp.p(''</div>'');',
'      END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308093414539295741)
,p_plug_name=>'Actions Taken (For HR Dept. Use only):'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308093549191295742)
,p_plug_name=>unistr('Final Decision (For HR Dept.  Use only) \2013 tick appropriate box:')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308094225304295749)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       SETUP_ID,',
'       PLAN_ID,',
'       STAFF_ID,',
'       SUPERVISOR_ID,',
'       DIRECTOR_HR_ID,',
'       COMPLAIN_RELATED,',
'       OTHER_COMPLAIN,',
'       DATE_OF_INCIDENCE,',
'       INDIVIDUALS_INVOLVED,',
'       DETAILS,',
'       EFFECT_ON_JOB,',
'       EMP_RESOLUTION_ATTEMPT,',
'       INCIDENCE_REPORTED_PERSONNEL,',
'       DATE_REPORTED,',
'       PERSONNEL_RESPONSE,',
'       EMP_POSSIBLE_SOLUTION,',
'       ACKNOWLEDMENT_SIGNATURE,',
'       DATE_SUBMITTED,',
'       SUPERVISOR_COMMENT,',
'       SUPERVISOR_SIGN,',
'       SUPERVISOR_DATE_SIGNED,',
'       HR_DIRECTOR_SIGN,',
'       HR_DIRECTOR_DATE_SIGNED,',
'       ACTION1,',
'       PARTICIPANTS1,',
'       COMMENT1,',
'       ACTION2,',
'       PARTICIPANTS2,',
'       COMMENT2,',
'       FINAL_DECISION,',
'       OTHER_DECISION,',
'       NOTIFIED_EMP_SIGN,',
'       EMP_NOTIFIED_DATE,',
'       NOTIFIED_SUPERVISOR_SIGN,',
'       SUPERVISOR_NOTIFIED_DATE,',
'       NOTIFIED_HR_SIGN,',
'       HR_CLOSED_DATE,',
'       NOTIFY_PARTY,',
'       COMPANY_CODE',
'  from XXPERMGT.XXPERMGT_APPRAISAL_DISPUTE',
'  WHERE STAFF_ID=(select PERSON_ID from xxhrms.xxhrms_assignments where person_id = :P42_STAFF_ID)'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP,8:P42_ID:&ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_EXACT_IGNORE',
  'text_formatting', '&DATE_OF_INCIDENCE.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(308540087391799043)
,p_plug_name=>'PERFORMANCE APPRAISAL DISPUTE FORM'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1225213951337239999)
,p_plug_name=>'Performance Management'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P42_RO'
,p_plug_read_only_when2=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1001718898197825574)
,p_plug_name=>'Review Period'
,p_parent_plug_id=>wwv_flow_imp.id(1225213951337239999)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(924333867178224640)
,p_name=>'Section 2-Appraiser Information'
,p_parent_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LAST_NAME,	FIRST_NAME,	MIDDLE_NAME,SUB_ORGANIZATION_CODE MDA,DEPT_CODE,B.emp_duties unit, staff_id,SEX Gender,JOB_ID,	GRADE,',
'null DateofLastPromotion,null DateofPostingtoMDA,null DateofPostingtoCurrentJob',
'from xxhrms.xxhrms_people a,XXHRMS_ASSIGNMENTS b',
'where  a.person_id = :P42_SUPERVISOR_ID',
'and a.person_id=b.staff_id'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P42_SUPERVISOR_ID'
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
 p_id=>wwv_flow_imp.id(308592216056134956)
,p_query_column_id=>1
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308592613863134956)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308593022300134956)
,p_query_column_id=>3
,p_column_alias=>'MIDDLE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Middle Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308593494385134956)
,p_query_column_id=>4
,p_column_alias=>'MDA'
,p_column_display_sequence=>4
,p_column_heading=>'&AP_SUBORG_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(274240147809292552)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308591066841134955)
,p_query_column_id=>5
,p_column_alias=>'DEPT_CODE'
,p_column_display_sequence=>5
,p_column_heading=>'&AP_DEPARTMENT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct name d, dept_id r',
'from xxhrms.XXHRMS_DEPARTMENT a, xxhrms.xxhrms_master_all  b',
'where a.dept_id = b.dept_code'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308591498059134955)
,p_query_column_id=>6
,p_column_alias=>'UNIT'
,p_column_display_sequence=>6
,p_column_heading=>'&AP_UNIT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct unit_name d, unit_id r',
'from xxhrms.XXHRMS_UNITS a, xxhrms.xxhrms_master_all  b',
'where (a.dept_code = b.dept_code and',
'       a.ORGANIZATION_CODE = b.ORGANIZATION_ID and',
'      ',
'       assignment_status = ''ACTIVE'' )',
'      '))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308591880588134956)
,p_query_column_id=>7
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>7
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308589040255134954)
,p_query_column_id=>8
,p_column_alias=>'GENDER'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308589488694134954)
,p_query_column_id=>9
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Job/Cadre'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48584727251701710)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308589809242134955)
,p_query_column_id=>10
,p_column_alias=>'GRADE'
,p_column_display_sequence=>10
,p_column_heading=>'Grade'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT GRADE D,  ID R',
'FROM XXHRMS.XXHRMS_GRADE_CAT_V g',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308590298609134955)
,p_query_column_id=>11
,p_column_alias=>'DATEOFLASTPROMOTION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308590664714134955)
,p_query_column_id=>12
,p_column_alias=>'DATEOFPOSTINGTOMDA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308593849459134956)
,p_query_column_id=>13
,p_column_alias=>'DATEOFPOSTINGTOCURRENTJOB'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(955411057296529924)
,p_name=>'Section 1-Personal Information'
,p_parent_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LAST_NAME,	FIRST_NAME,	MIDDLE_NAME,SUB_ORGANIZATION_CODE MDA,DEPT_CODE,B.emp_duties unit, staff_id,SEX Gender,JOB_ID,	GRADE,',
'null DateofLastPromotion,null DateofPostingtoMDA,null DateofPostingtoCurrentJob',
'from xxhrms.xxhrms_people a,XXHRMS_ASSIGNMENTS b',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER)',
'and a.person_id=b.staff_id'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(308584708215134952)
,p_query_column_id=>1
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308583595519134951)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308583984639134951)
,p_query_column_id=>3
,p_column_alias=>'MIDDLE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Middle Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308584356741134951)
,p_query_column_id=>4
,p_column_alias=>'MDA'
,p_column_display_sequence=>4
,p_column_heading=>'&AP_SUBORG_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(274240147809292552)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308585196665134952)
,p_query_column_id=>5
,p_column_alias=>'DEPT_CODE'
,p_column_display_sequence=>5
,p_column_heading=>'&AP_DEPARTMENT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct name d, dept_id r',
'from xxhrms.XXHRMS_DEPARTMENT a, xxhrms.xxhrms_master_all  b',
'where a.dept_id = b.dept_code'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308585520722134952)
,p_query_column_id=>6
,p_column_alias=>'UNIT'
,p_column_display_sequence=>6
,p_column_heading=>'&AP_UNIT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct unit_name d, unit_id r',
'from xxhrms.XXHRMS_UNITS a, xxhrms.xxhrms_master_all  b',
'where (a.dept_code = b.dept_code and',
'       a.ORGANIZATION_CODE = b.ORGANIZATION_ID and',
'      ',
'       assignment_status = ''ACTIVE'' )',
'      '))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308585999879134953)
,p_query_column_id=>7
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>7
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308586327600134953)
,p_query_column_id=>8
,p_column_alias=>'GENDER'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308586797229134953)
,p_query_column_id=>9
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Job/Cadre'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48584727251701710)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308587115453134953)
,p_query_column_id=>10
,p_column_alias=>'GRADE'
,p_column_display_sequence=>10
,p_column_heading=>'Grade'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT GRADE D,  ID R',
'FROM XXHRMS.XXHRMS_GRADE_CAT_V g',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308587544758134953)
,p_query_column_id=>11
,p_column_alias=>'DATEOFLASTPROMOTION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308587952010134954)
,p_query_column_id=>12
,p_column_alias=>'DATEOFPOSTINGTOMDA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(308588312098134954)
,p_query_column_id=>13
,p_column_alias=>'DATEOFPOSTINGTOCURRENTJOB'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(308540730294799044)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(308540640044799044)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P42_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(308540517883799044)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P42_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(308540463474799044)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P42_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(308575799832134946)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P42_RO'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(308542339367799045)
,p_branch_action=>'f?p=&APP_ID.:42:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308542757882799046)
,p_name=>'P42_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(308540087391799043)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308544674961799054)
,p_name=>'P42_DIRECTOR_HR_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(308540087391799043)
,p_use_cache_before_default=>'NO'
,p_source=>'DIRECTOR_HR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308545076422799054)
,p_name=>'P42_COMPLAIN_RELATED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(308540087391799043)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Complain Related'
,p_source=>'COMPLAIN_RELATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Performance Plan;Performance Plan,Quarterly Review;Quarterly Review,End-of-Year Appraisal;End-of-Year Appraisal,Performance Improvement Plan;Performance Improvement Plan,Other(s);Other(s)'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308545448499799055)
,p_name=>'P42_OTHER_COMPLAIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(308540087391799043)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Other Complain'
,p_source=>'OTHER_COMPLAIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308545846468799055)
,p_name=>'P42_DATE_OF_INCIDENCE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(308093609912295743)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Of Incidence'
,p_source=>'DATE_OF_INCIDENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308546276233799055)
,p_name=>'P42_INDIVIDUALS_INVOLVED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(308093609912295743)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Individuals Involved'
,p_source=>'INDIVIDUALS_INVOLVED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308546681197799055)
,p_name=>'P42_DETAILS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(308093609912295743)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Details'
,p_source=>'DETAILS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308547074175799055)
,p_name=>'P42_EFFECT_ON_JOB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(308093768286295744)
,p_use_cache_before_default=>'NO'
,p_source=>'EFFECT_ON_JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308547841431799056)
,p_name=>'P42_INCIDENCE_REPORTED_PERSONNEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(308093883863295745)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Who did you speak to:'
,p_source=>'INCIDENCE_REPORTED_PERSONNEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308548260411799056)
,p_name=>'P42_DATE_REPORTED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(308093883863295745)
,p_use_cache_before_default=>'NO'
,p_prompt=>'On what dates:'
,p_source=>'DATE_REPORTED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308548625236799056)
,p_name=>'P42_PERSONNEL_RESPONSE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(308093883863295745)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responses/Outcomes:'
,p_source=>'PERSONNEL_RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308549092887799056)
,p_name=>'P42_EMP_POSSIBLE_SOLUTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(308093970003295746)
,p_use_cache_before_default=>'NO'
,p_source=>'EMP_POSSIBLE_SOLUTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308549498792799056)
,p_name=>'P42_ACKNOWLEDMENT_SIGNATURE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(308093327207295740)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appraisee Signature:'
,p_source=>'ACKNOWLEDMENT_SIGNATURE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NOT SIGNED',
  'off_value', 'N',
  'on_label', 'SIGNED',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308549896883799056)
,p_name=>'P42_DATE_SUBMITTED'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(308093327207295740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date Appeal Submitted:'
,p_source=>'DATE_SUBMITTED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308550289955799057)
,p_name=>'P42_SUPERVISOR_COMMENT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(308093327207295740)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Appraiser\2019s Comments:')
,p_source=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308550601376799057)
,p_name=>'P42_SUPERVISOR_SIGN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(308093327207295740)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Appraiser\2019s Signature:')
,p_source=>'SUPERVISOR_SIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NOT SIGNED',
  'off_value', 'N',
  'on_label', 'SIGNED',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308551083991799057)
,p_name=>'P42_SUPERVISOR_DATE_SIGNED'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(308093327207295740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date:'
,p_source=>'SUPERVISOR_DATE_SIGNED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308551841716799058)
,p_name=>'P42_HR_DIRECTOR_SIGN'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(308093327207295740)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Director HR\2019s Signature:')
,p_source=>'HR_DIRECTOR_SIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NOT SIGNED',
  'off_value', 'N',
  'on_label', 'SIGNED',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308552292218799058)
,p_name=>'P42_HR_DIRECTOR_DATE_SIGNED'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(308093327207295740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_source=>'HR_DIRECTOR_DATE_SIGNED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308553068895799058)
,p_name=>'P42_ACTION1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(308093414539295741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nature of Action:'
,p_source=>'ACTION1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308553430599799058)
,p_name=>'P42_PARTICIPANTS1'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(308093414539295741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Participants:'
,p_source=>'PARTICIPANTS1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LAST_NAME||'' ''||FIRST_NAME, PERSON_ID',
'from xxhrms.xxhrms_people where COMPANY_CODE = :SS_COMPANY_CODE'))
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308553827308799058)
,p_name=>'P42_COMMENT1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(308093414539295741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'COMMENTS/FINDINGS:'
,p_source=>'COMMENT1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1500
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308554235822799058)
,p_name=>'P42_ACTION2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(308093414539295741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nature of Action:'
,p_source=>'ACTION2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308554679134799059)
,p_name=>'P42_PARTICIPANTS2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(308093414539295741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Participants:'
,p_source=>'PARTICIPANTS2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LAST_NAME||'' ''||FIRST_NAME, PERSON_ID',
'from xxhrms.xxhrms_people where COMPANY_CODE = :SS_COMPANY_CODE'))
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308555087057799059)
,p_name=>'P42_COMMENT2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(308093414539295741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'COMMENTS/FINDINGS:'
,p_source=>'COMMENT2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308555472359799059)
,p_name=>'P42_FINAL_DECISION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Final Decision'
,p_source=>'FINAL_DECISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Performance appraisal to be retained;Performance appraisal to be retained,Supervisor to revise performance appraisal;Supervisor to revise performance appraisal,Supervisor to undertake new performance appraisal;Supervisor to undertake new perf'
||'ormance appraisal,Employee to be appraised by another appraiser;Employee to be appraised by another appraiser,Refer to Junior/Senior Staff Committee (as appropriate);Refer to Junior/Senior Staff Committee (as appropriate),Others (please explain below'
||');Others (please explain below)'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308555893619799059)
,p_name=>'P42_OTHER_DECISION'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Other Decision'
,p_source=>'OTHER_DECISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308556254453799059)
,p_name=>'P42_NOTIFIED_EMP_SIGN'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Appraisee\2019s Signature:')
,p_source=>'NOTIFIED_EMP_SIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NOT SIGNED',
  'off_value', 'N',
  'on_label', 'SIGNED',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308556686207799060)
,p_name=>'P42_EMP_NOTIFIED_DATE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Notified'
,p_source=>'EMP_NOTIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308557478033799060)
,p_name=>'P42_NOTIFIED_SUPERVISOR_SIGN'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Appraiser\2019s Signature:')
,p_source=>'NOTIFIED_SUPERVISOR_SIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NOT SIGNED',
  'off_value', 'N',
  'on_label', 'SIGNED',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308557898043799060)
,p_name=>'P42_SUPERVISOR_NOTIFIED_DATE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Notified:'
,p_source=>'SUPERVISOR_NOTIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308558604011799060)
,p_name=>'P42_NOTIFIED_HR_SIGN'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Director HR\2019s Signature:')
,p_source=>'NOTIFIED_HR_SIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NOT SIGNED',
  'off_value', 'N',
  'on_label', 'SIGNED',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308559090528799060)
,p_name=>'P42_HR_CLOSED_DATE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Case closed:'
,p_source=>'HR_CLOSED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308559836287799061)
,p_name=>'P42_NOTIFY_PARTY'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(308093549191295742)
,p_use_cache_before_default=>'NO'
,p_source=>'NOTIFY_PARTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308576182856134946)
,p_name=>'P42_SETUP_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_prompt=>'Select Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct YEAR d, setup_id r',
'from  XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT ',
'order by YEAR desc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308576585642134947)
,p_name=>'P42_SETUP_ID_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308576928374134947)
,p_name=>'P42_APPRAISAL_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_prompt=>'Appraisal Plan'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TITLE d, PLAN_ID r',
'from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P42_SETUP_ID',
'and STATUS=''OPEN''',
'and company_code=:AP_COMPANY_CODE',
'',
'union',
'',
'select TITLE d, PLAN_ID r',
'from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P42_SETUP_ID',
'AND :P42_RO=''Y''',
'--and STATUS=''OPEN''',
'and company_code=:AP_COMPANY_CODE',
'',
'order by R'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308577235680134948)
,p_name=>'P42_PARENT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308577698471134948)
,p_name=>'P42_PLAN_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308578024821134948)
,p_name=>'P42_START_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308578499491134948)
,p_name=>'P42_END_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308578820886134948)
,p_name=>'P42_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308579240806134948)
,p_name=>'P42_SUPERVISOR_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(308540087391799043)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LS00004179'
,p_source=>'SUPERVISOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308579667346134949)
,p_name=>'P42_SUPERVISOR_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_source=>'select FULLNAME from xxhrms.xxhrms_assignments where person_id = :P42_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308580060428134949)
,p_name=>'P42_SUPERVISOR_EMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_source=>'select EMAIL from xxhrms.xxhrms_people where person_id = :P42_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308580441228134949)
,p_name=>'P42_MANAGER_DUE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308580878744134949)
,p_name=>'P42_EMPLOYEE_DUE_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308581278968134950)
,p_name=>'P42_APPRAISAL_TITLE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308581600323134950)
,p_name=>'P42_DUE_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308582046372134950)
,p_name=>'P42_POPT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308582410056134950)
,p_name=>'P42_RO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1001718898197825574)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308582827482134950)
,p_name=>'P42_STAFF_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(308540087391799043)
,p_use_cache_before_default=>'NO'
,p_source=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(308551564594799057)
,p_validation_name=>'P42_SUPERVISOR_DATE_SIGNED must be timestamp'
,p_validation_sequence=>220
,p_validation=>'P42_SUPERVISOR_DATE_SIGNED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(308551083991799057)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(308552738783799058)
,p_validation_name=>'P42_HR_DIRECTOR_DATE_SIGNED must be timestamp'
,p_validation_sequence=>240
,p_validation=>'P42_HR_DIRECTOR_DATE_SIGNED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(308552292218799058)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(308557167105799060)
,p_validation_name=>'P42_EMP_NOTIFIED_DATE must be timestamp'
,p_validation_sequence=>340
,p_validation=>'P42_EMP_NOTIFIED_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(308556686207799060)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(308558354583799060)
,p_validation_name=>'P42_SUPERVISOR_NOTIFIED_DATE must be timestamp'
,p_validation_sequence=>360
,p_validation=>'P42_SUPERVISOR_NOTIFIED_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(308557898043799060)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(308559552590799061)
,p_validation_name=>'P42_HR_CLOSED_DATE must be timestamp'
,p_validation_sequence=>380
,p_validation=>'P42_HR_CLOSED_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(308559090528799060)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(311598099406414502)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_COMPLAIN_RELATED'
,p_condition_element=>'P42_COMPLAIN_RELATED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other(s)'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(311598197389414503)
,p_event_id=>wwv_flow_imp.id(311598099406414502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_OTHER_COMPLAIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(311598279996414504)
,p_event_id=>wwv_flow_imp.id(311598099406414502)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_OTHER_COMPLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(308560650512799061)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XXPERMGT_APPRAISAL_DISPUTE'
,p_attribute_01=>'XXPERMGT'
,p_attribute_02=>'XXPERMGT_APPRAISAL_DISPUTE'
,p_attribute_03=>'P42_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>308560650512799061
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(308561034520799061)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XXPERMGT_APPRAISAL_DISPUTE'
,p_attribute_01=>'XXPERMGT'
,p_attribute_02=>'XXPERMGT_APPRAISAL_DISPUTE'
,p_attribute_03=>'P42_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>308561034520799061
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(308561482160799062)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(308540640044799044)
,p_internal_uid=>308561482160799062
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(308574895502045156)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select --a.full_name,',
'a.person_id',
'--,a.email,a.telephone1',
'into --:P38_EMPLOYEE_NAME,',
':P42_STAFF_ID',
'--,:P38_EMAIL_ADDRESS,:P38_CONTACT_NUMBER',
'from xxhrms_PEOPLE a',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER);',
'',
'',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>308574895502045156
);
wwv_flow_imp.component_end;
end;
/
