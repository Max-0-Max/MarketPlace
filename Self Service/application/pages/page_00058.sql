prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_name=>'Peer to Peer Appraisal'
,p_alias=>'4518'
,p_step_title=>'Peer to Peer Appraisal'
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
 p_id=>wwv_flow_imp.id(125659572294028230)
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
 p_id=>wwv_flow_imp.id(397584129749645044)
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
 p_id=>wwv_flow_imp.id(125495571009250448)
,p_plug_name=>'tab'
,p_parent_plug_id=>wwv_flow_imp.id(397584129749645044)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(177948286470236188)
,p_plug_name=>'<strong>Objectives</strong>'
,p_region_name=>'STEP'
,p_parent_plug_id=>wwv_flow_imp.id(125495571009250448)
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
'from xxpermgt.XXPERMGT_P2P_TASK_SETUP ',
'WHERE upper(indicator_type) = ''OBJECTIVE''',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P58_APPRAISAL_ID',
'and ins_by = :P58_INS_BY'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P58_APPRAISAL_ID'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P58_APPRAISAL_ID IS NOT NULL AND :P58_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125494040318250432)
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
 p_id=>wwv_flow_imp.id(125494086032250433)
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
,p_default_expression=>'P58_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125494230085250434)
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
 p_id=>wwv_flow_imp.id(125494288654250435)
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
 p_id=>wwv_flow_imp.id(125494440652250436)
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
 p_id=>wwv_flow_imp.id(125494480656250437)
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
 p_id=>wwv_flow_imp.id(125494600176250438)
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
 p_id=>wwv_flow_imp.id(125494667974250439)
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
 p_id=>wwv_flow_imp.id(125494834604250440)
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
 p_id=>wwv_flow_imp.id(125494889792250441)
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
 p_id=>wwv_flow_imp.id(125495054690250442)
,p_name=>'EMPLOYEE_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_SCORE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(125495085551250443)
,p_name=>'SUPERVISOR_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_SCORE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Peer Score'
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
 p_id=>wwv_flow_imp.id(128673981932687066)
,p_name=>'EMPLOYEE_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(128674143853687067)
,p_name=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Peer Comment'
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
 p_id=>wwv_flow_imp.id(125493914482250431)
,p_internal_uid=>125493914482250431
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(125678685859515564)
,p_interactive_grid_id=>wwv_flow_imp.id(125493914482250431)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(125678791340515564)
,p_report_id=>wwv_flow_imp.id(125678685859515564)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125679294495515566)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(125494040318250432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125679804760515569)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(125494086032250433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125680348150515571)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(125494230085250434)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>182
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125680771844515573)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(125494288654250435)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>274
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125681357637515576)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(125494440652250436)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125681829330515578)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(125494480656250437)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125682344940515581)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(125494600176250438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125682831698515583)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(125494667974250439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125683335159515586)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(125494834604250440)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125683801580515588)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(125494889792250441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125684291375515591)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(125495054690250442)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125684840053515593)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(125495085551250443)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(128861074613608439)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(128673981932687066)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>173
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(128861567042608444)
,p_view_id=>wwv_flow_imp.id(125678791340515564)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(128674143853687067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205.99992656707764
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(133758523704811538)
,p_interactive_grid_id=>wwv_flow_imp.id(125493914482250431)
,p_name=>'Objectives'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(133758629185811538)
,p_report_id=>wwv_flow_imp.id(133758523704811538)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133759132340811540)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(125494040318250432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133759642605811543)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(125494086032250433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133760185995811545)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(125494230085250434)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>182
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133760609689811547)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(125494288654250435)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>331
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133761195482811550)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(125494440652250436)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133761667175811552)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(125494480656250437)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133762182785811555)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(125494600176250438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133762669543811557)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(125494667974250439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133763173004811560)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(125494834604250440)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133763639425811562)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(125494889792250441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133764129220811565)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(125495054690250442)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(133764677898811567)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(125495085551250443)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(136940912458904413)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(128673981932687066)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(136941404887904418)
,p_view_id=>wwv_flow_imp.id(133758629185811538)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(128674143853687067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180814782914631808)
,p_plug_name=>'<strong>Competencies</strong>'
,p_region_name=>'STEP2'
,p_parent_plug_id=>wwv_flow_imp.id(125495571009250448)
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
'from xxpermgt.XXPERMGT_P2P_TASK_SETUP  ',
'WHERE upper(indicator_type) = ''COMPETENCY''',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P58_APPRAISAL_ID',
'and ins_by = :P58_INS_BY',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P58_APPRAISAL_ID'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P58_APPRAISAL_ID IS NOT NULL AND :P58_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(104215861048252652)
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
 p_id=>wwv_flow_imp.id(127880686388522328)
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
 p_id=>wwv_flow_imp.id(127880792882522329)
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
 p_id=>wwv_flow_imp.id(127880905846522330)
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
 p_id=>wwv_flow_imp.id(127881056864522331)
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
 p_id=>wwv_flow_imp.id(127881096978522332)
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
 p_id=>wwv_flow_imp.id(127881241933522333)
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
 p_id=>wwv_flow_imp.id(127881275663522334)
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
 p_id=>wwv_flow_imp.id(127881430401522335)
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
 p_id=>wwv_flow_imp.id(127881517520522336)
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
 p_id=>wwv_flow_imp.id(127881602930522337)
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
 p_id=>wwv_flow_imp.id(127881721627522338)
,p_name=>'EMPLOYEE_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_SCORE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'AP_COMPANY_CODE'
,p_display_condition2=>'48'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(127881819645522339)
,p_name=>'SUPERVISOR_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_SCORE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Peer Score'
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
 p_id=>wwv_flow_imp.id(128674182648687068)
,p_name=>'EMPLOYEE_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
,p_display_condition_type=>'NOT_EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select company_code from XXHRMS_COMPANYINFO',
'where company_code in(48, 45);'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(128674316804687069)
,p_name=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Peer Comment'
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
 p_id=>wwv_flow_imp.id(127880649289522327)
,p_internal_uid=>127880649289522327
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(127886537675526290)
,p_interactive_grid_id=>wwv_flow_imp.id(127880649289522327)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(127886653641526290)
,p_report_id=>wwv_flow_imp.id(127886537675526290)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112331774309063510)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(104215861048252652)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127886979433526295)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(127880686388522328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127887459105526298)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(127880792882522329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127888039491526301)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(127880905846522330)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>179
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127888496674526303)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(127881056864522331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127888989482526306)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(127881096978522332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127889468487526308)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(127881241933522333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127889979769526310)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(127881275663522334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127890496804526313)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(127881430401522335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127891008598526315)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(127881517520522336)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127891529330526317)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(127881602930522337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127891960145526320)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(127881721627522338)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127892475616526322)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(127881819645522339)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(128862144458608447)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(128674182648687068)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>204
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(128862601782608450)
,p_view_id=>wwv_flow_imp.id(127886653641526290)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(128674316804687069)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(191173772465477413)
,p_plug_name=>'<strong>Survey</strong>'
,p_region_name=>'STEP3'
,p_parent_plug_id=>wwv_flow_imp.id(125495571009250448)
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
'from xxpermgt_p2p_task_setup ',
'WHERE upper(indicator_type) = upper(''SURVEY'')',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P58_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P58_APPRAISAL_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P58_POPT'
,p_plug_display_when_cond2=>'Y'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P58_APPRAISAL_ID IS NOT NULL AND :P58_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101480240196076737)
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
 p_id=>wwv_flow_imp.id(127882375073522345)
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
 p_id=>wwv_flow_imp.id(150979006054763772)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(397204075309880153)
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
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(397204166254880154)
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
 p_id=>wwv_flow_imp.id(397204311091880155)
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
 p_id=>wwv_flow_imp.id(397204371634880156)
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
 p_id=>wwv_flow_imp.id(397204484257880157)
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
 p_id=>wwv_flow_imp.id(397204655264880158)
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
 p_id=>wwv_flow_imp.id(397204739269880159)
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
 p_id=>wwv_flow_imp.id(127881903596522340)
,p_internal_uid=>127881903596522340
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(127897439408529299)
,p_interactive_grid_id=>wwv_flow_imp.id(127881903596522340)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(127897549143529299)
,p_report_id=>wwv_flow_imp.id(127897439408529299)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(103261745894736610)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(101480240196076737)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(127899958548529312)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(127882375073522345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153447797789046167)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(150979006054763772)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397313615856284575)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(397204075309880153)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397314084904284581)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(397204166254880154)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397314597237284584)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(397204311091880155)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397315134709284587)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(397204371634880156)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397315629348284590)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(397204484257880157)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397316069422284592)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(397204655264880158)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397316601693284595)
,p_view_id=>wwv_flow_imp.id(127897549143529299)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(397204739269880159)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(135976864571805231)
,p_interactive_grid_id=>wwv_flow_imp.id(127881903596522340)
,p_name=>'Survey'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(135976974306805231)
,p_report_id=>wwv_flow_imp.id(135976864571805231)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(111341171058012542)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(101480240196076737)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135979383711805244)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(127882375073522345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(405393041019560507)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(397204075309880153)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(405393510067560513)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(397204166254880154)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(405394022400560516)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(397204311091880155)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(405394559872560519)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(397204371634880156)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(405395054511560522)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(397204484257880157)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(405395494585560524)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(397204655264880158)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(405396026856560527)
,p_view_id=>wwv_flow_imp.id(135976974306805231)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(397204739269880159)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(193513630753575748)
,p_interactive_grid_id=>wwv_flow_imp.id(127881903596522340)
,p_name=>'2022 HY'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(193513740488575748)
,p_report_id=>wwv_flow_imp.id(193513630753575748)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(168877937239783059)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(101480240196076737)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(193516149893575761)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(127882375073522345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(462929807201331024)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(397204075309880153)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(462930276249331030)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(397204166254880154)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(462930788582331033)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(397204311091880155)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(462931326054331036)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(397204371634880156)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(462931820693331039)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(397204484257880157)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(462932260767331041)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(397204655264880158)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(462932793038331044)
,p_view_id=>wwv_flow_imp.id(193513740488575748)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(397204739269880159)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(396581434254604348)
,p_name=>'<strong>Survey/Test</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(125495571009250448)
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
'and b.SETUP_ID = :P58_APPRAISAL_ID',
'and b.SURVEY_ID not in (select test_id from xxslm.xxslm_exam_summary where staff_id = :AP_STAFF_ID and appraisal_id = :P58_APPRAISAL_ID and course_id = a.COURSE_ID and status = ''COMPLETED'')',
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
 p_id=>wwv_flow_imp.id(95344574037055422)
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
 p_id=>wwv_flow_imp.id(95344930648055425)
,p_query_column_id=>2
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95345369186055426)
,p_query_column_id=>3
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95345716407055427)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95346121487055428)
,p_query_column_id=>5
,p_column_alias=>'C_ID'
,p_column_display_sequence=>6
,p_column_heading=>'C Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95346553156055429)
,p_query_column_id=>6
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Course Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95346985904055430)
,p_query_column_id=>7
,p_column_alias=>'RETAKE'
,p_column_display_sequence=>7
,p_column_heading=>'Retake'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95347394190055431)
,p_query_column_id=>8
,p_column_alias=>'NO_OF_QUESTION'
,p_column_display_sequence=>8
,p_column_heading=>'No Of Question'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95347715860055431)
,p_query_column_id=>9
,p_column_alias=>'T_ID'
,p_column_display_sequence=>9
,p_column_heading=>'T Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95348168526055432)
,p_query_column_id=>10
,p_column_alias=>'PASS_MARK'
,p_column_display_sequence=>10
,p_column_heading=>'Pass Mark'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95348578741055433)
,p_query_column_id=>11
,p_column_alias=>'HRS'
,p_column_display_sequence=>11
,p_column_heading=>'Hrs'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95348999094055434)
,p_query_column_id=>12
,p_column_alias=>'MINS'
,p_column_display_sequence=>12
,p_column_heading=>'Mins'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95349331265055434)
,p_query_column_id=>13
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>13
,p_column_heading=>'Setup Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(397204900272880161)
,p_plug_name=>'Test Result'
,p_parent_plug_id=>wwv_flow_imp.id(396581434254604348)
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
'and summary.appraisal_id = :P58_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(397205113868880163)
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
 p_id=>wwv_flow_imp.id(397205216722880164)
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
 p_id=>wwv_flow_imp.id(397205270989880165)
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
 p_id=>wwv_flow_imp.id(397205389051880166)
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
 p_id=>wwv_flow_imp.id(397205510046880167)
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
 p_id=>wwv_flow_imp.id(397205562960880168)
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
 p_id=>wwv_flow_imp.id(397205727836880169)
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
 p_id=>wwv_flow_imp.id(397205838236880170)
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
 p_id=>wwv_flow_imp.id(397205901047880171)
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
 p_id=>wwv_flow_imp.id(397205976058880172)
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
 p_id=>wwv_flow_imp.id(397206094608880173)
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
 p_id=>wwv_flow_imp.id(397206205341880174)
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
 p_id=>wwv_flow_imp.id(397342435107984134)
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
 p_id=>wwv_flow_imp.id(397205028686880162)
,p_internal_uid=>397205028686880162
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
 p_id=>wwv_flow_imp.id(397328043009636215)
,p_interactive_grid_id=>wwv_flow_imp.id(397205028686880162)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(397328104041636216)
,p_report_id=>wwv_flow_imp.id(397328043009636215)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397328606007636218)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(397205113868880163)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397329061576636222)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(397205216722880164)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397329583356636225)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(397205270989880165)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397330077879636227)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(397205389051880166)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397330597371636230)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(397205510046880167)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397331071782636233)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(397205562960880168)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397331629074636236)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(397205727836880169)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397332153417636238)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(397205838236880170)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397332653823636240)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(397205901047880171)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397333074425636243)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(397205976058880172)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397333604267636245)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(397206094608880173)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(397334081215636248)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(397206205341880174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(398246613229903515)
,p_view_id=>wwv_flow_imp.id(397328104041636216)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(397342435107984134)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180806140114631801)
,p_plug_name=>'Employee Tasks'
,p_parent_plug_id=>wwv_flow_imp.id(397584129749645044)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(128674416771687070)
,p_name=>'Career Improvement Recommendations'
,p_parent_plug_id=>wwv_flow_imp.id(180806140114631801)
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
'and APPRAISAL_ID = :p58_APPRAISAL_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P58_APPRAISAL_ID'
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
 p_id=>wwv_flow_imp.id(95356823193055469)
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
 p_id=>wwv_flow_imp.id(95357205763055472)
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
 p_id=>wwv_flow_imp.id(95357652546055474)
,p_query_column_id=>3
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95358004592055475)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180295518881968287)
,p_plug_name=>'PSP Appraisal Score'
,p_parent_plug_id=>wwv_flow_imp.id(180806140114631801)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECTIVE_SCORE, COMPETENCY_SCORE, TOTAL_SCORE, PERCENTAGE, ADJUSTED_PERCENTAGE',
'from xxpermgt.XXPERMGT_APPRAISAL_p2p_SCORE',
'where appraisal_id = :p58_APPRAISAL_ID',
'and employee_id = :AP_STAFF_ID',
'and peer_id = :P58_PEER_ID;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(128673317679687059)
,p_name=>'Appraisal Result'
,p_parent_plug_id=>wwv_flow_imp.id(180295518881968287)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECTIVE_SCORE, COMPETENCY_SCORE, TOTAL_SCORE, PERCENTAGE, ADJUSTED_PERCENTAGE',
'from xxpermgt.XXPERMGT_APPRAISAL_P2P_SCORE',
'where appraisal_id = :p58_APPRAISAL_ID',
'and employee_id = :AP_STAFF_ID',
'and peer_id = :P58_PEER_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P58_APPRAISAL_ID'
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
 p_id=>wwv_flow_imp.id(95359453199055488)
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
 p_id=>wwv_flow_imp.id(95359892108055489)
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
 p_id=>wwv_flow_imp.id(95360294229055491)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_SCORE'
,p_column_display_sequence=>3
,p_column_heading=>'Total Score'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95360634542055492)
,p_query_column_id=>4
,p_column_alias=>'PERCENTAGE'
,p_column_display_sequence=>4
,p_column_heading=>'&P18_COMPUTATION_TYPE.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95360917563055493)
,p_query_column_id=>5
,p_column_alias=>'ADJUSTED_PERCENTAGE'
,p_column_display_sequence=>5
,p_column_heading=>'Adjusted Percentage'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182258265041185522)
,p_plug_name=>'Comment'
,p_parent_plug_id=>wwv_flow_imp.id(180295518881968287)
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
 p_id=>wwv_flow_imp.id(180822947157631813)
,p_plug_name=>'Appraisal Result'
,p_parent_plug_id=>wwv_flow_imp.id(397584129749645044)
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
 p_id=>wwv_flow_imp.id(127194372242919272)
,p_name=>'Employee Details'
,p_parent_plug_id=>wwv_flow_imp.id(180822947157631813)
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
 p_id=>wwv_flow_imp.id(95365013555055514)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95365431636055515)
,p_query_column_id=>2
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95365809794055515)
,p_query_column_id=>3
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>3
,p_column_heading=>'Email'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95366242424055516)
,p_query_column_id=>4
,p_column_alias=>'TELEPHONE1'
,p_column_display_sequence=>4
,p_column_heading=>'Telephone'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180823761141631814)
,p_plug_name=>'Employee'
,p_parent_plug_id=>wwv_flow_imp.id(180822947157631813)
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
 p_id=>wwv_flow_imp.id(180825729974631815)
,p_plug_name=>'Appraisal'
,p_parent_plug_id=>wwv_flow_imp.id(180822947157631813)
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
 p_id=>wwv_flow_imp.id(397584160676645045)
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
 p_id=>wwv_flow_imp.id(95361686478055497)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(182258265041185522)
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
 p_id=>wwv_flow_imp.id(95358786384055483)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(180295518881968287)
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
 p_id=>wwv_flow_imp.id(95312807198893333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(125659572294028230)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95349763544055435)
,p_name=>'P58_COURSE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(396581434254604348)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95362047607055498)
,p_name=>'P58_SUPERVISOR_COMMENT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(182258265041185522)
,p_prompt=>'Peer Comment'
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
 p_id=>wwv_flow_imp.id(95362460973055500)
,p_name=>'P58_EMPLOYEE_COMMENT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(182258265041185522)
,p_prompt=>'Employee Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>1000
,p_cHeight=>2
,p_read_only_when=>':P58_APPRAISAL_ID IS NOT NULL AND :P58_DUE_STATUS = ''INACTIVE'''
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
 p_id=>wwv_flow_imp.id(95362800839055504)
,p_name=>'P58_APP_STATUS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(182258265041185522)
,p_prompt=>'Approval Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Accept Score;Accepted,Contest Score;Contested'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select One--'
,p_cHeight=>1
,p_read_only_when=>':P58_APPRAISAL_ID IS NOT NULL AND :P58_DUE_STATUS = ''INACTIVE'''
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
 p_id=>wwv_flow_imp.id(95366609979055517)
,p_name=>'P58_SUPERVISOR_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(127194372242919272)
,p_source=>'select supervisor from xxhrms.xxhrms_master_all where person_id = :P58_PEER_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95367022670055521)
,p_name=>'P58_SUPERVISOR_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(127194372242919272)
,p_source=>'select FULL_NAME from xxhrms.xxhrms_master_all where person_id = :P58_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95367409997055522)
,p_name=>'P58_SUPERVISOR_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(127194372242919272)
,p_source=>'select EMAIL_ADDRESS from xxhrms.xxhrms_master_all where person_id = :P58_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95368152907055524)
,p_name=>'P58_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(180823761141631814)
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
 p_id=>wwv_flow_imp.id(95368542099055527)
,p_name=>'P58_EMPLOYEE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(180823761141631814)
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
 p_id=>wwv_flow_imp.id(95368989438055527)
,p_name=>'P58_EMAIL_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(180823761141631814)
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
 p_id=>wwv_flow_imp.id(95369370423055528)
,p_name=>'P58_CONTACT_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(180823761141631814)
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
 p_id=>wwv_flow_imp.id(95370006138055530)
,p_name=>'P58_APPRAISAL_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
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
'where setup_id in (select distinct APPRAISAL_ID from xxpermgt.xxpermgt_p2p_task_setup where employee = :AP_STAFF_ID)',
'',
'order by 2 desc',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95370471190055531)
,p_name=>'P58_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
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
 p_id=>wwv_flow_imp.id(95370852836055531)
,p_name=>'P58_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
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
 p_id=>wwv_flow_imp.id(95371297002055534)
,p_name=>'P58_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95371664113055535)
,p_name=>'P58_MANAGER_DUE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95372012514055535)
,p_name=>'P58_EMPLOYEE_DUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95372444297055536)
,p_name=>'P58_APPRAISAL_TITLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_use_cache_before_default=>'NO'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95372881094055537)
,p_name=>'P58_DUE_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95373261812055538)
,p_name=>'P58_POPT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95374084301055539)
,p_name=>'P58_PEER_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95374405959055540)
,p_name=>'P58_COMPUTATION_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95374808711055540)
,p_name=>'P58_INS_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(180825729974631815)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95378222547055556)
,p_name=>'get_details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_APPRAISAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95378765485055559)
,p_event_id=>wwv_flow_imp.id(95378222547055556)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(125495571009250448)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95379201822055560)
,p_event_id=>wwv_flow_imp.id(95378222547055556)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180806140114631801)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95376281216055551)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Send_Mail2'
,p_attribute_01=>'noreply@softalliance.com'
,p_attribute_02=>' &P58_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Appraisal Score Update'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P58_SUPERVISOR_NAME.,</p>',
'',
'<p>Self Assessment by &P58_EMPLOYEE_NAME. is completed and ready for your review.</p> ',
'',
'<p>Kindly schedule in time for a review discussion between yourself and  &P58_EMPLOYEE_NAME., and login to <a href=''http://softsuite.softalliance.com:8080/softsuite/f?p=1000004''>SoftSuite</a> to review and assign scores and comment via the Performanc'
||'e Management Module. This must be completed before &P58_EMPLOYEE_DUE_DATE..</p>',
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
,p_internal_uid=>95376281216055551
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95376651886055552)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Send_Mail3'
,p_attribute_01=>'noreply@softalliance.com'
,p_attribute_02=>' &P58_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Appraisal Score Update'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P58_SUPERVISOR_NAME.,</p>',
'',
'<p>This is to notify you that &P58_EMPLOYEE_NAME. has updated the just concluded appraisal scoring with the status <B>&P58_APP_STATUS.</B>.',
'',
'<p>Thank you.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2082206475464314)
,p_process_success_message=>'Final appraisal status updated successfully.'
,p_internal_uid=>95376651886055552
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95375804752055550)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' update xxpermgt.XXPERMGT_APPRAISAL_P2P_SCORE',
'     set EMP_COMMENT = :P58_EMPLOYEE_COMMENT,',
'         STATUS = :P58_APP_STATUS',
'    where APPRAISAL_ID = :P58_APPRAISAL_ID',
'      and EMPLOYEE_ID = :P58_STAFF_ID',
'	  and peer_id = :P58_PEER_ID;',
'  commit;    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(95361686478055497)
,p_process_success_message=>'Updated Successfully'
,p_process_is_stateful_y_n=>'Y'
,p_internal_uid=>95375804752055550
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95377018801055553)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select a.FULL_NAME,a.PERSON_ID,a.EMAIL,a.TELEPHONE1',
'into :P58_EMPLOYEE_NAME,:P58_STAFF_ID,:P58_EMAIL_ADDRESS,:P58_CONTACT_NUMBER',
'from xxhrms_people a',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER);',
'--GET COMPUTATION TYPE',
'SELECT initcap(COMPUTATION_TYPE)',
'INTO :P58_COMPUTATION_TYPE',
'FROM XXPERMGT_APPRAISAL_PLAN_SETUP',
'WHERE SETUP_ID = :P58_APPRAISAL_ID;',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>95377018801055553
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95377451955055554)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c_mgt is',
'    select  title,effective_start_date,effective_end_date,status,APPRAISAL_START_DATE,APPRAISAL_END_DATE, ',
'        case when trunc(sysdate) between APPRAISAL_START_DATE and APPRAISAL_END_DATE then ''ACTIVE'' ELSE ''INACTIVE'' END due_status',
'     from xxpermgt_appraisal_plan_setup',
'    where setup_id = :P58_APPRAISAL_ID',
'    order by 1;',
'    ',
'       CURSOR P_OPT IS',
'    select xxadm.GET_PROFILE_OPTION(''SURVEY_LIB'',:SS_COMPANY_CODE) from dual;',
'   ',
'   cursor c_score is',
'       select ',
'          status,emp_comment, mgr_comment',
'       from xxpermgt.XXPERMGT_APPRAISAL_p2p_SCORE ',
'	   where APPRAISAL_ID = :P58_APPRAISAL_ID',
'      and EMPLOYEE_ID = :P58_STAFF_ID',
'	  and peer_id = :P58_PEER_ID;',
'begin  ',
'  open c_mgt;',
'  fetch c_mgt into :P58_APPRAISAL_TITLE,:P58_START_DATE,:P58_END_DATE,:P58_STATUS,:P58_MANAGER_DUE_DATE,:P58_EMPLOYEE_DUE_DATE,:P58_DUE_STATUS;',
'  close c_mgt;',
' ',
'  :p58_app_status:=null;',
'  :p58_employee_comment:=null;',
'  :p58_supervisor_comment:=null;',
'  open c_score;',
'  fetch c_score into :P58_APP_STATUS, :P58_EMPLOYEE_COMMENT, :P58_SUPERVISOR_COMMENT;',
'  close c_score;',
' -- XXSLM.xxslm_result_update(:AP_STAFF_ID,:AP_COMPANY_CODE);',
'  ',
'   OPEN P_OPT;',
'  FETCH P_OPT INTO :P58_POPT;',
'  CLOSE P_OPT;',
'  ',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>95377451955055554
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95377889485055555)
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
'                    and COURSE_ID = :P58_COURSE_ID and TEST_ID = a.TEST_ID)',
'        where COMPANY_CODE = :AP_COMPANY_CODE and COURSE_ID = :P58_COURSE_ID',
'        and STAFF_ID = :AP_STAFF_ID ;',
'     ',
'    XXSLM.xxslm_result_update(:AP_STAFF_ID,:AP_COMPANY_CODE);',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>95377889485055555
);
wwv_flow_imp.component_end;
end;
/
