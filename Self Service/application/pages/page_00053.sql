prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_name=>'Assign Peer to Peer KPI'
,p_alias=>'WZ1'
,p_step_title=>'Assign Peer to Peer KPI'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#STEP .a-GV-table td, #STEP .a-GV-table th {',
'  overflow: visible;',
'  overflow-wrap: break-word;',
'  text-overflow: ellipsis;',
'  white-space: normal;',
'}',
'',
'#STEP2 .a-GV-table td, #STEP2 .a-GV-table th {',
'  overflow: visible;',
'  overflow-wrap: break-word;',
'  text-overflow: ellipsis;',
'  white-space: normal;',
'}',
'',
'#STEP3 .a-GV-table td, #STEP3 .a-GV-table th {',
'  overflow: visible;',
'  overflow-wrap: break-word;',
'  text-overflow: ellipsis;',
'  white-space: normal;',
'}'))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_read_only_when=>'P53_ALLOW_P2P'
,p_read_only_when2=>'N'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91425015643790227)
,p_plug_name=>'KPI Assignment'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>wwv_flow_imp.id(2483875202224049)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>'Maximum Peer to Peer KPI assignment reached.'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P53_ALLOW_P2P'
,p_plug_display_when_cond2=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113119367735483570)
,p_plug_name=>'Employee List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.person_id,',
'       x.full_name,',
'       x.title,',
'       x.email,',
'       x.telephone1,',
'       x.company_code,',
'       x.employment_status,',
'       y.SUB_ORGANIZATION_CODE,',
'       y.dept_code,',
'       (select distinct department from xxhrms.xxhrms_master_all where dept_code = y.dept_code)DEPARTMENT,',
'       x.ins_time people_ins,',
'       y.ins_time assign_ins,',
'       x.person_id|| x.full_name||  (select distinct department from xxhrms.xxhrms_master_all where dept_code = y.dept_code ) SEARCH',
'  from xxhrms.xxhrms_people x, xxhrms.XXHRMS_assignments y',
'where x.person_id = y.person_id(+)',
'AND X.PERSON_ID != :AP_STAFF_ID',
'--and y.supervisor = (select staff_id from xxadm_password where logname = :app_user)',
'and case ',
'	when :P53_P2P_CLASS = ''ORGANIZATION'' AND Y.COMPANY_CODE = :SS_COMPANY_CODE THEN 1',
'	WHEN :P53_P2P_CLASS = ''SUB-ORGANIZATION'' AND Y.SUB_ORGANIZATION_CODE = (SELECT SUB_ORGANIZATION_CODE FROM XXHRMS_assignments WHERE STAFF_ID = :AP_STAFF_ID AND COMPANY_CODE = :SS_COMPANY_CODE) THEN 1',
'	WHEN :P53_P2P_CLASS = ''DEPARTMENT'' AND Y.DEPT_CODE = (SELECT DEPT_CODE FROM XXHRMS_assignments WHERE STAFF_ID = :AP_STAFF_ID AND COMPANY_CODE = :SS_COMPANY_CODE) THEN 1',
'	WHEN :P53_P2P_CLASS = ''UNIT'' AND Y.EMP_DUTIES = (SELECT EMP_DUTIES FROM XXHRMS_assignments WHERE STAFF_ID = :AP_STAFF_ID AND COMPANY_CODE = :SS_COMPANY_CODE) THEN 1',
'	WHEN :P53_P2P_CLASS = ''GRADE'' AND Y.GRADE = (SELECT GRADE FROM XXHRMS_assignments WHERE STAFF_ID = :AP_STAFF_ID AND COMPANY_CODE = :SS_COMPANY_CODE) THEN 1',
'	WHEN :P53_P2P_CLASS = ''STAFF CATEGORY'' AND Y.STAFF_CATEGORY = (SELECT STAFF_CATEGORY FROM XXHRMS_assignments WHERE STAFF_ID = :AP_STAFF_ID AND COMPANY_CODE = :SS_COMPANY_CODE) THEN 1',
'	WHEN :P53_P2P_CLASS = ''JOB TITLE'' AND Y.JOB_ID = (SELECT JOB_ID FROM XXHRMS_assignments WHERE STAFF_ID = :AP_STAFF_ID AND COMPANY_CODE = :SS_COMPANY_CODE) THEN 1',
'	ELSE 0',
'	END = 1',
'and x.employment_status = ''Active Employee''',
'and sysdate between x.effective_start_date and NVL(x.effective_End_date,sysdate)',
'and y.company_code = :AP_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP:P53_STAFF_ID,P53_EMPLOYEE_NAME:&PERSON_ID.,&FULL_NAME.',
  'list_attributes', '&FULL_NAME.',
  'list_entry_attributes', '&TELEPHONE1.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_column', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    '<i><b>&AP_DEPARTMENT_LABEL. : </b><font color="green">&DEPARTMENT.</font></i>',
    '<i><b>Telephone: </b><font color="green">&TELEPHONE1.</font></i>',
    '</pre>',
    '')),
  'text_formatting', '<b>&FULL_NAME. - &PERSON_ID.</b>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113119566717483572)
,p_plug_name=>'tab'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113123282393483609)
,p_plug_name=>'Objectives'
,p_parent_plug_id=>wwv_flow_imp.id(113119566717483572)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID,                ',
'  EMPLOYEE,               ',
'   CLASSIFICATION,',
'   null depT,',
'   null unit,',
'  DESCRIPTION,',
'  WEIGHT,',
'  WEIGHING_TYPE,',
'  UNIT_OF_MEASURE,',
'  TARGET,',
'  APPRAISAL_ID,',
'  INS_BY,',
'  INS_TIME,',
'  UPDATED_BY,',
'  UPDATED_TIME,',
'  SUPERVISOR,',
'  INDICATOR_TYPE,',
'  PERFORMANCE_INDICATOR,',
'COMPANY_CODE ',
'from xxpermgt_P2P_task_setup b',
'where upper(indicator_type) = upper(''Objective'')',
'and employee = :P53_STAFF_ID',
'and appraisal_id = :P53_APPRAISAL_ID',
'AND INS_BY = :APP_USER'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_read_only_when=>'P53_DUE_STATUS'
,p_plug_read_only_when2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33309741502397335)
,p_name=>'APPRAISAL_YEAR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Appraisal Year'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct APPRAISAL_YEAR d,  APPRAISAL_YEAR r FROM XXPERMGT.XXPERMGT_OBJ_LIB',
'where company_code = :AP_COMPANY_CODE',
'order by 1 desc'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'46:55:56'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115715940410466779)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115716037882466780)
,p_name=>'EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P53_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115716079791466781)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Classification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(94328492059898000)
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
 p_id=>wwv_flow_imp.id(115716187387466782)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115716301006466783)
,p_name=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Weight'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct MEANING d, to_number(LOOKUP_TYPE_CODE) r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''APPR_WEIGHT'''))
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
 p_id=>wwv_flow_imp.id(115716385351466784)
,p_name=>'WEIGHING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHING_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115716479809466785)
,p_name=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_OF_MEASURE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit of Measure'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(94327036458897963)
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
 p_id=>wwv_flow_imp.id(115716603267466786)
,p_name=>'TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TARGET'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Target'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':AP_COMPANY_CODE not in (48, 45) '
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115716687053466787)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P53_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115717222968466792)
,p_name=>'SUPERVISOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115717339411466793)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'OBJECTIVE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115717374605466794)
,p_name=>'PERFORMANCE_INDICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_INDICATOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Performance Indicator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct task d,OBJECTIVE_ID r',
'from xxpermgt_obj_lib aa',
'where classification = :CLASSIFICATION',
'and nvl(department, ''~'') = NVL(:DEPT, nvl(department, ''~''))',
'and nvl(unit_id, ''~'') = NVL(:UNIT, nvl(unit_id, ''~''))',
'and nvl(APPRAISAL_YEAR, ''~'') = NVL(:APPRAISAL_YEAR, nvl(APPRAISAL_YEAR, ''~''))',
'and company_code = :AP_COMPANY_CODE',
'order by substr(task,1,1) ASC'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CLASSIFICATION,DEPT,UNIT'
,p_ajax_items_to_submit=>'CLASSIFICATION,DEPT,UNIT'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115717526746466795)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P53_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115717605999466796)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115718061559466801)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115718163410466802)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115718347077466803)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115718390313466804)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115718480967466805)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127397570649424606)
,p_name=>'UNIT'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UNIT_NAME as display_value, UNIT_ID as return_value ',
'  from XXHRMS.XXHRMS_units',
'  where ORGANIZATION_CODE = :AP_COMPANY_CODE',
'  and DEPT_CODE = :DEPT',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'DEPT'
,p_ajax_items_to_submit=>'DEPT'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'46:55:56'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127397684104424607)
,p_name=>'DEPT'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, dept_id as return_value ',
'  from XXHRMS.XXHRMS_DEPARTMENT',
'  where company_code = :AP_COMPANY_CODE',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'46:55:56'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(115715821948466778)
,p_internal_uid=>115715821948466778
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(115722464133499224)
,p_interactive_grid_id=>wwv_flow_imp.id(115715821948466778)
,p_static_id=>'333388'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(115722599842499224)
,p_report_id=>wwv_flow_imp.id(115722464133499224)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33338717706835985)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(33309741502397335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115723086608499229)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(115715940410466779)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115723629586499235)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(115716037882466780)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115724098188499239)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(115716079791466781)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115724615891499241)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(115716187387466782)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115725058035499244)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(115716301006466783)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115725622013499247)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(115716385351466784)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115726149644499249)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(115716479809466785)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115726566602499252)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(115716603267466786)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115727082211499255)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(115716687053466787)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115729612578499268)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(115717222968466792)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115730125150499270)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(115717339411466793)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115730581603499273)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(115717374605466794)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115731112199499276)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(115717526746466795)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115746236389845883)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(115718061559466801)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115746781031845886)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(115718163410466802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115747384021845889)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(115718347077466803)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115747964638845892)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(115718390313466804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115748636598845894)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(115718480967466805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(128778362714974022)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(127397570649424606)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56.90625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(128778855570974025)
,p_view_id=>wwv_flow_imp.id(115722599842499224)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(127397684104424607)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97.25
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(115825405949985168)
,p_plug_name=>'Competencies'
,p_parent_plug_id=>wwv_flow_imp.id(113119566717483572)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID,                ',
'  EMPLOYEE,               ',
' CLASSIFICATION,',
'  DESCRIPTION,',
'  WEIGHT,',
'  WEIGHING_TYPE,',
'  UNIT_OF_MEASURE,',
'  TARGET,',
'  APPRAISAL_ID,',
'  SUPERVISOR,',
'  INDICATOR_TYPE,',
'  PERFORMANCE_INDICATOR,',
'  company_code',
'from xxpermgt_P2P_task_setup b',
'where upper(indicator_type) = ''COMPETENCY''',
'and employee = :P53_STAFF_ID',
'and appraisal_id = :P53_APPRAISAL_ID',
'AND INS_BY = :APP_USER'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_read_only_when=>'P53_DUE_STATUS'
,p_plug_read_only_when2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33310257505397340)
,p_name=>'APPRAISAL_YEAR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct APPRAISAL_YEAR d,  APPRAISAL_YEAR r FROM XXPERMGT.XXPERMGT_COMP_LIB',
'where company_code = :AP_COMPANY_CODE',
'order by 1 desc'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'46:55:56:63:47'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91424400273790221)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91424589603790222)
,p_name=>'TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Target'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115825638414985170)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115825725320985171)
,p_name=>'EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P53_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826015982985174)
,p_name=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Weight'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826079258985175)
,p_name=>'WEIGHING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHING_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826188557985176)
,p_name=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_OF_MEASURE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit Of Measure'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(94327036458897963)
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
 p_id=>wwv_flow_imp.id(115826406128985178)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P53_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826489920985179)
,p_name=>'SUPERVISOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826555491985180)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'COMPETENCY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826683249985181)
,p_name=>'PERFORMANCE_INDICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_INDICATOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Performance Indicator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task d,COMPETENCY_ID r',
'from xxpermgt_comp_lib',
'where classification = :CLASSIFICATION',
'and company_code = :AP_COMPANY_CODE',
'and nvl(APPRAISAL_YEAR, ''~'') = NVL(:APPRAISAL_YEAR, nvl(APPRAISAL_YEAR, ''~''))'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CLASSIFICATION'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826775425985182)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826875054985183)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P53_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115826991575985184)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(115827214716985186)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Classification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30160726453091453)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(115825462320985169)
,p_internal_uid=>115825462320985169
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
 p_id=>wwv_flow_imp.id(115831301563999976)
,p_interactive_grid_id=>wwv_flow_imp.id(115825462320985169)
,p_static_id=>'333455'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(115831389600999976)
,p_report_id=>wwv_flow_imp.id(115831301563999976)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33345492606932654)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(33310257505397340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(94342365823531731)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(91424400273790221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(94342899699531748)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(91424589603790222)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115831917346999979)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(115825638414985170)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115832393487999982)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(115825725320985171)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115833901023999990)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(115826015982985174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115834369101999992)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(115826079258985175)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115834909026999995)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(115826188557985176)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115835928869000000)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(115826406128985178)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115836379189000002)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(115826489920985179)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115836922149000005)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(115826555491985180)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115837432659000007)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(115826683249985181)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115837864939000010)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(115826775425985182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115838380738000013)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(115826875054985183)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115846987016633865)
,p_view_id=>wwv_flow_imp.id(115831389600999976)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(115827214716985186)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113620146463258811)
,p_plug_name=>'Assign KPI'
,p_icon_css_classes=>'fa-clipboard-list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182622565800018166)
,p_plug_name=>'Employee Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P53_STAFF_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94299341368897752)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(113119566717483572)
,p_button_name=>'Copy'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy Performance Indicators'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:P12_STAFF_ID,P12_CURR:&P53_STAFF_ID.,&P53_APPRAISAL_ID.'
,p_button_condition=>'P53_DUE_STATUS'
,p_button_condition2=>'Replace with ACTIVE'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95312264690893327)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(113620146463258811)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91424143849790218)
,p_name=>'P53_P2P_CLASS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_prompt=>'Peer to Peer Appraisal Classification'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91424895525790225)
,p_name=>'P53_MAX_P2P_NUM'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91424900731790226)
,p_name=>'P53_ALLOW_P2P'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94317224864897885)
,p_name=>'P53_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94317564389897906)
,p_name=>'P53_EMPLOYEE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_prompt=>'&AP_FULLNAME_LABEL. :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94317934750897909)
,p_name=>'P53_APPRAISAL_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_prompt=>'Appraisal Title'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title d, SETUP_ID r',
'from xxpermgt_appraisal_plan_setup ',
'where company_code = :AP_COMPANY_CODE',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_read_only_when=>'P53_APPRAISAL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94318361477897911)
,p_name=>'P53_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94318729670897912)
,p_name=>'P53_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94319192207897913)
,p_name=>'P53_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94319528728897913)
,p_name=>'P53_CONTACT_NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94319965693897914)
,p_name=>'P53_MANAGER_DUE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94320345165897915)
,p_name=>'P53_EMAIL_ADDRESS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94320784012897915)
,p_name=>'P53_EMPLOYEE_DUE_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94321151828897916)
,p_name=>'P53_APPRAISAL_TITLE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_use_cache_before_default=>'NO'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94321585653897917)
,p_name=>'P53_DUE_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(182622565800018166)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94323348760897945)
,p_name=>'get_details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_APPRAISAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94323800994897948)
,p_event_id=>wwv_flow_imp.id(94323348760897945)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94324292643897949)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(113123282393483609)
,p_triggering_element=>'PERFORMANCE_INDICATOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94324792027897952)
,p_event_id=>wwv_flow_imp.id(94324292643897949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DESCRIPTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION from XXPERMGT.XXPERMGT_OBJ_LIB',
'WHERE OBJECTIVE_ID = :PERFORMANCE_INDICATOR'))
,p_attribute_07=>'PERFORMANCE_INDICATOR,CLASSIFICATION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94325212708897952)
,p_event_id=>wwv_flow_imp.id(94324292643897949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'WEIGHT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WEIGHT from XXPERMGT.XXPERMGT_OBJ_LIB',
'WHERE OBJECTIVE_ID = :PERFORMANCE_INDICATOR'))
,p_attribute_07=>'PERFORMANCE_INDICATOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94325657516897953)
,p_name=>'SetDesc'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(115825405949985168)
,p_triggering_element=>'PERFORMANCE_INDICATOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94326184931897954)
,p_event_id=>wwv_flow_imp.id(94325657516897953)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DESCRIPTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION',
'from xxpermgt_comp_lib',
'where COMPETENCY_ID = :PERFORMANCE_INDICATOR',
' '))
,p_attribute_07=>'PERFORMANCE_INDICATOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94326694761897954)
,p_event_id=>wwv_flow_imp.id(94325657516897953)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'WEIGHT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WEIGHT',
'from xxpermgt_comp_lib',
'where COMPETENCY_ID = :PERFORMANCE_INDICATOR',
' ',
''))
,p_attribute_07=>'PERFORMANCE_INDICATOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94308966477897847)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(113123282393483609)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Objectivesint - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>94308966477897847
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94316212021897870)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(115825405949985168)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Competencies - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>94316212021897870
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94322569610897942)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select a.full_name,a.person_id,a.email_address,a.telephone_number_1',
'into :P53_EMPLOYEE_NAME,:P53_STAFF_ID,:P53_EMAIL_ADDRESS,:P53_CONTACT_NUMBER',
'from xxhrms_master_all a',
'where a.person_id = :P53_STAFF_ID;',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>94322569610897942
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94322907302897943)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c_mgt is',
'    select  title,effective_start_date,effective_end_date,',
'	case ',
'     WHEN trunc(SYSDATE) > trunc(EFFECTIVE_END_DATE) then ''CLOSED''',
'      else ''OPEN''',
'END status,mgr_due_date,emp_due_date, ',
'        case when trunc(sysdate) between mgr_due_date and emp_due_date then ''ACTIVE'' ELSE ''INACTIVE'' END due_status,NVL(P2P_CLASS,''ORGANIZATION''),P2P_NUM',
'     from xxpermgt_appraisal_plan_setup',
'    where setup_id = :P53_APPRAISAL_ID',
'    order by 1;',
'begin  ',
'  open c_mgt;',
'  fetch c_mgt into :P53_APPRAISAL_TITLE,:P53_START_DATE,:P53_END_DATE,:P53_STATUS,:P53_MANAGER_DUE_DATE,:P53_EMPLOYEE_DUE_DATE,:P53_DUE_STATUS,:P53_P2P_CLASS,:P53_MAX_P2P_NUM;',
'  close c_mgt;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>94322907302897943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(91424759867790224)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get p2p'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT NUMBER;',
'BEGIN',
'SELECT COUNT(DISTINCT INS_BY) INTO V_CNT',
'FROM xxpermgt_P2P_task_setup',
'WHERE APPRAISAL_ID = :P53_APPRAISAL_ID',
'AND EMPLOYEE = :P53_STAFF_ID;',
'',
'IF :P53_MAX_P2P_NUM IS NULL THEN --ALWAYS ALLOW P2P',
'	:P53_ALLOW_P2P := ''Y'';',
'ELSE',
'	IF V_CNT < :P53_MAX_P2P_NUM THEN ',
'	 :P53_ALLOW_P2P := ''Y'';',
'	ELSE',
'	 :P53_ALLOW_P2P := ''N'';',
'	END IF;',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'	:P53_ALLOW_P2P := ''N'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>91424759867790224
);
wwv_flow_imp.component_end;
end;
/
