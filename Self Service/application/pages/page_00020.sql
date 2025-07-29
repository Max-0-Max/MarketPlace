prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'My Profile'
,p_step_title=>'My Profile'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'        border-radius: 15px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_browser_cache=>'N'
,p_deep_linking=>'N'
,p_rejoin_existing_sessions=>'N'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31271458548622802)
,p_plug_name=>'<b> Employee Details as at &AP_GLOBAL_DATE.</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31272554436622813)
,p_name=>'Person Details'
,p_parent_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    SELECT a.person_id, a.full_name, c.GRP_CODE, b.sub_organization_code, a.EMAIL, a.telephone1, a.employment_status',
'        FROM xxhrms.xxhrms_people a, xxhrms.xxhrms_assignments b, xxhrms.XXHRMS_PAYROLL_GRPDET_TAB c',
'     WHERE a.person_id = b.person_id',
'     and a.company_code=b.company_code',
'     and b.sub_organization_code = c.LOCATION_ID',
'     and a.person_id = :AP_STAFF_ID',
'     and a.company_code=:AP_COMPANY_CODE'))
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
 p_id=>wwv_flow_imp.id(31296098414800211)
,p_query_column_id=>1
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>1
,p_column_heading=>'<b>&AP_STAFF_ID_LABEL.</b>'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31274233110622830)
,p_query_column_id=>2
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_FULLNAME_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(273411319848153403)
,p_query_column_id=>3
,p_column_alias=>'GRP_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Pay Group'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12294425735608620)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(273411460783153404)
,p_query_column_id=>4
,p_column_alias=>'SUB_ORGANIZATION_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'&AP_SUBORG_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, code r',
'from xxhrms.xxhrms_sub_organization'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31274766035622835)
,p_query_column_id=>5
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>5
,p_column_heading=>'Email Address'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31274842736622836)
,p_query_column_id=>6
,p_column_alias=>'TELEPHONE1'
,p_column_display_sequence=>6
,p_column_heading=>'Phone Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31285188020775002)
,p_query_column_id=>7
,p_column_alias=>'EMPLOYMENT_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31273225433622820)
,p_plug_name=>'ImageDetails'
,p_parent_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31296500217800216)
,p_plug_name=>'Tab'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P20_ALLOW_UPDATE = ''Y'' and :P20_ALLOWED_SUBORG = ''N''',
''))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31296626846800217)
,p_plug_name=>'<strong>Employee Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296500217800216)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31297006647800221)
,p_plug_name=>'<strong>Personal Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296626846800217)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(130592741285568315)
,p_plug_name=>'<strong>Personal Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31297006647800221)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31775671141167927)
,p_name=>'<strong>Approval Path</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select supervisor, ''Level ''||levels from xxhrms.XXHRMS_APPROVAL_PATH_V'
,p_display_when_condition=>'P20_APPROVAL'
,p_display_when_cond2=>'Y'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_imp.id(39321778659030019)
,p_query_column_id=>1
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>1
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39321897728030020)
,p_query_column_id=>2
,p_column_alias=>'''LEVEL''||LEVELS'
,p_column_display_sequence=>2
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31297131633800222)
,p_plug_name=>'<strong>Contact Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296626846800217)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(130619743061573823)
,p_plug_name=>'<strong>Contact Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31297131633800222)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31297206109800223)
,p_plug_name=>'<strong>Dependants</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296626846800217)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DEPENDANT_NAME, BIRTH_DATE, SEX, RELATION, PHONE_NO, ID,PERSON_ID',
'FROM XXHRMS_DEPENDANTS',
'WHERE PERSON_ID = :AP_STAFF_ID',
'and company_code=:AP_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31352681258586518)
,p_name=>'DEPENDANT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPENDANT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dependant Name'
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
 p_id=>wwv_flow_imp.id(31352724283586519)
,p_name=>'BIRTH_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BIRTH_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Birth Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(31352822842586520)
,p_name=>'SEX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sex'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(31352937720586521)
,p_name=>'RELATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RELATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Relation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(31353001722586522)
,p_name=>'PHONE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(31353191567586523)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31353211520586524)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
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
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31353351405586525)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31353423982586526)
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
 p_id=>wwv_flow_imp.id(31352582257586517)
,p_internal_uid=>31352582257586517
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
 p_id=>wwv_flow_imp.id(31377144919690004)
,p_interactive_grid_id=>wwv_flow_imp.id(31352582257586517)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31377203275690004)
,p_report_id=>wwv_flow_imp.id(31377144919690004)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31378330291690011)
,p_view_id=>wwv_flow_imp.id(31377203275690004)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31352681258586518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31378862023690015)
,p_view_id=>wwv_flow_imp.id(31377203275690004)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31352724283586519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31379322271690017)
,p_view_id=>wwv_flow_imp.id(31377203275690004)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31352822842586520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31379851201690019)
,p_view_id=>wwv_flow_imp.id(31377203275690004)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31352937720586521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31380371362690022)
,p_view_id=>wwv_flow_imp.id(31377203275690004)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31353001722586522)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31380800941690024)
,p_view_id=>wwv_flow_imp.id(31377203275690004)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(31353191567586523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31381382057690027)
,p_view_id=>wwv_flow_imp.id(31377203275690004)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(31353211520586524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31381857308690029)
,p_view_id=>wwv_flow_imp.id(31377203275690004)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31353351405586525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31297318128800224)
,p_plug_name=>'<strong>Disciplinary Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296626846800217)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'info_id , person_id , offense_type , offense_description, offence_date, ACTION_TYPE',
'FROM xxhrms.xxhrms_disciplinary_info',
'WHERE PERSON_ID = :AP_STAFF_ID',
'and company_code=:AP_COMPANY_CODE',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31353754367586529)
,p_name=>'INFO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INFO_ID'
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
 p_id=>wwv_flow_imp.id(31353856186586530)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
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
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31353949093586531)
,p_name=>'OFFENSE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OFFENSE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Offense Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3284064522980224)
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
 p_id=>wwv_flow_imp.id(31354059148586532)
,p_name=>'OFFENSE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OFFENSE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Offense Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(31354171405586533)
,p_name=>'OFFENCE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OFFENCE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Offence Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(31354211009586534)
,p_name=>'ACTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Action Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3281134852980222)
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
 p_id=>wwv_flow_imp.id(31353623684586528)
,p_internal_uid=>31353623684586528
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
 p_id=>wwv_flow_imp.id(31377761133690007)
,p_interactive_grid_id=>wwv_flow_imp.id(31353623684586528)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31377834649690007)
,p_report_id=>wwv_flow_imp.id(31377761133690007)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31382711865690033)
,p_view_id=>wwv_flow_imp.id(31377834649690007)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31353754367586529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31383286059690036)
,p_view_id=>wwv_flow_imp.id(31377834649690007)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31353856186586530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31383761811690038)
,p_view_id=>wwv_flow_imp.id(31377834649690007)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31353949093586531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31384269308690041)
,p_view_id=>wwv_flow_imp.id(31377834649690007)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31354059148586532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31384784070690043)
,p_view_id=>wwv_flow_imp.id(31377834649690007)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31354171405586533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31385253838690046)
,p_view_id=>wwv_flow_imp.id(31377834649690007)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(31354211009586534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31297439080800225)
,p_plug_name=>'<strong>Work Equipment</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296626846800217)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM XXHRMS.XXHRMS_WORK_EQUIPMENTS ',
'where staff_id = :AP_STAFF_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31354843149586540)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
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
 p_id=>wwv_flow_imp.id(31354957862586541)
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
 p_id=>wwv_flow_imp.id(31355033149586542)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''EQUIPMENT_TYPE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EQUIPMENT_TYPE'' ',
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
 p_id=>wwv_flow_imp.id(31355119395586543)
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
 p_id=>wwv_flow_imp.id(31355247911586544)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Serial No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(31355359099586545)
,p_name=>'DATE_ISSUED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_ISSUED'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Date Issued'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(31355466975586546)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''USAGE_STATUS''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''USAGE_STATUS'' ',
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
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31355521181586547)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(31355626162586548)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31355701501586549)
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
 p_id=>wwv_flow_imp.id(31354767807586539)
,p_internal_uid=>31354767807586539
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
 p_id=>wwv_flow_imp.id(31392899358768923)
,p_interactive_grid_id=>wwv_flow_imp.id(31354767807586539)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31392932204768923)
,p_report_id=>wwv_flow_imp.id(31392899358768923)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31393452465768925)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31354843149586540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31393951346768928)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31354957862586541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31394426669768932)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31355033149586542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31394981899768935)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31355119395586543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31395456430768938)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31355247911586544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31395951546768940)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(31355359099586545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31396485313768942)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(31355466975586546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31396995707768945)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(31355521181586547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31398158186771461)
,p_view_id=>wwv_flow_imp.id(31392932204768923)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31355626162586548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31297525652800226)
,p_plug_name=>'<strong>Suspensions</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296626846800217)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    person_id,',
'    start_date,',
'    end_date,',
'    reason,',
'    number_of_days,',
'    create_date,',
'    created_by,',
'    last_updated_date,',
'    last_updated_by',
'from xxhrms.xxhrms_suspension_mgr',
'where PERSON_ID = :AP_STAFF_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31403141938781912)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31403214203781913)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
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
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31403330385781914)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(31403470641781915)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(31403545030781916)
,p_name=>'REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(31403621388781917)
,p_name=>'NUMBER_OF_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NUMBER_OF_DAYS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Number Of Days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(31403715595781918)
,p_name=>'CREATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_DATE'
,p_data_type=>'DATE'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31403839797781919)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31403981889781920)
,p_name=>'LAST_UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(31404076144781921)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(31403037490781911)
,p_internal_uid=>31403037490781911
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
 p_id=>wwv_flow_imp.id(31408647049803154)
,p_interactive_grid_id=>wwv_flow_imp.id(31403037490781911)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31408779672803154)
,p_report_id=>wwv_flow_imp.id(31408647049803154)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31409683049803157)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31403141938781912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31410148012803160)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31403214203781913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31410668441803162)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31403330385781914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31411116456803165)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31403470641781915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31411602111803167)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31403545030781916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31412046549803170)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31403621388781917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31412589935803172)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(31403715595781918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31413075664803175)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(31403839797781919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31413541825803177)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(31403981889781920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31414076043803179)
,p_view_id=>wwv_flow_imp.id(31408779672803154)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(31404076144781921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31296775491800218)
,p_plug_name=>'<strong>Assignment Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296500217800216)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31297637550800227)
,p_plug_name=>'<strong>Work Related Details</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296775491800218)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31297854056800229)
,p_name=>'<strong>Employment Details</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31297637550800227)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT aa.company_code,aa.sub_organization_code,aa.DEPT_CODE,  aa.dept_location,aa.attribute1,aa.staff_category,  aa.job_id, ',
'         aa.emp_type, aa.hire_date, ',
'         aa.emp_duties, aa.assignment_status,aa.last_promotion_Date,aa.supervisor',
'  FROM xxhrms.xxhrms_assignments_f aa, xxhrms_lookup_job_title_v bb, xxhrms.xxhrms_lookup_salary_type_v dd',
'  WHERE aa.person_id = :AP_STAFF_ID',
'  and aa.company_code=:AP_COMPANY_CODE',
'    AND aa.job_id = bb.value_code(+)',
'    AND aa.attribute7 = dd.value_code(+)',
'   AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
' ',
' ',
'    '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
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
 p_id=>wwv_flow_imp.id(31404103992781922)
,p_query_column_id=>1
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31404238287781923)
,p_query_column_id=>2
,p_column_alias=>'SUB_ORGANIZATION_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_SUBORG_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME D,CODE R',
'from xxhrms.xxhrms_sub_organization ',
'where COMPANY_CODE=:SS_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31405539287781936)
,p_query_column_id=>3
,p_column_alias=>'DEPT_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'&AP_DEPARTMENT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, dept_id as return_value ',
'  from XXHRMS.XXHRMS_DEPARTMENT',
'where COMPANY_CODE= :SS_COMPANY_CODE',
' order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31404354857781924)
,p_query_column_id=>4
,p_column_alias=>'DEPT_LOCATION'
,p_column_display_sequence=>4
,p_column_heading=>'&AP_LOCATION_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME D, CODE R',
'FROM XXHRMS.XXHRMS_DEP_LOCATION',
'WHERE COMPANY_CODE = :SS_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31404460119781925)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE1'
,p_column_display_sequence=>5
,p_column_heading=>'&AP_POSITION_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select position_name d, code r',
'from xxhrms.xxhrms_positions',
'where company_code = :SS_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31404562486781926)
,p_query_column_id=>6
,p_column_alias=>'STAFF_CATEGORY'
,p_column_display_sequence=>6
,p_column_heading=>'Staff Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48585902018701711)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31404627910781927)
,p_query_column_id=>7
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>7
,p_column_heading=>'&AP_JOBTITLE_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, JOB_CODE r',
'from xxhrms.XXHRMS_JOBS',
'where COMPANY_CODE = :SS_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31404719931781928)
,p_query_column_id=>8
,p_column_alias=>'EMP_TYPE'
,p_column_display_sequence=>9
,p_column_heading=>'Employee Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''EMP_TYPE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EMP_TYPE'' ',
'ORDER BY 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31404874964781929)
,p_query_column_id=>9
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Hire Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31404954954781930)
,p_query_column_id=>10
,p_column_alias=>'EMP_DUTIES'
,p_column_display_sequence=>8
,p_column_heading=>'&AP_UNIT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UNIT_NAME as display_value, UNIT_ID as return_value ',
'  from XXHRMS.XXHRMS_UNITS',
'WHERE ORGANIZATION_CODE = :SS_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31405085089781931)
,p_query_column_id=>11
,p_column_alias=>'ASSIGNMENT_STATUS'
,p_column_display_sequence=>12
,p_column_heading=>'Assignment Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31405194031781932)
,p_query_column_id=>12
,p_column_alias=>'LAST_PROMOTION_DATE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31405214132781933)
,p_query_column_id=>13
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>13
,p_column_heading=>'Supervisor'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME d,PERSON_ID r',
'FROM xxhrms.xxhrms_people_f',
'where PERSON_ID <> :AP_STAFF_ID',
'--and assignment_status = ''ACTIVE''',
'and sysdate between effective_start_date and effective_end_date',
'and company_code = :SS_COMPANY_CODE',
'order by FULL_NAME'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31297968989800230)
,p_name=>'<strong>Salary Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31297637550800227)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT aa.attribute7,aa.grade, aa.grade_step,aa.paid_salary, aa.annual_sal, aa.bank_name, aa.acc_no,attribute3 BVN,aa.tax_id,aa.ssn,aa.pfa_admins,aa.pin_no,aa.attribute8,aa.attribute9',
'',
'  FROM xxhrms.xxhrms_assignments_f aa, xxhrms_lookup_job_title_v bb, xxhrms.xxhrms_lookup_salary_type_v dd',
'  WHERE aa.person_id = :AP_STAFF_ID',
'  and aa.company_code=:AP_COMPANY_CODE',
'    AND aa.job_id = bb.value_code(+)',
'    AND aa.attribute7 = dd.value_code(+)',
'   AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'  '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
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
 p_id=>wwv_flow_imp.id(31405622302781937)
,p_query_column_id=>1
,p_column_alias=>'ATTRIBUTE7'
,p_column_display_sequence=>1
,p_column_heading=>'Salary Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48588607804701712)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31405798290781938)
,p_query_column_id=>2
,p_column_alias=>'GRADE'
,p_column_display_sequence=>2
,p_column_heading=>'Grade'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DECODE(:SS_COMPANY_CODE,''64'',SUBSTR(GRADE,0,INSTR(GRADE,''_'')-1),grade) d, id r ',
'from xxhrms.xxhrms_grades',
'where ORGANISATION = :SS_COMPANY_CODE',
'and grade is not null',
'order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31405852272781939)
,p_query_column_id=>3
,p_column_alias=>'GRADE_STEP'
,p_column_display_sequence=>3
,p_column_heading=>'Grade Step'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Step ''||grade_step d, grade_step r',
'  FROM XXHRMS.XXHRMS_GRADE_STEP ',
'WHERE status = ''ACTIVE''',
'  AND GRADE_ID = :P20_GRADE',
'  order by TRANS_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31405949893781940)
,p_query_column_id=>4
,p_column_alias=>'PAID_SALARY'
,p_column_display_sequence=>5
,p_column_heading=>'Monthly Gross Salary'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406053792781941)
,p_query_column_id=>5
,p_column_alias=>'ANNUAL_SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Annual Gross Salary'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406139432781942)
,p_query_column_id=>6
,p_column_alias=>'BANK_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Bank Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BANK_NAME as display_value, BANK_CODE as return_value ',
'  from XXHRMS.XXHRMS_BANKS',
'  where company_code = :SS_COMPANY_CODE',
'  and STATUS = ''ACTIVE''',
'  and (CBN_CODE is NOT NULL or CRSPND_BANK_CODE is not null)',
' order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406208807781943)
,p_query_column_id=>7
,p_column_alias=>'ACC_NO'
,p_column_display_sequence=>7
,p_column_heading=>'Account Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31436767414482001)
,p_query_column_id=>8
,p_column_alias=>'BVN'
,p_column_display_sequence=>8
,p_column_heading=>'BVN'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406330931781944)
,p_query_column_id=>9
,p_column_alias=>'TAX_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Tax Payer ID'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406419646781945)
,p_query_column_id=>10
,p_column_alias=>'SSN'
,p_column_display_sequence=>10
,p_column_heading=>'Tax State'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, STATE_CODE',
'FROM XXHRMS.XXHRMS_STATES',
'WHERE COUNTRY_CODE = ''NG'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406579903781946)
,p_query_column_id=>11
,p_column_alias=>'PFA_ADMINS'
,p_column_display_sequence=>11
,p_column_heading=>'PFA Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PFA_NAME as display_value, PFADMIN_ID as return_value ',
'  from XXHRMS.XXHRMS_PFA_ADMIN',
'where company_code = :SS_COMPANY_CODE',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406693673781947)
,p_query_column_id=>12
,p_column_alias=>'PIN_NO'
,p_column_display_sequence=>12
,p_column_heading=>'PFA Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406723720781948)
,p_query_column_id=>13
,p_column_alias=>'ATTRIBUTE8'
,p_column_display_sequence=>13
,p_column_heading=>'HMO Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HOSPITAL_NAME as display_value, HOSPITAL_CODE as return_value ',
'  from XXHRMS.XXHRMS_HOSPITALS',
'  where company_code = :SS_COMPANY_CODE',
' order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31406802476781949)
,p_query_column_id=>14
,p_column_alias=>'ATTRIBUTE9'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69362491544619606)
,p_plug_name=>'Updatable Salary Informatiom'
,p_region_name=>'Updatable'
,p_parent_plug_id=>wwv_flow_imp.id(31297968989800230)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(2505830901224066)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31297769575800228)
,p_plug_name=>'<strong>Benefits and Deductions</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296775491800218)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31298034166800231)
,p_name=>'Grade Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(31297769575800228)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'     AMOUNT,',
'     STATUS',
'  from XXHRMS.XXHRMS_BENEFITS_LOV_AUTO_VIEW',
'where staff_id = :AP_STAFF_ID',
'and status = ''ACTIVE''',
'and company_code=:AP_COMPANY_CODE',
'and AMOUNT > 0',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(ass_start_date) AND NVL(ass_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(elt_start_date) AND NVL(elt_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'order by name,amount;',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31298781395800238)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31298831661800239)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31298911225800240)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31298128760800232)
,p_name=>'Non-Gross Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(31297769575800228)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'       AMOUNT',
'  from XXHRMS.XXHRMS_OTHER_ELT_LOV_AUTO_VIEW',
'where staff_id = :AP_STAFF_ID',
'and company_code=:AP_COMPANY_CODE',
'and AMOUNT > 0',
'and status = ''ACTIVE''',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(ass_start_date) AND NVL(ass_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(elt_start_date) AND NVL(elt_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from XXHRMS.XXHRMS_OTHER_ELT_LOV_AUTO_VIEW',
'where staff_id = :AP_STAFF_ID',
'and AMOUNT > 0',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(ass_start_date) AND NVL(ass_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(elt_start_date) AND NVL(elt_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))'))
,p_display_condition_type=>'EXISTS'
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
 p_id=>wwv_flow_imp.id(31299039805800241)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299128667800242)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31298299788800233)
,p_name=>'Other Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(31297769575800228)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ELEMENT_CODE Element,COST Amount,Status',
'  from XXHRMS.XXHRMS_emp_benefits',
'  where staff_id = :AP_STAFF_ID',
'  and company_code=:AP_COMPANY_CODE',
'  and element_code <> (select basic_salary_code from xxhrms_company_settings where company_code = :SS_COMPANY_CODE)',
'  and element_code in (select element_id from xxhrms_elements where company_code = :SS_COMPANY_CODE)',
'  and status = ''ACTIVE''',
'  AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299232529800243)
,p_query_column_id=>1
,p_column_alias=>'ELEMENT'
,p_column_display_sequence=>1
,p_column_heading=>'Element'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(20162880087080928)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299339909800244)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299482085800245)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31298316757800234)
,p_name=>'Grade Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(31297769575800228)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'       AMOUNT,',
'       ',
'       STATUS ',
'  from XXHRMS.XXHRMS_DEDUCT_LOV_AUTO_VIEW',
'where staff_id = :AP_STAFF_ID',
'and company_code=:AP_COMPANY_CODE',
'and AMOUNT > 0',
'and status = ''ACTIVE''',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(ass_start_date) AND NVL(ass_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(elt_start_date) AND NVL(elt_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'order by name,amount;',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299583735800246)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299635219800247)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299796414800248)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31298426849800235)
,p_name=>'Other Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(31297769575800228)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ELEMENT_CODE Element, Cost Amount, Status',
'from XXHRMS.XXHRMS_EMP_DEDUCTIONS',
'  where staff_id = :AP_STAFF_ID',
'  and company_code=:AP_COMPANY_CODE',
'  --and element_code <> (select basic_salary_code from XXHRMS.xxhrms_company_settings where company_code = :SS_COMPANY_CODE)',
'  and status = ''ACTIVE''',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299812884800249)
,p_query_column_id=>1
,p_column_alias=>'ELEMENT'
,p_column_display_sequence=>1
,p_column_heading=>'Element'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(20162880087080928)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31299978061800250)
,p_query_column_id=>2
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31334659921435401)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31296885828800219)
,p_plug_name=>'<strong>Qualifications</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296500217800216)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31334797916435402)
,p_plug_name=>'<strong>Education</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296885828800219)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'from xxhrms.XXHRMS_EDUCTIONAL',
'where person_id = :AP_STAFF_ID',
'and company_code=:AP_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31438773906482021)
,p_name=>'TYPE_OF_ESTABLISH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_OF_ESTABLISH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Institution Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48588300890701712)
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
 p_id=>wwv_flow_imp.id(31438824112482022)
,p_name=>'ESTABLISH_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTABLISH_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Establish Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(31438913178482023)
,p_name=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(31439020132482024)
,p_name=>'ATT_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATT_FROM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Year From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(31439144450482025)
,p_name=>'ATT_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATT_TO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Year To'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(31439272654482026)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
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
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31439373004482027)
,p_name=>'QUALIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Qualification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(55313445547688193)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31439479979482028)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31439588630482029)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(31439668410482030)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31439722088482031)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
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
 p_id=>wwv_flow_imp.id(31439849019482032)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
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
,p_default_type=>'ITEM'
,p_default_expression=>'SS_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31439990738482033)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31440014239482034)
,p_name=>'EFFECTIVE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_START_DATE'
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
 p_id=>wwv_flow_imp.id(31440146466482035)
,p_name=>'EFFECTIVE_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_END_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(31440299571482036)
,p_name=>'WORKFLOW_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_STATUS'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31440388378482037)
,p_name=>'DISCIPLINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCIPLINE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Discipline'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(31440490076482038)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31440515941482039)
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
 p_id=>wwv_flow_imp.id(31438674748482020)
,p_internal_uid=>31438674748482020
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
 p_id=>wwv_flow_imp.id(31481521622657492)
,p_interactive_grid_id=>wwv_flow_imp.id(31438674748482020)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31481659024657492)
,p_report_id=>wwv_flow_imp.id(31481521622657492)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31482176785657494)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31438773906482021)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31482699500657497)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31438824112482022)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31483180178657500)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31438913178482023)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31483679859657502)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31439020132482024)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31484103698657505)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31439144450482025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31484649843657508)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(31439272654482026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31485178482657511)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(31439373004482027)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31485621972657513)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(31439479979482028)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31486183075657515)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(31439588630482029)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31486651103657518)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(31439668410482030)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31487164700657520)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(31439722088482031)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31487655126657522)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(31439849019482032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31488106312657525)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(31439990738482033)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31488686011657527)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(31440014239482034)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31489151555657530)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(31440146466482035)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31489636837657532)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(31440299571482036)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31490149453657534)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(31440388378482037)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31503931444667097)
,p_view_id=>wwv_flow_imp.id(31481659024657492)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31440490076482038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31334851109435403)
,p_plug_name=>'<strong>Job History</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296885828800219)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from xxhrms.XXHRMS_PREVIOUSJOBS',
'where person_id = :AP_STAFF_ID',
'and company_code=:AP_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31550657724763910)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
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
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31550714287763911)
,p_name=>'ESTABLISHMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTABLISHMENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Establishment Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>80
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
 p_id=>wwv_flow_imp.id(31550810928763912)
,p_name=>'PREVIOUS_JOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREVIOUS_JOB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Previous Job'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>40
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
 p_id=>wwv_flow_imp.id(31550980543763913)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(31551010743763914)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(31551144587763915)
,p_name=>'LEAVING_REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVING_REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Leaving Reason'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>240
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
 p_id=>wwv_flow_imp.id(31551209109763916)
,p_name=>'WORK_EXPERIENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_EXPERIENCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Work Experience'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(31551351135763917)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31551495099763918)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(31551523360763919)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31551641677763920)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
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
 p_id=>wwv_flow_imp.id(31551759328763921)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31551885003763922)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31551936852763923)
,p_name=>'EFFECTIVE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_START_DATE'
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
 p_id=>wwv_flow_imp.id(31552027237763924)
,p_name=>'EFFECTIVE_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_END_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(31552193375763925)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31552250677763926)
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
 p_id=>wwv_flow_imp.id(31550528889763909)
,p_internal_uid=>31550528889763909
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
 p_id=>wwv_flow_imp.id(31586315615783724)
,p_interactive_grid_id=>wwv_flow_imp.id(31550528889763909)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31586477082783724)
,p_report_id=>wwv_flow_imp.id(31586315615783724)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31586944009783726)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31550657724763910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31587431750783729)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31550714287763911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31587929532783732)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31550810928763912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31588407517783734)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31550980543763913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31588980626783737)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31551010743763914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31589495892783739)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(31551144587763915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31590076565783742)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(31551209109763916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31590511471783745)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(31551351135763917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31591014155783747)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(31551495099763918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31591586324783749)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(31551523360763919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31592095879783752)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(31551641677763920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31592596699783755)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(31551759328763921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31593027518783757)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(31551885003763922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31593565954783760)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(31551936852763923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31594038442783762)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(31552027237763924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31594504494783765)
,p_view_id=>wwv_flow_imp.id(31586477082783724)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31552193375763925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54175729119559817)
,p_plug_name=>'<strong>Certifications</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296885828800219)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM xxhrms_qualifications',
' WHERE person_id = :AP_STAFF_ID',
' and company_code=:AP_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_read_only_when_type=>'NOT_EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''CERT'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31440749361482041)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31440865964482042)
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
 p_id=>wwv_flow_imp.id(55085128965983316)
,p_name=>'QUALIFICATION_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_CODE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(55085196905983317)
,p_name=>'QUALIFICATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Certification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(55085304328983318)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(55085385619983319)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(55085489900983320)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
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
 p_id=>wwv_flow_imp.id(55085622431983321)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(55085686324983322)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
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
 p_id=>wwv_flow_imp.id(55085791087983323)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
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
,p_default_type=>'ITEM'
,p_default_expression=>'SS_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55085955388983324)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
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
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55086016180983325)
,p_name=>'QUALIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Date Certified'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(55086092560983326)
,p_name=>'INSTITUTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTITUTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Institution Attended'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(55085027802983315)
,p_internal_uid=>55085027802983315
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
 p_id=>wwv_flow_imp.id(55097362702988921)
,p_interactive_grid_id=>wwv_flow_imp.id(55085027802983315)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(55097486808988921)
,p_report_id=>wwv_flow_imp.id(55097362702988921)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31533223160761317)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31440749361482041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55098017408988924)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(55085128965983316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55098525265988927)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(55085196905983317)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55099004132988930)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(55085304328983318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55099539092988933)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(55085385619983319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55100034535988936)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(55085489900983320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55100525835988939)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(55085622431983321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55101050410988942)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(55085686324983322)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55101460185988945)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(55085791087983323)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55101984553988948)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(55085955388983324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55102511278988951)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(55086016180983325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55103016193988954)
,p_view_id=>wwv_flow_imp.id(55097486808988921)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(55086092560983326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54181677858561193)
,p_plug_name=>'<strong>Skills</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296885828800219)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM XXHRMS.xxhrms_skills',
'WHERE person_id  = :AP_STAFF_ID',
'and company_code=:AP_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_read_only_when_type=>'NOT_EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''SKILL'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31449949341571007)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31450020547571008)
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
 p_id=>wwv_flow_imp.id(54185348551561230)
,p_name=>'SKILL_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKILL_CODE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(54185489955561231)
,p_name=>'SKILL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKILL_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Skill Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(54185625816561232)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(54185650520561233)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(55090336465984684)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
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
 p_id=>wwv_flow_imp.id(55090431209984685)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(55090496444984686)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
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
 p_id=>wwv_flow_imp.id(55090581189984687)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
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
,p_default_type=>'ITEM'
,p_default_expression=>'SS_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55090651269984688)
,p_name=>'YEARS_OF_EXPERIENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'YEARS_OF_EXPERIENCE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Years Of Experience'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(55090756708984689)
,p_name=>'COMPETENCY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPETENCY_LEVEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Competency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(50454873972690883)
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
 p_id=>wwv_flow_imp.id(55090894197984690)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
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
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55091043516984691)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(54185291264561229)
,p_internal_uid=>54185291264561229
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
 p_id=>wwv_flow_imp.id(55096194677985027)
,p_interactive_grid_id=>wwv_flow_imp.id(54185291264561229)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(55096344653985027)
,p_report_id=>wwv_flow_imp.id(55096194677985027)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31520776865754542)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31449949341571007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55096821426985029)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(54185348551561230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55097247919985035)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(54185489955561231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55097833915985042)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(54185625816561232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55098195974985047)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(54185650520561233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55098669974985052)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(55090336465984684)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55099206804985058)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(55090431209984685)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55099703299985063)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(55090496444984686)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55100166443985069)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(55090581189984687)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55100727197985075)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(55090651269984688)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55101156685985078)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(55090756708984689)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55101704212985081)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(55090894197984690)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55102152940985084)
,p_view_id=>wwv_flow_imp.id(55096344653985027)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(55091043516984691)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31296902619800220)
,p_plug_name=>'<strong>Attachments/Documents</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(31296500217800216)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31335247863435407)
,p_plug_name=>'Attachments'
,p_parent_plug_id=>wwv_flow_imp.id(31296902619800220)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  *',
'from xxhrms.xxhrms_documents',
'where staff_id = :AP_STAFF_ID',
'and BLOB_CONTENT is not null',
'and company_code=:AP_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P20_GET_PRO_VAL'
,p_plug_display_when_cond2=>'N'
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
 p_id=>wwv_flow_imp.id(31338688696435441)
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
,p_owner=>'HTEMITAYO'
,p_internal_uid=>31338688696435441
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31338757563435442)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DOWNLOAD:XXHRMS_DOCUMENTS:BLOB_CONTENT:ID::MIME_TYPE:FILENAME:LAST_UPDATED:CHARACTER_SET:inline:Download:XXHRMS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31351052025586502)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Document Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31338853246435443)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_ID:#ID#'
,p_column_linktext=>'Edit'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31339140479435446)
,p_db_column_name=>'FILENAME'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31339515191435450)
,p_db_column_name=>'FILE_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>'File Description'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31339081147435445)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31350994650586501)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30035376089845041)
,p_db_column_name=>'BLOB_CONTENT'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>'Blob Content'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30035405104845042)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>90
,p_column_identifier=>'M'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30035578036845043)
,p_db_column_name=>'CHARACTER_SET'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'Character Set'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30035694567845044)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>110
,p_column_identifier=>'O'
,p_column_label=>'File Size'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30035776429845045)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'P'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30035856717845046)
,p_db_column_name=>'INS_TIME'
,p_display_order=>130
,p_column_identifier=>'Q'
,p_column_label=>'Ins Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30035935338845047)
,p_db_column_name=>'INS_BY'
,p_display_order=>140
,p_column_identifier=>'R'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30036031125845048)
,p_db_column_name=>'COMPANY_CODE'
,p_display_order=>150
,p_column_identifier=>'S'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31372357106626185)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'313724'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:DOCUMENT_ID:STAFF_ID:FILENAME:FILE_DESCRIPTION:MIME_TYPE:DOCUMENT_TYPE:BLOB_CONTENT:LAST_UPDATED:CHARACTER_SET:FILE_SIZE:LAST_UPDATED_BY:INS_TIME:INS_BY:COMPANY_CODE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31351505573586507)
,p_plug_name=>'Attachments'
,p_parent_plug_id=>wwv_flow_imp.id(31296902619800220)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  *',
'from xxhrms.xxhrms_documents',
'where staff_id = :AP_STAFF_ID',
'and BLOB_CONTENT is not null',
'and company_code=:AP_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P20_GET_PRO_VAL'
,p_plug_display_when_cond2=>'Y'
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
 p_id=>wwv_flow_imp.id(31351632629586508)
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
,p_owner=>'HTEMITAYO'
,p_internal_uid=>31351632629586508
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31351755721586509)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31351867599586510)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31351932335586511)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31352065997586512)
,p_db_column_name=>'FILENAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31352147581586513)
,p_db_column_name=>'FILE_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'File Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31352289917586514)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31352328001586515)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Document Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30036152440845049)
,p_db_column_name=>'BLOB_CONTENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Blob Content'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30036239332845050)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31449383899571001)
,p_db_column_name=>'CHARACTER_SET'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Character Set'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31449471282571002)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'File Size'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31449514144571003)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31449655484571004)
,p_db_column_name=>'INS_TIME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ins Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31449715953571005)
,p_db_column_name=>'INS_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31449817683571006)
,p_db_column_name=>'COMPANY_CODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31372999665626196)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'313730'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:STAFF_ID:MIME_TYPE:FILENAME:FILE_DESCRIPTION:DOCUMENT_TYPE:DOCUMENT_ID:BLOB_CONTENT:LAST_UPDATED:CHARACTER_SET:FILE_SIZE:LAST_UPDATED_BY:INS_TIME:INS_BY:COMPANY_CODE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54207302403574008)
,p_plug_name=>'My Profile'
,p_icon_css_classes=>'fa-user'
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
 p_id=>wwv_flow_imp.id(303518105927927135)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading'
,p_plug_template=>wwv_flow_imp.id(2483875202224049)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'Your &AP_SUBORG_LABEL. has not been enabled to carry out updates on personal information.'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P20_ALLOW_UPDATE = ''Y'' and :P20_ALLOWED_SUBORG = ''N'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29425094720340106)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31272554436622813)
,p_button_name=>'get_old_details'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Old Details'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT NUMBER;',
'BEGIN',
'select COUNT(distinct company_code) INTO V_CNT ',
'from xxhrms_people_f',
'where person_id = :AP_STAFF_ID;',
'',
'IF V_CNT > 1 THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69362872847619610)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69362491544619606)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69362952818619611)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69362491544619606)
,p_button_name=>'SUBMIT_REQUEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Request'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if XXADM.get_profile_option(''ASS_INFO_APPRVL'',:AP_COMPANY_CODE) = ''Y'' then',
' return true;',
'else',
' return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69363972167619621)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69362491544619606)
,p_button_name=>'SAVE_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if XXADM.get_profile_option(''ASS_INFO_APPRVL'',:AP_COMPANY_CODE) != ''Y'' then',
' return true;',
'else',
' return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69363036316619612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31297968989800230)
,p_button_name=>'POPUP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Updatable Info'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:openModal(''Updatable'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if XXADM.get_profile_option(''ASS_INFO'',:AP_COMPANY_CODE) = ''Y'' then',
' return true;',
'else',
' return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31296459746800215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31273225433622820)
,p_button_name=>'Save_image'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Image'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''IMAGE'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31711717135020669)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_button_name=>'Save_personal_PO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit for Approval'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P20_APPROVAL = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31712011571020670)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_button_name=>'Save_personal_PS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Personal Information'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P20_APPROVAL = ''N'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31720485164026157)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_button_name=>'Save_contact'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Contact'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P20_STATUS IN (''Active Employee'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8516281861500208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31335247863435407)
,p_button_name=>'Add_Attachment'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36:P36_STAFF_ID:&P20_STAFF_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8516348042500209)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31351505573586507)
,p_button_name=>'Add_Attachment_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment '
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11420354109997817)
,p_name=>'P20_BVN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69362491544619606)
,p_prompt=>'BVN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from "XXHRMS"."XXHRMS_CUSTOMER_INFO_COLUMNS"',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and upper(info_type) = upper(''EMPLOYMENT'')',
'AND NVL(MODIFY_YN, ''N'') = ''Y''',
'AND UPPER(INFO_ID) = UPPER(''BVN'')'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31271582432622803)
,p_name=>'P20_IMAGE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31271604295622804)
,p_name=>'P20_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31271709503622805)
,p_name=>'P20_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31271864049622806)
,p_name=>'P20_REQUEST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31271947008622807)
,p_name=>'P20_HIDE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31272006748622808)
,p_name=>'P20_HIRE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31272101219622809)
,p_name=>'P20_DT_FLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31272245689622810)
,p_name=>'P20_DT_EMP_ASS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31272307311622811)
,p_name=>'P20_POPT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31273481698622822)
,p_name=>'P20_PIC_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31273225433622820)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:120px;height:120px"'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms_picture',
'where staff_id = :AP_STAFF_ID;'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select picture from xxhrms_picture',
    'where staff_id = :AP_STAFF_ID;')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31273510283622823)
,p_name=>'P20_PIC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31273225433622820)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cattributes_element=>'accept="image/*"'
,p_tag_attributes=>'accept="image/*"'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''IMAGE'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_inline_help_text=>'Maximum Size Allowed (100KB)'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'NATIVE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31296349328800214)
,p_name=>'P20_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31352481123586516)
,p_name=>'P20_GET_PRO_VAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31354306699586535)
,p_name=>'P20_STAFF_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_item_default=>':AP_STAFF_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31405307967781934)
,p_name=>'P20_SUB_ORG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31405420889781935)
,p_name=>'P20_DEPT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31406989446781950)
,p_name=>'P20_GRADE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31436807684482002)
,p_name=>'P20_BIOMETRIC_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(31271458548622802)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31554234686763946)
,p_name=>'P20_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Title'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TITLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''TITLE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''TITLE'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''TITLE'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31554323178763947)
,p_name=>'P20_SEX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GENDER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''GENDER''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''GENDER'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''SEX'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31554472683763948)
,p_name=>'P20_NATION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Nationality'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select counry_name as d,',
'       country_code as r',
'  from xxhrms.XXHRMS_COUNTRIES',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''NATIONALITY'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31554575456763949)
,p_name=>'P20_GEN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Genotype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GENOTYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''GENOTYPE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''GENOTYPE'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Genotype--'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''GENOTYPE'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31554661114763950)
,p_name=>'P20_RELIGION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31720896964026158)
,p_name=>'P20_PER_EML'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Personal Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''EMAIL2'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31721297839026158)
,p_name=>'P20_PER_PHN'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Personal Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''TELEPHONE2'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31721693768026159)
,p_name=>'P20_OFF_EML'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Work Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''EMAIL'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31722004441026159)
,p_name=>'P20_OFF_PHN'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Work Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''TELEPHONE1'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31722479252026159)
,p_name=>'P20_X2'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'<strong>Home Address</strong>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
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
 p_id=>wwv_flow_imp.id(31722836495026160)
,p_name=>'P20_STR_ADR'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Street Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''RESIDENCE_ADDRESS'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31723221116026160)
,p_name=>'P20_CTR'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select counry_name as d,',
'       country_code as r',
'  from xxhrms.XXHRMS_COUNTRIES',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''RESIDENCE_COUNTRY'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31723668279026160)
,p_name=>'P20_CNT_STA'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'State'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, STATE_CODE',
'FROM XXHRMS_STATES',
'WHERE COUNTRY_CODE = :P20_CTR'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P20_CTR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''RESIDENCE_STATE'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31724076849026161)
,p_name=>'P20_CNT_CTY'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'City'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''RESIDENCE_CITY'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31724487067026161)
,p_name=>'P20_X3'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'<strong>Emergency Contact</strong>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
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
 p_id=>wwv_flow_imp.id(31724896801026162)
,p_name=>'P20_EM_NAME'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(31725251510026163)
,p_name=>'P20_REL'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Relationship'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RELATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''RELATION''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''RELATION'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31725625209026163)
,p_name=>'P20_EM_ADR'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
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
 p_id=>wwv_flow_imp.id(31726060969026163)
,p_name=>'P20_EM_PHN'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(31726454179026164)
,p_name=>'P20_EM_CTR'
,p_item_sequence=>175
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select counry_name as d,',
'       country_code as r',
'  from xxhrms.XXHRMS_COUNTRIES',
' order by 1'))
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
 p_id=>wwv_flow_imp.id(31726809385026164)
,p_name=>'P20_EM_STA'
,p_item_sequence=>185
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'State'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, STATE_CODE',
'FROM XXHRMS_STATES',
'WHERE COUNTRY_CODE = :P20_EM_CTR'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P20_EM_CTR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31727289801026164)
,p_name=>'P20_EM_CTY'
,p_item_sequence=>195
,p_item_plug_id=>wwv_flow_imp.id(130619743061573823)
,p_prompt=>'City'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(31773061154167901)
,p_name=>'P20_SURNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Surname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''LAST_NAME'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31773119196167902)
,p_name=>'P20_MAR_STAT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Marital Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MARITAL STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''MARITAL''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''MARITAL'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''MARITAL_STATUS'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31773288508167903)
,p_name=>'P20_STATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'State Of Origin'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, STATE_CODE',
'FROM XXHRMS_STATES',
'WHERE COUNTRY_CODE = :P20_NATION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select State--'
,p_lov_cascade_parent_items=>'P20_NATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''STATE_OF_ORIGIN'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31773355714167904)
,p_name=>'P20_B_GRP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Blood Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BLOOD GROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''BLOOD_GROUP''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''BLOOD_GROUP'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Blood Group--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''BLOOD_GROUP'')',
'and upper(MODIFY_YN) = ''Y'' ',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31773573660167906)
,p_name=>'P20_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''FIRST_NAME'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31773667994167907)
,p_name=>'P20_DOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Date Of Birth'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''BIRTH_DATE'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31773735805167908)
,p_name=>'P20_LOC_GOV'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Local Government Of Origin'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, LOCAL_GOVT_CODE',
'FROM XXHRMS_LOCAL_GOVT_CODES',
'WHERE STATE_CODE = :P20_STATE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select LGA--'
,p_lov_cascade_parent_items=>'P20_STATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''LOCAL_GOVT_AREA'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31773881141167909)
,p_name=>'P20_MOM_MAID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Mothers Maiden Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''MOTHERS_MAIDEN_NAME'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31774030822167911)
,p_name=>'P20_MID_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Middle Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''MIDDLE_NAME'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31774113926167912)
,p_name=>'P20_POB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'Place Of Birth'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''ATTRIBUTE29'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31774208466167913)
,p_name=>'P20_NAT_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'National Identity Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''NATIONAL_ID'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(31774379754167914)
,p_name=>'P20_OTH_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(130592741285568315)
,p_prompt=>'&AP_EMP_LBL.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_CUSTOMER_INFO_COLUMNS',
'where upper(INFO_ID) = upper(''OTHER_ID'')',
'and upper(MODIFY_YN) = ''Y''',
'and company_code = :SS_COMPANY_CODE'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(39321992471030021)
,p_name=>'P20_APPROVAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54207302403574008)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69362526155619607)
,p_name=>'P20_TAX_PAYER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69362491544619606)
,p_prompt=>'Tax Payer ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from "XXHRMS"."XXHRMS_CUSTOMER_INFO_COLUMNS"',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and upper(info_type) = upper(''EMPLOYMENT'')',
'AND NVL(MODIFY_YN, ''N'') = ''Y''',
'AND UPPER(INFO_ID) = UPPER(''tax_payer_id'')'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(69362641294619608)
,p_name=>'P20_PFA_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69362491544619606)
,p_prompt=>'PFA Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PFA_NAME as display_value, PFADMIN_ID as return_value ',
'  from XXHRMS.XXHRMS_PFA_ADMIN',
'  where company_code = :SS_COMPANY_CODE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from "XXHRMS"."XXHRMS_CUSTOMER_INFO_COLUMNS"',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and upper(info_type) = upper(''EMPLOYMENT'')',
'AND NVL(MODIFY_YN, ''N'') = ''Y''',
'AND UPPER(INFO_ID) = UPPER(''pfa_name'')'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69362706578619609)
,p_name=>'P20_PFA_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69362491544619606)
,p_prompt=>'PFA Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from "XXHRMS"."XXHRMS_CUSTOMER_INFO_COLUMNS"',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and upper(info_type) = upper(''EMPLOYMENT'')',
'AND NVL(MODIFY_YN, ''N'') = ''Y''',
'AND UPPER(INFO_ID) = UPPER(''pfa_number'')'))
,p_read_only_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(69363318599619615)
,p_name=>'P20_TAX_STATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69362491544619606)
,p_prompt=>'Tax State'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, STATE_CODE',
'FROM XXHRMS_STATES',
'WHERE COUNTRY_CODE = ''NG''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from "XXHRMS"."XXHRMS_CUSTOMER_INFO_COLUMNS"',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and upper(info_type) = upper(''EMPLOYMENT'')',
'AND NVL(MODIFY_YN, ''N'') = ''Y''',
'AND UPPER(INFO_ID) = UPPER(''Tax_State'')'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97215056079033205)
,p_name=>'P20_PIC_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31273225433622820)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT eb.FILENAME AS IMAGE_URL',
'FROM xxhrms.xxhrms_people pe, xxhrms.EBIOVERIFYPICTURES eb ',
'WHERE pe.other_id = eb.other_id',
' AND pe.person_id = :AP_AUTH_STAFF',
'  AND eb.FILENAME IS NOT NULL',
'  AND ROWNUM = 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:120px;height:120px"'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms_picture',
'where staff_id = :AP_STAFF_ID;'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517696923927130)
,p_name=>'P20_ALLOW_UPDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54207302403574008)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517832183927132)
,p_name=>'P20_MDASUBORG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54207302403574008)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517952176927133)
,p_name=>'P20_ALLOWED_SUBORG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54207302403574008)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31775422684167925)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31775505467167926)
,p_event_id=>wwv_flow_imp.id(31775422684167925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''EMP_APPROVAL'');',
'      '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69363188933619613)
,p_name=>'close_dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69362872847619610)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69363220115619614)
,p_event_id=>wwv_flow_imp.id(69363188933619613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:closeModal(''Updatable'');',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31353572839586527)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31297206109800223)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Dependants</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31353572839586527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31355826970586550)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31297439080800225)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Work Equipment</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31355826970586550
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31440686068482040)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31334797916435402)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Education</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31440686068482040
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31440974296482043)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(54175729119559817)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Certifications</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31440974296482043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31450199676571009)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(54181677858561193)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Skills</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31450199676571009
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31552344253763927)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31334851109435403)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Job History</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31552344253763927
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31450801817571016)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_IMAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_length number;',
'  v_id number;',
'BEGIN',
'  SELECT max(ID)',
'    INTO v_id ',
'    FROM  XXHRMS_PICTURE;',
'  v_id := nvl(v_id,0)+1;',
'      SELECT dbms_lob.getlength(blob_content)',
'    INTO v_length',
'    FROM   apex_application_temp_files',
'   WHERE  NAME = :P20_pic;',
'  IF v_length <1 THEN',
'    raise_application_error(-20001,''No Image Selected'');',
'  ELSIF v_length BETWEEN 5 AND 100000 THEN',
'    DELETE xxhrms_picture WHERE staff_id = :AP_STAFF_ID;',
'    INSERT INTO xxhrms_picture(ID, length,staff_id, pic_NAME, FILENAME,picture, INS_TIME, INS_BY)',
'    SELECT v_id, v_length,:AP_STAFF_ID,:P20_pic, filename, blob_content, SYSDATE, :APP_USER',
'     FROM   apex_application_temp_files',
'    WHERE  NAME = :P20_pic;',
'    --',
'    DELETE apex_application_temp_files WHERE  NAME = :P20_pic;',
'    COMMIT;',
'  ELSE',
'    DELETE apex_application_temp_files WHERE  NAME = :P20_pic;',
'    COMMIT;',
'    raise_application_error(-20001,''Cannot upload pictures bigger than 100KB!'');',
' END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31296459746800215)
,p_process_when=>'P20_PIC'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Profile Image Update Successful'
,p_internal_uid=>31450801817571016
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31774572804167916)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SavePersonal_InfoPS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_row xxhrms_people_f%ROWTYPE;',
'  v_date date := sysdate;',
'  v_updated VARCHAR2(2000);',
'  ',
'  v_eff_date date :=trunc(sysdate);',
'  p_validate boolean := FALSE;',
'  p_datetrack_update_mode varchar2(50);',
'  p_effective_start_date  date := trunc(sysdate);',
'  p_effective_end_date    date;',
'  --',
'  CURSOR c_row IS ',
'    SELECT *',
'      FROM xxhrms_people_f',
'     WHERE person_id = :P20_staff_id',
'      AND TRUNC(sysdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, sysdate)',
'      ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'',
'  --',
'BEGIN',
'  --',
'  OPEN c_row;',
'  FETCH c_row INTO v_row;',
'  CLOSE c_row;',
'  --',
'  IF NVL(v_row.last_name,''-x'') <> NVL(:P20_surname,''-x'') THEN',
'    v_updated := ''"Surname" '';',
'  END IF;',
'  IF NVL(v_row.middle_name,''-x'') <> NVL(:P20_mid_name,''-x'') THEN',
'    v_updated := v_updated||''"Middle Name" '';',
'  END IF;',
'  IF NVL(v_row.first_name,''-x'') <> NVL(:P20_first_name,''-x'') THEN',
'    v_updated := v_updated||''"First Name" '';',
'  END IF;',
'  IF NVL(v_row.sex,''-x'') <> NVL(:P20_sex,''-x'') THEN',
'    v_updated := v_updated||''"Gender" '';',
'  END IF;',
'  IF NVL(v_row.marital_status,''-x'') <> NVL(:P20_mar_stat,''-x'') THEN',
'    v_updated := v_updated||''Marital Status '';',
'  END IF;',
'  IF NVL(to_char(v_row.birth_date),''-x'') <> NVL(to_char(:P20_dob),''-x'') THEN',
'    v_updated := v_updated||''"Date of Birth" '';',
'  END IF;',
'  IF NVL(v_row.title,''-x'') <> NVL(:P20_title,''-x'') THEN',
'    v_updated := v_updated||''"Title" '';',
'  END IF;',
'  IF NVL(v_row.state_of_origin,''-x'') <> NVL(:P20_state,''-x'') THEN',
'    v_updated := v_updated||''"State of Origin"" '';',
'  END IF;',
'  IF NVL(v_row.local_govt_area,''-x'') <> NVL(:P20_loc_gov,''-x'') THEN',
'    v_updated := v_updated||''"Local Govt." '';',
'  END IF;',
'  IF NVL(v_row.nationality,''-x'') <> NVL(:P20_nation,''-x'') THEN',
'    v_updated := v_updated||''"Nationality" '';',
'  END IF;',
'  IF NVL(v_row.genotype,''-x'') <> NVL(:P20_gen,''-x'') THEN',
'    v_updated := v_updated||''"Genotype" '';',
'  END IF;',
'  IF NVL(v_row.national_id,''-x'') <> NVL(:P20_nat_id,''-x'') THEN',
'    v_updated := v_updated||''"National ID No." '';',
'  END IF;',
'  IF NVL(v_row.other_id,''-x'') <> NVL(:P20_oth_id,''-x'') THEN',
'    v_updated := v_updated||''"Other ID No." '';',
'  END IF;',
'  IF NVL(v_row.blood_group,''-x'') <> NVL(:P20_b_grp,''-x'') THEN',
'    v_updated := v_updated||''"Blood Group" '';',
'  END IF;',
'  IF NVL(v_row.mothers_maiden_name,''-x'') <> NVL(:P20_mom_maid,''-x'') THEN',
'    v_updated := v_updated||''"Mothers Maiden Name" '';',
'  END IF;',
'  IF (:SS_COMPANY_CODE = ''46'' OR :SS_COMPANY_CODE = ''55'' OR :SS_COMPANY_CODE = ''56'') THEN',
'	  IF NVL(v_row.full_name,''-x'') <> NVL(:P20_first_name||'' ''||:P20_mid_name||'' ''||:P20_surname,''-x'') THEN',
'		v_updated := v_updated||''"Full Name" '';',
'	  END IF;',
'  ELSE',
'	  IF NVL(v_row.full_name,''-x'') <> NVL(:P20_surname||'' ''||:P20_first_name||'' ''||:P20_mid_name,''-x'') THEN',
'		v_updated := v_updated||''"Full Name" '';',
'	  END IF;',
'  END IF;',
'  IF NVL(v_row.attribute29,''-x'') <> NVL(:P20_POB,''-x'') THEN',
'    v_updated := v_updated||''"Place of Birth" '';',
'  END IF;',
'  --',
'  v_updated := REPLACE(REPLACE(TRIM(v_updated),''" '',''", ''),''"'','''');',
'  IF v_updated IS NOT NULL THEN',
'    v_row.last_name := :P20_surname;',
'    v_row.first_name := :P20_first_name;',
'    v_row.sex := :P20_sex;',
'    v_row.marital_status := :P20_mar_stat;',
'    v_row.middle_name := :P20_mid_name;',
'    v_row.birth_date := :P20_dob;',
'    v_row.title := :P20_title;',
'	IF (:SS_COMPANY_CODE = ''46'' OR :SS_COMPANY_CODE = ''55'' OR :SS_COMPANY_CODE = ''56'') THEN',
'		v_row.full_name := :P20_first_name||'' ''||:P20_mid_name||'' ''||:P20_surname;',
'	ELSE',
'    	v_row.full_name := :P20_surname||'' ''||:P20_first_name||'' ''||:P20_mid_name;',
'	END IF;',
'    v_row.state_of_origin := :P20_state;',
'    v_row.local_govt_area := :P20_loc_gov;',
'    v_row.mothers_maiden_name := :P20_mom_maid;',
'    v_row.nationality := :P20_nation;',
'    v_row.ins_by := :app_user;',
'    v_row.ins_time := v_date;',
'    v_row.effective_start_date := TRUNC(v_date);',
'    v_row.person_id := :P20_staff_id;',
'    v_row.genotype := :P20_gen;',
'    v_row.blood_group :=  :P20_b_grp;',
'    v_row.national_id := :P20_nat_id;',
'    v_row.other_id := :P20_oth_id;',
'    v_row.updated_columns := v_updated;',
'    v_row.attribute29 := :P20_pob;',
'    --',
'    ',
'    -- Call the function',
'	p_datetrack_update_mode := xxhrms.xxhrms_person_api.fn_is_update_or_ins(x_effective_date => v_eff_date,',
'                                                                       x_person_id => :P20_STAFF_ID);',
'                                                                       ',
'--insert into xxhrms.xxtest values(''p_datetrack_update_mode-''||p_datetrack_update_mode||''v_EFF_DATE-''||v_eff_date);',
' -- Call the update person procedure',
'      xxhrms.xxhrms_person_api.update_person(p_validate => p_validate,',
'                                      p_effective_date => v_eff_date,',
'                                      p_datetrack_update_mode => p_datetrack_update_mode,',
'                                      p_person_id => :P20_STAFF_ID,',
'                                      p_object_version_number => v_row.object_version_number,',
'                                      vacancy_no => v_row.vacancy_no,',
'                                      last_name => v_row.last_name,',
'                                      first_name => v_row.first_name,',
'                                      middle_name => v_row.middle_name,',
'                                      title => v_row.title,',
'                                      full_name => v_row.full_name,',
'                                      nationality => v_row.nationality,',
'                                      local_govt_area => v_row.local_govt_area,',
'                                      state_of_origin => v_row.state_of_origin,',
'                                      postal_address => v_row.postal_address,',
'                                      email => v_row.email,',
'                                      telephone1 => v_row.telephone1,',
'                                      telephone2 => v_row.telephone2,',
'                                      residence_address => v_row.residence_address,',
'                                      birth_date => v_row.birth_date,',
'                                      sex => v_row.sex,',
'                                      marital_status => v_row.marital_status,',
'                                      no_of_children => v_row.no_of_children,',
'                                      hobbies => v_row.hobbies,',
'                                      cv => v_row.cv,',
'                                      continent => v_row.continent,',
'                                      acceptance_flag => v_row.acceptance_flag,',
'                                      ins_time => v_row.ins_time,',
'                                      ins_by => v_row.ins_by,',
'                                      updated_time => SYSDATE,',
'                                      updated_by => :APP_USER,',
'                                      company_code => v_row.company_code,',
'                                      employment_status => v_row.employment_status,',
'                                      mothers_maiden_name => v_row.mothers_maiden_name,',
'                                      attribute_category => v_row.attribute_category,',
'                                      attribute1 => v_row.attribute1,',
'                                      attribute2 => v_row.attribute2,',
'                                      attribute3 => v_row.attribute3,',
'                                      attribute4 => v_row.attribute4,',
'                                      attribute5 => v_row.attribute5,',
'                                      attribute6 => v_row.attribute6,',
'                                      attribute7 => v_row.attribute7,',
'                                      attribute8 => v_row.attribute8,',
'                                      attribute9 => v_row.attribute9,',
'                                      attribute10 => v_row.attribute10,',
'                                      attribute11 => v_row.attribute11,',
'                                      attribute12 => v_row.attribute12,',
'                                      attribute13 => v_row.attribute13,',
'                                      attribute14 => v_row.attribute14,',
'                                      attribute15 => v_row.attribute15,',
'                                      attribute16 => v_row.attribute16,',
'                                      attribute17 => v_row.attribute17,',
'                                      attribute18 => v_row.attribute18,',
'                                      attribute19 => v_row.attribute19,',
'                                      attribute20 => v_row.attribute20,',
'                                      attribute21 => v_row.attribute21,',
'                                      attribute22 => v_row.attribute22,',
'                                      attribute23 => v_row.attribute23,',
'                                      attribute24 => v_row.attribute24,',
'                                      attribute25 => v_row.attribute25,',
'                                      attribute26 => v_row.attribute26,',
'                                      attribute27 => v_row.attribute27,',
'                                      attribute28 => v_row.attribute28,',
'                                      attribute29 => v_row.attribute29,',
'                                      attribute30 => v_row.attribute30,',
'                                      effective_start_date => p_effective_start_date,',
'                                      effective_end_date => p_effective_end_date,',
'                                      updated_columns => v_row.updated_columns,',
'                                      latest_start_date => v_row.latest_start_date,',
'                                      email2 => v_row.email2,',
'                                      residence_city => v_row.residence_city,',
'                                      residence_state => v_row.residence_state,',
'                                      residence_country => v_row.residence_country,',
'                                      genotype => v_row.genotype,',
'                                      blood_group => v_row.blood_group,',
'                                      national_id => v_row.national_id,',
'                                      other_id => v_row.other_id);',
'                                      ',
'                                      ',
'    INSERT INTO xxhrms.xxhrms_people_archive',
'    SELECT * FROM xxhrms.xxhrms_people_f',
'     WHERE person_id = :P20_staff_id',
'     AND TO_DATE(sysdate,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(sysdate,''DD-MON-RR''));',
'    ',
'    UPDATE xxhrms.xxhrms_people_archive',
'      SET effective_end_date  =  NVL(effective_end_date,sysdate),',
'        updated_time = sysdate,',
'        updated_by = :app_user',
'    WHERE person_id = :P20_staff_id;',
'       ',
'                                    ',
'    --',
'  END IF;',
'  --',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31712011571020670)
,p_process_success_message=>'Action Processed'
,p_internal_uid=>31774572804167916
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31774663364167917)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SavePersonl_InfoPO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_row xxhrms.xxhrms_people_f%ROWTYPE;',
'  v_date date := sysdate;',
'  v_updated VARCHAR2(2000);',
'  v_fullname varchar2(500);',
'  ',
'  v_eff_date date :=trunc(sysdate);',
'  p_validate boolean := FALSE;',
'  p_datetrack_update_mode varchar2(50);',
'  p_effective_start_date  date := trunc(sysdate);',
'  p_effective_end_date    date;',
'  p_id number := 0;',
'  --',
'  CURSOR c_row IS ',
'    SELECT',
'    *',
'      FROM xxhrms_people_f',
'     WHERE person_id = :P20_staff_id',
'      AND TRUNC(sysdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, sysdate)',
'      ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'',
'  --',
'BEGIN',
'--   --',
'--   insert into XXSBS_TEST(A)VALUES(1);',
'  --select nvl(max(REQUEST_ID),0) + 1 into p_id  from xxhrms.XXHRMS_PEOPLE_F_UPDATE ;',
'  p_id := xxhrms.XXHRMS_PEOPLE_F_UPDATE_Seq.nextval;',
'  OPEN c_row;',
'  FETCH c_row INTO v_row;',
'  CLOSE c_row;',
'',
'',
'--  insert into XXSBS_TEST(A)VALUES(2);',
'  --',
'  IF NVL(v_row.last_name,''-x'') <> NVL(:P20_surname,''-x'') THEN',
'    v_updated := ''"Surname" '';',
'  END IF;',
'  IF NVL(v_row.middle_name,''-x'') <> NVL(:P20_mid_name,''-x'') THEN',
'    v_updated := v_updated||''"Middle Name" '';',
'  END IF;',
'  IF NVL(v_row.first_name,''-x'') <> NVL(:P20_first_name,''-x'') THEN',
'    v_updated := v_updated||''"First Name" '';',
'  END IF;',
'  IF NVL(v_row.sex,''-x'') <> NVL(:P20_sex,''-x'') THEN',
'    v_updated := v_updated||''"Gender" '';',
'  END IF;',
'  IF NVL(v_row.marital_status,''-x'') <> NVL(:P20_mar_stat,''-x'') THEN',
'    v_updated := v_updated||''Marital Status '';',
'  END IF;',
'  IF NVL(to_char(v_row.birth_date),''-x'') <> NVL(to_char(:P20_dob),''-x'') THEN',
'    v_updated := v_updated||''"Date of Birth" '';',
'  END IF;',
'  IF NVL(v_row.title,''-x'') <> NVL(:P20_title,''-x'') THEN',
'    v_updated := v_updated||''"Title" '';',
'  END IF;',
'  IF NVL(v_row.state_of_origin,''-x'') <> NVL(:P20_state,''-x'') THEN',
'    v_updated := v_updated||''"State of Origin"" '';',
'  END IF;',
'  IF NVL(v_row.local_govt_area,''-x'') <> NVL(:P20_loc_gov,''-x'') THEN',
'    v_updated := v_updated||''"Local Govt." '';',
'  END IF;',
'  IF NVL(v_row.nationality,''-x'') <> NVL(:P20_nation,''-x'') THEN',
'    v_updated := v_updated||''"Nationality" '';',
'  END IF;',
'  IF NVL(v_row.genotype,''-x'') <> NVL(:P20_gen,''-x'') THEN',
'    v_updated := v_updated||''"Genotype" '';',
'  END IF;',
'  IF NVL(v_row.national_id,''-x'') <> NVL(:P20_nat_id,''-x'') THEN',
'    v_updated := v_updated||''"National ID No." '';',
'  END IF;',
'  IF NVL(v_row.other_id,''-x'') <> NVL(:P20_oth_id,''-x'') THEN',
'    v_updated := v_updated||''"Other ID No." '';',
'  END IF;',
'  IF NVL(v_row.blood_group,''-x'') <> NVL(:P20_b_grp,''-x'') THEN',
'    v_updated := v_updated||''"Blood Group" '';',
'  END IF;',
'  IF NVL(v_row.mothers_maiden_name,''-x'') <> NVL(:P20_mom_maid,''-x'') THEN',
'    v_updated := v_updated||''"Mothers Maiden Name" '';',
'  END IF;',
'  IF (:SS_COMPANY_CODE = ''46'' OR :SS_COMPANY_CODE = ''55'' OR :SS_COMPANY_CODE = ''56'') THEN',
'	  IF NVL(v_row.full_name,''-x'') <> NVL(:P20_first_name||'' ''||:P20_mid_name||'' ''||:P20_surname,''-x'') THEN',
'		v_updated := v_updated||''"Full Name" '';',
'	  END IF;',
'  ELSE',
'	  IF NVL(v_row.full_name,''-x'') <> NVL(:P20_surname||'' ''||:P20_first_name||'' ''||:P20_mid_name,''-x'') THEN',
'		v_updated := v_updated||''"Full Name" '';',
'	  END IF;',
'  END IF;',
'  IF NVL(v_row.attribute29,''-x'') <> NVL(:P20_POB,''-x'') THEN',
'    v_updated := v_updated||''"Place of Birth" ''; --   attribute3 ',
'  END IF;',
'   IF NVL(v_row.attribute3,''-x'') <> NVL(:P20_RELIGION,''-x'') THEN',
'    v_updated := v_updated||''"Religion" ''; --    ',
'  END IF;',
'  --',
'  v_updated := REPLACE(REPLACE(TRIM(v_updated),''" '',''", ''),''"'','''');',
'  IF v_updated IS NOT NULL THEN',
'  /*  v_row.last_name := :P20_surname;',
'    v_row.first_name := :P20_first_name;',
'    v_row.sex := :P20_sex;',
'    v_row.marital_status := :P20_mar_stat;',
'    v_row.middle_name := :P20_mid_name;',
'    v_row.birth_date := :P20_dob;',
'    v_row.title := :P20_title;',
'    v_row.full_name := :P20_surname||'' ''||:P20_first_name||'' ''||:P20_mid_name;',
'    v_row.state_of_origin := :P20_state;',
'    v_row.local_govt_area := :P20_loc_gov;',
'    v_row.mothers_maiden_name := :P20_mom_maid;',
'    v_row.nationality := :P20_nation;',
'    v_row.ins_by := :app_user;',
'    v_row.ins_time := v_date;',
'    v_row.effective_start_date := '''';--TRUNC(v_date);',
'    v_row.person_id := :P20_staff_id;',
'    v_row.genotype := :P20_gen;',
'    v_row.blood_group :=  :P20_b_grp;',
'    v_row.national_id := :P20_nat_id;',
'    v_row.other_id := :P20_oth_id;',
'    v_row.updated_columns := v_updated;',
'    v_row.attribute29 := :P20_pob;*/',
'    -- --',
'    -- insert into XXSBS_TEST(A)VALUES(3);',
'  insert into xxhrms.XXHRMS_PEOPLE_F_UPDATE(PERSON_ID,  VACANCY_NO,LAST_NAME,	FIRST_NAME,	MIDDLE_NAME	,TITLE,	FULL_NAME,	',
'                                            NATIONALITY	,LOCAL_GOVT_AREA,',
'                                            STATE_OF_ORIGIN,POSTAL_ADDRESS,EMAIL,TELEPHONE1,	',
'                                            TELEPHONE2,	RESIDENCE_ADDRESS,	BIRTH_DATE,	SEX	,',
'                                            MARITAL_STATUS,	NO_OF_CHILDREN,	HOBBIES,CV,	CONTINENT,',
'                                            ACCEPTANCE_FLAG,	INS_TIME,	INS_BY,	UPDATED_TIME,	',
'                                            UPDATED_BY,	COMPANY_CODE,	EMPLOYMENT_STATUS,	',
'                                            MOTHERS_MAIDEN_NAME	,ATTRIBUTE_CATEGORY,',
'                                            ATTRIBUTE1,	ATTRIBUTE2,	ATTRIBUTE3,	ATTRIBUTE4,',
'                                            ATTRIBUTE5,	ATTRIBUTE6,	ATTRIBUTE7,	ATTRIBUTE8,	',
'                                            ATTRIBUTE9,	ATTRIBUTE10,	ATTRIBUTE11,	ATTRIBUTE12	,',
'                                            ATTRIBUTE13,	ATTRIBUTE14,	ATTRIBUTE15,	ATTRIBUTE16,',
'                                            ATTRIBUTE17,	ATTRIBUTE18,	ATTRIBUTE19,	ATTRIBUTE20,',
'                                            ATTRIBUTE21,	ATTRIBUTE22,	ATTRIBUTE23,	ATTRIBUTE24,',
'                                            ATTRIBUTE25	,ATTRIBUTE26,	ATTRIBUTE27,	ATTRIBUTE28,	',
'                                            ATTRIBUTE29,	ATTRIBUTE30,	EFFECTIVE_START_DATE,',
'                                            EFFECTIVE_END_DATE,	UPDATED_COLUMNS,	LATEST_START_DATE,',
'                                            EMAIL2,	RESIDENCE_CITY,	RESIDENCE_STATE,	RESIDENCE_COUNTRY,',
'                                            GENOTYPE,	BLOOD_GROUP,	NATIONAL_ID,	OTHER_ID,',
'                                            OBJECT_VERSION_NUMBER, REQUEST_ID',
'									)',
'  Select  PERSON_ID,  VACANCY_NO,LAST_NAME,	FIRST_NAME,	MIDDLE_NAME	,TITLE,	FULL_NAME,	',
'                                            NATIONALITY	,LOCAL_GOVT_AREA,',
'                                            STATE_OF_ORIGIN,POSTAL_ADDRESS,EMAIL,TELEPHONE1,	',
'                                            TELEPHONE2,	RESIDENCE_ADDRESS,	BIRTH_DATE,	SEX	,',
'                                            MARITAL_STATUS,	NO_OF_CHILDREN,	HOBBIES,CV,	CONTINENT,',
'                                            ACCEPTANCE_FLAG,	INS_TIME,	INS_BY,	UPDATED_TIME,	',
'                                            UPDATED_BY,	COMPANY_CODE,	EMPLOYMENT_STATUS,	',
'                                            MOTHERS_MAIDEN_NAME	,ATTRIBUTE_CATEGORY,',
'                                            ATTRIBUTE1,	ATTRIBUTE2,	ATTRIBUTE3,	ATTRIBUTE4,',
'                                            ATTRIBUTE5,	ATTRIBUTE6,	ATTRIBUTE7,	ATTRIBUTE8,	',
'                                            ATTRIBUTE9,	ATTRIBUTE10,	ATTRIBUTE11,	ATTRIBUTE12	,',
'                                            ATTRIBUTE13,	ATTRIBUTE14,	ATTRIBUTE15,	ATTRIBUTE16,',
'                                            ATTRIBUTE17,	ATTRIBUTE18,	ATTRIBUTE19,	ATTRIBUTE20,',
'                                            ATTRIBUTE21,	ATTRIBUTE22,	ATTRIBUTE23,	ATTRIBUTE24,',
'                                            ATTRIBUTE25	,ATTRIBUTE26,	ATTRIBUTE27,	ATTRIBUTE28,	',
'                                            ATTRIBUTE29,	ATTRIBUTE30,	EFFECTIVE_START_DATE,',
'                                            EFFECTIVE_END_DATE,	UPDATED_COLUMNS,	LATEST_START_DATE,',
'                                            EMAIL2,	RESIDENCE_CITY,	RESIDENCE_STATE,	RESIDENCE_COUNTRY,',
'                                            GENOTYPE,	BLOOD_GROUP,	NATIONAL_ID,	OTHER_ID,',
'                                            OBJECT_VERSION_NUMBER,p_id',
'  FROM xxhrms.xxhrms_people_f',
'     WHERE person_id = :P20_staff_id',
'      AND TRUNC(sysdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, sysdate)',
'      ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'	  ',
'    --   insert into XXSBS_TEST(A)VALUES(4);',
'',
'	IF (:SS_COMPANY_CODE = ''46'' OR :SS_COMPANY_CODE = ''55'' OR :SS_COMPANY_CODE = ''56'') THEN',
'		v_fullname := :P20_first_name||'' ''||:P20_mid_name||'' ''||:P20_surname;',
'	ELSE',
'    	v_fullname := :P20_surname||'' ''||:P20_first_name||'' ''||:P20_mid_name;',
'	END IF;',
'	 ',
'    --  insert into XXSBS_TEST(A)VALUES(5);',
'',
'	  update XXHRMS.XXHRMS_PEOPLE_F_UPDATE',
'	  Set   last_name = :P20_surname,',
'			first_name = :P20_first_name,',
'			sex        = :P20_sex,',
'			marital_status = :P20_mar_stat,',
'			middle_name = :P20_mid_name,',
'			birth_date = :P20_dob,',
'			title		= :P20_title,',
'			full_name = v_fullname,',
'			state_of_origin = :P20_state,',
'			local_govt_area = :P20_loc_gov,',
'			mothers_maiden_name = :P20_mom_maid,',
'			nationality = :P20_nation,',
'			ins_by = :APP_USER,',
'			ins_time = sysdate,',
'			genotype = :P20_gen,',
'			blood_group = :P20_b_grp,',
'			national_id = :P20_nat_id,',
'			other_id   = :P20_oth_id,',
'			updated_columns = v_updated,',
'			attribute29  = :P20_pob,',
'			effective_start_date = v_date,',
'            REQUEST_ID = p_id,',
'            attribute3 = :P20_RELIGION',
'	 Where  person_id = :P20_staff_id',
'             and REQUEST_ID = p_id;',
'					',
'			-- 		----',
'            -- insert into XXSBS_TEST(A)VALUES(6);                          ',
'    for i in (select levels,supervisor',
'            from xxhrms.xxhrms_approval_path_v',
'              order by 1)',
'     loop',
'',
'    --  insert into XXSBS_TEST(A)VALUES(7);',
'          INSERT INTO xxhrms.XXHRMS_APPROVAL_TAB (TRANS_TYPE,TRANS_ID,APR_LVL,APR_ID,STATUS)',
'          VALUES (''EMP_APPROVAL'',p_id,i.levels,i.supervisor,''PENDING'');',
'   End loop;',
'  commit;           ',
'--   insert into XXSBS_TEST(A)VALUES(8); ',
'  -------Send Mail',
'           XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''EMP_APPROVAL'',',
'                                                 pTRANS_ID => p_id,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => NULL',
'                                                );',
'       XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''EMP_APPROVAL'',',
'                                                 pTRANS_ID => p_id,',
'                                                 pNOTETPYE => ''NEW'',',
'                                                 pCOMMENT => NULL',
'                                                ); ',
'    --',
'  END IF;',
'  --',
'  commit;',
'  exception when others then',
'  raise_application_error(-20001,''Error-''||sqlerrm);',
'  rollback;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31711717135020669)
,p_process_success_message=>'Change submitted for Approval'
,p_internal_uid=>31774663364167917
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31774712463167918)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save_Contact'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE xxhrms_people_f',
'     SET email = :P20_OFF_EML,',
'         telephone2 = :P20_OFF_PHN,',
'         email2 = :P20_PER_EML,',
'         telephone1= :P20_PER_PHN,',
'         residence_address = :P20_STR_ADR,',
'         residence_country = :P20_CTR,',
'         residence_state = :P20_CNT_STA,',
'         residence_city = :P20_CNT_CTY,',
'         updated_time = sysdate,',
'         updated_by = :APP_USER',
'   WHERE person_id = :P20_STAFF_ID',
'     AND TRUNC(SYSDATE) BETWEEN TRUNC(effective_start_date) AND  TRUNC(NVL(effective_end_date,SYSDATE));',
'  --',
'  UPDATE xxhrms_emergency_contact',
'     SET address = :P20_EM_ADR,',
'         city = :P20_EM_CTY,',
'         country = :P20_EM_CTR,',
'         fullname = :P20_EM_NAME,',
'         mobile_no = :P20_EM_PHN,',
'         state =  :P20_EM_STA,',
'         relationship = :P20_REL,',
'         updated_time = sysdate,',
'         updated_by = :APP_USER',
'   WHERE person_id = :P20_STAFF_ID;',
'  IF SQL%NOTFOUND THEN',
'    INSERT INTO xxhrms_emergency_contact(person_id, address, city, country, ',
'        fullname, mobile_no, state, effective_start_date, ins_time, ins_by, relationship)',
'      VALUES(:P20_STAFF_ID, :P20_EM_ADR, :P20_EM_CTY, :P20_EM_CTR, :P20_EM_NAME, ',
'        :P20_EM_PHN, :P20_EM_STA, SYSDATE, SYSDATE, :APP_USER, :P20_REL);',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31720485164026157)
,p_process_success_message=>'Action Processed'
,p_internal_uid=>31774712463167918
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69363441245619616)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update assignment AP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'  v_cols VARCHAR2(2000);',
'  v_date date := trunc(sysdate);',
'  v_ann_sal NUMBER;',
'  v_mth_sal NUMBER;',
'  p_id number := 0;',
'  --v_grade xxhrms_grades.id%type;',
'--  v_gradestep xxhrms_grade_step.grade_step%type;',
'  --',
'  v_assign xxhrms.xxhrms_assignments_f%ROWTYPE; ',
'  V_CNT NUMBER;',
'																													   ',
'  --',
'  CURSOR c_assign IS',
'    SELECT *',
'      FROM xxhrms.xxhrms_assignments_f',
'     WHERE person_id = :P20_STAFF_ID',
'     and company_code = :SS_COMPANY_CODE',
'     AND trunc(sysdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, trunc(sysdate))',
'      ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'BEGIN',
'',
'  OPEN c_assign;',
'  FETCH c_assign INTO v_assign;',
'  CLOSE c_assign;',
'   --v_ann_sal := to_number(:P93_ANN_BASIC_SAL,''999,999,999,990.00'');',
'  -- v_mth_sal := to_number(:P93_MONTHLY_BASIC_SALARY,''999,999,999,990.00'');',
' --v_ann_sal := :P93_ANN_BASIC_SAL;',
' --v_mth_sal := :P93_MONTHLY_BASIC_SALARY;',
'  --',
'  --:P93_sal_msg := ''No changes were made'';',
'  --',
'   select nvl(max(REQUEST_ID),0) + 1 into p_id  from xxhrms.XXHRMS_ASSIGNMENTS_UPDATE;',
'',
'  --',
'  ',
'  IF NVL(:P20_TAX_PAYER_ID,''-11'') <> NVL(v_assign.tax_id,''-11'') THEN',
'    v_cols:= v_cols||''"Tax ID" '';',
'  END IF;',
'  IF NVL(:P20_TAX_STATE,''-11'') <> NVL(v_assign.ssn,''-11'') THEN',
'    v_cols:= v_cols||''"State of Residency" '';',
'  END IF;',
'  IF NVL(:P20_PFA_NAME,''-11'') <> NVL(v_assign.PFA_ADMINS,''-11'') THEN',
'    v_cols:= v_cols||''"PFA Name" '';',
'  END IF;',
'  IF NVL(:P20_PFA_NUMBER,''-11'') <> NVL(v_assign.PIN_NO,''-11'') THEN',
'    v_cols:= v_cols||''"PFA Number " '';',
'  END IF;',
'    IF NVL(:P20_BVN,''-11'') <> NVL(v_assign.attribute3,''-11'') THEN',
'    v_cols:= v_cols||''"BVN " '';',
'  END IF;',
' ',
'  --',
'  v_cols := REPLACE(REPLACE(TRIM(v_cols),''" '',''", ''),''"'','''');',
'  --',
'  IF v_cols IS NOT NULL THEN',
'    --',
'	APEX_UTIL.set_session_state(',
'       p_name  => ''AP_AUTH_STAFF''',
'     , p_value => :AP_STAFF_ID);',
'	APEX_UTIL.set_session_state(',
'       p_name  => ''AP_AUTH_TYPE''',
'     , p_value => ''ASSGNMT_APRVL'');',
'	 ',
'',
'	',
'	SELECT COUNT(1) INTO V_CNT',
'	FROM (select levels,supervisor from xxhrms.xxhrms_approval_path_v);',
'	',
'	IF V_CNT = 0 THEN',
'	RAISE_APPLICATION_ERROR(-20007,''No approval setup found'');',
'	END IF;',
'	--',
'    ',
'    v_assign.ins_by                := :APP_USER;',
'    v_assign.ins_time              := SYSDATE;',
'    v_assign.updated_columns       := v_cols; ',
'    v_assign.effective_start_date  := TRUNC(v_date);',
'    v_assign.tax_id := :P20_TAX_PAYER_ID;',
'    v_assign.ssn := :P20_TAX_STATE;',
'    v_assign.pfa_admins := :P20_PFA_NAME;',
'    v_assign.pin_no := :P20_PFA_NUMBER;',
'   v_assign.attribute3 := :P20_BVN;',
'    v_assign.updated_time := null;',
'    v_assign.updated_by := null;',
'',
'   ',
'    INSERT INTO xxhrms.XXHRMS_ASSIGNMENTS_UPDATE(PERSON_ID, ',
'													STAFF_ID, ',
'													JOB_ID, ',
'													GRADE, ',
'													STAFF_CATEGORY, ',
'													DEPT_CODE, ',
'													DEPT_LOCATION, ',
'													ASSIGNMENT_STATUS, ',
'													EMP_TYPE, ',
'													SSN,  ',
'													BANK_NAME,',
'													ACC_NO, ',
'													SUPERVISOR, ',
'													EMP_DUTIES,',
'													EFFECTIVE_START_DATE, ',
'													EFFECTIVE_END_DATE, ',
'												 	HIRE_DATE,',
'													PROBATION, ',
'													PROBATION_DATE,',
'													ANNUAL_SAL, ',
'													FULLNAME,',
'													PAID_SALARY, ',
'													GRADE_STEP,',
'													JOBLEVEL, ',
'													POSITION,',
'													INS_TIME, ',
'													INS_BY, ',
'													UPDATED_TIME, ',
'													UPDATED_BY, ',
'													COMPANY_CODE, ',
'													PROBATION_END_DATE,',
'													PFA_ADMINS, ',
'													PIN_NO, ',
'													TAX_ID, ',
'													UPDATED_COLUMNS, ',
'													ATTRIBUTE3, ',
'													ATTRIBUTE4, ',
'													ATTRIBUTE6, ',
'													ATTRIBUTE7, ',
'													ATTRIBUTE8, ',
'													ATTRIBUTE9, ',
'													SUB_ORGANIZATION_CODE,',
'													REQUEST_ID,',
'                                                ATTRIBUTE11,ATTRIBUTE12,ATTRIBUTE13,ATTRIBUTE14,ATTRIBUTE15,ATTRIBUTE16,ATTRIBUTE17,ATTRIBUTE18,ATTRIBUTE19,ATTRIBUTE20,',
'                                                ATTRIBUTE21,ATTRIBUTE22,ATTRIBUTE23,ATTRIBUTE24,ATTRIBUTE25,ATTRIBUTE26,ATTRIBUTE27,ATTRIBUTE28,ATTRIBUTE29,ATTRIBUTE30)',
'	 VALUES( ',
'	 												v_assign.PERSON_ID, ',
'													v_assign.STAFF_ID, ',
'													v_assign.JOB_ID, ',
'													v_assign.GRADE, ',
'													v_assign.STAFF_CATEGORY, ',
'													v_assign.DEPT_CODE, ',
'													v_assign.DEPT_LOCATION, ',
'													v_assign.ASSIGNMENT_STATUS, ',
'													v_assign.EMP_TYPE, ',
'													v_assign.SSN,  ',
'													v_assign.BANK_NAME,',
'													v_assign.ACC_NO, ',
'													v_assign.SUPERVISOR, ',
'													v_assign.EMP_DUTIES,',
'													v_assign.EFFECTIVE_START_DATE, ',
'													v_assign.EFFECTIVE_END_DATE,',
'		 											v_assign.HIRE_DATE,',
'													v_assign.PROBATION, ',
'													v_assign.PROBATION_DATE,',
'													v_assign.ANNUAL_SAL, ',
'													v_assign.FULLNAME,',
'													v_assign.PAID_SALARY, ',
'													v_assign.GRADE_STEP,',
'													v_assign.JOBLEVEL, ',
'													v_assign.POSITION,',
'													v_assign.INS_TIME, ',
'													v_assign.INS_BY, ',
'													v_assign.UPDATED_TIME, ',
'													v_assign.UPDATED_BY, ',
'													:SS_COMPANY_CODE, ',
'													v_assign.PROBATION_END_DATE,',
'													v_assign.PFA_ADMINS, ',
'													v_assign.PIN_NO, ',
'													v_assign.TAX_ID, ',
'													v_cols, ',
'													v_assign.ATTRIBUTE3, ',
'													v_assign.ATTRIBUTE4, ',
'													v_assign.ATTRIBUTE6, ',
'													v_assign.ATTRIBUTE7, ',
'													v_assign.ATTRIBUTE8, ',
'													v_assign.ATTRIBUTE9, ',
'													v_assign.SUB_ORGANIZATION_CODE,',
'													p_id,',
'                                                v_assign.ATTRIBUTE11,v_assign.ATTRIBUTE12,v_assign.ATTRIBUTE13,v_assign.ATTRIBUTE14,v_assign.ATTRIBUTE15,v_assign.ATTRIBUTE16,v_assign.ATTRIBUTE17,v_assign.ATTRIBUTE18,v_assign.ATTRIBUTE19,v_assign.ATTR'
||'IBUTE20,',
'                                                v_assign.ATTRIBUTE21,v_assign.ATTRIBUTE22,v_assign.ATTRIBUTE23,v_assign.ATTRIBUTE24,v_assign.ATTRIBUTE25,v_assign.ATTRIBUTE26,v_assign.ATTRIBUTE27,v_assign.ATTRIBUTE28,v_assign.ATTRIBUTE29,v_assign.ATTR'
||'IBUTE30);',
'    --',
' 	',
'	---',
'	for i in (select levels,supervisor',
'            from xxhrms.xxhrms_approval_path_v',
'              order by 1)',
'     loop',
'          INSERT INTO xxhrms.XXHRMS_APPROVAL_TAB (TRANS_TYPE,TRANS_ID,APR_LVL,APR_ID,STATUS)',
'          VALUES (''ASSGNMT_APRVL'',p_id,i.levels,i.supervisor,''PENDING'');',
'   End loop;',
'',
'    COMMIT;',
'    --    ',
'',
'  -------Send Mail',
'           XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''ASSGNMT_APRVL'',',
'                                                 pTRANS_ID => p_id,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => NULL',
'                                                );',
'       XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''REQUESTER'',',
'                                                 pTRANS_ID => p_id,',
'                                                 pNOTETPYE => ''NEW'',',
'                                                 pCOMMENT => NULL',
'                                                ); ',
'   ------',
'    COMMIT;',
'ELSE',
'	RAISE_APPLICATION_ERROR(-20005, ''No Change Detected'');',
'END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69362952818619611)
,p_process_success_message=>'Update Submitted for Approval'
,p_internal_uid=>69363441245619616
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69364025617619622)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'  v_cols VARCHAR2(2000);',
'  v_date date := trunc(sysdate);',
'  v_eff_date date :=trunc(sysdate);',
'  p_validate boolean := FALSE;',
'  p_datetrack_update_mode varchar2(50);',
'  p_effective_start_date  date := trunc(sysdate);',
'  p_effective_end_date    date;',
'  --v_grade xxhrms_grades.id%type;',
'--  v_gradestep xxhrms_grade_step.grade_step%type;',
'  --',
'  v_row_assign xxhrms.xxhrms_assignments_f%ROWTYPE; ',
'  V_CNT NUMBER;',
'																													   ',
'  --',
'  CURSOR c_assign IS',
'    SELECT *',
'      FROM xxhrms.xxhrms_assignments_f',
'     WHERE person_id = :P20_STAFF_ID',
'     and company_code = :SS_COMPANY_CODE',
'     AND trunc(sysdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, trunc(sysdate))',
'      ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'BEGIN',
'',
'  OPEN c_assign;',
'  FETCH c_assign INTO v_row_assign;',
'  CLOSE c_assign;',
'',
'  --',
'  ',
'  IF NVL(:P20_TAX_PAYER_ID,''-11'') <> NVL(v_row_assign.tax_id,''-11'') THEN',
'    v_cols:= v_cols||''"Tax ID" '';',
'  END IF;',
'  IF NVL(:P20_TAX_STATE,''-11'') <> NVL(v_row_assign.ssn,''-11'') THEN',
'    v_cols:= v_cols||''"State of Residency" '';',
'  END IF;',
'  IF NVL(:P20_PFA_NAME,''-11'') <> NVL(v_row_assign.PFA_ADMINS,''-11'') THEN',
'    v_cols:= v_cols||''"PFA Name" '';',
'  END IF;',
'  IF NVL(:P20_PFA_NUMBER,''-11'') <> NVL(v_row_assign.PIN_NO,''-11'') THEN',
'    v_cols:= v_cols||''"PFA Number " '';',
'  END IF;',
' ',
'  --',
'  v_cols := REPLACE(REPLACE(TRIM(v_cols),''" '',''", ''),''"'','''');',
'  --',
'  IF v_cols IS NOT NULL THEN',
'    --',
'    ',
'    v_row_assign.updated_columns       := v_cols; ',
'    v_row_assign.effective_start_date  := TRUNC(v_date);',
'    v_row_assign.tax_id := :P20_TAX_PAYER_ID;',
'    v_row_assign.ssn := :P20_TAX_STATE;',
'    v_row_assign.pfa_admins := :P20_PFA_NAME;',
'    v_row_assign.pin_no := :P20_PFA_NUMBER;',
'',
'    INSERT INTO xxhrms.XXHRMS_ASSIGNMENTS_ARCHIVE',
'    SELECT * FROM xxhrms.XXHRMS_ASSIGNMENTS_F',
'     WHERE person_id = :P20_STAFF_ID',
'     and company_code=:SS_COMPANY_CODE',
'     AND TRUNC(SYSDATE) between TRUNC(effective_start_date) AND NVL(effective_end_date, TRUNC(SYSDATE));',
'        ----get date track mode',
'		p_datetrack_update_mode := xxhrms.xxhrms_assignment_api.fn_is_update_or_ins(x_effective_date => v_eff_date,',
'                                                                       x_person_id => :P20_STAFF_ID);',
'        -- Call the update assignment procedure',
'      xxhrms.xxhrms_assignment_api.update_rec(p_person_id => :P20_STAFF_ID,',
'                                           p_staff_id => v_row_assign.staff_id,',
'                                           p_job_id => v_row_assign.job_id,',
'                                           p_grade => v_row_assign.grade,',
'                                           p_staff_category => v_row_assign.staff_category,',
'                                           p_dept_code => v_row_assign.dept_code,',
'                                           p_dept_location => v_row_assign.dept_location,',
'                                           p_assignment_status => v_row_assign.assignment_status,',
'                                           p_emp_type => v_row_assign.emp_type,',
'                                           p_ssn => v_row_assign.ssn,',
'                                           p_payment_type => v_row_assign.payment_type,',
'                                           p_bank_name => v_row_assign.bank_name,',
'                                           p_bank_branch => v_row_assign.bank_branch,',
'                                           p_acc_type => v_row_assign.acc_type,',
'                                           p_acc_no => v_row_assign.acc_no,',
'                                           p_supervisor => v_row_assign.supervisor,',
'                                           p_emp_duties => v_row_assign.emp_duties,',
'                                           p_hire_date => v_row_assign.hire_date,',
'                                           p_effective_start_date => p_effective_start_date,',
'                                           p_effective_end_date => p_effective_end_date,',
'                                           p_absence_type => v_row_assign.absence_type,',
'                                           p_probation => v_row_assign.probation,',
'                                           p_probation_date => v_row_assign.probation_date,',
'                                           p_currency => v_row_assign.currency,',
'                                           p_annual_sal => v_row_assign.annual_sal,',
'                                           p_fullname => v_row_assign.fullname,',
'                                           p_p_mode => v_row_assign.p_mode,',
'                                           p_paid_salary => v_row_assign.paid_salary,',
'                                           p_grade_step => v_row_assign.grade_step,',
'                                           p_absence_id => v_row_assign.absence_id,',
'                                           p_joblevel => v_row_assign.joblevel,',
'                                           p_position => v_row_assign.position,',
'                                           p_ssf_contributer => v_row_assign.ssf_contributer,',
'                                           p_ins_time => v_row_assign.ins_time,',
'                                           p_ins_by => v_row_assign.ins_by,',
'                                           p_updated_time => SYSDATE,',
'                                           p_updated_by => :APP_USER,',
'                                           p_company_code => v_row_assign.company_code,',
'                                           p_probation_end_date => v_row_assign.probation_end_date,',
'                                           p_tax_payer => v_row_assign.tax_payer,',
'                                           p_project_no => v_row_assign.project_no,',
'                                           p_pfa_admins => v_row_assign.pfa_admins,',
'                                           p_pin_no => v_row_assign.pin_no,',
'                                           p_tax_id => v_row_assign.tax_id,',
'                                           p_updated_columns => v_row_assign.updated_columns,',
'                                           p_trans_type => v_row_assign.trans_type,',
'                                           p_version_number => v_row_assign.version_number,',
'                                           p_start_date => v_row_assign.start_date,',
'                                           p_attribute_category => v_row_assign.attribute_category,',
'                                           p_attribute1 => v_row_assign.attribute1,',
'                                           p_attribute2 => v_row_assign.attribute2,',
'                                           p_attribute3 => v_row_assign.attribute3,',
'                                           p_attribute4 => v_row_assign.attribute4,',
'                                           p_attribute5 => v_row_assign.attribute5,',
'                                           p_attribute6 => v_row_assign.attribute6,',
'                                           p_attribute7 => v_row_assign.attribute7,',
'                                           p_attribute8 => v_row_assign.attribute8,',
'                                           p_attribute9 => v_row_assign.attribute9,',
'                                           p_attribute10 => v_row_assign.attribute10,',
'                                           p_attribute11 => v_row_assign.attribute11,',
'                                           p_attribute12 => v_row_assign.attribute12,',
'                                           p_attribute13 => v_row_assign.attribute13,',
'                                           p_attribute14 => v_row_assign.attribute14,',
'                                           p_attribute15 => v_row_assign.attribute15,',
'                                           p_attribute16 => v_row_assign.attribute16,',
'                                           p_attribute17 => v_row_assign.attribute17,',
'                                           p_attribute18 => v_row_assign.attribute18,',
'                                           p_attribute19 => v_row_assign.attribute19,',
'                                           p_attribute20 => v_row_assign.attribute20,',
'                                           p_sub_organization_code => v_row_assign.sub_organization_code,',
'                                           p_attribute21 => v_row_assign.attribute21,',
'                                           p_attribute22 => v_row_assign.attribute22,',
'                                           p_attribute23 => v_row_assign.attribute23,',
'                                           p_attribute24 => v_row_assign.attribute24,',
'                                           p_attribute25 => v_row_assign.attribute25,',
'                                           p_attribute26 => v_row_assign.attribute26,',
'                                           p_attribute27 => v_row_assign.attribute27,',
'                                           p_attribute28 => v_row_assign.attribute28,',
'                                           p_attribute29 => v_row_assign.attribute29,',
'                                           p_attribute30 => v_row_assign.attribute30,',
'                                           p_object_version_number => v_row_assign.object_version_number,',
'                                           p_effective_date => v_eff_date,',
'                                           p_datetrack_mode => p_datetrack_update_mode,',
'                                           p_validate => p_validate,',
'                                           p_last_promotion_date  =>  v_row_assign.last_promotion_date);',
'      ',
'  END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69363972167619621)
,p_process_success_message=>'Action Processed'
,p_internal_uid=>69364025617619622
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31269864445574767)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Personal_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_emp IS',
'  SELECT last_name, sex, first_name, marital_status, middle_name, birth_date, ',
'   title, nationality, state_of_origin, local_govt_area, mothers_maiden_name, genotype, blood_group, NATIONAL_ID, other_id,',
'  -- effective_start_date, effective_end_Date,',
'  attribute29,attribute3 , employment_status',
'  --,object_version_number,attribute10,attribute11,attribute12,attribute13,attribute14,attribute15,attribute16,',
'   --attribute17,attribute18,attribute19,attribute20,attribute21,attribute22,attribute23,attribute24,attribute25,attribute26,attribute27,attribute28',
'  FROM xxhrms.xxhrms_people_f',
'  WHERE person_id = :AP_STAFF_ID    ',
'  and company_code=:AP_COMPANY_CODE',
'     AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'  ORDER BY NVL(TRUNC(effective_start_date) ,''01-JAN-1990'') desc, NVL(ins_time,''01-JAN-1990'') DESC  ;',
'BEGIN',
'  OPEN c_emp;',
'  FETCH c_emp INTO :P20_SURNAME, :P20_SEX, :P20_FIRST_NAME, :P20_MAR_STAT,  ',
'  :P20_MID_NAME, :P20_DOB, :P20_TITLE, :P20_NATION, :P20_STATE, :P20_LOC_GOV, :P20_MOM_MAID, ',
'  :P20_GEN, :P20_B_GRP, :P20_NAT_ID, :P20_OTH_ID,--:P20_PER_START,:P20_per_END,',
'  :P20_POB, :P20_RELIGION,:P20_STATUS',
'  --, :P20_EMP_VER_ID,:P20_ATTRIBUTE10,:P20_ATTRIBUTE11_1,:P20_ATTRIBUTE12_1,:P20_ATTRIBUTE13_1,:P20_ATTRIBUTE14_1,:P20_ATTRIBUTE15_1,:P20_ATTRIBUTE16_1,:P20_ATTRIBUTE17_1,',
'  --:P20_ATTRIBUTE18_1,:P20_ATTRIBUTE19_1,:P20_ATTRIBUTE20_1,:P20_ATTRIBUTE21_1,:P20_ATTRIBUTE22_1,:P20_ATTRIBUTE23_1,:P20_ATTRIBUTE24_1,:P20_ATTRIBUTE25_1,',
' -- :P20_ATTRIBUTE26_1,:P20_ATTRIBUTE27_1,:P20_ATTRIBUTE28_1',
'  ',
'  ;',
'  CLOSE c_emp;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31269864445574767
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31270115201578600)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Contact'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_contact IS',
'    SELECT email, telephone1, email2, telephone2, residence_address, residence_country, residence_state, residence_city--, to_char(ins_time,''dd-mon-yyyy hh:mi:ss'')--, effective_start_date',
'      FROM xxhrms_people_f',
'     WHERE person_id = :AP_STAFF_ID',
'     and company_code=:AP_COMPANY_CODE',
'       AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''));',
'--',
'  CURSOR c_emergency IS   ',
'   SELECT address, city, country, fullname, mobile_no, state, relationship  FROM xxhrms_emergency_contact',
'    WHERE person_id = :AP_STAFF_ID;',
'--',
'BEGIN',
'  OPEN c_contact;',
'  FETCH c_contact',
'   INTO :P20_OFF_EML, :P20_OFF_PHN, :P20_PER_EML, :P20_PER_PHN, :P20_STR_ADR, :P20_CTR, :P20_CNT_STA, :P20_CNT_CTY;--, :P20_INS_TIME;--,:P20_PER_START;',
'  CLOSE c_contact;',
'  --',
'  OPEN c_emergency;',
'  FETCH c_emergency ',
'   INTO :P20_EM_ADR, :P20_EM_CTY, :P20_EM_CTR, :P20_EM_NAME,    :P20_EM_PHN, :P20_EM_STA, :P20_REL;',
'  CLOSE c_emergency;',
'  --  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31270115201578600
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31270427512579889)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IdEmployee_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_emp IS',
'   SELECT aa.company_code, aa.dept_code, aa.dept_location, aa.emp_type, aa.hire_date, aa.job_id,aa.attribute1, bb.value_desc, aa.staff_category, ',
'    aa.staff_id, aa.sub_organization_code, aa.supervisor, aa.effective_start_date, aa.effective_start_date start1, aa.effective_end_date,',
'    aa.effective_end_date end1, aa.grade, aa.grade_step,aa.joblevel,aa.attribute6,aa.attribute5, attribute3,attribute4,aa.annual_sal, aa.annual_sal, aa.currency, aa.paid_salary, aa.paid_salary,',
'    aa.bank_name, aa.acc_no,',
'    aa.pfa_admins,aa.pin_no,aa.attribute8,aa.attribute9, aa.attribute7, dd.value_desc, aa.assignment_status,aa.tax_id,aa.ssn,aa.last_promotion_Date,',
'    aa.probation_date, aa.probation_end_date, aa.emp_duties, object_version_number, aa.annual_sal, aa.paid_salary,',
'    aa.attribute11, aa.attribute12, aa.attribute13, aa.attribute14,  aa.attribute15, aa.attribute16, aa.attribute17, aa.attribute18, aa.attribute19,',
'    aa.attribute20, aa.attribute21, aa.attribute22, aa.attribute23, aa.attribute24, aa.attribute25, aa.attribute26, aa.attribute27, aa.attribute28, aa.attribute29, aa.attribute30',
'  FROM xxhrms.xxhrms_assignments_f aa, xxhrms_lookup_job_title_v bb, xxhrms.xxhrms_lookup_salary_type_v dd,xxafis.xxafis_emp_softsuite xx',
'  WHERE aa.person_id = :AP_STAFF_ID',
'    AND aa.job_id = bb.value_code(+)',
'    AND aa.attribute7 = dd.value_code(+)',
'  AND aa.person_id = xx.employee_id(+)',
'   AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''));',
' -- ORDER BY nvl(effective_start_date,TO_DATE(''01-JAN-1990'')) desc, NVL(ins_time,TO_DATE(''01-JAN-1990'')) desc;',
'BEGIN',
'  OPEN c_emp;',
'  FETCH c_emp INTO',
'  :P20_org, :P20_dept, :P20_LOC, :P20_TYP, :P20_HR_DATE, :P20_TTL,:P20_POSITION,:P20_JOB_TITLE, ',
'  :P20_CAT,:P20_STAFF_ID, :P20_SUB_ORG, :P20_SUP, :P20_EMP_START, :P20_PER_START_1, :P20_EMP_END,:P20_PER_END_1, :P20_GRADE,:P20_GRADE_STEP,',
'  :P20_JOBLEVEL,:P20_SALARY_NAME, :P20_EMP_APR, :P20_BVN, :P20_INC_MONTH, :P20_ANN_BASIC_SAL, :P20_ANN_BAS_SAL, :P20_CURRENCY, :P20_MONTHLY_BASIC_SALARY,',
'  :P20_MONTHLY_BAS_SAL, :P20_BANK_NAME,:P20_ACCOUNT,:P20_PFA,:P20_PFA_ID,:P20_HMO,:P20_HMO_ACCT, :P20_SAL_TYPE, :P20_SAL_TP_DESC, :P20_STAT, ',
'  :P20_TAX_ID, :P20_TAX_STATE,:P20_PROM_DT, :P20_ST_PROB_DT, :P20_ED_PROB_DT, :P20_UNIT, :P20_ASS_VER_ID, :P20_ANN_BAS_SAL_1,:P20_MONTHLY_BAS_SAL_1,',
'  :P20_ATTRIBUTE11, :P20_ATTRIBUTE12, :P20_ATTRIBUTE13, :P20_ATTRIBUTE14, :P20_ATTRIBUTE15, :P20_ATTRIBUTE16, :P20_ATTRIBUTE17, :P20_ATTRIBUTE18, :P20_ATTRIBUTE19,',
'  :P20_ATTRIBUTE20, :P20_ATTRIBUTE21, :P20_ATTRIBUTE22, :P20_ATTRIBUTE23, :P20_ATTRIBUTE24, :P20_ATTRIBUTE25, :P20_ATTRIBUTE26, :P20_ATTRIBUTE27, :P20_ATTRIBUTE28, :P20_ATTRIBUTE29, :P20_ATTRIBUTE30',
'  ;',
'  CLOSE c_emp;',
'  :P20_SAL_INS_TIME := null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>31270427512579889
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39322094782030022)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get_Approval'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'SELECT xxadm.GET_PROFILE_OPTION(''PERSONAL_INFO'',:SS_COMPANY_CODE) ',
'into :P20_APPROVAL ',
'from dual;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>39322094782030022
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(303517519155927129)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get_Allow_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'SELECT xxadm.GET_PROFILE_OPTION(''SUBORG_LIMIT'',:SS_COMPANY_CODE) ',
'into :P20_ALLOW_UPDATE ',
'from dual;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>303517519155927129
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(303517791988927131)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get_SUBORG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'SELECT xxhrms.xxhrms_Get_suborg_code(:AP_STAFF_ID) ',
'into :P20_MDASUBORG ',
'from dual;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>303517791988927131
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(303518086877927134)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get_ALLOWED_ORG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cursor c_self is ',
'      select SELFSERVICE_CONTROL from xxhrms.XXHRMS_SUB_ORGANIZATION',
'      where code = :P20_MDASUBORG;',
'      ',
'Begin',
'   OPEN c_self;',
'   FETCH c_self into :P20_ALLOWED_SUBORG;',
'   CLOSE c_self;',
'   ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>303518086877927134
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8516109353500207)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Edms Integration'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select xxadm.get_profile_option(''EDMS_INTGRTN'',:AP_COMPANY_CODE)',
'   into :P20_GET_PRO_VAL',
'   from dual;',
'  End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8516109353500207
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69363550006619617)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'fecth_salary_info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' SELECT aa.tax_id,aa.ssn,aa.pfa_admins,aa.pin_no,aa.attribute3',
'	into :P20_TAX_PAYER_ID, :P20_TAX_STATE, :P20_PFA_NAME, :P20_PFA_NUMBER,:P20_BVN',
'  FROM xxhrms.xxhrms_assignments_f aa',
'  WHERE aa.person_id = :AP_STAFF_ID',
'  and aa.company_code=:SS_COMPANY_CODE',
'   AND TRUNC(SYSDATE) BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TRUNC(SYSDATE));',
'exception',
' when others then',
' null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69363550006619617
);
wwv_flow_imp.component_end;
end;
/
