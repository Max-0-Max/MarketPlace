prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Role Management'
,p_alias=>'AE201'
,p_step_title=>'Role Management'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(5413815154166670)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3518178127608033)
,p_plug_name=>'Role Management'
,p_icon_css_classes=>'fa-list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3528003422608049)
,p_name=>'Role Details'
,p_template=>wwv_flow_imp.id(5452712612166699)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_owner=>'XXADM'
,p_query_table=>'XXADM_ROLES_TAB'
,p_query_where=>'"ROLE_CODE" = :P10_ROLE_CODE'
,p_include_rowid_column=>false
,p_display_when_condition=>'P10_ROLE_CODE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(5469766923166712)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3528701761608051)
,p_query_column_id=>1
,p_column_alias=>'ROLE_CODE'
,p_column_display_sequence=>1
,p_column_heading=>'Role Code'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "ROLE_CODE" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3529185403608051)
,p_query_column_id=>2
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3529526166608052)
,p_query_column_id=>3
,p_column_alias=>'ROLE_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3529948161608052)
,p_query_column_id=>4
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "INS_BY" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3530354954608052)
,p_query_column_id=>5
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "INS_TIME" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3530739797608053)
,p_query_column_id=>6
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "UPDATED_BY" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3531193393608053)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "UPDATED_TIME" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3531563133608053)
,p_query_column_id=>8
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "COMPANY_CODE" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3531921883608054)
,p_query_column_id=>9
,p_column_alias=>'ORDER_NO'
,p_column_display_sequence=>9
,p_column_heading=>'Order No'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3532383542608054)
,p_query_column_id=>10
,p_column_alias=>'STATUS'
,p_column_display_sequence=>10
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3532777224608054)
,p_query_column_id=>11
,p_column_alias=>'EFFECTIVE_START_DATE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "EFFECTIVE_START_DATE" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3533176258608055)
,p_query_column_id=>12
,p_column_alias=>'EFFECTIVE_END_DATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "EFFECTIVE_END_DATE" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3533512559608055)
,p_query_column_id=>13
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXADM_ROLES_TAB"',
'where "ROLE_ID" is not null',
'and "ROLE_CODE" = :P10_ROLE_CODE'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3542891433608066)
,p_plug_name=>'Roles Tab'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.ROLE_CODE,',
'       x.MENU_CODE,',
'       x.MENU_ORDER,',
'       x.INS_BY,',
'       x.INS_TIME,',
'       x.UPDATED_BY,',
'       x.UPDATED_TIME,',
'       x.COMPANY_CODE,',
'       x.EFFECTIVE_START_DATE,',
'       x.EFFECTIVE_END_DATE,',
'       x.ID,',
'       X.app_id,',
'       x.status',
'from "XXADM_ROLES_MENU_TAB" x',
'WHERE  "ROLE_CODE" = :P10_ROLE_CODE',
'and MENU_CODE != ''GLOBAL''',
' ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P10_ROLE_CODE'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P10_SEEDED'
,p_plug_read_only_when2=>'0'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3437402401791236)
,p_name=>'ROLE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_CODE'
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
,p_default_expression=>'P10_ROLE_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3437539930791237)
,p_name=>'MENU_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MENU_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Menu Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select menu_name, menu_code',
'  from XXADM.XXADM_MENU_TAB',
' where APP_ID = :APP_ID',
' AND SEEDED = 0',
' and exists(select 1 from xxadm.xxadm_partner_apps where application_id = APP_ID and enabled_flag = ''Y'')',
' UNION ALL',
' select menu_name, menu_code',
'  from XXADM.XXADM_MENU_TAB',
' where APP_ID = :APP_ID',
' AND SEEDED = 1',
' AND COMPANY_CODE = :AP_COMPANY_CODE',
' and exists(select 1 from xxadm.xxadm_partner_apps where application_id = APP_ID and enabled_flag = ''Y'')',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'APP_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3437678154791238)
,p_name=>'MENU_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MENU_ORDER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Menu Order'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(3437749511791239)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(3437826263791240)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(3437927264791241)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(3438050259791242)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(3438106707791243)
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3438262670791244)
,p_name=>'EFFECTIVE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(3438348114791245)
,p_name=>'EFFECTIVE_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_END_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(3438450196791246)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P10_SEEDED'
,p_display_condition2=>'1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3438538983791247)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P10_SEEDED'
,p_display_condition2=>'1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3438750983791249)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3438843525791250)
,p_name=>'APP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Application'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICATION_NAME as d, APPLICATION_ID r',
'from xxadm.xxadm_partner_apps',
'WHERE ENABLED_FLAG = ''Y''',
'and company_code = :AP_COMPANY_CODE'))
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
 p_id=>wwv_flow_imp.id(3709761239441901)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Disabled',
  'off_value', 'INACTIVE',
  'on_label', 'Enabled',
  'on_value', 'ACTIVE',
  'use_defaults', 'N')).to_clob
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3437305296791235)
,p_internal_uid=>3437305296791235
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
 p_id=>wwv_flow_imp.id(3599331974052156)
,p_interactive_grid_id=>wwv_flow_imp.id(3437305296791235)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3599425931052157)
,p_report_id=>wwv_flow_imp.id(3599331974052156)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3599951654052158)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3437402401791236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3600451211052160)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3437539930791237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3600938203052162)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3437678154791238)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3601437059052165)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3437749511791239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3601907587052167)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3437826263791240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3602458252052169)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3437927264791241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3602989756052171)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3438050259791242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603479659052173)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3438106707791243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3603905155052175)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3438262670791244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3604411822052177)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3438348114791245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3605693269054146)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3438450196791246)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3612772126119629)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3438750983791249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3618990407154623)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3438843525791250)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3716269202470971)
,p_view_id=>wwv_flow_imp.id(3599425931052157)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3709761239441901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38085734524357828)
,p_plug_name=>'Reports'
,p_parent_plug_id=>wwv_flow_imp.id(3542891433608066)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.LIST_NAME d, a.ID r from XXADM.XXADM_APP_LIST a, xxadm.XXADM_ROLES_MENU_TAB b, xxadm.XXADM_PARTNER_APPS  c',
'where b.app_id = c.APPLICATION_ID',
'and a.APPLICATION_ID = c.APEX_APP_ID',
'and b.ROLE_CODE = :P10_ROLE_CODE',
'and a.status = ''ACTIVE''',
'and b.status = ''ACTIVE'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3563903793608088)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>60
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P10_ROLE_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4485434445071806)
,p_plug_name=>'Role List'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select ROLE_CODE,',
'       ROLE_NAME,',
'       ROLE_DESC,',
'       ROLE_ID,',
'       SEEDED,',
'       ROLE_CODE||ROLE_NAME||ROLE_DESC SEARCH',
'  from XXADM_ROLES_TAB',
'  WHERE SEEDED = 0',
'  and ROLE_CODE != ''GLOBAL''',
'  UNION ALL*/',
'  select ROLE_CODE,',
'       ROLE_NAME,',
'       ROLE_DESC,',
'       ROLE_ID,',
'       SEEDED,',
'       ROLE_CODE||ROLE_NAME||ROLE_DESC SEARCH',
'  from XXADM_ROLES_TAB',
'  WHERE SEEDED = 1',
'  AND COMPANY_CODE = :AP_COMPANY_CODE',
'  and ROLE_CODE != ''GLOBAL'''))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_ROLE_CODE,P10_SEEDED:&ROLE_CODE.,&SEEDED.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_column', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', '<font color = green><b>&ROLE_DESC.</b></font> ',
  'text_formatting', '<font color = blue><h5>&ROLE_NAME.</h5></font>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38086309114357834)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_required_role=>wwv_flow_imp.id(3148311787613203)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.LIST_NAME d, a.ID r from XXADM.XXADM_APP_LIST a, xxadm.XXADM_ROLES_MENU_TAB b, xxadm.XXADM_PARTNER_APPS  c',
'where b.app_id = c.APPLICATION_ID',
'and a.APPLICATION_ID = c.APEX_APP_ID',
'and b.ROLE_CODE = :P10_ROLE_CODE',
'and a.status = ''ACTIVE''',
'and b.status = ''ACTIVE'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38086636766357837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38086309114357834)
,p_button_name=>'Save_reports_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Reports'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_SEEDED'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38086054216357831)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38085734524357828)
,p_button_name=>'Save_reports'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Reports'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_SEEDED'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3551338178608075)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3542891433608066)
,p_button_name=>'POP_XXADM_ROLES_MENU_TAB'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(5504897599166738)
,p_button_image_alt=>'Add Xxadm Roles Menu Tab'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ROLE_CODE:&P10_ROLE_CODE.'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3564414855608089)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3528003422608049)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_ROLE_CODE:&P10_ROLE_CODE.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3518857032608034)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3518178127608033)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.:RESET:&DEBUG.:RP,10::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3519228785608034)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3518178127608033)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11::'
,p_button_condition=>'AP_COMPANY_CODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3542049696608065)
,p_name=>'P10_ROLE_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3528003422608049)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38085823123357829)
,p_name=>'P10_REPORT_GROUP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38085734524357828)
,p_prompt=>'Report Group'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.LIST_NAME d, a.ID r from XXADM.XXADM_APP_LIST a, xxadm.XXADM_ROLES_MENU_TAB b, xxadm.XXADM_PARTNER_APPS  c',
'where b.app_id = c.APPLICATION_ID',
'and a.APPLICATION_ID = c.APEX_APP_ID',
'and b.ROLE_CODE = :P10_ROLE_CODE',
'and a.status = ''ACTIVE''',
'and b.status = ''ACTIVE''',
'ORDER BY 1'))
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38085947301357830)
,p_name=>'P10_REPORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38085734524357828)
,p_prompt=>'Report List'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.LABEL, b.ID',
' from XXADM.XXADM_APP_LIST a, XXADM.XXADM_APP_LIST_DTL b',
'where a.ID = b.list_id',
'and b.STATUS = ''ACTIVE''',
'and b.status = ''ACTIVE''',
'and b.list_id in (',
'select regexp_substr(:P10_REPORT_GROUP,''[^:]+'', 1, level) from dual',
' connect by regexp_substr(:P10_REPORT_GROUP, ''[^:]+'', 1, level) is not null)',
' ORDER BY 1'))
,p_lov_cascade_parent_items=>'P10_REPORT_GROUP'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38086864658357839)
,p_name=>'P10_NEW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38086309114357834)
,p_prompt=>'Report List'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.LABEL, b.ID',
' from XXADM.XXADM_APP_LIST a, XXADM.XXADM_APP_LIST_DTL b',
'where a.ID = b.list_id',
'and b.STATUS = ''ACTIVE''',
'and b.status = ''ACTIVE''',
'and b.list_id in (',
'select regexp_substr(:P10_NEW_1,''[^:]+'', 1, level) from dual',
' connect by regexp_substr(:P10_NEW_1, ''[^:]+'', 1, level) is not null)',
' ORDER BY 1'))
,p_lov_cascade_parent_items=>'P10_NEW_1'
,p_ajax_optimize_refresh=>'Y'
,p_display_when=>'P10_SEEDED'
,p_display_when2=>'0'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38086932076357840)
,p_name=>'P10_NEW_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38086309114357834)
,p_prompt=>'Report Group'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.LIST_NAME d, a.ID r from XXADM.XXADM_APP_LIST a, xxadm.XXADM_ROLES_MENU_TAB b, xxadm.XXADM_PARTNER_APPS  c',
'where b.app_id = c.APPLICATION_ID',
'and a.APPLICATION_ID = c.APEX_APP_ID',
'and b.ROLE_CODE = :P10_ROLE_CODE',
'and a.status = ''ACTIVE''',
'and b.status = ''ACTIVE''',
'ORDER BY 1'))
,p_display_when=>'P10_SEEDED'
,p_display_when2=>'0'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38476729945118205)
,p_name=>'P10_SEEDED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4485434445071806)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3564768470608089)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3528003422608049)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3565363356608090)
,p_event_id=>wwv_flow_imp.id(3564768470608089)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3528003422608049)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3565899857608090)
,p_event_id=>wwv_flow_imp.id(3564768470608089)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Xxadm\u0020Roles\u0020Tab\u0020updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3542964005608066)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3542891433608066)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3552019102608076)
,p_event_id=>wwv_flow_imp.id(3542964005608066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3542891433608066)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3552571181608077)
,p_event_id=>wwv_flow_imp.id(3542964005608066)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Xxadm Roles Menu Tab updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3564818409608089)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3567100388608091)
,p_event_id=>wwv_flow_imp.id(3564818409608089)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38087019390357841)
,p_name=>'RELOAD REPORTS'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3542891433608066)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38087132425357842)
,p_event_id=>wwv_flow_imp.id(38087019390357841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38085734524357828)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38086252803357833)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'fetch_reports'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select LIST_ID, LIST_DTL_ID,LIST_ID, LIST_DTL_ID',
'into :P10_REPORT_GROUP, :P10_REPORT,:p10_NEW_1,:P10_NEW',
'from xxadm.XXADM_ROLES_TAB',
'where ROLE_CODE = :P10_ROLE_CODE;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P10_ROLE_CODE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>38086252803357833
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3438696093791248)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3542891433608066)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Menu Functions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3438696093791248
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38086176808357832)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_REPORT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' ',
'update XXADM.XXADM_ROLES_TAB',
'set LIST_ID = :P10_REPORT_GROUP,',
'    LIST_DTL_ID = :P10_REPORT',
'where ROLE_CODE = :P10_ROLE_CODE;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38086054216357831)
,p_process_success_message=>'Action Successful'
,p_internal_uid=>38086176808357832
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38086792301357838)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE-REPORT_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' ',
'update XXADM.XXADM_ROLES_TAB',
'set LIST_ID = :P10_NEW_1,',
'    LIST_DTL_ID = :P10_NEW',
'where ROLE_CODE = :P10_ROLE_CODE;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38086636766357837)
,p_process_success_message=>'Action Successful'
,p_internal_uid=>38086792301357838
);
wwv_flow_imp.component_end;
end;
/
