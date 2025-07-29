prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_name=>'Appraisal Result'
,p_alias=>'AR5'
,p_step_title=>'Appraisal Result'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*#STEP .a-GV-table td, #STEP .a-GV-table th {',
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
'}',
'*/'))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(615682308554107720)
,p_plug_name=>'Appraisal List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLAN_ID,	SETUP_ID,	YEAR,	PLAN_NUMBER,	APPRAISAL_TYPE,	TITLE,	STATUS',
'from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH c',
'where COMPANY_CODE=:AP_COMPANY_CODE',
'',
'and YEAR =nvl(:P38_YEAR,YEAR)',
'order by PLAN_ID'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_ajax_items_to_submit=>'P38_YEAR'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP,38:P38_PLAN_NUMBER,P38_SETUP_ID,P38_APPRAISAL_ID,P38_RO:&PLAN_NUMBER.,&SETUP_ID.,&PLAN_ID.,Y',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_EXACT_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    '<b>Year   :</b>&YEAR.',
    '<b>Status :</b>&STATUS.',
    '</pre>')),
  'text_formatting', '<b>Appraisal Title :</b> &TITLE.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(637973300889837380)
,p_plug_name=>'Tab'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(307744642943091441)
,p_plug_name=>'<strong>Competencies</strong>'
,p_region_name=>'STEP1'
,p_parent_plug_id=>wwv_flow_imp.id(637973300889837380)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>45
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  TASK_ID,',
'                STAFF_ID,',
'                SETUP_ID,',
'                PLAN_ID,',
'                COMPANY_CODE,',
'                YEAR,',
'                APPRAISAL_TYPE,',
'                TITLE,',
'                MAXIMUM_SCORE,',
'                INDICATOR_TYPE,',
'                PERFORMANCE_ID,',
'                PERFORMANCE_INDICATOR,',
'                DESCRIPTION,',
'                CLASSIFICATION,',
'                TARGET,',
'                EMP_MONTHLY_SCORE,',
'                MGR_MONTHLY_SCORE,',
'                EMP_MONTHLY_COMMENT,',
'                MGR_MONTHLY_COMMENT,',
'                EMP_QUARTER_SCORE,',
'                MGR_QUARTER_SCORE,',
'                EMP_QUARTER_COMMENT,',
'                MGR_QUARTER_COMMENT,',
'                EMP_ANNUAL_SCORE,',
'                MGR_ANNUAL_SCORE,',
'                EMP_ANNUAL_COMMENT,',
'                MGR_ANNUAL_COMMENT',
'                ',
'',
'from XXPERMGT.XXPERMGT_APPRAISAL_TASK',
'where upper (INDICATOR_TYPE) = ''COMPETENCY''',
'and STAFF_ID = :AP_STAFF_ID',
'and SETUP_ID = :P38_SETUP_ID',
'AND ((case ',
'    when :P38_PLAN_NUMBER  IN (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''10'',''11'',''12'')',
'     THEN  plan_id else null',
'    END) =:P38_APPRAISAL_ID ',
'OR  (case ',
'    when :P38_PLAN_NUMBER  IN (''Q1'',''Q2'',''Q3'',''Q4'')',
'     THEN  PARENT_ID else null',
'    END) =:P38_PLAN_NUMBER ',
'OR  (case ',
'    when :P38_PLAN_NUMBER  =''A''',
'     THEN  YEAR else null',
'    END) = (SELECT YEAR FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID) )',
'AND COMPANY_CODE=:ap_company_code'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P38_APPRAISAL_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307744892321091443)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307744975479091444)
,p_name=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P38_SETUP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307745057025091445)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
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
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P38_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307745164651091446)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
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
,p_default_expression=>'SS_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307745223361091447)
,p_name=>'YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'YEAR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select YEAR from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT where setup_id=:P38_SETUP_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307745328212091448)
,p_name=>'APPRAISAL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPRAISAL_TYPE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P38_SETUP_ID',
'AND PLAN_ID=:P38_APPRAISAL_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307745409996091449)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TITLE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P38_SETUP_ID',
'AND PLAN_ID=:P38_APPRAISAL_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'P38_PLAN_NUMBER'
,p_display_condition2=>'Q1:Q2:Q3:Q4:A'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307745505289091450)
,p_name=>'MAXIMUM_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAXIMUM_SCORE'
,p_data_type=>'NUMBER'
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
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MAXIMUM_SCORE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT where setup_id=:P38_SETUP_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307804779335813301)
,p_name=>'PERFORMANCE_INDICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_INDICATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Performance '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307804818520813302)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307804910148813303)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Classification'
,p_label=>'Classification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(307805021548813304)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_stretch=>'N'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'    config.defaultGridColumnOptions = {',
'',
'        cellTemplate: ''<div class="wrap-cell">&DESCRIPTION.</div>''',
'',
'    };',
'',
'    return config;',
'',
'}'))
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
 p_id=>wwv_flow_imp.id(307805114206813305)
,p_name=>'TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TARGET'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Target'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(307805243033813306)
,p_name=>'INDICATOR_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INDICATOR_TYPE'
,p_data_type=>'VARCHAR2'
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
,p_default_type=>'STATIC'
,p_default_expression=>'COMPETENCY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307805377725813307)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Performance Indicator'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307805491496813308)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P38_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307805504565813309)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307805645514813310)
,p_name=>'EMP_MONTHLY_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_MONTHLY_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Emp Monthly Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :SS_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(307805772485813311)
,p_name=>'MGR_MONTHLY_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_MONTHLY_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mgr Monthly Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :SS_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(307805830170813312)
,p_name=>'EMP_MONTHLY_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_MONTHLY_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Emp Monthly Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307805921161813313)
,p_name=>'MGR_MONTHLY_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_MONTHLY_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mgr Monthly Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(307806095748813314)
,p_name=>'EMP_QUARTER_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_QUARTER_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Emp Quarter Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :SS_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''QUA'' OR v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307806127945813315)
,p_name=>'MGR_QUARTER_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_QUARTER_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mgr Quarter Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :SS_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''QUA'' OR v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307806226192813316)
,p_name=>'EMP_QUARTER_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_QUARTER_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Emp Quarter Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''QUA'' OR v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307806361011813317)
,p_name=>'MGR_QUARTER_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_QUARTER_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mgr Quarter Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''QUA'' OR v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307806415949813318)
,p_name=>'EMP_ANNUAL_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ANNUAL_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Emp Annual Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :SS_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307806500210813319)
,p_name=>'MGR_ANNUAL_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_ANNUAL_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mgr Annual Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :SS_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307806628744813320)
,p_name=>'EMP_ANNUAL_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ANNUAL_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Emp Annual Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307806724933813321)
,p_name=>'MGR_ANNUAL_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_ANNUAL_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mgr Annual Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(307744743057091442)
,p_internal_uid=>307744743057091442
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_imp.id(307810347999825681)
,p_interactive_grid_id=>wwv_flow_imp.id(307744743057091442)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(307810473520825681)
,p_report_id=>wwv_flow_imp.id(307810347999825681)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307810965137825683)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(307744892321091443)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307811461152825686)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(307744975479091444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307811971045825687)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(307745057025091445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307812490000825689)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(307745164651091446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307812909129825691)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(307745223361091447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307813432974825694)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(307745328212091448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307813992325825696)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(307745409996091449)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307814403496825698)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(307745505289091450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307814949128825700)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(307804779335813301)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307815445725825702)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(307804818520813302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307815959332825703)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(307804910148813303)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307816418201825705)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(307805021548813304)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>327
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307816971539825707)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(307805114206813305)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307817416765825709)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(307805243033813306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307817953833825711)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(307805377725813307)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307818482839825713)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(307805491496813308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307819380727825716)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(307805645514813310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>154
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307819880419825718)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(307805772485813311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307820371790825720)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(307805830170813312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>163
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307820800077825721)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(307805921161813313)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>183
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307821365735825724)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(307806095748813314)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307821841968825726)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(307806127945813315)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307822385505825727)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(307806226192813316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307822807261825729)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(307806361011813317)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307823317039825731)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(307806415949813318)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307823810459825733)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(307806500210813319)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307824344607825734)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(307806628744813320)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>210
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307824848711825736)
,p_view_id=>wwv_flow_imp.id(307810473520825681)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(307806724933813321)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>210
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(637973427453837381)
,p_plug_name=>'<strong>Objectives</strong>'
,p_region_name=>'STEP'
,p_parent_plug_id=>wwv_flow_imp.id(637973300889837380)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  TASK_ID,',
'                STAFF_ID,',
'                SETUP_ID,',
'                PLAN_ID,',
'                COMPANY_CODE,',
'                YEAR,',
'                APPRAISAL_TYPE,',
'                TITLE,',
'                MAXIMUM_SCORE,',
'                INDICATOR_TYPE,',
'                PERFORMANCE_ID,',
'                PERFORMANCE_INDICATOR,',
'                DESCRIPTION,',
'                CLASSIFICATION,',
'                TARGET,',
'                EMP_MONTHLY_SCORE,',
'                MGR_MONTHLY_SCORE,',
'                EMP_MONTHLY_COMMENT,',
'                MGR_MONTHLY_COMMENT,',
'                EMP_QUARTER_SCORE,',
'                MGR_QUARTER_SCORE,',
'                EMP_QUARTER_COMMENT,',
'                MGR_QUARTER_COMMENT,',
'                EMP_ANNUAL_SCORE,',
'                MGR_ANNUAL_SCORE,',
'                EMP_ANNUAL_COMMENT,',
'                MGR_ANNUAL_COMMENT',
'                ',
'',
'from XXPERMGT.XXPERMGT_APPRAISAL_TASK',
'where upper (INDICATOR_TYPE) = ''OBJECTIVE''',
'and STAFF_ID = :AP_STAFF_ID',
'and SETUP_ID = :P38_SETUP_ID',
'AND((case ',
'    when :P38_PLAN_NUMBER  IN (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''10'',''11'',''12'')',
'     THEN  plan_id else null',
'    END) =:P38_APPRAISAL_ID ',
'OR  (case ',
'    when :P38_PLAN_NUMBER  IN (''Q1'',''Q2'',''Q3'',''Q4'')',
'     THEN  PARENT_ID else null',
'    END) =:P38_PLAN_NUMBER ',
'OR  (case ',
'    when :P38_PLAN_NUMBER  =''A''',
'     THEN  YEAR else null',
'    END) = (SELECT YEAR FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID) )',
'AND COMPANY_CODE=:ap_company_code'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P38_APPRAISAL_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307264277073185825)
,p_name=>'EMP_MONTHLY_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_MONTHLY_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Emp Monthly Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(307264427183185827)
,p_name=>'MGR_MONTHLY_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_MONTHLY_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mgr Monthly Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(307264509796185828)
,p_name=>'EMP_MONTHLY_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_MONTHLY_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Emp Monthly Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307264697828185829)
,p_name=>'MGR_MONTHLY_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_MONTHLY_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mgr Monthly Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
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
 p_id=>wwv_flow_imp.id(307264786216185830)
,p_name=>'EMP_QUARTER_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_QUARTER_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Emp Quarter Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''QUA'' OR v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307264851062185831)
,p_name=>'MGR_QUARTER_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_QUARTER_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mgr Quarter Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''QUA'' OR v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307264992876185832)
,p_name=>'EMP_QUARTER_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_QUARTER_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Emp Quarter Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''QUA'' OR v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307265069980185833)
,p_name=>'MGR_QUARTER_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_QUARTER_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mgr Quarter Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''QUA'' OR v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307265128500185834)
,p_name=>'EMP_ANNUAL_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ANNUAL_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Emp Annual Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307265280536185835)
,p_name=>'MGR_ANNUAL_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_ANNUAL_SCORE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mgr Annual Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>380
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r from XXHRMS.XXHRMS_USER_LOOKUPS',
'where lookup_code = ''PER_RATING''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'--AND TO_NUMBER(LOOKUP_TYPE_CODE) <=(SELECT (MAXIMUM_SCORE) FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT WHERE SETUP_ID=:P38_SETUP_ID)',
'order by 1'))
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307265334029185836)
,p_name=>'EMP_ANNUAL_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ANNUAL_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Emp Annual Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307265450689185837)
,p_name=>'MGR_ANNUAL_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_ANNUAL_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mgr Annual Comment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>400
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
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result boolean :=false;',
'v_appType    varchar2(50);',
'begin',
'    IF :P38_APPRAISAL_ID IS NOT NULL',
'        THEN',
'                select APPRAISAL_TYPE into v_appType ',
'                from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'                where setup_id=:P38_SETUP_ID',
'                and PLAN_ID=:P38_APPRAISAL_ID;',
'',
'if v_appType = ''ANN''',
'    THEN v_result := TRUE;',
'    END IF;',
'    END IF;',
'    RETURN v_result;',
'    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(614428563393102701)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(614428707068102702)
,p_name=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P38_SETUP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(614428815786102703)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P38_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(614428887493102704)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'SS_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(614429001252102705)
,p_name=>'YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'YEAR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select YEAR from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT where setup_id=:P38_SETUP_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(614429101104102706)
,p_name=>'APPRAISAL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPRAISAL_TYPE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P38_SETUP_ID',
'AND PLAN_ID=:P38_APPRAISAL_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(614429180879102707)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TITLE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P38_SETUP_ID',
'AND PLAN_ID=:P38_APPRAISAL_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'P38_PLAN_NUMBER'
,p_display_condition2=>'Q1:Q2:Q3:Q4:A'
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(614429245706102708)
,p_name=>'MAXIMUM_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAXIMUM_SCORE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MAXIMUM_SCORE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT where setup_id=:P38_SETUP_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(638232716486630852)
,p_name=>'PERFORMANCE_INDICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_INDICATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Performance '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(638232804928630853)
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
 p_id=>wwv_flow_imp.id(638232979892630855)
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
 p_id=>wwv_flow_imp.id(638233059107630856)
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
,p_stretch=>'N'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'    config.defaultGridColumnOptions = {',
'',
'        cellTemplate: ''<div class="wrap-cell">&DESCRIPTION.</div>''',
'',
'    };',
'',
'    return config;',
'',
'}'))
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
 p_id=>wwv_flow_imp.id(638233485656630860)
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
 p_id=>wwv_flow_imp.id(638234152971630867)
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
 p_id=>wwv_flow_imp.id(638234245577630868)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
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
'and COMPANY_CODE = :SS_COMPANY_CODE'))
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
 p_id=>wwv_flow_imp.id(638234424628630869)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P38_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(638234522230630870)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(638232545224630851)
,p_internal_uid=>638232545224630851
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_imp.id(638238399368637332)
,p_interactive_grid_id=>wwv_flow_imp.id(638232545224630851)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(638238519795637333)
,p_report_id=>wwv_flow_imp.id(638238399368637332)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307343204768752198)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(307264277073185825)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307345237862728133)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(307264427183185827)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307345702561728130)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(307264509796185828)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307346223325728126)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(307264697828185829)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307346768497728123)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(307264786216185830)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307347294825728120)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(307264851062185831)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307347760397728117)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(307264992876185832)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307348235918728114)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(307265069980185833)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307348703349728111)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(307265128500185834)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307349212181728108)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(307265280536185835)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307349768335728104)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(307265334029185836)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307350170596728101)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(307265450689185837)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(614442791563150969)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(614428563393102701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(614443301626150957)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(614428707068102702)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(614443722294150953)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(614428815786102703)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(614444298381150950)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(614428887493102704)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(614444726449150947)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(614429001252102705)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(614445299066150943)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(614429101104102706)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(614445770653150940)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(614429180879102707)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>194
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(614446259138150937)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(614429245706102708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638238946731637350)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(638232716486630852)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638239475538637369)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(638232804928630853)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638240500565637384)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(638232979892630855)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>212
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638240981013637391)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(638233059107630856)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>188
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638242861885637408)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(638233485656630860)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638246389047637432)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(638234152971630867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638246912756637435)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(638234245577630868)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>173
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638247368742637438)
,p_view_id=>wwv_flow_imp.id(638238519795637333)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(638234424628630869)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(916638797661105057)
,p_plug_name=>'Performance Management'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P38_RO'
,p_plug_read_only_when2=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(693143744521690632)
,p_plug_name=>'Review Period'
,p_parent_plug_id=>wwv_flow_imp.id(916638797661105057)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(615758713502089698)
,p_name=>'Section 2-Appraiser Information'
,p_parent_plug_id=>wwv_flow_imp.id(693143744521690632)
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
'where a.person_id = :P38_SUPERVISOR_ID',
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
 p_id=>wwv_flow_imp.id(307902898733806690)
,p_query_column_id=>1
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307903229367806690)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307903644887806691)
,p_query_column_id=>3
,p_column_alias=>'MIDDLE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Middle Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307904087737806691)
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
 p_id=>wwv_flow_imp.id(307901656445806690)
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
 p_id=>wwv_flow_imp.id(307902094487806690)
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
 p_id=>wwv_flow_imp.id(307902434070806690)
,p_query_column_id=>7
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>7
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307899289715806689)
,p_query_column_id=>8
,p_column_alias=>'GENDER'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307899659921806689)
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
 p_id=>wwv_flow_imp.id(307900090640806689)
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
 p_id=>wwv_flow_imp.id(307900480728806689)
,p_query_column_id=>11
,p_column_alias=>'DATEOFLASTPROMOTION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307900847275806689)
,p_query_column_id=>12
,p_column_alias=>'DATEOFPOSTINGTOMDA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307901278063806690)
,p_query_column_id=>13
,p_column_alias=>'DATEOFPOSTINGTOCURRENTJOB'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(646835903620394982)
,p_name=>'Section 1-Personal Information'
,p_parent_plug_id=>wwv_flow_imp.id(693143744521690632)
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
 p_id=>wwv_flow_imp.id(307893739666805512)
,p_query_column_id=>1
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307894172333805512)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307894543578805512)
,p_query_column_id=>3
,p_column_alias=>'MIDDLE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Middle Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307894998754805512)
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
 p_id=>wwv_flow_imp.id(307895389465805513)
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
 p_id=>wwv_flow_imp.id(307895722763805513)
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
 p_id=>wwv_flow_imp.id(307896139106805513)
,p_query_column_id=>7
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>7
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307896517553805514)
,p_query_column_id=>8
,p_column_alias=>'GENDER'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307896919116805514)
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
 p_id=>wwv_flow_imp.id(307897365566805514)
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
 p_id=>wwv_flow_imp.id(307897735793805514)
,p_query_column_id=>11
,p_column_alias=>'DATEOFLASTPROMOTION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307898167702805514)
,p_query_column_id=>12
,p_column_alias=>'DATEOFPOSTINGTOMDA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307898509900805514)
,p_query_column_id=>13
,p_column_alias=>'DATEOFPOSTINGTOCURRENTJOB'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(916638921751105058)
,p_plug_name=>'Not Enabled'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'Performance Management is not enabled. Contact your Administrator'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''N'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1634178326136107295)
,p_plug_name=>'Final Appraisal Score and Comment'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>100
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(307316590472789709)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(637973300889837380)
,p_button_name=>'Notify'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Share with Manager'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P38_DUE_STATUS'
,p_button_condition2=>'ACTIVE'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(307316817916789698)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(637973300889837380)
,p_button_name=>'Copy'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy Indicators'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP:P40_STAFF_ID,P40_CURR_APPRAISAL:&P38_STAFF_ID.,&P38_APPRAISAL_ID.'
,p_button_condition=>'P38_DUE_STATUS'
,p_button_condition2=>'ACTIVE'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(308523126897647516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_button_name=>'SUBMIT_COMMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Comment'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>':P38_STAFF_ID IS NOT NULL AND :P38_APPRAISAL_ID IS NOT NULL AND :P38_DUE_STATUS in  (''ACTIVE'',''OPEN'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(307859497246283007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P38_RO'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307310638663789719)
,p_name=>'P38_SETUP_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
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
 p_id=>wwv_flow_imp.id(307311094479789719)
,p_name=>'P38_SETUP_ID_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307311413838789718)
,p_name=>'P38_APPRAISAL_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_prompt=>'Appraisal Plan'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TITLE d, PLAN_ID r',
'from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P38_SETUP_ID',
'and STATUS=''OPEN''',
'and company_code=:AP_COMPANY_CODE',
'',
'union',
'',
'select TITLE d, PLAN_ID r',
'from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P38_SETUP_ID',
'AND :P38_RO=''Y''',
'--and STATUS=''OPEN''',
'and company_code=:AP_COMPANY_CODE',
'',
'order by R'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P38_SETUP_ID'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(307311885436789717)
,p_name=>'P38_START_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307312205358789717)
,p_name=>'P38_END_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307312667989789716)
,p_name=>'P38_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307313069953789716)
,p_name=>'P38_SUPERVISOR_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_source=>'select supervisor from xxhrms.xxhrms_assignments where person_id = :P38_STAFF_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307313432757789714)
,p_name=>'P38_SUPERVISOR_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_source=>'select FULLNAME from xxhrms.xxhrms_assignments where person_id = :P38_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307313878627789713)
,p_name=>'P38_SUPERVISOR_EMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_source=>'select EMAIL from xxhrms.xxhrms_people where person_id = :P38_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307314298779789713)
,p_name=>'P38_MANAGER_DUE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307314648706789712)
,p_name=>'P38_EMPLOYEE_DUE_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307315039739789711)
,p_name=>'P38_APPRAISAL_TITLE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_use_cache_before_default=>'NO'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307315473745789711)
,p_name=>'P38_DUE_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STATUS from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH where PLAN_ID = :P38_APPRAISAL_ID',
'AND SETUP_ID=:P38_SETUP_ID',
'AND COMPANY_CODE=:AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307315852081789710)
,p_name=>'P38_POPT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307743989426091434)
,p_name=>'P38_PARENT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307744123833091436)
,p_name=>'P38_PLAN_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307859298208283005)
,p_name=>'P38_RO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307861191063283024)
,p_name=>'P38_STAFF_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(693143744521690632)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307874474692294389)
,p_name=>'P38_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(615682308554107720)
,p_prompt=>'Select Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select YEAR D, YEAR R from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT',
'where company_code=:AP_COMPANY_CODE'))
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
 p_id=>wwv_flow_imp.id(308523573510647517)
,p_name=>'P38_NOTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'<span style="color:red"><b> Note: Always click on the Compute Final Score button at the completion of Appraisal Scoring and when updates are made. Also enter your Manager Comment. Without the Manager Comment and Score, the appraisal process will not '
||'be finalized.</b></span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>11
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308523933628647517)
,p_name=>'P38_COMPETENCY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Competency Score :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308524304788647517)
,p_name=>'P38_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Total Score :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308524703549647517)
,p_name=>'P38_OBJECTIVE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Objective Score :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308525100766647517)
,p_name=>'P38_PERCENTAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Percentage Score % :'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308525504014647518)
,p_name=>'P38_ADJUSTED_PERCENTAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Adjusted Percentage :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308525903625647518)
,p_name=>'P38_EMP_COMMENT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Appraisee''s Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
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
 p_id=>wwv_flow_imp.id(308526347802647518)
,p_name=>'P38_EMP_INS_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(308526763239647518)
,p_name=>'P38_MGR_COMMENT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Appraiser''s Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(308527109294647518)
,p_name=>'P38_MGR_INS_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(308527566300647519)
,p_name=>'P38_COUNTERSIGNING_OFFICER_COMMENTS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Countersigning Officer Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(308527991093647519)
,p_name=>'P38_CNT_OFFICER_INS_DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(308528314965647519)
,p_name=>'P38_NAME_COUNTERSIGNING_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Name of Countersigning Officer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FULL_NAME d, person_id r',
'from XXHRMS.xxhrms_master_all',
'--WHERE person_id NOT IN(:P38_STAFF_ID,:P38_SUPERVISOR_ID)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(308528703573647519)
,p_name=>'P38_COUNTERSIGNING_OFFICER_DESIGNATION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(1634178326136107295)
,p_prompt=>'Designation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME, JOB_CODE',
'  from xxhrms.XXHRMS_JOBS',
'  WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'  AND STATUS = ''ACTIVE''',
'  --AND JOB_CODE=(SELECT MAX(JOB_ID) FROM XXHRMS_ASSIGNMENTS  WHERE STAFF_ID=:P38_NAME_COUNTERSIGNING_ID)',
' order by 1'))
,p_lov_cascade_parent_items=>'P38_NAME_COUNTERSIGNING_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307339191437789605)
,p_name=>'get_details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_APPRAISAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307339631838789605)
,p_event_id=>wwv_flow_imp.id(307339191437789605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(637973300889837380)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307340085773789604)
,p_name=>'SET_VALUE_OBJ'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(637973427453837381)
,p_triggering_element=>'PERFORMANCE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PERFORMANCE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307340529921789603)
,p_event_id=>wwv_flow_imp.id(307340085773789604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DESCRIPTION,PERFORMANCE_INDICATOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        select DESCRIPTION,TASK  from xxpermgt_obj_lib',
'        where CLASSIFICATION = :CLASSIFICATION',
'        and OBJECTIVE_ID = :PERFORMANCE_ID',
'   '))
,p_attribute_07=>'CLASSIFICATION,,PERFORMANCE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307335471310789614)
,p_name=>'Refresh Page'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SETUP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307336431533789609)
,p_event_id=>wwv_flow_imp.id(307335471310789614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''setSetupId'',',
'                 {x01 :  $v("P38_SETUP_ID")},',
'                    {',
'                    success: function(data) {',
'                   apex.debug.log(''Success of server process RunReportJSON'',data.setupValue);',
'                   apex.item(''P38_SETUP_ID_1'').setValue(data.setupValue);',
'                   //apex.item("P3_Submit").enable();new_screening',
'            ',
'                   ',
'                 } ,error: function(err){',
'                        console.log(err);',
'                    }',
'    ',
'            });'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307335912334789610)
,p_event_id=>wwv_flow_imp.id(307335471310789614)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(637973427453837381)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307336891252789609)
,p_name=>'tabShowHide'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_APPRAISAL_ID'
,p_condition_element=>'P38_APPRAISAL_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307337330687789608)
,p_event_id=>wwv_flow_imp.id(307336891252789609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(637973300889837380)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(308092822593295735)
,p_event_id=>wwv_flow_imp.id(307336891252789609)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1634178326136107295)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307337816464789607)
,p_event_id=>wwv_flow_imp.id(307336891252789609)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(637973300889837380)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(308092759827295734)
,p_event_id=>wwv_flow_imp.id(307336891252789609)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1634178326136107295)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307859362303283006)
,p_event_id=>wwv_flow_imp.id(307336891252789609)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_RO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307744074615091435)
,p_event_id=>wwv_flow_imp.id(307336891252789609)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_parent_id    VARCHAR2(10);',
'V_PLAN_NUMBER    VARCHAR2(10);',
'begin',
' IF :P38_APPRAISAL_ID IS NOT NULL',
'     THEN',
'     SELECT PLAN_NUMBER INTO V_PLAN_NUMBER FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH',
'     WHERE PLAN_ID=:P38_APPRAISAL_ID;',
'    ',
'            if V_PLAN_NUMBER  =''1''',
'            OR V_PLAN_NUMBER  =''2''',
'            OR V_PLAN_NUMBER  =''3''',
'                then v_parent_id:= ''Q1'';',
'',
'            elsif  V_PLAN_NUMBER  =''4''',
'            OR V_PLAN_NUMBER  =''5''',
'            OR V_PLAN_NUMBER  =''6''',
'                then v_parent_id:= ''Q2'';',
'',
'              elsif  V_PLAN_NUMBER  =''7''',
'            OR V_PLAN_NUMBER  =''8''',
'            OR V_PLAN_NUMBER  =''9''',
'                then v_parent_id:= ''Q3'';',
'',
'              elsif  V_PLAN_NUMBER  =''10''',
'            OR V_PLAN_NUMBER  =''11''',
'            OR V_PLAN_NUMBER  =''12''',
'                then v_parent_id:= ''Q4'';',
'            END IF;',
'            ELSE v_parent_id :=NULL;',
'    END IF;',
'    ',
'     APEX_UTIL.SET_SESSION_STATE(''P38_PARENT_ID'', v_parent_id);',
'     APEX_UTIL.SET_SESSION_STATE(''P38_PLAN_NUMBER'', V_PLAN_NUMBER);',
'    END;'))
,p_attribute_02=>'P38_APPRAISAL_ID'
,p_attribute_03=>'P38_PARENT_ID,P38_PLAN_NUMBER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307744209013091437)
,p_name=>'DISABLE COLUMNS'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(637973427453837381)
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P38_PLAN_NUMBER'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'Q1,Q2,Q3,Q4'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307744363602091438)
,p_event_id=>wwv_flow_imp.id(307744209013091437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_MONTHLY_SCORE,MGR_MONTHLY_SCORE,EMP_MONTHLY_COMMENT,MGR_MONTHLY_COMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307744442379091439)
,p_name=>'DISABLE COLUMNS_1'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(637973427453837381)
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P38_PLAN_NUMBER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307744522719091440)
,p_event_id=>wwv_flow_imp.id(307744442379091439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_MONTHLY_SCORE,MGR_MONTHLY_SCORE,EMP_MONTHLY_COMMENT,MGR_MONTHLY_COMMENT,EMP_QUARTER_SCORE,MGR_QUARTER_SCORE,EMP_QUARTER_COMMENT,MGR_QUARTER_COMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307806887128813322)
,p_name=>'DISABLE COLUMNS_2'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(307744642943091441)
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P38_PLAN_NUMBER'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'Q1,Q2,Q3,Q4'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307806984832813323)
,p_event_id=>wwv_flow_imp.id(307806887128813322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_MONTHLY_SCORE,MGR_MONTHLY_SCORE,EMP_MONTHLY_COMMENT,MGR_MONTHLY_COMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307807025204813324)
,p_name=>'DISABLE COLUMNS_3'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(307744642943091441)
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P38_PLAN_NUMBER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307807156241813325)
,p_event_id=>wwv_flow_imp.id(307807025204813324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_MONTHLY_SCORE,MGR_MONTHLY_SCORE,EMP_MONTHLY_COMMENT,MGR_MONTHLY_COMMENT,EMP_QUARTER_SCORE,MGR_QUARTER_SCORE,EMP_QUARTER_COMMENT,MGR_QUARTER_COMMENT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307333817772789617)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'NOTIFY_MANAGER'
,p_attribute_01=>'notifications@softsuite.com'
,p_attribute_02=>'&P38_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Performance Indicator Setup Notification'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P38_SUPERVISOR_NAME.,</p>',
'',
'<p>&P38_EMPLOYEE_NAME. has completed the Performance Indicator Setup for the current appraisal period &P38_APPRAISAL_TITLE. </p> ',
'',
'<p>Kindly schedule a review session between yourself and  &P38_EMPLOYEE_NAME. to agree on your expectations for the appraisal period. Login to <a href=''http://softsuite.softalliance.com:8080/softsuite/f?p=1000004''>SoftSuite</a> to review on time, as '
||'this must be completed before &P38_EMPLOYEE_DUE_DATE..</p>',
'',
'<p>If you have any questions or need assistance in setting up the Key Performance Indicators, please contact a member of the Human Resources Department.</p>',
'',
'<p>Thank You.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4223412303763118)
,p_process_success_message=>'You have successfully shared your Key Performance Indicators with your Manager.'
,p_internal_uid=>307333817772789617
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307333481726789619)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'NOTIFY_SELF'
,p_attribute_01=>'notifications@softsuite.com'
,p_attribute_02=>'&P38_EMAIL_ADDRESS.'
,p_attribute_06=>'Performance Indicator Setup Notification'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P38_EMPLOYEE_NAME.,</p>',
'',
'<p>You have completed the Performance Indicator Setup for the current appraisal period &P38_APPRAISAL_TITLE., and a notification has been sent to your manager. </p> ',
'',
'<p>If you have any questions or need futher assistance in setting up the Key Performance Indicators, please contact a member of the Human Resources Department.</p>',
'',
'<p>Thank You.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4223412303763118)
,p_process_success_message=>'You have successfully shared your Key Performance Indicators with your Manager.'
,p_internal_uid=>307333481726789619
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307859540391283008)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'RESET_RO'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P38_RO,P38_APPRAISAL_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(307859497246283007)
,p_internal_uid=>307859540391283008
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(308094328647295750)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE COMMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_cnt      number;',
'BEGIN',
' select count(*) INTO V_CNT from XXPERMGT.XXPERMGT_APPRAISAL_TASK_SCORE',
' where setup_id=:p38_setup_id',
' and plan_id=:p38_appraisal_id',
' AND COMPANY_CODE=:SS_COMPANY_CODE',
' AND STAFF_ID=:P38_STAFF_ID;',
' ',
'     IF V_CNT >0',
'         THEN',
'        UPDATE XXPERMGT.XXPERMGT_APPRAISAL_TASK_SCORE',
'            SET EMP_COMMENT=:P38_EMP_COMMENT,',
'            EMP_DATE_COMMENT=NVL(EMP_DATE_COMMENT,SYSDATE)',
'             where setup_id=:p38_setup_id',
'             and plan_id=:p38_appraisal_id',
'             AND COMPANY_CODE=:SS_COMPANY_CODE',
'             AND STAFF_ID=:P38_STAFF_ID;',
'',
'            END IF;',
'            ',
'            END;',
'            '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(308523126897647516)
,p_internal_uid=>308094328647295750
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307333018746789630)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(637973427453837381)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Objective_grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>307333018746789630
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307859659302283009)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(307744642943091441)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Objective_grid - Save Interactive Grid Data_1'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>307859659302283009
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307334252727789616)
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
':P38_STAFF_ID',
'--,:P38_EMAIL_ADDRESS,:P38_CONTACT_NUMBER',
'from xxhrms_PEOPLE a',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER);',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>307334252727789616
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(308529332573664677)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getScores'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT NUMBER;',
'begin',
'    SELECT COUNT(*) INTO V_CNT FROM xxpermgt.XXPERMGT_APPRAISAL_TASK_SCORE',
'                                    where PLAN_ID = :P38_APPRAISAL_ID',
'                                    AND COMPANY_CODE=:AP_COMPANY_CODE',
'                                    AND SETUP_ID=:P38_SETUP_ID',
'                                    and STAFF_ID = :P38_STAFF_ID; ',
'                                    ',
'        IF V_CNT>0',
'            THEN',
'                    select nvl(OBJECTIVE_SCORE,0),',
'                              nvl(COMPETENCY_SCORE,0),',
'                              nvl(TOTAL_SCORE,0),',
'                              nvl(PERCENT_SCORE,0),',
'                              COUNTER_OFFICER_COMMENT,',
'                              DATE_SIGNED,',
'                              COUNTERSIGNING_OFFICER,',
'                              DESIGNATION,',
'                              EMP_COMMENT,',
'                              EMP_DATE_COMMENT,',
'                              MGR_COMMENT,',
'                              MGR_DATE_COMMENT',
'                              ',
'                    into :P38_objective,',
'                            :P38_competency,',
'                            :P38_total,',
'                            :P38_percentage,',
'                            :P38_COUNTERSIGNING_OFFICER_COMMENTS,',
'                            :P38_CNT_OFFICER_INS_DATE,',
'                            :P38_NAME_COUNTERSIGNING_ID,',
'                            :P38_COUNTERSIGNING_OFFICER_DESIGNATION,',
'                            :P38_EMP_COMMENT,',
'                            :P38_EMP_INS_DATE,',
'                            :P38_MGR_COMMENT,',
'                            :P38_MGR_INS_DATE',
'                            ',
'                    from xxpermgt.XXPERMGT_APPRAISAL_TASK_SCORE',
'                    where PLAN_ID = :P38_APPRAISAL_ID',
'                                    AND COMPANY_CODE=:SS_COMPANY_CODE',
'                                    AND SETUP_ID=:P38_SETUP_ID',
'                                    and STAFF_ID = :P38_STAFF_ID;',
'                                    ',
'',
'        else',
'                      :P38_objective:=null;',
'                      :P38_competency:=null;',
'                      :P38_total:=null;',
'                      :P38_percentage:=null;',
'            END IF;',
'exception',
'                    when no_data_found then',
'                      :P38_objective:=null;',
'                      :P38_competency:=null;',
'                      :P38_total:=null;',
'                      :P38_percentage:=null;',
'',
'                    null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>308529332573664677
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(308092644882295733)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getComment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT    NUMBER;',
'BEGIN',
'SELECT COUNT(*) INTO V_CNT FROM XXPERMGT.XXPERMGT_PLAN_SETUP_COMMENT',
'            where PLAN_ID = :P38_APPRAISAL_ID',
'                                    AND COMPANY_CODE=:AP_COMPANY_CODE',
'                                    AND SETUP_ID=:P38_SETUP_ID',
'                                    and STAFF_ID = :P38_STAFF_ID; ',
'            IF V_CNT >0',
'                THEN',
'                SELECT EMP_COMMENT,',
'                        EMP_INS_DATE,',
'                        MGR_COMMENT,',
'                        MGR_INS_DATE',
'                        --COUNTERSIGNING_OFFICER_COMMENTS,',
'                        --COUNTERSIGNING_OFFICER_DESIGNATION,',
'                        --CNT_OFFICER_INS_DATE,',
'                        ',
'                       -- COUNTER_SIGN_OFFICER_ID',
'                        ',
'                        INTO',
'                        :P38_EMP_COMMENT,',
'                        :P38_EMP_INS_DATE,',
'                        :P38_MGR_COMMENT,',
'                        :P38_MGR_INS_DATE',
'                        --:P38_COUNTERSIGNING_OFFICER_COMMENTS,',
'                        --:P38_COUNTERSIGNING_OFFICER_DESIGNATION,',
'                        --:P38_CNT_OFFICER_INS_DATE,',
'                        --:P38_NAME_COUNTERSIGNING_ID',
'                        FROM XXPERMGT.XXPERMGT_PLAN_SETUP_COMMENT',
'            where PLAN_ID = :P38_APPRAISAL_ID',
'                                    AND COMPANY_CODE=:AP_COMPANY_CODE',
'                                    AND SETUP_ID=:P38_SETUP_ID',
'                                    and STAFF_ID = :P38_STAFF_ID; ',
'    END IF;',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>308092644882295733
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307335031095789615)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'setSetupId'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_json.open_object;',
'    apex_json.write(''setupValue'', APEX_APPLICATION.g_x01);',
'',
'',
'    apex_json.close_object;',
'    end ;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>307335031095789615
);
wwv_flow_imp.component_end;
end;
/
