prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_name=>'Non Supervisory Appraisal'
,p_alias=>'4618'
,p_step_title=>'Non Supervisory Appraisal'
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
 p_id=>wwv_flow_imp.id(221052309004804290)
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
 p_id=>wwv_flow_imp.id(492976866460421104)
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
 p_id=>wwv_flow_imp.id(220888307720026508)
,p_plug_name=>'tab'
,p_parent_plug_id=>wwv_flow_imp.id(492976866460421104)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273341023181012248)
,p_plug_name=>'<strong>Objectives</strong>'
,p_region_name=>'STEP'
,p_parent_plug_id=>wwv_flow_imp.id(220888307720026508)
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
'from xxpermgt.XXPERMGT_NONSUP_TASK_SETUP ',
'WHERE upper(indicator_type) = ''OBJECTIVE''',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P59_APPRAISAL_ID',
'and ins_by = :P59_INS_BY'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P59_APPRAISAL_ID'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P59_APPRAISAL_ID IS NOT NULL AND :P59_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(220886777029026492)
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
 p_id=>wwv_flow_imp.id(220886822743026493)
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
,p_default_expression=>'P59_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(220886966796026494)
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
 p_id=>wwv_flow_imp.id(220887025365026495)
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
 p_id=>wwv_flow_imp.id(220887177363026496)
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
 p_id=>wwv_flow_imp.id(220887217367026497)
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
 p_id=>wwv_flow_imp.id(220887336887026498)
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
 p_id=>wwv_flow_imp.id(220887404685026499)
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
 p_id=>wwv_flow_imp.id(220887571315026500)
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
 p_id=>wwv_flow_imp.id(220887626503026501)
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
 p_id=>wwv_flow_imp.id(220887791401026502)
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
 p_id=>wwv_flow_imp.id(220887822262026503)
,p_name=>'SUPERVISOR_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_SCORE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Non Supervisor Score'
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
 p_id=>wwv_flow_imp.id(220887909182026504)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(220888081289026505)
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
 p_id=>wwv_flow_imp.id(224066718643463126)
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
 p_id=>wwv_flow_imp.id(224066880564463127)
,p_name=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Non Supervisor Comment'
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
 p_id=>wwv_flow_imp.id(220886651193026491)
,p_internal_uid=>220886651193026491
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
 p_id=>wwv_flow_imp.id(221071422570291624)
,p_interactive_grid_id=>wwv_flow_imp.id(220886651193026491)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(221071528051291624)
,p_report_id=>wwv_flow_imp.id(221071422570291624)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221072031206291626)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(220886777029026492)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221072541471291629)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(220886822743026493)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221073084861291631)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(220886966796026494)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>182
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221073508555291633)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(220887025365026495)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>274
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221074094348291636)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(220887177363026496)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221074566041291638)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(220887217367026497)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221075081651291641)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(220887336887026498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221075568409291643)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(220887404685026499)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221076071870291646)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(220887571315026500)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221076538291291648)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(220887626503026501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221077028086291651)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(220887791401026502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221077576764291653)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(220887822262026503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(221083557849300108)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(220887909182026504)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(224253811324384499)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(224066718643463126)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>173
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(224254303753384504)
,p_view_id=>wwv_flow_imp.id(221071528051291624)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(224066880564463127)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205.99992656707764
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(229151260415587598)
,p_interactive_grid_id=>wwv_flow_imp.id(220886651193026491)
,p_name=>'Objectives'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(229151365896587598)
,p_report_id=>wwv_flow_imp.id(229151260415587598)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229151869051587600)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(220886777029026492)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229152379316587603)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(220886822743026493)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229152922706587605)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(220886966796026494)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>182
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229153346400587607)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(220887025365026495)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>331
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229153932193587610)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(220887177363026496)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229154403886587612)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(220887217367026497)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229154919496587615)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(220887336887026498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229155406254587617)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(220887404685026499)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229155909715587620)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(220887571315026500)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229156376136587622)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(220887626503026501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229156865931587625)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(220887791401026502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229157414609587627)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(220887822262026503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(229163395694596082)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(220887909182026504)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(232333649169680473)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(224066718643463126)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(232334141598680478)
,p_view_id=>wwv_flow_imp.id(229151365896587598)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(224066880564463127)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(276207519625407868)
,p_plug_name=>'<strong>Competencies</strong>'
,p_region_name=>'STEP2'
,p_parent_plug_id=>wwv_flow_imp.id(220888307720026508)
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
'from xxpermgt.XXPERMGT_NONSUP_TASK_SETUP  ',
'WHERE upper(indicator_type) = ''COMPETENCY''',
'and employee = :AP_STAFF_ID',
'and appraisal_id = :P59_APPRAISAL_ID',
'and ins_by = :P59_INS_BY',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P59_APPRAISAL_ID'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P59_APPRAISAL_ID IS NOT NULL AND :P59_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199608597759028712)
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
 p_id=>wwv_flow_imp.id(223273423099298388)
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
 p_id=>wwv_flow_imp.id(223273529593298389)
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
 p_id=>wwv_flow_imp.id(223273642557298390)
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
 p_id=>wwv_flow_imp.id(223273793575298391)
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
 p_id=>wwv_flow_imp.id(223273833689298392)
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
 p_id=>wwv_flow_imp.id(223273978644298393)
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
 p_id=>wwv_flow_imp.id(223274012374298394)
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
 p_id=>wwv_flow_imp.id(223274167112298395)
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
 p_id=>wwv_flow_imp.id(223274254231298396)
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
 p_id=>wwv_flow_imp.id(223274339641298397)
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
 p_id=>wwv_flow_imp.id(223274458338298398)
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
 p_id=>wwv_flow_imp.id(223274556356298399)
,p_name=>'SUPERVISOR_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_SCORE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Non Supervisor Score'
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
 p_id=>wwv_flow_imp.id(223275541167298409)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(223275610272298410)
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
 p_id=>wwv_flow_imp.id(224066919359463128)
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
 p_id=>wwv_flow_imp.id(224067053515463129)
,p_name=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPERVISOR_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Non Supervisor Comment'
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
 p_id=>wwv_flow_imp.id(223273386000298387)
,p_internal_uid=>223273386000298387
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
 p_id=>wwv_flow_imp.id(223279274386302350)
,p_interactive_grid_id=>wwv_flow_imp.id(223273386000298387)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(223279390352302350)
,p_report_id=>wwv_flow_imp.id(223279274386302350)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(207724511019839570)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(199608597759028712)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223279716144302355)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(223273423099298388)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223280195816302358)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(223273529593298389)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223280776202302361)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(223273642557298390)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>179
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223281233385302363)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(223273793575298391)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223281726193302366)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(223273833689298392)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223282205198302368)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(223273978644298393)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223282716480302370)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(223274012374298394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223283233515302373)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(223274167112298395)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223283745309302375)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(223274254231298396)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223284266041302377)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(223274339641298397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223284696856302380)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(223274458338298398)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223285212327302382)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(223274556356298399)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223298247770312676)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(223275541167298409)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(224254881169384507)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(224066919359463128)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>204
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(224255338493384510)
,p_view_id=>wwv_flow_imp.id(223279390352302350)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(224067053515463129)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(286566509176253473)
,p_plug_name=>'<strong>Survey</strong>'
,p_region_name=>'STEP3'
,p_parent_plug_id=>wwv_flow_imp.id(220888307720026508)
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
'and appraisal_id = :P59_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P59_APPRAISAL_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P59_POPT'
,p_plug_display_when_cond2=>'Y'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P59_APPRAISAL_ID IS NOT NULL AND :P59_DUE_STATUS = ''INACTIVE'''
,p_plug_read_only_when2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(196872976906852797)
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
 p_id=>wwv_flow_imp.id(223275111784298405)
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
 p_id=>wwv_flow_imp.id(223275814140298412)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(223275899194298413)
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
 p_id=>wwv_flow_imp.id(246371742765539832)
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
 p_id=>wwv_flow_imp.id(492596812020656213)
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
 p_id=>wwv_flow_imp.id(492596902965656214)
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
 p_id=>wwv_flow_imp.id(492597047802656215)
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
 p_id=>wwv_flow_imp.id(492597108345656216)
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
 p_id=>wwv_flow_imp.id(492597220968656217)
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
 p_id=>wwv_flow_imp.id(492597391975656218)
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
 p_id=>wwv_flow_imp.id(492597475980656219)
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
 p_id=>wwv_flow_imp.id(223274640307298400)
,p_internal_uid=>223274640307298400
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
 p_id=>wwv_flow_imp.id(223290176119305359)
,p_interactive_grid_id=>wwv_flow_imp.id(223274640307298400)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(223290285854305359)
,p_report_id=>wwv_flow_imp.id(223290176119305359)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(198654482605512670)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(196872976906852797)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223292695259305372)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(223275111784298405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223304513626315357)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(223275814140298412)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(248840534499822227)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(246371742765539832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492706352567060635)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(492596812020656213)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492706821615060641)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(492596902965656214)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492707333948060644)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(492597047802656215)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492707871420060647)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(492597108345656216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492708366059060650)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(492597220968656217)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492708806133060652)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(492597391975656218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492709338404060655)
,p_view_id=>wwv_flow_imp.id(223290285854305359)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(492597475980656219)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(231369601282581291)
,p_interactive_grid_id=>wwv_flow_imp.id(223274640307298400)
,p_name=>'Survey'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(231369711017581291)
,p_report_id=>wwv_flow_imp.id(231369601282581291)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(206733907768788602)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(196872976906852797)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(231372120422581304)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(223275111784298405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(231383938789591289)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(223275814140298412)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(500785777730336567)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(492596812020656213)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(500786246778336573)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(492596902965656214)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(500786759111336576)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(492597047802656215)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(500787296583336579)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(492597108345656216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(500787791222336582)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(492597220968656217)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(500788231296336584)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(492597391975656218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(500788763567336587)
,p_view_id=>wwv_flow_imp.id(231369711017581291)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(492597475980656219)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(288906367464351808)
,p_interactive_grid_id=>wwv_flow_imp.id(223274640307298400)
,p_name=>'2022 HY'
,p_type=>'PUBLIC'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(288906477199351808)
,p_report_id=>wwv_flow_imp.id(288906367464351808)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(264270673950559119)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(196872976906852797)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(288908886604351821)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(223275111784298405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(288920704971361806)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(223275814140298412)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(558322543912107084)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(492596812020656213)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(558323012960107090)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(492596902965656214)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(558323525293107093)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(492597047802656215)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(558324062765107096)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(492597108345656216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(558324557404107099)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(492597220968656217)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(558324997478107101)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(492597391975656218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(558325529749107104)
,p_view_id=>wwv_flow_imp.id(288906477199351808)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(492597475980656219)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(491974170965380408)
,p_name=>'<strong>Survey/Test</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(220888307720026508)
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
'and b.SETUP_ID = :P59_APPRAISAL_ID',
'and b.SURVEY_ID not in (select test_id from xxslm.xxslm_exam_summary where staff_id = :AP_STAFF_ID and appraisal_id = :P59_APPRAISAL_ID and course_id = a.COURSE_ID and status = ''COMPLETED'')',
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
 p_id=>wwv_flow_imp.id(95416550242776149)
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
 p_id=>wwv_flow_imp.id(95416933762776149)
,p_query_column_id=>2
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95417351876776150)
,p_query_column_id=>3
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95417774513776151)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95418122855776151)
,p_query_column_id=>5
,p_column_alias=>'C_ID'
,p_column_display_sequence=>6
,p_column_heading=>'C Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95418599596776152)
,p_query_column_id=>6
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Course Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95418965422776153)
,p_query_column_id=>7
,p_column_alias=>'RETAKE'
,p_column_display_sequence=>7
,p_column_heading=>'Retake'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95419316555776153)
,p_query_column_id=>8
,p_column_alias=>'NO_OF_QUESTION'
,p_column_display_sequence=>8
,p_column_heading=>'No Of Question'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95419711760776154)
,p_query_column_id=>9
,p_column_alias=>'T_ID'
,p_column_display_sequence=>9
,p_column_heading=>'T Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95420171840776158)
,p_query_column_id=>10
,p_column_alias=>'PASS_MARK'
,p_column_display_sequence=>10
,p_column_heading=>'Pass Mark'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95420503930776159)
,p_query_column_id=>11
,p_column_alias=>'HRS'
,p_column_display_sequence=>11
,p_column_heading=>'Hrs'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95420976541776160)
,p_query_column_id=>12
,p_column_alias=>'MINS'
,p_column_display_sequence=>12
,p_column_heading=>'Mins'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95421353759776160)
,p_query_column_id=>13
,p_column_alias=>'SETUP_ID'
,p_column_display_sequence=>13
,p_column_heading=>'Setup Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(492597636983656221)
,p_plug_name=>'Test Result'
,p_parent_plug_id=>wwv_flow_imp.id(491974170965380408)
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
'and summary.appraisal_id = :P59_APPRAISAL_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(492597850579656223)
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
 p_id=>wwv_flow_imp.id(492597953433656224)
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
 p_id=>wwv_flow_imp.id(492598007700656225)
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
 p_id=>wwv_flow_imp.id(492598125762656226)
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
 p_id=>wwv_flow_imp.id(492598246757656227)
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
 p_id=>wwv_flow_imp.id(492598299671656228)
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
 p_id=>wwv_flow_imp.id(492598464547656229)
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
 p_id=>wwv_flow_imp.id(492598574947656230)
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
 p_id=>wwv_flow_imp.id(492598637758656231)
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
 p_id=>wwv_flow_imp.id(492598712769656232)
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
 p_id=>wwv_flow_imp.id(492598831319656233)
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
 p_id=>wwv_flow_imp.id(492598942052656234)
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
 p_id=>wwv_flow_imp.id(492735171818760194)
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
 p_id=>wwv_flow_imp.id(492597765397656222)
,p_internal_uid=>492597765397656222
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
 p_id=>wwv_flow_imp.id(492720779720412275)
,p_interactive_grid_id=>wwv_flow_imp.id(492597765397656222)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(492720840752412276)
,p_report_id=>wwv_flow_imp.id(492720779720412275)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492721342718412278)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(492597850579656223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492721798287412282)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(492597953433656224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492722320067412285)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(492598007700656225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492722814590412287)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(492598125762656226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492723334082412290)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(492598246757656227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492723808493412293)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(492598299671656228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492724365785412296)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(492598464547656229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492724890128412298)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(492598574947656230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492725390534412300)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(492598637758656231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492725811136412303)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(492598712769656232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492726340978412305)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(492598831319656233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(492726817926412308)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(492598942052656234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(493639349940679575)
,p_view_id=>wwv_flow_imp.id(492720840752412276)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(492735171818760194)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(276198876825407861)
,p_plug_name=>'Employee Tasks'
,p_parent_plug_id=>wwv_flow_imp.id(492976866460421104)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(224067153482463130)
,p_name=>'Career Improvement Recommendations'
,p_parent_plug_id=>wwv_flow_imp.id(276198876825407861)
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
'and APPRAISAL_ID = :p59_APPRAISAL_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P59_APPRAISAL_ID'
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
 p_id=>wwv_flow_imp.id(95428848603776179)
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
 p_id=>wwv_flow_imp.id(95429271708776181)
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
 p_id=>wwv_flow_imp.id(95429688550776182)
,p_query_column_id=>3
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95430061244776183)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(275688255592744347)
,p_plug_name=>'Non Supervisor Appraisal Score'
,p_parent_plug_id=>wwv_flow_imp.id(276198876825407861)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECTIVE_SCORE, COMPETENCY_SCORE, TOTAL_SCORE, PERCENTAGE, ADJUSTED_PERCENTAGE',
'from xxpermgt.XXPERMGT_APPRAISAL_NONSUP_SCORE ',
'where appraisal_id = :p59_APPRAISAL_ID',
'and employee_id = :AP_STAFF_ID',
'and NON_SUP_ID = :P59_NONSUP_ID;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(224066054390463119)
,p_name=>'Appraisal Result'
,p_parent_plug_id=>wwv_flow_imp.id(275688255592744347)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECTIVE_SCORE, COMPETENCY_SCORE, TOTAL_SCORE, PERCENTAGE, ADJUSTED_PERCENTAGE',
'from xxpermgt.XXPERMGT_APPRAISAL_NONSUP_SCORE',
'where appraisal_id = :p59_APPRAISAL_ID',
'and employee_id = :AP_STAFF_ID',
'and NON_SUP_ID = :P59_NONSUP_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P59_APPRAISAL_ID'
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
 p_id=>wwv_flow_imp.id(95431455266776187)
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
 p_id=>wwv_flow_imp.id(95431847909776187)
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
 p_id=>wwv_flow_imp.id(95432236181776188)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_SCORE'
,p_column_display_sequence=>3
,p_column_heading=>'Total Score'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95432668901776189)
,p_query_column_id=>4
,p_column_alias=>'PERCENTAGE'
,p_column_display_sequence=>4
,p_column_heading=>'&P18_COMPUTATION_TYPE.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95433041401776189)
,p_query_column_id=>5
,p_column_alias=>'ADJUSTED_PERCENTAGE'
,p_column_display_sequence=>5
,p_column_heading=>'Adjusted Percentage'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(277651001751961582)
,p_plug_name=>'Comment'
,p_parent_plug_id=>wwv_flow_imp.id(275688255592744347)
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
 p_id=>wwv_flow_imp.id(276215683868407873)
,p_plug_name=>'Appraisal Result'
,p_parent_plug_id=>wwv_flow_imp.id(492976866460421104)
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
 p_id=>wwv_flow_imp.id(222587108953695332)
,p_name=>'Employee Details'
,p_parent_plug_id=>wwv_flow_imp.id(276215683868407873)
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
 p_id=>wwv_flow_imp.id(95436638614776199)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95437075877776199)
,p_query_column_id=>2
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95435831789776197)
,p_query_column_id=>3
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>3
,p_column_heading=>'Email'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(95436257789776198)
,p_query_column_id=>4
,p_column_alias=>'TELEPHONE1'
,p_column_display_sequence=>4
,p_column_heading=>'Telephone'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(276216497852407874)
,p_plug_name=>'Employee'
,p_parent_plug_id=>wwv_flow_imp.id(276215683868407873)
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
 p_id=>wwv_flow_imp.id(276218466685407875)
,p_plug_name=>'Appraisal'
,p_parent_plug_id=>wwv_flow_imp.id(276215683868407873)
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
 p_id=>wwv_flow_imp.id(492976897387421105)
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
 p_id=>wwv_flow_imp.id(95433727303776191)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(277651001751961582)
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
 p_id=>wwv_flow_imp.id(95430747352776184)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(275688255592744347)
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
 p_id=>wwv_flow_imp.id(95312921918893334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(221052309004804290)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95421714255776162)
,p_name=>'P59_COURSE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(491974170965380408)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95434119937776192)
,p_name=>'P59_SUPERVISOR_COMMENT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(277651001751961582)
,p_prompt=>'Non Supervisor Comment'
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
 p_id=>wwv_flow_imp.id(95434451623776193)
,p_name=>'P59_EMPLOYEE_COMMENT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(277651001751961582)
,p_prompt=>'Employee Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>1000
,p_cHeight=>2
,p_read_only_when=>':P59_APPRAISAL_ID IS NOT NULL AND :P59_DUE_STATUS = ''INACTIVE'''
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
 p_id=>wwv_flow_imp.id(95434897178776194)
,p_name=>'P59_APP_STATUS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(277651001751961582)
,p_prompt=>'Approval Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Accept Score;Accepted,Contest Score;Contested'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select One--'
,p_cHeight=>1
,p_read_only_when=>':P59_APPRAISAL_ID IS NOT NULL AND :P59_DUE_STATUS = ''INACTIVE'''
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
 p_id=>wwv_flow_imp.id(95437482542776200)
,p_name=>'P59_SUPERVISOR_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(222587108953695332)
,p_source=>'select supervisor from xxhrms.xxhrms_master_all where person_id = :P59_NONSUP_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95437839717776202)
,p_name=>'P59_SUPERVISOR_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(222587108953695332)
,p_source=>'select FULL_NAME from xxhrms.xxhrms_master_all where person_id = :P59_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95438296519776203)
,p_name=>'P59_SUPERVISOR_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(222587108953695332)
,p_source=>'select EMAIL_ADDRESS from xxhrms.xxhrms_master_all where person_id = :P59_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95438959615776205)
,p_name=>'P59_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(276216497852407874)
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
 p_id=>wwv_flow_imp.id(95439379867776206)
,p_name=>'P59_EMPLOYEE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(276216497852407874)
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
 p_id=>wwv_flow_imp.id(95439766836776206)
,p_name=>'P59_EMAIL_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(276216497852407874)
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
 p_id=>wwv_flow_imp.id(95440105205776207)
,p_name=>'P59_CONTACT_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(276216497852407874)
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
 p_id=>wwv_flow_imp.id(95440805218776209)
,p_name=>'P59_APPRAISAL_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
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
'where setup_id in (select distinct APPRAISAL_ID from xxpermgt.xxpermgt_nonsup_task_setup where employee = :AP_STAFF_ID)',
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
 p_id=>wwv_flow_imp.id(95441269918776212)
,p_name=>'P59_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
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
 p_id=>wwv_flow_imp.id(95441654428776214)
,p_name=>'P59_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
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
 p_id=>wwv_flow_imp.id(95442043563776215)
,p_name=>'P59_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95442498653776216)
,p_name=>'P59_MANAGER_DUE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95442827997776217)
,p_name=>'P59_EMPLOYEE_DUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95443213523776218)
,p_name=>'P59_APPRAISAL_TITLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_use_cache_before_default=>'NO'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95443622143776220)
,p_name=>'P59_DUE_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95444057335776221)
,p_name=>'P59_POPT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95444429603776222)
,p_name=>'P59_COMPUTATION_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95444831684776223)
,p_name=>'P59_INS_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95445264004776224)
,p_name=>'P59_NONSUP_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(276218466685407875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95448613979776243)
,p_name=>'get_details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_APPRAISAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95449186330776246)
,p_event_id=>wwv_flow_imp.id(95448613979776243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(220888307720026508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95449610240776248)
,p_event_id=>wwv_flow_imp.id(95448613979776243)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(276198876825407861)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95446601487776238)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Send_Mail2'
,p_attribute_01=>'noreply@softalliance.com'
,p_attribute_02=>' &P59_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Appraisal Score Update'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P59_SUPERVISOR_NAME.,</p>',
'',
'<p>Self Assessment by &P59_EMPLOYEE_NAME. is completed and ready for your review.</p> ',
'',
'<p>Kindly schedule in time for a review discussion between yourself and  &P59_EMPLOYEE_NAME., and login to <a href=''http://softsuite.softalliance.com:8080/softsuite/f?p=1000004''>SoftSuite</a> to review and assign scores and comment via the Performanc'
||'e Management Module. This must be completed before &P59_EMPLOYEE_DUE_DATE..</p>',
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
,p_internal_uid=>95446601487776238
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95447066719776239)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Send_Mail3'
,p_attribute_01=>'noreply@softalliance.com'
,p_attribute_02=>' &P59_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Appraisal Score Update'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P59_SUPERVISOR_NAME.,</p>',
'',
'<p>This is to notify you that &P59_EMPLOYEE_NAME. has updated the just concluded appraisal scoring with the status <B>&P59_APP_STATUS.</B>.',
'',
'<p>Thank you.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2082206475464314)
,p_process_success_message=>'Final appraisal status updated successfully.'
,p_internal_uid=>95447066719776239
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95401614389776111)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(273341023181012248)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Objectives - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>95401614389776111
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95409708170776132)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(276207519625407868)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Competencies - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>95409708170776132
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95415833878776147)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(286566509176253473)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Survey - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>95415833878776147
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95446231264776237)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' update xxpermgt.XXPERMGT_APPRAISAL_P2P_SCORE',
'     set EMP_COMMENT = :P59_EMPLOYEE_COMMENT,',
'         STATUS = :P59_APP_STATUS',
'    where APPRAISAL_ID = :P59_APPRAISAL_ID',
'      and EMPLOYEE_ID = :P59_STAFF_ID',
'	  and peer_id = :P59_PEER_ID;',
'  commit;    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2082206475464314)
,p_process_success_message=>'Updated Successfully'
,p_process_is_stateful_y_n=>'Y'
,p_internal_uid=>95446231264776237
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95447483023776240)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select a.FULL_NAME,a.PERSON_ID,a.EMAIL,a.TELEPHONE1',
'into :P59_EMPLOYEE_NAME,:P59_STAFF_ID,:P59_EMAIL_ADDRESS,:P59_CONTACT_NUMBER',
'from xxhrms_people a',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER);',
'--GET COMPUTATION TYPE',
'SELECT initcap(COMPUTATION_TYPE)',
'INTO :P59_COMPUTATION_TYPE',
'FROM XXPERMGT_APPRAISAL_PLAN_SETUP',
'WHERE SETUP_ID = :P59_APPRAISAL_ID;',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>95447483023776240
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95447886410776241)
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
'    where setup_id = :P59_APPRAISAL_ID',
'    order by 1;',
'    ',
'       CURSOR P_OPT IS',
'    select xxadm.GET_PROFILE_OPTION(''SURVEY_LIB'',:SS_COMPANY_CODE) from dual;',
'   ',
'   cursor c_score is',
'       select ',
'          NVL(:p59_app_status,status), NVL(:p59_employee_comment,emp_comment), mgr_comment',
'       from xxpermgt.XXPERMGT_APPRAISAL_NONSUP_SCORE',
'       where appraisal_id = :p59_APPRAISAL_ID',
'       and employee_id = :P59_STAFF_ID',
'	   and non_sup_id = :P59_NONSUP_ID; ',
'begin  ',
'  open c_mgt;',
'  fetch c_mgt into :P59_APPRAISAL_TITLE,:P59_START_DATE,:P59_END_DATE,:P59_STATUS,:P59_MANAGER_DUE_DATE,:P59_EMPLOYEE_DUE_DATE,:P59_DUE_STATUS;',
'  close c_mgt;',
' ',
'  :p59_app_status:=null;',
'  :p59_employee_comment:=null;',
'  :p59_supervisor_comment:=null;',
'  open c_score;',
'  fetch c_score into :p59_app_status, :p59_employee_comment, :p59_supervisor_comment;',
'  close c_score;',
' -- XXSLM.xxslm_result_update(:AP_STAFF_ID,:AP_COMPANY_CODE);',
'  ',
'   OPEN P_OPT;',
'  FETCH P_OPT INTO :P59_POPT;',
'  CLOSE P_OPT;',
'  ',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>95447886410776241
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95448235022776242)
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
'                    and COURSE_ID = :P59_COURSE_ID and TEST_ID = a.TEST_ID)',
'        where COMPANY_CODE = :AP_COMPANY_CODE and COURSE_ID = :P59_COURSE_ID',
'        and STAFF_ID = :AP_STAFF_ID ;',
'     ',
'    XXSLM.xxslm_result_update(:AP_STAFF_ID,:AP_COMPANY_CODE);',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>95448235022776242
);
wwv_flow_imp.component_end;
end;
/
