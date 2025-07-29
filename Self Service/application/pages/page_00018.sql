prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_name=>'Appraisal Result'
,p_step_title=>'Appraisal Result'
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
 p_id=>wwv_flow_imp.id(30338814592972904)
,p_plug_name=>'Appraisal Result'
,p_icon_css_classes=>'fa-check-square-o'
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
 p_id=>wwv_flow_imp.id(302263372048589718)
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
 p_id=>wwv_flow_imp.id(30174813308195122)
,p_plug_name=>'tab'
,p_parent_plug_id=>wwv_flow_imp.id(302263372048589718)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82627528769180862)
,p_plug_name=>'<strong>Objectives</strong>'
,p_region_name=>'STEP'
,p_parent_plug_id=>wwv_flow_imp.id(30174813308195122)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID,                ',
'  EMPLOYEE,               ',
'   CLASSIFICATION,',
'  DESCRIPTION,',
'  WEIGHT,',
' -- WEIGHING_TYPE,',
'  UNIT_OF_MEASURE,',
' -- TARGET,',
'  APPRAISAL_ID,',
'  INDICATOR_TYPE,',
'  PERFORMANCE_INDICATOR,',
'PERFORMANCE_ID,',
'  EMPLOYEE_SCORE, ',
'  EMPLOYEE_COMMENT,',
'  SUPERVISOR_SCORE,',
'  SUPERVISOR_COMMENT',
'from xxpermgt_emp_task_setup ',
'WHERE upper(indicator_type) = ''OBJECTIVE''',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P18_APPRAISAL_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_APPRAISAL_ID'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P18_APPRAISAL_ID IS NOT NULL AND :P18_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30173282617195106)
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
 p_id=>wwv_flow_imp.id(30173328331195107)
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
,p_default_expression=>'P18_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30173472384195108)
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
,p_lov_id=>wwv_flow_imp.id(54987749330168533)
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
 p_id=>wwv_flow_imp.id(30173530953195109)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30173682951195110)
,p_name=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Weight'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30173722955195111)
,p_name=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_OF_MEASURE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit Of Measure'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30173842475195112)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30173910273195113)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(30174076903195114)
,p_name=>'PERFORMANCE_INDICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_INDICATOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Performance Indicator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task d,OBJECTIVE_ID r',
'from xxpermgt.xxpermgt_obj_lib',
'where classification = :CLASSIFICATION',
'and COMPANY_CODE = :SS_COMPANY_CODE'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CLASSIFICATION'
,p_ajax_items_to_submit=>'CLASSIFICATION'
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
 p_id=>wwv_flow_imp.id(30174132091195115)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(30174296989195116)
,p_name=>'EMPLOYEE_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''PER_RATING''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''PER_RATING'' ',
'ORDER BY 1'))
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
 p_id=>wwv_flow_imp.id(30174327850195117)
,p_name=>'SUPERVISOR_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_SCORE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Supervisor Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''PER_RATING''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''PER_RATING'' ',
'ORDER BY 1'))
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
 p_id=>wwv_flow_imp.id(30174414770195118)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30174586877195119)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33353224231631740)
,p_name=>'EMPLOYEE_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'&AP_EMPLOYEE_COMMENT_LABEL.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(33353386152631741)
,p_name=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'&AP_SUPERVISOR_COMMENT_LABEL.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(30173156781195105)
,p_internal_uid=>30173156781195105
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_imp.id(30357928158460238)
,p_interactive_grid_id=>wwv_flow_imp.id(30173156781195105)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(30358033639460238)
,p_report_id=>wwv_flow_imp.id(30357928158460238)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30358536794460240)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(30173282617195106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30359047059460243)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(30173328331195107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30359590449460245)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(30173472384195108)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>182
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30360014143460247)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(30173530953195109)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>274
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30360599936460250)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(30173682951195110)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30361071629460252)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(30173722955195111)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30361587239460255)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(30173842475195112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30362073997460257)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(30173910273195113)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30362577458460260)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(30174076903195114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30363043879460262)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(30174132091195115)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30363533674460265)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(30174296989195116)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30364082352460267)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(30174327850195117)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30370063437468722)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(30174414770195118)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33540316912553113)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(33353224231631740)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>173
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33540809341553118)
,p_view_id=>wwv_flow_imp.id(30358033639460238)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(33353386152631741)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205.99992656707764
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(38437766003756212)
,p_interactive_grid_id=>wwv_flow_imp.id(30173156781195105)
,p_name=>'Objectives'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(38437871484756212)
,p_report_id=>wwv_flow_imp.id(38437766003756212)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38438374639756214)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(30173282617195106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38438884904756217)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(30173328331195107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38439428294756219)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(30173472384195108)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>182
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38439851988756221)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(30173530953195109)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>331
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38440437781756224)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(30173682951195110)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38440909474756226)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(30173722955195111)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38441425084756229)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(30173842475195112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38441911842756231)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(30173910273195113)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38442415303756234)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(30174076903195114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38442881724756236)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(30174132091195115)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38443371519756239)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(30174296989195116)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38443920197756241)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(30174327850195117)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38449901282764696)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(30174414770195118)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41620154757849087)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(33353224231631740)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41620647186849092)
,p_view_id=>wwv_flow_imp.id(38437871484756212)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(33353386152631741)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85494025213576482)
,p_plug_name=>'<strong>Competencies</strong>'
,p_region_name=>'STEP2'
,p_parent_plug_id=>wwv_flow_imp.id(30174813308195122)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TASK_ID,                ',
'  EMPLOYEE,               ',
'   CLASSIFICATION,',
'  DESCRIPTION,',
'  WEIGHT,',
' -- WEIGHING_TYPE,',
'  UNIT_OF_MEASURE,',
' -- TARGET,',
'  APPRAISAL_ID,',
'  INDICATOR_TYPE,',
'  PERFORMANCE_INDICATOR,',
'PERFORMANCE_ID,',
'EMPLOYEE_SCORE, ',
'  EMPLOYEE_COMMENT,',
'  SUPERVISOR_SCORE,',
'  SUPERVISOR_COMMENT,',
'  ASCII(SUBSTR(PERFORMANCE_INDICATOR,1,1)) P_SORT',
'from xxpermgt_emp_task_setup ',
'WHERE upper(indicator_type) = ''COMPETENCY''',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P18_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_APPRAISAL_ID'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P18_APPRAISAL_ID IS NOT NULL AND :P18_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8895103347197326)
,p_name=>'P_SORT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P_SORT'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'P Sort'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32559928687467002)
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
 p_id=>wwv_flow_imp.id(32560035181467003)
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
 p_id=>wwv_flow_imp.id(32560148145467004)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32560299163467005)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32560339277467006)
,p_name=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Weight'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32560484232467007)
,p_name=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_OF_MEASURE'
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
 p_id=>wwv_flow_imp.id(32560517962467008)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
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
 p_id=>wwv_flow_imp.id(32560672700467009)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
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
 p_id=>wwv_flow_imp.id(32560759819467010)
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
'and COMPANY_CODE = :SS_COMPANY_CODE'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CLASSIFICATION'
,p_ajax_items_to_submit=>'CLASSIFICATION'
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
 p_id=>wwv_flow_imp.id(32560845229467011)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(32560963926467012)
,p_name=>'EMPLOYEE_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''PER_RATING''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''PER_RATING'' ',
'ORDER BY 1'))
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'48'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32561061944467013)
,p_name=>'SUPERVISOR_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_SCORE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Supervisor Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''PER_RATING''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''PER_RATING'' ',
'ORDER BY 1'))
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
 p_id=>wwv_flow_imp.id(32562046755467023)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32562115860467024)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33353424947631742)
,p_name=>'EMPLOYEE_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'&AP_EMPLOYEE_COMMENT_LABEL.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_display_condition_type=>'NOT_EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select company_code from XXHRMS_COMPANYINFO',
'where company_code in(48, 45);'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33353559103631743)
,p_name=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'&AP_SUPERVISOR_COMMENT_LABEL.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_display_condition_type=>'NOT_EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select company_code from XXHRMS_COMPANYINFO',
'where company_code in(48, 45);'))
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(32559891588467001)
,p_internal_uid=>32559891588467001
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_imp.id(32565779974470964)
,p_interactive_grid_id=>wwv_flow_imp.id(32559891588467001)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(32565895940470964)
,p_report_id=>wwv_flow_imp.id(32565779974470964)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17011016608008184)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(8895103347197326)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32566221732470969)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(32559928687467002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32566701404470972)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(32560035181467003)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32567281790470975)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(32560148145467004)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>179
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32567738973470977)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(32560299163467005)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32568231781470980)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(32560339277467006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32568710786470982)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(32560484232467007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32569222068470984)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(32560517962467008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32569739103470987)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(32560672700467009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32570250897470989)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(32560759819467010)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32570771629470991)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(32560845229467011)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32571202444470994)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(32560963926467012)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32571717915470996)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(32561061944467013)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32584753358481290)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(32562046755467023)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33541386757553121)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(33353424947631742)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>204
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33541844081553124)
,p_view_id=>wwv_flow_imp.id(32565895940470964)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(33353559103631743)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95853014764422087)
,p_plug_name=>'<strong>Survey</strong>'
,p_region_name=>'STEP3'
,p_parent_plug_id=>wwv_flow_imp.id(30174813308195122)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
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
' PERFORMANCE_ID,',
'--  EMPLOYEE_SCORE, ',
'--  SUPERVISOR_SCORE,',
'EMPLOYEE_COMMENT,',
'SUPERVISOR_COMMENT',
'from xxpermgt_emp_task_setup ',
'WHERE upper(indicator_type) = upper(''SURVEY'')',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P18_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_APPRAISAL_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P18_POPT'
,p_plug_display_when_cond2=>'Y'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P18_APPRAISAL_ID IS NOT NULL AND :P18_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6159482495021411)
,p_name=>'EMPLOYEE_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Employee Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(32561617372467019)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(32562319728467026)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32562404782467027)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55658248353708446)
,p_name=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Supervisor Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>3000
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
 p_id=>wwv_flow_imp.id(301883317608824827)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Task Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(301883408553824828)
,p_name=>'EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(301883553390824829)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Classification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(301883613933824830)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(301883726556824831)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Indicator Type'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(301883897563824832)
,p_name=>'PERFORMANCE_INDICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_INDICATOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Performance Indicator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task d,SURVEY_ID r',
'from xxpermgt.xxpermgt_SURVEY_lib',
'where COMPANY_CODE = :SS_COMPANY_CODE'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
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
 p_id=>wwv_flow_imp.id(301883981568824833)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Performance Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(32561145895467014)
,p_internal_uid=>32561145895467014
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_imp.id(32576681707473973)
,p_interactive_grid_id=>wwv_flow_imp.id(32561145895467014)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(32576791442473973)
,p_report_id=>wwv_flow_imp.id(32576681707473973)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940988193681284)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6159482495021411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32579200847473986)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(32561617372467019)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32591019214483971)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(32562319728467026)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58127040087990841)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(55658248353708446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301992858155229249)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(301883317608824827)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301993327203229255)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(301883408553824828)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301993839536229258)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(301883553390824829)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301994377008229261)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(301883613933824830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301994871647229264)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(301883726556824831)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301995311721229266)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(301883897563824832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301995843992229269)
,p_view_id=>wwv_flow_imp.id(32576791442473973)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(301883981568824833)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(40656106870749905)
,p_interactive_grid_id=>wwv_flow_imp.id(32561145895467014)
,p_name=>'Survey'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(40656216605749905)
,p_report_id=>wwv_flow_imp.id(40656106870749905)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16020413356957216)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6159482495021411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40658626010749918)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(32561617372467019)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40670444377759903)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(32562319728467026)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(310072283318505181)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(301883317608824827)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(310072752366505187)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(301883408553824828)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(310073264699505190)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(301883553390824829)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(310073802171505193)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(301883613933824830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(310074296810505196)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(301883726556824831)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(310074736884505198)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(301883897563824832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(310075269155505201)
,p_view_id=>wwv_flow_imp.id(40656216605749905)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(301883981568824833)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(98192873052520422)
,p_interactive_grid_id=>wwv_flow_imp.id(32561145895467014)
,p_name=>'2022 HY'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(98192982787520422)
,p_report_id=>wwv_flow_imp.id(98192873052520422)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(73557179538727733)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6159482495021411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98195392192520435)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(32561617372467019)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98207210559530420)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(32562319728467026)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(367609049500275698)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(301883317608824827)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(367609518548275704)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(301883408553824828)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(367610030881275707)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(301883553390824829)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(367610568353275710)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(301883613933824830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(367611062992275713)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(301883726556824831)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(367611503066275715)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(301883897563824832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(367612035337275718)
,p_view_id=>wwv_flow_imp.id(98192982787520422)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(301883981568824833)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(301260676553549022)
,p_name=>'<strong>Survey/Test</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(30174813308195122)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select (a.Test_Name)||'' ''||''(''||No_of_Question||'' ''||''Questions''||'')''    as alert_title,',
'	null as ALERT_ACTION,',
'	''Pass Mark: ''||a.PASS_MARK as alert_desc,',
'		case ',
'		 when retake = ''Yes'' then ''info''',
'		 when retake = ''No'' then ''success''',
'		 else ''success''',
'		 end as alert_type,',
'        a.COURSE_ID C_ID, ',
'		a.COURSE_ID, decode(a.retake,null,''No'')retake,',
'        No_of_Question,',
'		a.TEST_ID T_ID, a.PASS_MARK, a.Hrs,a.Mins, b.SETUP_ID ',
'from xxslm.xxslm_available_test_v a, XXPERMGT_APPRAISAL_PLAN_SETUP b',
'where  a.COMPANY_CODE = :AP_COMPANY_CODE',
'and a.TEST_ID = b.SURVEY_ID',
'and b.SETUP_ID = :P18_APPRAISAL_ID',
'and b.SURVEY_ID not in (select test_id from xxslm.xxslm_exam_summary where staff_id = :AP_STAFF_ID and appraisal_id = :P18_APPRAISAL_ID and course_id = a.COURSE_ID and status = ''COMPLETED'')',
'',
'',
'--and not exists'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select company_Code from XXHRMS_COMPANY_SETTINGS',
'where company_Code in (45, 48)'))
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2534920060224087)
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
 p_id=>wwv_flow_imp.id(301261412537549030)
,p_query_column_id=>1
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Title'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.:A:&DEBUG.:RP,26:P26_SURVEY,P26_TEST_ID,P26_COURSE,P26_MAX,P26_PASS_MARK,P26_HRS,P26_MINS,P26_APPRASIAL_ID:#T_ID#,#T_ID#,#COURSE_ID#,#NO_OF_QUESTION#,#PASS_MARK#,#HRS#,#MINS#,#SETUP_ID#'
,p_column_linktext=>'#ALERT_TITLE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301261686621549032)
,p_query_column_id=>2
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301261536595549031)
,p_query_column_id=>3
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301261711902549033)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301261861794549034)
,p_query_column_id=>5
,p_column_alias=>'C_ID'
,p_column_display_sequence=>6
,p_column_heading=>'C Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301260961790549025)
,p_query_column_id=>6
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Course Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301261949585549035)
,p_query_column_id=>7
,p_column_alias=>'RETAKE'
,p_column_display_sequence=>7
,p_column_heading=>'Retake'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301262013402549036)
,p_query_column_id=>8
,p_column_alias=>'NO_OF_QUESTION'
,p_column_display_sequence=>8
,p_column_heading=>'No Of Question'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301262125745549037)
,p_query_column_id=>9
,p_column_alias=>'T_ID'
,p_column_display_sequence=>9
,p_column_heading=>'T Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301262248169549038)
,p_query_column_id=>10
,p_column_alias=>'PASS_MARK'
,p_column_display_sequence=>10
,p_column_heading=>'Pass Mark'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301262301193549039)
,p_query_column_id=>11
,p_column_alias=>'HRS'
,p_column_display_sequence=>11
,p_column_heading=>'Hrs'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301262495333549040)
,p_query_column_id=>12
,p_column_alias=>'MINS'
,p_column_display_sequence=>12
,p_column_heading=>'Mins'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301262675802549042)
,p_query_column_id=>13
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>13
,p_column_heading=>'Setup Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(301884142571824835)
,p_plug_name=>'Test Result'
,p_parent_plug_id=>wwv_flow_imp.id(301260676553549022)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select people.full_name as "Employee_Name",',
'      summary.course_id,',
'      summary.test_id,',
'      summary.staff_id,',
'      summary.test_name,',
'      to_char(summary.start_date, ''DD-MON-YYYY'') start_date,',
'      to_char(summary.end_date,''DD-MON-YYYY'') end_date ,',
'      ss.score,',
'      summary.point,summary.pass_mark,summary.Result,',
'      XXSLM.xxslm_result(summary.test_id, summary.course_id, :AP_STAFF_ID)Result_1,',
'      ROUND(TO_CHAR(ss.score/summary.point)*100, 2) percentage',
'     --(ss.score/summary.point)*100 percentage',
'       --    CASE WHEN summary.score <= tt.PASS_MARK THEN ''Failed''',
'         --    ELSE ''Passed'' End Results   ',
'from  xxhrms.xxhrms_people_f people,    xxslm.xxslm_exam_summary summary, xxslm.xxslm_test tt,',
'     (select sum(SCORE) score ,COURSE_ID,TEST_ID,STAFF_ID',
'     from xxslm.XXSLM_QUESTIONS_OPTION where COMPANY_CODE = :AP_COMPANY_CODE and STAFF_ID = :AP_STAFF_ID',
'     group by COURSE_ID,TEST_ID,STAFF_ID',
'    )ss',
'where summary.STAFF_ID = PERSON_ID ',
'and tt.test_id = summary.test_id ',
'and summary.company_Code = :AP_COMPANY_CODE ',
'and ss.TEST_ID = tt.TEST_ID ',
'and ss.TEST_ID = summary.TEST_ID ',
'and summary.STAFF_ID = :AP_STAFF_ID ',
'and summary.appraisal_id = :P18_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(301884356167824837)
,p_name=>'Employee_Name'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Employee_Name'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(301884459021824838)
,p_name=>'COURSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Course'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(301884513288824839)
,p_name=>'TEST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(301884631350824840)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
,p_data_type=>'VARCHAR2'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(301884752345824841)
,p_name=>'TEST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Test Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(301884805259824842)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(301884970135824843)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(301885080535824844)
,p_name=>'SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Score'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(301885143346824845)
,p_name=>'POINT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POINT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Point'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(301885218357824846)
,p_name=>'PASS_MARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PASS_MARK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pass Mark'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(301885336907824847)
,p_name=>'RESULT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Result'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(301885447640824848)
,p_name=>'PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENTAGE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percentage'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(302021677406928808)
,p_name=>'RESULT_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Result 1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(301884270985824836)
,p_internal_uid=>301884270985824836
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
 p_id=>wwv_flow_imp.id(302007285308580889)
,p_interactive_grid_id=>wwv_flow_imp.id(301884270985824836)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(302007346340580890)
,p_report_id=>wwv_flow_imp.id(302007285308580889)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302007848306580892)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(301884356167824837)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302008303875580896)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(301884459021824838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302008825655580899)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(301884513288824839)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302009320178580901)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(301884631350824840)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302009839670580904)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(301884752345824841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302010314081580907)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(301884805259824842)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302010871373580910)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(301884970135824843)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302011395716580912)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(301885080535824844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302011896122580914)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(301885143346824845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302012316724580917)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(301885218357824846)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302012846566580919)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(301885336907824847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302013323514580922)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(301885447640824848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302925855528848189)
,p_view_id=>wwv_flow_imp.id(302007346340580890)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(302021677406928808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85485382413576475)
,p_plug_name=>'Employee Tasks'
,p_parent_plug_id=>wwv_flow_imp.id(302263372048589718)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33353659070631744)
,p_name=>'Career Improvement Recommendations'
,p_parent_plug_id=>wwv_flow_imp.id(85485382413576475)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RECOMMENDATION_TYPE, DESCRIPTION, UPDATED_BY,UPDATED_TIME',
'from XXPERMGT.XXPERMGT_CAREER_RECOMMENDATION',
'where staff_id = :AP_STAFF_ID',
'and APPRAISAL_ID = :p18_APPRAISAL_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P18_APPRAISAL_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No recommendations have been defined'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33354093082631748)
,p_query_column_id=>1
,p_column_alias=>'RECOMMENDATION_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Recommendation Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33353703082631745)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33353835689631746)
,p_query_column_id=>3
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33353905475631747)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84974761180912961)
,p_plug_name=>'Final Appraisal Score'
,p_parent_plug_id=>wwv_flow_imp.id(85485382413576475)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECTIVE_SCORE, COMPETENCY_SCORE, TOTAL_SCORE, PERCENTAGE, ADJUSTED_PERCENTAGE',
'from xxpermgt.xxpermgt_appraisal_score',
'where appraisal_id = :p18_APPRAISAL_ID',
'and employee_id = :AP_STAFF_ID;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33352559978631733)
,p_name=>'Appraisal Result'
,p_parent_plug_id=>wwv_flow_imp.id(84974761180912961)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECTIVE_SCORE, COMPETENCY_SCORE, TOTAL_SCORE, PERCENTAGE, ADJUSTED_PERCENTAGE,',
'SELF_SCORE,P2P_SCORE,NON_SUP_SCORE,SUBORDINATE_SCORE,FINAL_360_SCORE',
'from xxpermgt.xxpermgt_appraisal_score',
'where appraisal_id = :p18_APPRAISAL_ID',
'and employee_id = :AP_STAFF_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P18_APPRAISAL_ID'
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
 p_id=>wwv_flow_imp.id(33352681444631734)
,p_query_column_id=>1
,p_column_alias=>'OBJECTIVE_SCORE'
,p_column_display_sequence=>1
,p_column_heading=>'Objective Score'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_condition=>'AP_COMPANY_CODE'
,p_display_when_condition2=>'48'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33352790776631735)
,p_query_column_id=>2
,p_column_alias=>'COMPETENCY_SCORE'
,p_column_display_sequence=>2
,p_column_heading=>'Competency Score'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_condition=>'AP_COMPANY_CODE'
,p_display_when_condition2=>'48'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33352860379631736)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_SCORE'
,p_column_display_sequence=>3
,p_column_heading=>'Total Score'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33352934261631737)
,p_query_column_id=>4
,p_column_alias=>'PERCENTAGE'
,p_column_display_sequence=>4
,p_column_heading=>'&P18_COMPUTATION_TYPE.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33353034229631738)
,p_query_column_id=>5
,p_column_alias=>'ADJUSTED_PERCENTAGE'
,p_column_display_sequence=>5
,p_column_heading=>'Adjusted Percentage'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95311152272893316)
,p_query_column_id=>6
,p_column_alias=>'SELF_SCORE'
,p_column_display_sequence=>6
,p_column_heading=>'Self Appraisal Score'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P18_USE_360'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95311272690893317)
,p_query_column_id=>7
,p_column_alias=>'P2P_SCORE'
,p_column_display_sequence=>7
,p_column_heading=>'Peer to Peer Appraisal  Score'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P18_USE_360'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95311398916893318)
,p_query_column_id=>8
,p_column_alias=>'NON_SUP_SCORE'
,p_column_display_sequence=>8
,p_column_heading=>'Non Supervisory Appraisal Score'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P18_USE_360'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95311404735893319)
,p_query_column_id=>9
,p_column_alias=>'SUBORDINATE_SCORE'
,p_column_display_sequence=>9
,p_column_heading=>'Subordinate Appraisal Score'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P18_USE_360'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95311570502893320)
,p_query_column_id=>10
,p_column_alias=>'FINAL_360_SCORE'
,p_column_display_sequence=>10
,p_column_heading=>'Final 360 Appraisal Score'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P18_USE_360'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86937507340130196)
,p_plug_name=>'Comment'
,p_parent_plug_id=>wwv_flow_imp.id(84974761180912961)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85502189456576487)
,p_plug_name=>'Appraisal Result'
,p_parent_plug_id=>wwv_flow_imp.id(302263372048589718)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31873614541863946)
,p_name=>'Employee Details'
,p_parent_plug_id=>wwv_flow_imp.id(85502189456576487)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.FULL_NAME,a.PERSON_ID,a.EMAIL,a.TELEPHONE1',
'from xxhrms_people a',
'where a.person_id = :AP_STAFF_ID'))
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
 p_id=>wwv_flow_imp.id(31873727027863947)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31873860054863948)
,p_query_column_id=>2
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31873922339863949)
,p_query_column_id=>3
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>3
,p_column_heading=>'Email'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31874000804863950)
,p_query_column_id=>4
,p_column_alias=>'TELEPHONE1'
,p_column_display_sequence=>4
,p_column_heading=>'Telephone'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85503003440576488)
,p_plug_name=>'Employee'
,p_parent_plug_id=>wwv_flow_imp.id(85502189456576487)
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
 p_id=>wwv_flow_imp.id(85504972273576489)
,p_plug_name=>'Appraisal'
,p_parent_plug_id=>wwv_flow_imp.id(85502189456576487)
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
 p_id=>wwv_flow_imp.id(302263402975589719)
,p_plug_name=>'Not Enabled'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'Performance Management is not enabled. Please contact your administrator'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''N'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30308247877972858)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30174813308195122)
,p_button_name=>'SUBMIT_SCORE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Score'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P18_APPRAISAL_ID IS NOT NULL AND :P18_DUE_STATUS = ''ACTIVE'' AND :P18_TOTAL IS NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2082206475464314)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(86937507340130196)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Status'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30317421504972875)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(84974761180912961)
,p_button_name=>'update_rating'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Comment'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91425130827790228)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85502189456576487)
,p_button_name=>'p2p_scoring'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Peer to Peer Appraisal Scoring'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:RP,53:P54_APPRAISAL_ID:&P18_APPRAISAL_ID.'
,p_button_condition=>':P18_P2P_CLASS is not null and :P18_USE_360 = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94958967972617902)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(85502189456576487)
,p_button_name=>'Subordinate_Appraisal'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Line Manager Appraisal Scoring'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RP,60:P60_APPRAISAL_ID:&P18_APPRAISAL_ID.'
,p_button_condition=>':P18_SUBORDINATE_PER is not null and :P18_USE_360 = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95489803007272909)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(85502189456576487)
,p_button_name=>'View_other_kpi'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'View Other Assigned KPIs'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP:P56_APPRAISAL_ID,P56_GOTO:&P18_APPRAISAL_ID.,18'
,p_button_condition=>':P18_USE_360 = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41763328167922424)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(85502189456576487)
,p_button_name=>'DownloadForm'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Appraisal Form'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30317825943972875)
,p_name=>'P18_SUPERVISOR_COMMENT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(86937507340130196)
,p_prompt=>'Manager Comment'
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
 p_id=>wwv_flow_imp.id(30318237325972876)
,p_name=>'P18_EMPLOYEE_COMMENT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(86937507340130196)
,p_prompt=>'Employee Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>1000
,p_cHeight=>2
,p_read_only_when=>':P18_APPRAISAL_ID IS NOT NULL AND :P18_DUE_STATUS = ''INACTIVE'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30318628112972876)
,p_name=>'P18_APP_STATUS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(86937507340130196)
,p_prompt=>'Approval Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Accept Score;Accepted,Contest Score;Contested'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select One--'
,p_cHeight=>1
,p_read_only_when=>':P18_APPRAISAL_ID IS NOT NULL AND :P18_DUE_STATUS = ''INACTIVE'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30332451285972895)
,p_name=>'P18_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85503003440576488)
,p_prompt=>'&AP_STAFF_ID_LABEL. :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select person_id d, person_id r',
'from xxhrms_master_all',
'where supervisor = (select staff_id from xxadm_password where logname = :app_user)'))
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30332849162972896)
,p_name=>'P18_EMPLOYEE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85503003440576488)
,p_prompt=>'&AP_FULLNAME_LABEL.   :'
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
 p_id=>wwv_flow_imp.id(30333296855972896)
,p_name=>'P18_EMAIL_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85503003440576488)
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
 p_id=>wwv_flow_imp.id(30333672833972896)
,p_name=>'P18_CONTACT_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85503003440576488)
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
 p_id=>wwv_flow_imp.id(30334098988972897)
,p_name=>'P18_SUPERVISOR_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31873614541863946)
,p_source=>'select supervisor from xxhrms.xxhrms_master_all where person_id = :P18_STAFF_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30334473483972898)
,p_name=>'P18_SUPERVISOR_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31873614541863946)
,p_source=>'select FULL_NAME from xxhrms.xxhrms_master_all where person_id = :P18_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30334835805972898)
,p_name=>'P18_SUPERVISOR_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31873614541863946)
,p_source=>'select EMAIL_ADDRESS from xxhrms.xxhrms_master_all where person_id = :P18_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30335573016972899)
,p_name=>'P18_APPRAISAL_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_prompt=>'Appraisal Title'
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
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30335971019972899)
,p_name=>'P18_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
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
 p_id=>wwv_flow_imp.id(30336323491972899)
,p_name=>'P18_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
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
 p_id=>wwv_flow_imp.id(30336763980972900)
,p_name=>'P18_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30337184849972900)
,p_name=>'P18_MANAGER_DUE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30337537114972900)
,p_name=>'P18_EMPLOYEE_DUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30337916162972901)
,p_name=>'P18_APPRAISAL_TITLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_use_cache_before_default=>'NO'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30338314009972901)
,p_name=>'P18_DUE_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32562695317467029)
,p_name=>'P18_POPT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91422611628790203)
,p_name=>'P18_COMPUTATION_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91425214354790229)
,p_name=>'P18_USE_360'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91425308183790230)
,p_name=>'P18_P2P_CLASS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94958810396617901)
,p_name=>'P18_SUBORDINATE_PER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85504972273576489)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(302021885658928810)
,p_name=>'P18_COURSE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(301260676553549022)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(98367254617283341)
,p_tabular_form_region_id=>wwv_flow_imp.id(82627528769180862)
,p_validation_name=>'emp OBJ score validation'
,p_validation_sequence=>10
,p_validation=>'EMPLOYEE_SCORE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_only_for_changed_rows=>'N'
,p_associated_column=>'EMPLOYEE_SCORE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(98367581124283344)
,p_tabular_form_region_id=>wwv_flow_imp.id(85494025213576482)
,p_validation_name=>'emp comp score validation'
,p_validation_sequence=>20
,p_validation=>'EMPLOYEE_SCORE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>'AP_COMPANY_CODE'
,p_validation_condition2=>'48'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_associated_column=>'EMPLOYEE_SCORE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30341448814972908)
,p_name=>'get_details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_APPRAISAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30341953702972909)
,p_event_id=>wwv_flow_imp.id(30341448814972908)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30174813308195122)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33353199419631739)
,p_event_id=>wwv_flow_imp.id(30341448814972908)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85485382413576475)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41763489104922525)
,p_name=>'PrintApppraisalForm'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41763328167922424)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41763555988922526)
,p_event_id=>wwv_flow_imp.id(41763489104922525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.APEXRND.AOP_DA'
,p_attribute_04=>'pdf'
,p_attribute_05=>'SQL'
,p_attribute_06=>'APEX'
,p_attribute_07=>'Assessment form_template1.docx'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'''file1'' as "filename",',
'CURSOR (',
'	SELECT   ',
'		a.FULL_NAME  "FULL_NAME",',
'		a.DEPARTMENT "DEPARTMENT",',
'		to_char(a.DATE_OF_BIRTH, ''DD-MON-YYYY'') "DATE_OF_BIRTH", ',
'		to_char(a.ORIGINAL_DATE_OF_HIRE, ''DD-MON-YYYY'') "ORIGINAL_DATE_OF_HIRE", ',
'		a.GRADE_CATEGORY "GRADE_CATEGORY",',
'		a.GRADE "GRADE",',
'		a.STEP "STEP", ',
'		a.MONTHLY_BASIC "MONTHLY_BASIC",',
'        a.JOB_TITLE "JOB_TITLE",',
'        to_char(a.DATE_OF_LAST_PROMOTION, ''DD-MON-YYYY'') "DATE_OF_LAST_PROMOTION",',
'		',
'		cursor(',
'				SELECT ESTABLISH_NAME,',
'					   TYPE_OF_ESTABLISH,',
'					   ATT_FROM,',
'					   ATT_TO,',
'                       QUALIFICATION',
'				FROM XXHRMS.XXHRMS_EDUCTIONAL',
'				WHERE PERSON_ID= :P18_STAFF_ID',
'		) "Education",',
'		',
'		cursor(',
'				SELECT b.CLASSIFICATION,',
'					   b.DESCRIPTION,',
'					   b.WEIGHING_TYPE,',
'					   b.EMPLOYEE_SCORE,',
'					   b.ACTUAL_SCORE,',
'					   b.PERFORMANCE_INDICATOR,',
'					   b.INDICATOR_TYPE,',
'					   (select MEANING from xxhrms.XXHRMS_LOOKUP_VALUES_TAB a where to_number(a.LOOKUP_CODE) = to_number(b.SUPERVISOR_SCORE) and UPPER(a.LOOKUP_CATEGORY) =''PER_RATING'' and a.company_code = :AP_COMPANY_CODE',
'					   ) "Score"',
'				FROM  XXPERMGT_EMP_TASK_SETUP b ',
'				WHERE b.APPRAISAL_ID = :P18_APPRAISAL_ID',
'				AND EMPLOYEE = :P18_STAFF_ID',
'                --AND COMPANY_CODE = :AP_COMPANY_CODE',
'		',
'		) "Perform_ind",',
'		',
'		cursor(',
'				SELECT aps.OBJECTIVE_SCORE,',
'					   aps.MAX_OBJ_SCORE,',
'					   aps.COMPETENCY_SCORE,',
'					   aps.MAX_COMP_SCORE,',
'					   aps.TOTAL_SCORE,',
'					   aps.OVERALL_SCORE,',
'					   aps.MGR_COMMENT',
'                       ',
'			  FROM XXPERMGT.XXPERMGT_APPRAISAL_SCORE aps--, XXPERMGT_EMP_TASK_SETUP empst ',
'				WHERE aps.APPRAISAL_ID = :P18_APPRAISAL_ID',
'				AND aps.EMPLOYEE_ID = :P18_STAFF_ID',
'                ',
'                --AND aps.APPRAISAL_ID  = empst.APPRAISAL_ID (+)',
'		',
'		) "Appraisal",',
'		',
'		cursor(',
'				SELECT LEAVE_TYPE_NAME,',
'					   REQUEST_LEAVE_DAYS,',
'					   LEAVE_DAYS,',
'					   START_DATE,',
'					   END_DATE,',
'					   TO_CHAR(START_DATE, ''DD-MON-YYYY'') REQUEST_START_DATE,',
'					   TO_CHAR(END_DATE, ''DD-MON-YYYY'') REQUEST_END_DATE',
'				FROM XXHRMS.XXHRMS_SS_LEAVE',
'				WHERE  STAFF_ID = :P18_STAFF_ID',
'				AND upper(LEAVE_TYPE_NAME) like upper(''%SICK%'')',
'				AND upper(WORKFLOW_STATUS) = upper(''APPROVED'')',
'                --AND REQUEST_LEAVE_DAYS IS NOT NULL',
'				AND START_DATE BETWEEN ( select EFFECTIVE_START_DATE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP where SETUP_ID = :P18_APPRAISAL_ID AND COMPANY_CODE = :AP_COMPANY_CODE)',
'							   AND ( select EFFECTIVE_END_DATE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP where SETUP_ID = :P18_APPRAISAL_ID AND COMPANY_CODE = :AP_COMPANY_CODE)',
'		',
'		) "Leave",',
'		',
'		cursor(',
'				SELECT  rownum as "rec_num" ,  ',
'                        DESCRIPTION',
'				FROM XXPERMGT.XXPERMGT_CAREER_RECOMMENDATION',
'				WHERE STAFF_ID = :P18_STAFF_ID',
'				AND APPRAISAL_ID = :P18_APPRAISAL_ID ',
'		) "Recommendation",',
'		cursor(',
'		SELECT  rownum as "cert_num" ,  ',
'				QUALIFICATION_NAME,',
'                 TO_CHAR(QUALIFICATION_DATE, ''DD-MON-YYYY'') QUALIFICATION_DATE',
'		FROM xxhrms.xxhrms_qualifications',
'		WHERE PERSON_ID = :P18_STAFF_ID',
'		 ',
'		) "certification",',
'		cursor (',
'				select NVL(count(INFO_ID),''0'') "OFFENCE"',
'				From xxhrms.XXHRMS_DISCIPLINARY_INFO',
'				where PERSON_ID = :P18_STAFF_ID',
'				AND OFFENCE_DATE BETWEEN  ( select EFFECTIVE_START_DATE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP where SETUP_ID = :P18_APPRAISAL_ID)',
'						  AND ( select EFFECTIVE_END_DATE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP where SETUP_ID = :P18_APPRAISAL_ID )',
'				) "Disciplinary"',
'		',
'FROM XXHRMS.XXHRMS_MASTER_ALL_V a',
'WHERE a.PERSON_ID = :P18_STAFF_ID',
'    AND COMPANY_CODE = :AP_COMPANY_CODE',
'			 ',
') as "data"',
'FROM DUAL'))
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30339494814972905)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Send_Mail2'
,p_attribute_01=>'noreply@softalliance.com'
,p_attribute_02=>' &P18_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Appraisal Score Update'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P18_SUPERVISOR_NAME.,</p>',
'',
'<p>Self Assessment by &P18_EMPLOYEE_NAME. is completed and ready for your review.</p> ',
'',
'<p>Kindly schedule in time for a review discussion between yourself and  &P18_EMPLOYEE_NAME., and login to <a href=''http://softsuite.softalliance.com:8080/softsuite/f?p=1000004''>SoftSuite</a> to review and assign scores and comment via the Performanc'
||'e Management Module. This must be completed before &P18_EMPLOYEE_DUE_DATE..</p>',
'',
'<p>As a manager, you are encouraged to maximize quality face to face time with your employee with minimal distractions.</p>',
'',
'<p>If you have any questions or need assistance in performing the review discussion, please contact a member of the Human Resources Department.</p>',
'',
'<p>Thank you.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(30308247877972858)
,p_process_success_message=>'Appraisal Score submitted successfully.'
,p_internal_uid=>30339494814972905
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30339879656972907)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Send_Mail3'
,p_attribute_01=>'noreply@softalliance.com'
,p_attribute_02=>' &P18_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Appraisal Score Update'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P18_SUPERVISOR_NAME.,</p>',
'',
'<p>This is to notify you that &P18_EMPLOYEE_NAME. has updated the just concluded appraisal scoring with the status <B>&P18_APP_STATUS.</B>.',
'',
'<p>Thank you.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2082206475464314)
,p_process_success_message=>'Final appraisal status updated successfully.'
,p_internal_uid=>30339879656972907
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30174639241195120)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(82627528769180862)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Objectives - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30174639241195120
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32562244659467025)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85494025213576482)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Competencies - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32562244659467025
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32562528278467028)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(95853014764422087)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Survey - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32562528278467028
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2082124411464313)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' update xxpermgt.xxpermgt_appraisal_score',
'     set EMP_COMMENT = :P18_EMPLOYEE_COMMENT,',
'         STATUS = :P18_APP_STATUS',
'    where APPRAISAL_ID = :P18_APPRAISAL_ID',
'      and EMPLOYEE_ID = :P18_STAFF_ID;',
'  commit;    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2082206475464314)
,p_process_success_message=>'Updated Successfully'
,p_process_is_stateful_y_n=>'Y'
,p_internal_uid=>2082124411464313
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30340202701972907)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select a.FULL_NAME,a.PERSON_ID,a.EMAIL,a.TELEPHONE1',
'into :P18_EMPLOYEE_NAME,:P18_STAFF_ID,:P18_EMAIL_ADDRESS,:P18_CONTACT_NUMBER',
'from xxhrms_people a',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER);',
'--GET COMPUTATION TYPE',
'SELECT initcap(COMPUTATION_TYPE)',
'INTO :P18_COMPUTATION_TYPE',
'FROM XXPERMGT_APPRAISAL_PLAN_SETUP',
'WHERE SETUP_ID = :P18_APPRAISAL_ID;',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30340202701972907
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30340625845972908)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c_mgt is',
'    select  title,effective_start_date,effective_end_date,status,APPRAISAL_START_DATE,APPRAISAL_END_DATE, ',
'        case when trunc(sysdate) between APPRAISAL_START_DATE and APPRAISAL_END_DATE then ''ACTIVE'' ELSE ''INACTIVE'' END due_status,USE_360,P2P_CLASS,SUBORDINATE_PER',
'     from xxpermgt_appraisal_plan_setup',
'    where setup_id = :P18_APPRAISAL_ID',
'    order by 1;',
'    ',
'       CURSOR P_OPT IS',
'    select xxadm.GET_PROFILE_OPTION(''SURVEY_LIB'',:SS_COMPANY_CODE) from dual;',
'   ',
'   cursor c_score is',
'       select ',
'          NVL(:p18_app_status,status), NVL(:p18_employee_comment,emp_comment), mgr_comment',
'       from xxpermgt_appraisal_score',
'       where appraisal_id = :p18_APPRAISAL_ID',
'       and employee_id = :P18_STAFF_ID; ',
'begin  ',
'  open c_mgt;',
'  fetch c_mgt into :P18_APPRAISAL_TITLE,:P18_START_DATE,:P18_END_DATE,:P18_STATUS,:P18_MANAGER_DUE_DATE,:P18_EMPLOYEE_DUE_DATE,:P18_DUE_STATUS,:P18_USE_360,:P18_P2P_CLASS,:P18_SUBORDINATE_PER;',
'  close c_mgt;',
' ',
'  :p18_app_status:=null;',
'  :p18_employee_comment:=null;',
'  :p18_supervisor_comment:=null;',
'  open c_score;',
'  fetch c_score into :p18_app_status, :p18_employee_comment, :p18_supervisor_comment;',
'  close c_score;',
' -- XXSLM.xxslm_result_update(:AP_STAFF_ID,:AP_COMPANY_CODE);',
'  ',
'   OPEN P_OPT;',
'  FETCH P_OPT INTO :P18_POPT;',
'  CLOSE P_OPT;',
'  ',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30340625845972908
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(302021971234928811)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update score'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'        update xxslm.XXSLM_EXAM_SUMMARY a',
'        set SCORE = (select sum(nvl(SCORE,0)) ',
'                    from xxslm.XXSLM_QUESTIONS_OPTION ',
'                    where STAFF_ID = :AP_STAFF_ID ',
'                    and COMPANY_CODE = :AP_COMPANY_CODE ',
'                    and COURSE_ID = :P18_COURSE_ID and TEST_ID = a.TEST_ID)',
'        where COMPANY_CODE = :AP_COMPANY_CODE and COURSE_ID = :P18_COURSE_ID',
'        and STAFF_ID = :AP_STAFF_ID ;',
'     ',
'    XXSLM.xxslm_result_update(:AP_STAFF_ID,:AP_COMPANY_CODE);',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>302021971234928811
);
wwv_flow_imp.component_end;
end;
/
