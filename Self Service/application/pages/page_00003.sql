prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Performance Indicators'
,p_step_title=>'Performance Indicators'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23836051030015545)
,p_plug_name=>'Performance Indicators'
,p_icon_css_classes=>'fa-fit-to-height'
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
 p_id=>wwv_flow_imp.id(302263169565589716)
,p_plug_name=>'Performance Management'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23597672794322039)
,p_plug_name=>'Tab'
,p_parent_plug_id=>wwv_flow_imp.id(302263169565589716)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_read_only_when=>'P3_DUE_STATUS'
,p_plug_read_only_when2=>'ACTIVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23597799358322040)
,p_plug_name=>'<strong>Objectives</strong>'
,p_region_name=>'STEP'
,p_parent_plug_id=>wwv_flow_imp.id(23597672794322039)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  PERFORMANCE_ID,',
' TASK_ID,                ',
'  EMPLOYEE,               ',
'   CLASSIFICATION,',
'   null depT,',
'   null unit,',
'   null appraisal_year,',
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
'  PERFORMANCE_INDICATOR',
'from xxpermgt_emp_task_setup',
'where upper (indicator_type) = ''OBJECTIVE''',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P3_APPRAISAL_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P3_APPRAISAL_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23857088391115511)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Performance Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23857176833115512)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23857201708115513)
,p_name=>'EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23857351797115514)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Classification'
,p_label=>'Classification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(34053880287085447)
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
 p_id=>wwv_flow_imp.id(23857431012115515)
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
 p_id=>wwv_flow_imp.id(23857664372115517)
,p_name=>'WEIGHING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHING_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(23857748076115518)
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
,p_lov_id=>wwv_flow_imp.id(54988274572168533)
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
 p_id=>wwv_flow_imp.id(23857857561115519)
,p_name=>'TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TARGET'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Target'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(23857969746115520)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P3_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23858059332115521)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(23858186478115522)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(23858220920115523)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(23858378834115524)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(23858457182115525)
,p_name=>'SUPERVISOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supervisor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23858524876115526)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(23858617482115527)
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
'select task d,OBJECTIVE_ID r',
'from xxpermgt.xxpermgt_obj_lib',
'where classification = :CLASSIFICATION',
'--and COMPANY_CODE = :SS_COMPANY_CODE',
'and COMPANY_CODE IN (select distinct company_code from xxhrms.xxhrms_people_f where person_id = :AP_STAFF_ID)',
'and nvl(department, ''~'') = NVL(:DEPT, nvl(department, ''~''))',
'and nvl(unit_id, ''~'') = NVL(:UNIT, nvl(unit_id, ''~''))',
'and nvl(APPRAISAL_YEAR, ''~'') = NVL(:APPRAISAL_YEAR, nvl(APPRAISAL_YEAR, ''~''))',
'and STATUS = ''ACTIVE''',
'order by 1'))
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(23858796533115528)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P3_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23858894135115529)
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
 p_id=>wwv_flow_imp.id(31873331171863943)
,p_name=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Weight'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(33099834516526945)
,p_name=>'DEPT'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, dept_id as return_value ',
'  from XXHRMS.XXHRMS_DEPARTMENT',
'  where company_code = :AP_COMPANY_CODE',
'  and dept_id = :AP_DEP_CODE',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'46:55:56:63:47'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33099948657526946)
,p_name=>'UNIT'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UNIT_NAME as display_value, UNIT_ID as return_value ',
'  from XXHRMS.XXHRMS_units',
'  where ORGANIZATION_CODE = :AP_COMPANY_CODE',
'  and DEPT_CODE = :DEPT',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'DEPT'
,p_ajax_items_to_submit=>'DEPT'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'46:55:56:63:47'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33309688774397334)
,p_name=>'APPRAISAL_YEAR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Appraisal Year'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
,p_display_condition2=>'46:55:56:63:47'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(23856917129115510)
,p_internal_uid=>23856917129115510
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_delete_authorization_scheme=>wwv_flow_imp.id(94444643004336478)
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
 p_id=>wwv_flow_imp.id(23862771273121991)
,p_interactive_grid_id=>wwv_flow_imp.id(23856917129115510)
,p_static_id=>'333374'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(23862891700121992)
,p_report_id=>wwv_flow_imp.id(23862771273121991)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35007302174827)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(31873331171863943)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23863318636122009)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(23857088391115511)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23863847443122028)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(23857176833115512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23864384163122036)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(23857201708115513)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23864872470122043)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(23857351797115514)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23865352918122050)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(23857431012115515)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>208
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23866318955122060)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(23857664372115517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23866789145122064)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(23857748076115518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23867233790122067)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(23857857561115519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23867723424122070)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(23857969746115520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23868295702122074)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(23858059332115521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23868782425122077)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(23858186478115522)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23869264510122080)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(23858220920115523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23869700142122084)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(23858378834115524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23870253802122087)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(23858457182115525)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23870760952122091)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(23858524876115526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23871284661122094)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(23858617482115527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23871740647122097)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(23858796533115528)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33337329753810931)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(33309688774397334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34591067747869285)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(33099834516526945)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34591583391869291)
,p_view_id=>wwv_flow_imp.id(23862891700121992)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(33099948657526946)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78757520550175283)
,p_plug_name=>'<strong>Competencies</strong>'
,p_region_name=>'STEP2'
,p_parent_plug_id=>wwv_flow_imp.id(23597672794322039)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>45
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  PERFORMANCE_ID,',
' TASK_ID,                ',
'  EMPLOYEE,               ',
'   CLASSIFICATION,',
'  DESCRIPTION,',
'  WEIGHT,',
'  WEIGHING_TYPE,',
'   UNIT_OF_MEASURE,',
'  TARGET,',
'  APPRAISAL_ID,',
'  INS_BY,',
'  INS_TIME,',
'  UPDATED_BY,',
'  UPDATED_TIME,',
'  SUPERVISOR,',
'  INDICATOR_TYPE,',
'  PERFORMANCE_INDICATOR,',
'  PERFORMANCE_INDICATOR PI',
'from xxpermgt_emp_task_setup',
'where upper(indicator_type) = ''COMPETENCY''',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P3_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P3_APPRAISAL_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25557417632936424)
,p_name=>'Performance Indicators'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PI'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Performance Indicator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'45:50'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29603472575218423)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29603561129218424)
,p_name=>'EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P3_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29603681756218425)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29603789046218426)
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
 p_id=>wwv_flow_imp.id(29603873677218427)
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30136525139790298)
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
 p_id=>wwv_flow_imp.id(29603950647218428)
,p_name=>'WEIGHING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHING_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(29604066667218429)
,p_name=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_OF_MEASURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(29604119094218430)
,p_name=>'TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(29604269002218431)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P3_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29604335573218432)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29604487571218433)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29604510882218434)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29604675151218435)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29604779442218436)
,p_name=>'SUPERVISOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29604871605218437)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(29604979686218438)
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
'select task d,COMPETENCY_ID r',
'from xxpermgt.xxpermgt_comp_lib',
'where classification = :CLASSIFICATION',
'and COMPANY_CODE = :SS_COMPANY_CODE',
'and nvl(APPRAISAL_YEAR, ''~'') = NVL(:APPRAISAL_YEAR, nvl(APPRAISAL_YEAR, ''~''))'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CLASSIFICATION'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'45:50'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29605078767218439)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P3_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29605171956218440)
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
 p_id=>wwv_flow_imp.id(29605378333218442)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33309976047397337)
,p_name=>'APPRAISAL_YEAR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Appraisal Year'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct APPRAISAL_YEAR d,  APPRAISAL_YEAR r FROM XXPERMGT.XXPERMGT_COMP_LIB',
'where company_code = :AP_COMPANY_CODE',
'and nvl(COMPETENCY_ID	, ''~'') = NVL(:PERFORMANCE_INDICATOR, nvl(COMPETENCY_ID, ''~''))',
'order by 1 desc'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'46:55:56:63:47'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(29603321214218422)
,p_internal_uid=>29603321214218422
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_delete_authorization_scheme=>wwv_flow_imp.id(94444643004336478)
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
 p_id=>wwv_flow_imp.id(30146936495048723)
,p_interactive_grid_id=>wwv_flow_imp.id(29603321214218422)
,p_static_id=>'333417'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(30147055503048724)
,p_report_id=>wwv_flow_imp.id(30146936495048723)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29577194429201996)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(25557417632936424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30147561328048729)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(29603472575218423)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30148066220048733)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(29603561129218424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30148501306048735)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(29603681756218425)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>210
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30149092562048738)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(29603789046218426)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>601
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30149524494048740)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(29603873677218427)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30150073622048743)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(29603950647218428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30150555826048745)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(29604066667218429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30151047715048748)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(29604119094218430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30151594679048750)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(29604269002218431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30152049965048753)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(29604335573218432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30152505080048755)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(29604487571218433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30153031519048758)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(29604510882218434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30153589250048760)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(29604675151218435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30154093994048763)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(29604779442218436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30154528476048765)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(29604871605218437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30154986024048769)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(29604979686218438)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216.55001831054688
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30162990854114622)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(29605078767218439)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30172034635146432)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(29605378333218442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33341608688865115)
,p_view_id=>wwv_flow_imp.id(30147055503048724)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(33309976047397337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86890454268673946)
,p_plug_name=>'<strong>Survey</strong>'
,p_region_name=>'STEP3'
,p_parent_plug_id=>wwv_flow_imp.id(23597672794322039)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>55
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID,                ',
'  EMPLOYEE,               ',
'   CLASSIFICATION,',
'  DESCRIPTION,',
'--  WEIGHT,',
' -- WEIGHING_TYPE,',
'--  UNIT_OF_MEASURE,',
' -- TARGET,',
'  APPRAISAL_ID,',
'  INDICATOR_TYPE,',
'  PERFORMANCE_INDICATOR,',
' PERFORMANCE_ID',
'--  EMPLOYEE_SCORE, ',
'--  SUPERVISOR_SCORE',
'from xxpermgt_emp_task_setup ',
'WHERE upper(indicator_type) = upper(''SURVEY'')',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P3_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P3_APPRAISAL_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P3_POPT'
,p_plug_display_when_cond2=>'Y'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29605578178218444)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29605605966218445)
,p_name=>'EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P3_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29605793138218446)
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
,p_lov_id=>wwv_flow_imp.id(66465418798505583)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29605800035218447)
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
,p_max_length=>250
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
 p_id=>wwv_flow_imp.id(29605951258218448)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P3_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29606085872218449)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'SURVEY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29606120450218450)
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
'select task d,SURVEY_ID r',
'from xxpermgt.xxpermgt_SURVEY_lib',
'where classification = :CLASSIFICATION',
'and COMPANY_CODE = :SS_COMPANY_CODE',
'and nvl(APPRAISAL_YEAR, ''~'') = NVL(:APPRAISAL_YEAR, nvl(APPRAISAL_YEAR, ''~''))'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CLASSIFICATION'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30172733557195101)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30172823729195102)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P3_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30172910024195103)
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
 p_id=>wwv_flow_imp.id(33310020364397338)
,p_name=>'APPRAISAL_YEAR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Appraisal Year'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct APPRAISAL_YEAR d,  APPRAISAL_YEAR r FROM XXPERMGT.XXPERMGT_SURVEY_LIB',
'where company_code = :AP_COMPANY_CODE',
'order by 1 desc'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'46:55:56:63:47'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(29605409777218443)
,p_internal_uid=>29605409777218443
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
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
 p_id=>wwv_flow_imp.id(30178660060213545)
,p_interactive_grid_id=>wwv_flow_imp.id(29605409777218443)
,p_static_id=>'333438'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(30178720347213545)
,p_report_id=>wwv_flow_imp.id(30178660060213545)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30179221548213546)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(29605578178218444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30179739568213549)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(29605605966218445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30180206618213551)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(29605793138218446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30180752402213554)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(29605800035218447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30181253880213557)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(29605951258218448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30181748475213559)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(29606085872218449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30182213805213562)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(29606120450218450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30182719142213565)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(30172733557195101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30187159745215156)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(30172823729195102)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33343769993884078)
,p_view_id=>wwv_flow_imp.id(30178720347213545)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(33310020364397338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78765303646175288)
,p_plug_name=>'Performance Indicators'
,p_parent_plug_id=>wwv_flow_imp.id(302263169565589716)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31872030447863930)
,p_name=>'Employee Details'
,p_parent_plug_id=>wwv_flow_imp.id(78765303646175288)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.full_name,a.person_id,a.email,a.TELEPHONE1',
'from xxhrms.xxhrms_people a',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER)',
'and company_code = :SS_COMPANY_CODE'))
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
 p_id=>wwv_flow_imp.id(31872177432863931)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31872264388863932)
,p_query_column_id=>2
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37964188032622837)
,p_query_column_id=>3
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>3
,p_column_heading=>'Email'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37964287235622838)
,p_query_column_id=>4
,p_column_alias=>'TELEPHONE1'
,p_column_display_sequence=>4
,p_column_heading=>'Telephone1'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78766188542175288)
,p_plug_name=>'Employee'
,p_parent_plug_id=>wwv_flow_imp.id(78765303646175288)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78768116426175291)
,p_plug_name=>'Appraisal'
,p_parent_plug_id=>wwv_flow_imp.id(78765303646175288)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302263293655589717)
,p_plug_name=>'Not Enabled'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>'Performance Management is not enabled. Contact your Administrator'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''N'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23808250922015425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(23597672794322039)
,p_button_name=>'Notify'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Share with Manager'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_DUE_STATUS'
,p_button_condition2=>'ACTIVE'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23808669267015429)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(23597672794322039)
,p_button_name=>'Copy'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy Indicators'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP:P40_STAFF_ID,P40_CURR_APPRAISAL:&P3_STAFF_ID.,&P3_APPRAISAL_ID.'
,p_button_condition=>'P3_DUE_STATUS'
,p_button_condition2=>'ACTIVE'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97523188380847812)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_button_name=>'ViewPIP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'View Performance Improvement Plan'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from XXPERMGT_PERFORMANCE_IMPROVEMENT_PLAN',
'where staff_id = :AP_STAFF_ID',
'AND COMPANY_CODE = :SS_COMPANY_CODE'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91423824636790215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(78765303646175288)
,p_button_name=>'p2p_Appraisal'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Assign Peer to Peer KPI'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,53:P53_APPRAISAL_ID:&P3_APPRAISAL_ID.'
,p_button_condition=>':P3_P2P_CLASS is not null and :P3_USE_360 = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94836632321620401)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(78765303646175288)
,p_button_name=>'Subordinate_Appraisal'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Assign Line Manager KPI'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:RP,55:P55_APPRAISAL_ID:&P3_APPRAISAL_ID.'
,p_button_condition=>':P3_SUBORDINATE_PER is not null and :P3_USE_360 = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95310263391893307)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(78765303646175288)
,p_button_name=>'View_other_kpi'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'View Other Assigned KPIs'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP,53:P56_APPRAISAL_ID,P56_GOTO:&P3_APPRAISAL_ID.,3'
,p_button_condition=>':P3_USE_360 = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23829633583015527)
,p_name=>'P3_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78766188542175288)
,p_prompt=>'&AP_STAFF_ID_LABEL. :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select person_id d, person_id r',
'from xxhrms_assignments',
'where supervisor = (select staff_id from xxadm_password where logname = :app_user)'))
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23830054607015529)
,p_name=>'P3_EMPLOYEE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78766188542175288)
,p_prompt=>'&AP_FULLNAME_LABEL. :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23830409200015530)
,p_name=>'P3_EMAIL_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(78766188542175288)
,p_prompt=>'Email Address   :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23830888139015531)
,p_name=>'P3_CONTACT_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(78766188542175288)
,p_prompt=>'Contact Number   :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23831532103015533)
,p_name=>'P3_APPRAISAL_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_prompt=>'Appraisal Plan'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title d, SETUP_ID r',
'from xxpermgt_appraisal_plan_setup  b',
'where company_Code = :AP_COMPANY_CODE',
'',
'union',
'',
'select title d, SETUP_ID r',
'from xxpermgt_appraisal_plan_setup  b',
'where setup_id in (select distinct APPRAISAL_ID from xxpermgt_emp_task_setup where employee = :AP_STAFF_ID)',
'',
'order by 2 desc',
''))
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
 p_id=>wwv_flow_imp.id(23831932039015533)
,p_name=>'P3_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23832312806015534)
,p_name=>'P3_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23832749358015534)
,p_name=>'P3_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23833142312015535)
,p_name=>'P3_SUPERVISOR_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_source=>'select supervisor from xxhrms.xxhrms_assignments where person_id = :P3_STAFF_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23833558504015537)
,p_name=>'P3_SUPERVISOR_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_source=>'select FULLNAME from xxhrms.xxhrms_assignments where person_id = :P3_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23833952998015537)
,p_name=>'P3_SUPERVISOR_EMAIL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_source=>'select EMAIL from xxhrms.xxhrms_people where person_id = :P3_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23834377357015538)
,p_name=>'P3_MANAGER_DUE_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23834754695015539)
,p_name=>'P3_EMPLOYEE_DUE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23835189636015539)
,p_name=>'P3_APPRAISAL_TITLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_use_cache_before_default=>'NO'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23835561537015540)
,p_name=>'P3_DUE_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29537324220424229)
,p_name=>'P3_APPRIASAL_YEAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_prompt=>'Appriasal Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct APPRAISAL_YEAR d,  APPRAISAL_YEAR r FROM XXPERMGT.XXPERMGT_OBJ_LIB',
'where company_code = :AP_COMPANY_CODE',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31873525195863945)
,p_name=>'P3_POPT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91423974722790216)
,p_name=>'P3_USE_360'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91424040748790217)
,p_name=>'P3_P2P_CLASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94836741754620402)
,p_name=>'P3_SUBORDINATE_PER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(78768116426175291)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23838219254015561)
,p_name=>'get_details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_APPRAISAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23838623561015565)
,p_event_id=>wwv_flow_imp.id(23838219254015561)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23597672794322039)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31872523153863935)
,p_name=>'SET_VALUE'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(23597799358322040)
,p_triggering_element=>'PERFORMANCE_INDICATOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31872627749863936)
,p_event_id=>wwv_flow_imp.id(31872523153863935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DESCRIPTION,WEIGHT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, WEIGHT from xxpermgt_obj_lib',
'where CLASSIFICATION = :CLASSIFICATION',
'and OBJECTIVE_ID = :PERFORMANCE_INDICATOR',
'and COMPANY_CODE = :SS_COMPANY_CODE'))
,p_attribute_07=>'CLASSIFICATION,PERFORMANCE_INDICATOR'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31872853567863938)
,p_name=>'SET_VALUE_COMP'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(78757520550175283)
,p_triggering_element=>'PERFORMANCE_INDICATOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31872972417863939)
,p_event_id=>wwv_flow_imp.id(31872853567863938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DESCRIPTION,WEIGHT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION,WEIGHT from xxpermgt_COMP_lib',
'where CLASSIFICATION = :CLASSIFICATION',
'and COMPETENCY_ID = :PERFORMANCE_INDICATOR',
'and COMPANY_CODE = :SS_COMPANY_CODE'))
,p_attribute_07=>'CLASSIFICATION,PERFORMANCE_INDICATOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31873094909863940)
,p_name=>'SET_VALUE_SUR'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(86890454268673946)
,p_triggering_element=>'PERFORMANCE_INDICATOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31873134342863941)
,p_event_id=>wwv_flow_imp.id(31873094909863940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DESCRIPTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION from XXPERMGT.xxpermgt_SURVEY_lib',
'where CLASSIFICATION = :CLASSIFICATION',
'and SURVEY_ID = :PERFORMANCE_INDICATOR',
'and COMPANY_CODE = :SS_COMPANY_CODE'))
,p_attribute_07=>'CLASSIFICATION,PERFORMANCE_INDICATOR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23837012838015556)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'NOTIFY_MANAGER'
,p_attribute_01=>'notifications@softsuite.com'
,p_attribute_02=>'&P3_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Performance Indicator Setup Notification'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P3_SUPERVISOR_NAME.,</p>',
'',
'<p>&P3_EMPLOYEE_NAME. has completed the Performance Indicator Setup for the current appraisal period &P3_APPRAISAL_TITLE. </p> ',
'',
'<p>Kindly schedule a review session between yourself and  &P3_EMPLOYEE_NAME. to agree on your expectations for the appraisal period. Login to <a href=''http://softsuite.softalliance.com:8080/softsuite/f?p=1000004''>SoftSuite</a> to review on time, as t'
||'his must be completed before &P3_EMPLOYEE_DUE_DATE..</p>',
'',
'<p>If you have any questions or need assistance in setting up the Key Performance Indicators, please contact a member of the Human Resources Department.</p>',
'',
'<p>Thank You.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23808250922015425)
,p_process_success_message=>'You have successfully shared your Key Performance Indicators with your Manager.'
,p_internal_uid=>23837012838015556
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23836659005015553)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'NOTIFY_SELF'
,p_attribute_01=>'notifications@softsuite.com'
,p_attribute_02=>'&P3_EMAIL_ADDRESS.'
,p_attribute_06=>'Performance Indicator Setup Notification'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P3_EMPLOYEE_NAME.,</p>',
'',
'<p>You have completed the Performance Indicator Setup for the current appraisal period &P3_APPRAISAL_TITLE., and a notification has been sent to your manager. </p> ',
'',
'<p>If you have any questions or need futher assistance in setting up the Key Performance Indicators, please contact a member of the Human Resources Department.</p>',
'',
'<p>Thank You.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23808250922015425)
,p_process_success_message=>'You have successfully shared your Key Performance Indicators with your Manager.'
,p_internal_uid=>23836659005015553
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23858989676115530)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(23597799358322040)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Objective_grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23858989676115530
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29605223524218441)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(78757520550175283)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Competencies - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29605223524218441
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30173062592195104)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(86890454268673946)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Survey - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30173062592195104
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23837442130015557)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select a.full_name,a.person_id,a.email,a.telephone1',
'into :P3_EMPLOYEE_NAME,:P3_STAFF_ID,:P3_EMAIL_ADDRESS,:P3_CONTACT_NUMBER',
'from xxhrms_PEOPLE a',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER)',
'and a.company_code = :AP_COMPANY_CODE;',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>23837442130015557
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23837897308015559)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c_mgt is',
'    select  title,effective_start_date,effective_end_date,status,mgr_due_date,emp_due_date, ',
'       case when trunc(sysdate) between mgr_due_date and emp_due_date then ''ACTIVE'' ELSE ''INACTIVE'' END  due_status,USE_360,P2P_CLASS,SUBORDINATE_PER',
'     from xxpermgt_appraisal_plan_setup',
'    where setup_id = :P3_APPRAISAL_ID',
'    order by 1;',
'    ',
'    CURSOR P_OPT IS',
'    select xxadm.GET_PROFILE_OPTION(''SURVEY_LIB'',:SS_COMPANY_CODE) from dual;',
'begin  ',
'  open c_mgt;',
'  fetch c_mgt into :P3_APPRAISAL_TITLE,:P3_START_DATE,:P3_END_DATE,:P3_STATUS,:P3_MANAGER_DUE_DATE,:P3_EMPLOYEE_DUE_DATE,:P3_DUE_STATUS,:P3_USE_360,:P3_P2P_CLASS,:P3_SUBORDINATE_PER;',
'  close c_mgt;',
'  ',
'  OPEN P_OPT;',
'  FETCH P_OPT INTO :P3_POPT;',
'  CLOSE P_OPT;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>23837897308015559
);
wwv_flow_imp.component_end;
end;
/
