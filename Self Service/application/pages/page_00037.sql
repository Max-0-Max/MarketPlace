prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_name=>'Performance Indicator'
,p_alias=>'RA37'
,p_step_title=>'Performance Indicator'
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
'',
'',
'.table {',
'	border: 1px solid #aaa;',
'	border-radius: 3px 3px 3px 3px;',
'	clear: both;',
'	margin-bottom: 20px',
'}',
'',
'.question_row {',
'    clear: both;',
'    margin: 0 20%;',
'    ',
'}',
'.question_type_selector_links {',
'    list-style-type: none!important;',
'    margin: 0;',
'}',
'',
'',
'ol, ul {',
'    list-style: none outside none;',
'}',
'',
'ul {',
'    display: block;',
'    list-style-type: disc;',
'    margin-block-start: 1em;',
'    margin-block-end: 1em;',
'    margin-inline-start: 0px;',
'    margin-inline-end: 0px;',
'    padding-inline-start: 40px;',
'}',
'.question_type_selector_links li {',
'    border-radius: 3px;',
'    list-style: none;',
'    float: left;',
'    position: relative;',
'    margin: 0 3px 0 0;',
'    white-space: nowrap;',
'    display: inline;',
'    padding: 7px;',
'    width: 150px;',
'    height: 100px;',
'}',
'.qt_icon {',
'    background: #fff;',
'    text-align: center;',
'    width: 85px;',
'    font-size: 12px;',
'    border: 1px solid #d0d0d0;',
'    cursor: pointer;',
'    border-radius: 3px;',
'    min-height: 72px;',
'}',
'',
'.question_type_selector_links li a {',
'    display: block;',
'    color: #555;',
'    text-decoration: none;',
'    padding: 8px 0;',
'}',
'',
'a {',
'    color: #de3e00;',
'    cursor: pointer;',
'    text-decoration: none;',
'}',
'.selected_ch{',
'        BACKGROUND-COLOR: beige;',
'}',
'',
'.qt_icon:hover {',
'  animation: shake 0.5s;',
'  animation-iteration-count: infinite;',
'}',
'',
'.a-IRR-controlsContainer{',
'    display:none;',
'}',
'',
'.accordion-toggle, .accordion-toggle-overlay, .row.test-question, .row.group-name-row {',
'    background: none repeat scroll 0 0 #f7f7f7;',
'    position: relative;',
'}',
'.table .row {',
'    border-bottom: 1px solid #ddd;',
'   padding: 20px 30px 16px;',
'    position: relative;',
'    clear: both;',
'}',
'',
'.table .row.test-question .question-name {',
'    background: none repeat scroll 0 0 transparent;',
'    font-size: 23px;',
'    padding: 3px 26px 2px 0;',
'}',
'.table .row .name {',
'    line-height: 1.2;',
'    margin: -8px 0;',
'    padding: 8px 36px;',
'}',
'.name {',
'    display: block;',
'    font-size: 14px;',
'    line-height: 1;',
'    min-height: 2px;',
'    margin-bottom: 30px;',
'    padding: 8px 36px;',
'}',
'.question-name {',
'    background-position: 4px -735px;',
'}',
'.col-span-3 {',
'    width: 30%;',
'}',
'',
'.col-span-05, .col-span-1, .col-span-15, .col-span-2, .col-span-25, .col-span-3, .col-span-35, .col-span-4, .col-span-45, .col-span-5, .col-span-55, .col-span-6, .col-span-65, .col-span-7, .col-span-75, .col-span-8, .col-span-85, .col-span-9, .col-sp'
||'an-10 {',
'    float: left;',
'    line-height: 1;',
'    margin-right: 0;',
'    position: relative;',
'    word-wrap: break-word;',
'}',
'.col-span-1 {',
'    width: 10%;',
'}',
'.right {',
'    display: block;',
'    float: right!important;',
'}',
'.editor.question, .wysiwyg {',
'    width: 640px;',
'    color: #444;',
'}',
'.editor.question, .wysiwyg {',
'    width: 640px;',
'    color: #444;',
'}',
'.editor {',
'    line-height: 1.3;',
'}',
'.editor {',
'    line-height: 1.3;',
'}',
'.qpad {',
'    margin-bottom: 1em;',
'}',
'',
'.divider-dashed {',
'	clear: both;',
'	float: none;',
'	width: 100%;',
'	height: 1px;',
'	margin: 25px 0 10px;',
'	padding: 0;',
'	border-bottom: 1px dashed #aaa',
'}',
'',
'.divider-solid {',
'	clear: both;',
'	float: none;',
'	width: 100%;',
'	height: 1px;',
'	margin: 25px 0 10px;',
'	padding: 0;',
'	border-bottom: 1px solid #d8d8d8',
'}',
'',
'',
'',
'.question-footer {',
'	font-size: 13px',
'}',
'',
'.question-footer span {',
'	color: #b1b1b1;',
'	padding: 0 8px;',
'	font-size: 14px',
'}',
'.col-span-05 {',
'	width: 5%',
'}',
'',
'.col-span-1 {',
'	width: 10%',
'}',
'',
'.col-span-15 {',
'	width: 15%',
'}',
'',
'.col-span-2 {',
'	width: 20%',
'}',
'',
'.col-span-25 {',
'	width: 25%',
'}',
'',
'.col-span-3 {',
'	width: 30%',
'}',
'',
'.col-span-35 {',
'	width: 35%',
'}',
'',
'.col-span-4 {',
'	width: 40%',
'}',
'',
'.col-span-45 {',
'	width: 45%',
'}',
'',
'.col-span-5 {',
'	width: 50%',
'}',
'',
'.col-span-55 {',
'	width: 55%',
'}',
'',
'.col-span-6 {',
'	width: 60%',
'}',
'',
'.col-span-65 {',
'	width: 65%',
'}',
'',
'.col-span-7 {',
'	width: 70%',
'}',
'',
'.col-span-75 {',
'	width: 75%',
'}',
'',
'.col-span-8 {',
'	width: 80%',
'}',
'',
'.col-span-85 {',
'	width: 85%',
'}',
'',
'.col-span-9 {',
'	width: 90%',
'}',
'',
'.col-span-10 {',
'	width: 100%',
'}',
'div.satick {',
'	float: left;',
'	width: 20px',
'}',
'',
'.number {',
'	width: 30px;',
'	padding-bottom: .6em',
'}',
'',
'td.number {',
'	width: 30px;',
'	font-weight: 700;',
'	padding-bottom: 12px;',
'	vertical-align: top',
'}',
'',
'td.answer {',
'	width: 578px;',
'	padding-bottom: 12px;',
'	vertical-align: middle',
'}',
'',
'.answer {',
'	margin-bottom: 1px',
'}',
'',
'.answer h5 {',
'	float: left;',
'	font-weight: 700',
'}',
'',
'.answer_heading {',
'	height: 30px;',
'	margin: 0 0 0 3px',
'}',
'',
'.answer_heading input[type=checkbox] {',
'	margin: 5px 3px 0 10px;',
'	border: none',
'}',
'',
'.answer_heading label {',
'	margin-top: 0',
'}',
'.answholder {',
'    max-width: 600px;',
'    margin-left: -20px;',
'    border-collapse: collapse;',
'}',
'.invisible {',
'display: none',
'}',
'',
'/*.show {',
'	display: block',
'}',
'',
'',
'table.qb-q-info td {',
'    padding: 0 10px 2px 5px;',
'}',
'.padleft5 {',
'    padding-left: 5px;',
'}',
'.selectall {',
'    border: 1px solid #aaa;',
'    border-radius: 3px 3px 3px 3px;',
'    clear: both;',
'    margin-bottom: 20px;',
'    padding: 10px;',
'}',
'.t-Dialog-bodyWrapperIn {',
'    position: inherit;',
'}',
'',
'::-webkit-scrollbar-button {',
'    background: #ccc',
'}',
'::-webkit-scrollbar-track-piece {',
'    background: #888',
'}',
'::-webkit-scrollbar-thumb {',
'    background: #eee',
'}*/'))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(307742485655091419)
,p_plug_name=>'Performance Indicator'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(307808207992813336)
,p_plug_name=>'Appraisal List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLAN_ID,	SETUP_ID,	YEAR,	PLAN_NUMBER,	APPRAISAL_TYPE,	TITLE,	STATUS',
'from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH c',
'where  APPRAISAL_TYPE=''MON''',
'and COMPANY_CODE=:AP_COMPANY_CODE',
'and exists (select * from XXPERMGT.XXPERMGT_APPRAISAL_TASK  t',
'           where t.plan_id=c.PLAN_ID)',
'and YEAR =nvl(:P37_YEAR,YEAR)',
'order by PLAN_ID'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_ajax_items_to_submit=>'P37_YEAR'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP:P37_SETUP_ID,P37_APPRAISAL_ID:&SETUP_ID.,&PLAN_ID.',
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
 p_id=>wwv_flow_imp.id(609333577208315258)
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
 p_id=>wwv_flow_imp.id(307742571620091420)
,p_plug_name=>'Section 5: Confirmation and Acknowledgements'
,p_parent_plug_id=>wwv_flow_imp.id(609333577208315258)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH',
'where PLAN_ID=:P37_APPRAISAL_ID',
'AND SETUP_ID=:P37_SETUP_ID',
'AND STATUS=''CLOSED'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(330668080437047581)
,p_plug_name=>'Tab'
,p_parent_plug_id=>wwv_flow_imp.id(609333577208315258)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH',
'where PLAN_ID=:P37_APPRAISAL_ID',
'AND SETUP_ID=:P37_SETUP_ID',
'AND STATUS=''CLOSED'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(307262203998185805)
,p_plug_name=>'<strong>Section 4: Competencies</strong>'
,p_region_name=>'STEP2'
,p_parent_plug_id=>wwv_flow_imp.id(330668080437047581)
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
'                PARENT_ID',
'                ',
'',
'from XXPERMGT.XXPERMGT_APPRAISAL_TASK',
'where upper (INDICATOR_TYPE) = ''COMPETENCY''',
'and STAFF_ID = :AP_STAFF_ID',
'and SETUP_ID = :P37_SETUP_ID',
'and plan_id=:P37_APPRAISAL_ID',
'AND COMPANY_CODE=:ap_company_code'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P37_APPRAISAL_ID'
,p_plug_header=>'SELECT AND LIST BELOW THE 3 CRITICAL COMPETENCIES THE APPRAISEE NEEDS TO DEVELOP DURING THE PLAN PERIOD FROM THE COMPREHENSIVE COMPETENCY FRAMEWORK'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307262499029185807)
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
 p_id=>wwv_flow_imp.id(307262510357185808)
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
,p_default_expression=>'P37_SETUP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307262634258185809)
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
,p_default_expression=>'P37_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307262773195185810)
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
 p_id=>wwv_flow_imp.id(307262812200185811)
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
'select YEAR from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT where setup_id=:P37_SETUP_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307262974392185812)
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
'where setup_id=:P37_SETUP_ID',
'AND PLAN_ID=:P37_APPRAISAL_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307263042853185813)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TITLE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P37_SETUP_ID',
'AND PLAN_ID=:P37_APPRAISAL_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307263126541185814)
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
'select MAXIMUM_SCORE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT where setup_id=:P37_SETUP_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307263267982185815)
,p_name=>'PERFORMANCE_INDICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_INDICATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307263309196185816)
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
 p_id=>wwv_flow_imp.id(307263478745185817)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Competency Cluster'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307263573789185818)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307263635725185819)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307263764380185820)
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
 p_id=>wwv_flow_imp.id(307263865880185821)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Competency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task d,COMPETENCY_ID r',
'from xxpermgt.XXPERMGT_COMP_LIB',
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307263966259185822)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P37_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307264085479185823)
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
 p_id=>wwv_flow_imp.id(307743723397091432)
,p_name=>'PARENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_ID'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P37_PARENT_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(307262353680185806)
,p_internal_uid=>307262353680185806
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
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
 p_id=>wwv_flow_imp.id(307272346212029522)
,p_interactive_grid_id=>wwv_flow_imp.id(307262353680185806)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(307272493834029522)
,p_report_id=>wwv_flow_imp.id(307272346212029522)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307272981783029514)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(307262499029185807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307273404861029510)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(307262510357185808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307273994241029507)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(307262634258185809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307274404860029504)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(307262773195185810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307274843348029499)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(307262812200185811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307275373074029492)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(307262974392185812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307275894849029485)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(307263042853185813)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307276384782029481)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(307263126541185814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307276833032029478)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(307263267982185815)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307277332123029475)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(307263309196185816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307277874559029472)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(307263478745185817)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307278308916029466)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(307263573789185818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307278824561029462)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(307263635725185819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307279324586029459)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(307263764380185820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307279899210029453)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(307263865880185821)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307280347361029447)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(307263966259185822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307777716484923811)
,p_view_id=>wwv_flow_imp.id(307272493834029522)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(307743723397091432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(330668207001047582)
,p_plug_name=>'<strong>Section 3: Appraisee Performance </strong>'
,p_region_name=>'STEP'
,p_parent_plug_id=>wwv_flow_imp.id(330668080437047581)
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
'                PARENT_ID',
'                ',
'',
'from XXPERMGT.XXPERMGT_APPRAISAL_TASK',
'where upper (INDICATOR_TYPE) = ''OBJECTIVE''',
'and STAFF_ID = :AP_STAFF_ID',
'and SETUP_ID = :P37_SETUP_ID',
'and plan_id=:P37_APPRAISAL_ID',
'AND COMPANY_CODE=:ap_company_code'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P37_APPRAISAL_ID'
,p_plug_header=>'EXPECTATIONS AND GOALS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307123342940312902)
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
 p_id=>wwv_flow_imp.id(307123486615312903)
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
,p_default_expression=>'P37_SETUP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307123595333312904)
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
,p_default_expression=>'P37_APPRAISAL_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307123667040312905)
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
 p_id=>wwv_flow_imp.id(307123780799312906)
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
'select YEAR from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT where setup_id=:P37_SETUP_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307123880651312907)
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
'where setup_id=:P37_SETUP_ID',
'AND PLAN_ID=:P37_APPRAISAL_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307123960426312908)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
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
'select TITLE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P37_SETUP_ID',
'AND PLAN_ID=:P37_APPRAISAL_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307124025253312909)
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
'select MAXIMUM_SCORE from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_PT where setup_id=:P37_SETUP_ID',
'AND company_code=:AP_COMPANY_CODE'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(307743600883091431)
,p_name=>'PARENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P37_PARENT_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(330927496033841053)
,p_name=>'PERFORMANCE_INDICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_INDICATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(330927584475841054)
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
 p_id=>wwv_flow_imp.id(330927759439841056)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Key Result Areas'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(330927838654841057)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Key Performance Indicators'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(330928265203841061)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(330928932518841068)
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
 p_id=>wwv_flow_imp.id(330929025124841069)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Job Objective(s)'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(330929204175841070)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P37_DUE_STATUS'
,p_display_condition2=>'ACTIVE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(330929301777841071)
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
 p_id=>wwv_flow_imp.id(330927324771841052)
,p_internal_uid=>330927324771841052
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
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
 p_id=>wwv_flow_imp.id(330933178915847533)
,p_interactive_grid_id=>wwv_flow_imp.id(330927324771841052)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(330933299342847534)
,p_report_id=>wwv_flow_imp.id(330933178915847533)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307137571110361170)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(307123342940312902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307138081173361158)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(307123486615312903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307138501841361154)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(307123595333312904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307139077928361151)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(307123667040312905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307139505996361148)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(307123780799312906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307140078613361144)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(307123880651312907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307140550200361141)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(307123960426312908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307141038685361138)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(307124025253312909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(307777292081923809)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(307743600883091431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(330933726278847551)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(330927496033841053)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(330934255085847570)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(330927584475841054)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(330935280112847585)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(330927759439841056)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(330935760560847592)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(330927838654841057)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>208
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(330937641432847609)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(330928265203841061)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(330941168594847633)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(330928932518841068)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(330941692303847636)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(330929025124841069)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(330942148289847639)
,p_view_id=>wwv_flow_imp.id(330933299342847534)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(330929204175841070)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(385835711288900830)
,p_plug_name=>'Performance Indicators'
,p_parent_plug_id=>wwv_flow_imp.id(609333577208315258)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(307859749004283010)
,p_name=>'Section 2-Appraiser Information'
,p_parent_plug_id=>wwv_flow_imp.id(385835711288900830)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
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
'where a.person_id = :P37_SUPERVISOR_ID',
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
 p_id=>wwv_flow_imp.id(307859878795283011)
,p_query_column_id=>1
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307859980578283012)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307860056038283013)
,p_query_column_id=>3
,p_column_alias=>'MIDDLE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Middle Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307860104141283014)
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
 p_id=>wwv_flow_imp.id(307860219443283015)
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
 p_id=>wwv_flow_imp.id(307860396130283016)
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
 p_id=>wwv_flow_imp.id(307860476107283017)
,p_query_column_id=>7
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>7
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307860544184283018)
,p_query_column_id=>8
,p_column_alias=>'GENDER'
,p_column_display_sequence=>8
,p_column_heading=>'Gender'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307860601013283019)
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
 p_id=>wwv_flow_imp.id(307860760060283020)
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
 p_id=>wwv_flow_imp.id(307860880275283021)
,p_query_column_id=>11
,p_column_alias=>'DATEOFLASTPROMOTION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307860922421283022)
,p_query_column_id=>12
,p_column_alias=>'DATEOFPOSTINGTOMDA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307861005531283023)
,p_query_column_id=>13
,p_column_alias=>'DATEOFPOSTINGTOCURRENTJOB'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(338942438090589472)
,p_name=>'Section 1-Personal Information'
,p_parent_plug_id=>wwv_flow_imp.id(385835711288900830)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(307265947648185842)
,p_query_column_id=>1
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307266071308185843)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307266122832185844)
,p_query_column_id=>3
,p_column_alias=>'MIDDLE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Middle Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307266203208185845)
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
 p_id=>wwv_flow_imp.id(307266353998185846)
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
 p_id=>wwv_flow_imp.id(307266430658185847)
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
 p_id=>wwv_flow_imp.id(307266580733185848)
,p_query_column_id=>7
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>7
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307266657517185849)
,p_query_column_id=>8
,p_column_alias=>'GENDER'
,p_column_display_sequence=>8
,p_column_heading=>'Gender'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307266730794185850)
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
 p_id=>wwv_flow_imp.id(307740666595091401)
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
 p_id=>wwv_flow_imp.id(307740730173091402)
,p_query_column_id=>11
,p_column_alias=>'DATEOFLASTPROMOTION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307740812838091403)
,p_query_column_id=>12
,p_column_alias=>'DATEOFPOSTINGTOMDA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307740914911091404)
,p_query_column_id=>13
,p_column_alias=>'DATEOFPOSTINGTOCURRENTJOB'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(385836596184900830)
,p_plug_name=>'Employee'
,p_parent_plug_id=>wwv_flow_imp.id(385835711288900830)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(385838524068900833)
,p_plug_name=>'Appraisal Plan'
,p_parent_plug_id=>wwv_flow_imp.id(609333577208315258)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<P>Select from the drop down below to display</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(609333701298315259)
,p_plug_name=>'Not Enabled'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'Performance Management is not enabled. Contact your Administrator'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''N'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(307081176400725453)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(330668080437047581)
,p_button_name=>'Notify'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Share with Manager'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P37_DUE_STATUS'
,p_button_condition2=>'ACTIVE'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(307081584044725450)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(330668080437047581)
,p_button_name=>'Copy'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy Indicators'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP:P40_STAFF_ID,P40_CURR_APPRAISAL:&P37_STAFF_ID.,&P37_APPRAISAL_ID.'
,p_button_condition=>'P37_DUE_STATUS'
,p_button_condition2=>'ACTIVE'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(307807645959813330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(307742571620091420)
,p_button_name=>'Submit_Comment'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH',
'where PLAN_ID=:P37_APPRAISAL_ID',
'AND SETUP_ID=:P37_SETUP_ID',
'AND STATUS=''CLOSED'''))
,p_button_condition_type=>'NOT_EXISTS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306850330545667750)
,p_name=>'P37_SETUP_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
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
 p_id=>wwv_flow_imp.id(307074138365725469)
,p_name=>'P37_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(385836596184900830)
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
 p_id=>wwv_flow_imp.id(307074561720725465)
,p_name=>'P37_EMPLOYEE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(385836596184900830)
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
 p_id=>wwv_flow_imp.id(307074931017725464)
,p_name=>'P37_EMAIL_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(385836596184900830)
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
 p_id=>wwv_flow_imp.id(307075316027725463)
,p_name=>'P37_CONTACT_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(385836596184900830)
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
 p_id=>wwv_flow_imp.id(307076027150725462)
,p_name=>'P37_APPRAISAL_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_prompt=>'Appraisal Plan'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TITLE d, PLAN_ID r',
'from XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH ',
'where setup_id=:P37_SETUP_ID',
'and APPRAISAL_TYPE=''MON''',
'AND STATUS=''OPEN''',
'order by PLAN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P37_SETUP_ID'
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
 p_id=>wwv_flow_imp.id(307076401640725461)
,p_name=>'P37_START_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307076864501725461)
,p_name=>'P37_END_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307077227546725460)
,p_name=>'P37_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307077651261725459)
,p_name=>'P37_SUPERVISOR_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_source=>'select supervisor from xxhrms.xxhrms_assignments where person_id = :P37_STAFF_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307078068927725458)
,p_name=>'P37_SUPERVISOR_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_source=>'select FULLNAME from xxhrms.xxhrms_assignments where person_id = :P37_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307078440968725457)
,p_name=>'P37_SUPERVISOR_EMAIL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_source=>'select EMAIL from xxhrms.xxhrms_people where person_id = :P37_SUPERVISOR_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307078828922725457)
,p_name=>'P37_MANAGER_DUE_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307079259207725456)
,p_name=>'P37_EMPLOYEE_DUE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307079660640725455)
,p_name=>'P37_APPRAISAL_TITLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_use_cache_before_default=>'NO'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307080076854725455)
,p_name=>'P37_DUE_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307080484940725454)
,p_name=>'P37_POPT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307128077205312949)
,p_name=>'P37_SETUP_ID_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307742663913091421)
,p_name=>'P37_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307742768512091422)
,p_name=>'P37_EMP_COMMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
,p_prompt=>'Appraisee''s Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
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
 p_id=>wwv_flow_imp.id(307742864198091423)
,p_name=>'P37_EMP_INS_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(307742941584091424)
,p_name=>'P37_MGR_COMMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
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
 p_id=>wwv_flow_imp.id(307743035830091425)
,p_name=>'P37_MGR_INS_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
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
 p_id=>wwv_flow_imp.id(307743167397091426)
,p_name=>'P37_COUNTERSIGNING_OFFICER_COMMENTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
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
 p_id=>wwv_flow_imp.id(307743242794091427)
,p_name=>'P37_COUNTERSIGNING_OFFICER_DESIGNATION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
,p_prompt=>'Designation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME, JOB_CODE',
'  from xxhrms.XXHRMS_JOBS',
'  WHERE COMPANY_CODE = :SS_COMPANY_CODE',
'  AND STATUS = ''ACTIVE''',
'  AND JOB_CODE=(SELECT JOB_ID FROM XXHRMS_ASSIGNMENTS  WHERE STAFF_ID=:P37_NAME_COUNTERSIGNING_ID)',
' order by 1'))
,p_lov_cascade_parent_items=>'P37_NAME_COUNTERSIGNING_ID'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307743390635091428)
,p_name=>'P37_CNT_OFFICER_INS_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
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
 p_id=>wwv_flow_imp.id(307743421194091429)
,p_name=>'P37_NAME_COUNTERSIGNING_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(307742571620091420)
,p_prompt=>'Name of Countersigning Officer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FULL_NAME d, person_id r',
'from XXHRMS.xxhrms_master_all',
'WHERE person_id NOT IN(:P37_STAFF_ID,:P37_SUPERVISOR_ID)'))
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
 p_id=>wwv_flow_imp.id(307743542777091430)
,p_name=>'P37_PARENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(385838524068900833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307808371793813337)
,p_name=>'P37_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(307808207992813336)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307106822134725315)
,p_name=>'get_details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_APPRAISAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307107322840725310)
,p_event_id=>wwv_flow_imp.id(307106822134725315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(330668080437047581)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307107709228725308)
,p_name=>'SET_VALUE_OBJ'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(330668207001047582)
,p_triggering_element=>'PERFORMANCE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PERFORMANCE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307108293996725306)
,p_event_id=>wwv_flow_imp.id(307107709228725308)
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
 p_id=>wwv_flow_imp.id(307262026472185803)
,p_name=>'SET_VALUE_COMP'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(307262203998185805)
,p_triggering_element=>'PERFORMANCE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PERFORMANCE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307262103454185804)
,p_event_id=>wwv_flow_imp.id(307262026472185803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DESCRIPTION,PERFORMANCE_INDICATOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        select DESCRIPTION,TASK  from XXPERMGT_COMP_LIB',
'        where CLASSIFICATION = :CLASSIFICATION',
'        and COMPETENCY_ID = :PERFORMANCE_ID',
'   '))
,p_attribute_07=>'CLASSIFICATION,,PERFORMANCE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307127471383312943)
,p_name=>'Refresh Page'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_SETUP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307127890149312947)
,p_event_id=>wwv_flow_imp.id(307127471383312943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''setSetupId'',',
'                 {x01 :  $v("P37_SETUP_ID")},',
'                    {',
'                    success: function(data) {',
'                   apex.debug.log(''Success of server process RunReportJSON'',data.setupValue);',
'                   apex.item(''P37_SETUP_ID_1'').setValue(data.setupValue);',
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
 p_id=>wwv_flow_imp.id(307127585841312944)
,p_event_id=>wwv_flow_imp.id(307127471383312943)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(330668207001047582)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307128145161312950)
,p_name=>'tabShowHide'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_APPRAISAL_ID'
,p_condition_element=>'P37_APPRAISAL_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307261828792185801)
,p_event_id=>wwv_flow_imp.id(307128145161312950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(330668080437047581)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307808707486813341)
,p_event_id=>wwv_flow_imp.id(307128145161312950)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(385835711288900830)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307807205352813326)
,p_event_id=>wwv_flow_imp.id(307128145161312950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(307742571620091420)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307807398087813327)
,p_event_id=>wwv_flow_imp.id(307128145161312950)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(307742571620091420)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307261993362185802)
,p_event_id=>wwv_flow_imp.id(307128145161312950)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(330668080437047581)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307808632388813340)
,p_event_id=>wwv_flow_imp.id(307128145161312950)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(385835711288900830)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307743805910091433)
,p_event_id=>wwv_flow_imp.id(307128145161312950)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_parent_id    VARCHAR2(10);',
'V_PLAN_NUMBER    VARCHAR2(10);',
'begin',
' IF :P37_APPRAISAL_ID IS NOT NULL',
'     THEN',
'     SELECT PLAN_NUMBER INTO V_PLAN_NUMBER FROM XXPERMGT.XXPERMGT_APPRAISAL_PLAN_SETUP_CH',
'     WHERE PLAN_ID=:P37_APPRAISAL_ID;',
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
'     APEX_UTIL.SET_SESSION_STATE(''P37_PARENT_ID'', v_parent_id);',
'    END;'))
,p_attribute_02=>'P37_APPRAISAL_ID'
,p_attribute_03=>'P37_PARENT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307807732218813331)
,p_name=>'SubmitComment'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(307807645959813330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307807835029813332)
,p_event_id=>wwv_flow_imp.id(307807732218813331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (confirm("Confirm You want to submit comment?")){    ',
'    apex.submit(''SUBMIT_COMMENT'');',
'           return true;',
'        ',
'    }else{',
'        alert(''Comment not submitted'');',
'        return false;',
'    }',
'        '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307808414885813338)
,p_name=>'New'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307808557182813339)
,p_event_id=>wwv_flow_imp.id(307808414885813338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(307808207992813336)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307105623183725321)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'NOTIFY_MANAGER'
,p_attribute_01=>'notifications@softsuite.com'
,p_attribute_02=>'&P37_SUPERVISOR_EMAIL.'
,p_attribute_06=>'Performance Indicator Setup Notification'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P37_SUPERVISOR_NAME.,</p>',
'',
'<p>&P37_EMPLOYEE_NAME. has completed the Performance Indicator Setup for the current appraisal period &P37_APPRAISAL_TITLE. </p> ',
'',
'<p>Kindly schedule a review session between yourself and  &P37_EMPLOYEE_NAME. to agree on your expectations for the appraisal period. Login to <a href=''http://softsuite.softalliance.com:8080/softsuite/f?p=1000004''>SoftSuite</a> to review on time, as '
||'this must be completed before &P37_EMPLOYEE_DUE_DATE..</p>',
'',
'<p>If you have any questions or need assistance in setting up the Key Performance Indicators, please contact a member of the Human Resources Department.</p>',
'',
'<p>Thank You.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4223412303763118)
,p_process_success_message=>'You have successfully shared your Key Performance Indicators with your Manager.'
,p_internal_uid=>307105623183725321
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307105285212725323)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'NOTIFY_SELF'
,p_attribute_01=>'notifications@softsuite.com'
,p_attribute_02=>'&P37_EMAIL_ADDRESS.'
,p_attribute_06=>'Performance Indicator Setup Notification'
,p_attribute_07=>'.'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Dear &P37_EMPLOYEE_NAME.,</p>',
'',
'<p>You have completed the Performance Indicator Setup for the current appraisal period &P37_APPRAISAL_TITLE., and a notification has been sent to your manager. </p> ',
'',
'<p>If you have any questions or need futher assistance in setting up the Key Performance Indicators, please contact a member of the Human Resources Department.</p>',
'',
'<p>Thank You.</p>'))
,p_attribute_10=>'Y'
,p_attribute_14=>'RAW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4223412303763118)
,p_process_success_message=>'You have successfully shared your Key Performance Indicators with your Manager.'
,p_internal_uid=>307105285212725323
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307808023281813334)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submitCommentS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'XXPERMGT.XXPERMGT_PROCESS_PKG.setupComment(',
'                                    p_setupId              =>    :P37_SETUP_ID,',
'                                    p_companyCode          =>    :AP_COMPANY_CODE,',
'                                    p_PLAN_ID              =>    :P37_APPRAISAL_ID,',
'                                    p_staffId              =>    :P37_STAFF_ID,',
'                                    p_empComment           =>    :P37_EMP_COMMENT,',
'                                    p_supervisorId         =>    :P37_SUPERVISOR_ID,',
'                                    p_mgrComment           =>    :P37_MGR_COMMENT,',
'                                    p_ctrSignOffComment    =>    :P37_COUNTERSIGNING_OFFICER_COMMENTS,',
'                                    p_ctrOffDesignation    =>    :P37_COUNTERSIGNING_OFFICER_DESIGNATION   ,',
'                                    P_ctrOffId             =>    :P37_NAME_COUNTERSIGNING_ID',
'                                );',
'    ',
'    END;',
'    ',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SUBMIT_COMMENT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Comment Submitted'
,p_internal_uid=>307808023281813334
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307090412818725410)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(330668207001047582)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Objective_grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>307090412818725410
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307264106894185824)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(307262203998185805)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Competency_grid - Save Interactive Grid Data_1'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>307264106894185824
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307106084414725319)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select a.full_name,a.person_id,a.email,a.telephone1',
'into :P37_EMPLOYEE_NAME,:P37_STAFF_ID,:P37_EMAIL_ADDRESS,:P37_CONTACT_NUMBER',
'from xxhrms_PEOPLE a',
'where a.person_id = (SELECT STAFF_ID FROM XXADM_PASSWORD WHERE LOGNAME = :APP_USER);',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>307106084414725319
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307106437800725318)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c_mgt is',
'    select  title,effective_start_date,effective_end_date,status,mgr_due_date,emp_due_date, ',
'        case when trunc(sysdate) between mgr_due_date and emp_due_date then ''ACTIVE'' ELSE ''INACTIVE'' END due_status',
'     from xxpermgt_appraisal_plan_setup',
'    where setup_id = :P37_APPRAISAL_ID',
'    order by 1;',
'    ',
'    CURSOR P_OPT IS',
'    select xxadm.GET_PROFILE_OPTION(''SURVEY_LIB'',:SS_COMPANY_CODE) from dual;',
'begin  ',
'  open c_mgt;',
'  fetch c_mgt into :P37_APPRAISAL_TITLE,:P37_START_DATE,:P37_END_DATE,:P37_STATUS,:P37_MANAGER_DUE_DATE,:P37_EMPLOYEE_DUE_DATE,:P37_DUE_STATUS;',
'  close c_mgt;',
'  ',
'  OPEN P_OPT;',
'  FETCH P_OPT INTO :P37_POPT;',
'  CLOSE P_OPT;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>307106437800725318
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307808160280813335)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getCommentDetails'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt     number;',
'begin',
'    IF :P37_APPRAISAL_ID IS NOT NULL',
'        THEN',
'            select count(*) into v_cnt FROM XXPERMGT.XXPERMGT_PLAN_SETUP_COMMENT',
'',
'                           where',
'                           SETUP_ID             =     :P37_SETUP_ID	',
'                           AND PLAN_ID          =    :P37_APPRAISAL_ID',
'                           AND COMPANY_CODE    =    :AP_COMPANY_CODE;',
'        if v_cnt >0',
'            then',
'                select     ',
'                           EMP_COMMENT,',
'                           EMP_INS_DATE,',
'                           MGR_COMMENT,',
'                           MGR_INS_DATE,',
'                           COUNTERSIGNING_OFFICER_COMMENTS,',
'                           COUNTERSIGNING_OFFICER_DESIGNATION,',
'                           CNT_OFFICER_INS_DATE,',
'                           COUNTER_SIGN_OFFICER_ID',
'',
'',
'                           into',
'                           :P37_EMP_COMMENT,',
'                           :P37_EMP_INS_DATE  ,             ',
'                           :P37_MGR_COMMENT,',
'                           :P37_MGR_INS_DATE,',
'                           :P37_COUNTERSIGNING_OFFICER_COMMENTS,',
'                           :P37_COUNTERSIGNING_OFFICER_DESIGNATION,',
'                           :P37_CNT_OFFICER_INS_DATE,',
'                           :P37_NAME_COUNTERSIGNING_ID',
'',
'                           FROM XXPERMGT.XXPERMGT_PLAN_SETUP_COMMENT',
'',
'                           where',
'                           SETUP_ID             =     :P37_SETUP_ID	',
'                           AND PLAN_ID          =    :P37_APPRAISAL_ID',
'                           AND COMPANY_CODE    =    :AP_COMPANY_CODE;',
'                           ',
'                             else',
'                           :P37_EMP_COMMENT                        :=null;',
'                           :P37_EMP_INS_DATE                       :=null;             ',
'                           :P37_MGR_COMMENT                        :=null;',
'                           :P37_MGR_INS_DATE                       :=null;',
'                           :P37_COUNTERSIGNING_OFFICER_COMMENTS    :=null;',
'                           :P37_COUNTERSIGNING_OFFICER_DESIGNATION :=null;',
'                           :P37_CNT_OFFICER_INS_DATE               :=null;',
'                           :P37_NAME_COUNTERSIGNING_ID             :=null;',
'                           ',
'                           ',
'        END IF;',
'                ',
'              ',
'',
'    end if;',
'END;',
'               '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>307808160280813335
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307127915821312948)
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
,p_internal_uid=>307127915821312948
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307807904914813333)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submitComment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'Begin',
'null;',
'End;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>307807904914813333
);
wwv_flow_imp.component_end;
end;
/
