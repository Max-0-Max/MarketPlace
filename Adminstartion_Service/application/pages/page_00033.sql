prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>'User Management'
,p_step_title=>'User Management'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(5413815154166670)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4084838189325945)
,p_plug_name=>'User Management'
,p_icon_css_classes=>'fa-user-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4224081793240208)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select NAME,',
'       LOGNAME,',
'       STAFF_ID,',
'       STATUS,',
'       SUB_ORG,',
'       DEPARTMENT,',
'       UNIT,LEVELS,',
'       NAME||LOGNAME||STAFF_ID SEARCH',
'  from xxadm.XXADM_PASSWORD',
'  where LEVELS = 1',
'  and :AP_ACCESS_LEVEL = 1',
'  and upper(LOGNAME) != ''GLOBALUSER''',
'',
'  union all*/',
'  select NAME,',
'       LOGNAME,',
'       STAFF_ID,',
'       STATUS,',
'       SUB_ORG,',
'       DEPARTMENT,',
'       UNIT,LEVELS,',
'       NAME||LOGNAME||STAFF_ID SEARCH',
'  from xxadm.XXADM_PASSWORD x',
'  where 1=1--x.LEVELS = ''2''',
'   and upper(LOGNAME) != ''GLOBALUSER''',
'    --and upper(x.logname) in (select upper(LOGNAME) from xxadm.XXADM_COMPANY_ACCESS_V where COMPANY_CODE = :AP_COMPANY_CODE)',
'  and instr('':''||x.COMPANY_CODE||'':'','':''||:AP_COMPANY_CODE||'':'') > 0'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_LOGNAME:&LOGNAME.',
  'list_view_features', 'SEARCH',
  'search_column', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_column', 'LOGNAME',
  'text_column', 'NAME')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8226255315670987)
,p_plug_name=>'User Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>7
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3659788911340346)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4226177427240229)
,p_plug_name=>'User Roles'
,p_parent_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  * from xxadm.XXADM_USER_ROLES_TAB',
'where UPPER(USER_ID) = UPPER(:P33_LOGNAME_1)'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P33_LOGNAME'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4226304899240231)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P33_LOGNAME'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4226457244240232)
,p_name=>'ROLE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Role/Responsibility'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROLE_NAME D, ROLE_CODE R',
'  from XXADM_ROLES_TAB',
'  WHERE SEEDED = 0',
'  and ROLE_CODE NOT IN (SELECT ROLE_CODE FROM XXADM.XXADM_USER_ROLES_TAB WHERE USER =:P33_LOGNAME)',
'  UNION ALL',
'select ROLE_NAME D, ROLE_CODE R',
'  from XXADM_ROLES_TAB',
'  WHERE SEEDED = 1',
'  AND COMPANY_CODE = :AP_COMPANY_CODE',
'  and ROLE_CODE NOT IN (SELECT ROLE_CODE FROM XXADM.XXADM_USER_ROLES_TAB WHERE USER =:P33_LOGNAME)'))
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
 p_id=>wwv_flow_imp.id(4226544118240233)
,p_name=>'LOGON_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOGON_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(4226660435240234)
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
 p_id=>wwv_flow_imp.id(4226795015240235)
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
 p_id=>wwv_flow_imp.id(4226893585240236)
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
 p_id=>wwv_flow_imp.id(4226953609240237)
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
 p_id=>wwv_flow_imp.id(4227087113240238)
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
 p_id=>wwv_flow_imp.id(4227182647240239)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(4227252721240240)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
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
 p_id=>wwv_flow_imp.id(4227327250240241)
,p_name=>'ORDER_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(4227499280240242)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Inactive',
  'off_value', 'INACTIVE',
  'on_label', 'Active',
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4227562475240243)
,p_name=>'EFFECTIVE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_START_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(4227659706240244)
,p_name=>'EFFECTIVE_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_END_DATE'
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
 p_id=>wwv_flow_imp.id(4227798935240245)
,p_name=>'LOGNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOGNAME'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P33_LOGNAME'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4227842634240246)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4227994516240247)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4228061360240248)
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
 p_id=>wwv_flow_imp.id(4226276264240230)
,p_internal_uid=>4226276264240230
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
 p_id=>wwv_flow_imp.id(4309146337846798)
,p_interactive_grid_id=>wwv_flow_imp.id(4226276264240230)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4309299225846799)
,p_report_id=>wwv_flow_imp.id(4309146337846798)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4309767077846800)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4226304899240231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4310237079846803)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4226457244240232)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>192
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4310707094846805)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4226544118240233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4311231656846807)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4226660435240234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4311744131846809)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4226795015240235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4312236220846811)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4226893585240236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4312725014846814)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4226953609240237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4313278743846816)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4227087113240238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4313720096846818)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4227182647240239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4314259348846820)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4227252721240240)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4314706480846822)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4227327250240241)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4315252966846824)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4227499280240242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4315709847846827)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4227562475240243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4316204000846829)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4227659706240244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4316701019846831)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(4227798935240245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4317244818846833)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4227842634240246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4319072000854976)
,p_view_id=>wwv_flow_imp.id(4309299225846799)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4227994516240247)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4228261480240250)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(3659788911340346)
,p_button_name=>'AddUser'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P33_LOGNAME'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4485016087071802)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(3659788911340346)
,p_button_name=>'Update_user'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update User'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P33_LOGNAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4085543551325947)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4084838189325945)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.:RESET:&DEBUG.:RP,33::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4334826824988402)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4084838189325945)
,p_button_name=>'Mass_User_Creation'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Mass User Creation'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.:RESET:&DEBUG.:RP,9::'
,p_button_condition=>'AP_COMPANY_CODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-users'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4085948232325947)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4084838189325945)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4126636353325999)
,p_name=>'P33_LOGNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4162574263345126)
,p_name=>'P33_LOGNAME_1'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>'P33_LOGNAME_1'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4162907245345127)
,p_name=>'P33_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4163347779345127)
,p_name=>'P33_PWORD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>60
,p_cMaxlength=>400
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4163752571345128)
,p_name=>'P33_LEVELS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'Access Level'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select ''Global Access'' d, 1 r from dual',
'union',
'select ''Company Structure'' d, 2 r from dual)',
'where :AP_ACCESS_LEVEL = 1',
'union',
'select * from (',
'select ''Company Structure'' d, 2 r from dual)',
'where :AP_ACCESS_LEVEL = 2',
''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4164181399345129)
,p_name=>'P33_EDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'Effective End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4165398189345131)
,p_name=>'P33_COMPANY_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_item_default=>'&AP_COMPANY_CODE.'
,p_prompt=>'Organization'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Company_name d, company_code r',
'from xxhrms.xxhrms_companyinfo',
'where :AP_ACCESS_LEVEL = 1',
'AND status =''ACTIVE''',
'UNION ALL',
'select Company_name d, company_code r',
'from xxhrms.xxhrms_companyinfo',
'where :AP_ACCESS_LEVEL != 1',
'AND status =''ACTIVE''',
'and company_code in (',
'                       (select COLUMN_VALUE from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':''))',
'                      where upper(a.LOGNAME )= upper(:AP_USERNAME))',
'                      )'))
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4167320514345134)
,p_name=>'P33_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'&AP_STAFF_ID_LABEL.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT person_ID ||'' - ''||FULL_NAME d,  person_ID r',
'FROM xxhrms.XXHRMS_PEOPLE',
'WHERE EMPLOYMENT_STATUS = ''Active Employee''',
'AND (person_id NOT IN (SELECT staff_id FROM xxadm.xxadm_password',
'WHERE staff_id IS NOT NULL and instr(COMPANY_CODE,:AP_COMPANY_CODE) != 0)',
'     or person_id = :P33_STAFF_ID)',
'AND PERSON_ID IN (SELECT PERSON_ID FROM XXHRMS_aSSIGNMENTS WHERE ASSIGNMENT_STATUS = ''ACTIVE'')',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'ORDER BY trim(FULL_NAME)',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(5504520019166737)
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
 p_id=>wwv_flow_imp.id(4167755304345135)
,p_name=>'P33_STATUS'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Inactive',
  'off_value', 'INACTIVE',
  'on_label', 'Active',
  'on_value', 'ACTIVE',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170963280345141)
,p_name=>'P33_INVALID_LOG_CNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4171320567345141)
,p_name=>'P33_LAST_INVALID_LOG_TIME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4171724167345142)
,p_name=>'P33_LAST_LOGIN_TIME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4172190319345143)
,p_name=>'P33_LOGIN_CNT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4172998636345144)
,p_name=>'P33_PASSWORD_CHANGE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4173751014345146)
,p_name=>'P33_SUB_ORG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'&AP_SUBORG_LABEL.'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME D, CODE R',
'FROM XXHRMS.XXHRMS_SUB_ORGANIZATION',
'WHERE COMPANY_CODE IN (',
'select regexp_substr(:P33_COMPANY_CODE,''[^:]+'', 1, level) from dual',
' connect by regexp_substr(:P33_COMPANY_CODE, ''[^:]+'', 1, level) is not null)',
'AND STATUS = ''ACTIVE'''))
,p_lov_cascade_parent_items=>'P33_COMPANY_CODE'
,p_ajax_items_to_submit=>'P33_COMPANY_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4174114410345146)
,p_name=>'P33_DEPARTMENT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, dept_id r',
'from xxhrms.xxhrms_department',
'where sub_organ_code IN',
'                     (',
'select regexp_substr(:P33_sub_org,''[^:]+'', 1, level) from dual',
' connect by regexp_substr(:P33_sub_org, ''[^:]+'', 1, level) is not null',
'                     )',
'and status = ''ACTIVE''',
''))
,p_lov_cascade_parent_items=>'P33_SUB_ORG'
,p_ajax_items_to_submit=>'P33_SUB_ORG'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4174557813345147)
,p_name=>'P33_UNIT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_prompt=>'Unit'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select unit_name d, unit_id r',
'from xxhrms.xxhrms_units',
'where dept_code in',
' (',
'select regexp_substr(:P33_DEPARTMENT,''[^:]+'', 1, level) from dual',
' connect by regexp_substr(:P33_DEPARTMENT, ''[^:]+'', 1, level) is not null',
'                     )',
'and status = ''ACTIVE''',
''))
,p_lov_cascade_parent_items=>'P33_DEPARTMENT'
,p_ajax_items_to_submit=>'P33_DEPARTMENT'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4334948100988403)
,p_name=>'P33_CPWD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8226255315670987)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Confirm Password'
,p_source=>'CPWD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3714678163441950)
,p_name=>'Perfrom Search2'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_STAFF_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3659329024340342)
,p_event_id=>wwv_flow_imp.id(3714678163441950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_NAME'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CURSOR CUR',
'IS',
'select NVL(FULL_NAME,NULL)',
'from xxhrms.xxhrms_people',
'where person_id	 = :P33_STAFF_ID',
'and company_code = :AP_COMPANY_CODE;',
'--',
'',
'',
'begin',
'--IF NOT CUR%ISOPEN THEN ',
':P33_NAME := NULL;',
'',
'OPEN CUR;',
'',
'FETCH  CUR into :P33_NAME;',
'CLOSE CUR;',
'RETURN :P33_NAME;',
'end;'))
,p_attribute_07=>'P33_STAFF_ID,P33_LOGNAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3713530325441939)
,p_name=>'New'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_LEVELS'
,p_condition_element=>'P33_LEVELS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713625945441940)
,p_event_id=>wwv_flow_imp.id(3713530325441939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_COMPANY_CODE,P33_SUB_ORG,P33_DEPARTMENT,P33_UNIT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713997129441943)
,p_event_id=>wwv_flow_imp.id(3713530325441939)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_COMPANY_CODE,P33_SUB_ORG,P33_DEPARTMENT,P33_UNIT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4175006540348301)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XXADM_PASSWORD'
,p_attribute_01=>'XXADM'
,p_attribute_02=>'XXADM_PASSWORD'
,p_attribute_03=>'P34_LOGNAME'
,p_attribute_04=>'LOGNAME'
,p_attribute_09=>'P34_LOGNAME'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>4175006540348301
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4228187994240249)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4226177427240229)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4228187994240249
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4334723946988401)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SaveUser'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  --',
'  IF :P33_PWD IS NOT NULL OR :P33_CPWD IS NOT NULL THEN',
'    IF :P33_PWORD <> :P33_CPWD THEN',
'      RAISE_APPLICATION_ERROR(-20005, ''Password Must Match Confirmation Password'');',
'    END IF;',
'  END IF;',
'  IF :P33_OPWD IS NULL THEN',
'    xxadm.xxadm_security_pkg.add_user(:P33_LOGNAME_1, :P33_PWORD,:P33_STAFF_ID,:P33_NAME,',
'                                      :P33_LEVELS,:P33_STATUS,:P33_COMPANY_CODE,',
'                                     :P33_SUB_ORG,:P33_DEPARTMENT,:P33_UNIT);',
'    IF :P33_OPWD IS NULL AND :P33_STAFF_ID IS NOT NULL THEN',
'    xxadm.xxadm_security_pkg.sendmail(:P33_LOGNAME_1, :P33_PWORD,''1'');',
'  END IF;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4228261480240250)
,p_process_success_message=>'Action Successful'
,p_internal_uid=>4334723946988401
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4484989088071801)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update User'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  --',
'  IF :P33_PWD IS NOT NULL OR :P33_CPWD IS NOT NULL THEN',
'    IF :P33_PWORD <> :P33_CPWD THEN',
'      RAISE_APPLICATION_ERROR(-20005, ''Password Must Match Confirmation Password'');',
'    END IF;',
'  END IF;',
'     --RAISE_APPLICATION_ERROR(-20005, ''Got Here''); ',
'    xxadm.xxadm_security_pkg.alter_user(:P33_LOGNAME_1, :P33_PWORD,:P33_STAFF_ID,:P33_NAME,',
'                                      :P33_LEVELS,:P33_STATUS,:P33_COMPANY_CODE,',
'                                     :P33_SUB_ORG,:P33_DEPARTMENT,:P33_UNIT,:P33_EDATE);',
'  --    RAISE_APPLICATION_ERROR(-20005, ''Got Here22''); ',
' ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4485016087071802)
,p_process_success_message=>'Action Successful'
,p_internal_uid=>4484989088071801
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4223913437240207)
,p_process_sequence=>40
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FETCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_people IS',
'  SELECT aa.NAME, aa.logname,aa.logname, aa.LEVELS, aa.edate, aa.staff_id staff, aa.status, aa.company_code,aa.sub_org,aa.department,aa.unit',
'    FROM xxadm_password aa, xxhrms_assignments bb, xxhrms_people cc',
'    WHERE aa.staff_id = bb.staff_id(+)',
'      and bb.person_id = cc.person_id(+)',
'      AND aa.logname = :P33_LOGNAME;',
'BEGIN',
'  OPEN c_people;',
'  FETCH c_people  INTO :P33_NAME, :P33_LOGNAME,:P33_LOGNAME_1, :P33_LEVELS, :P33_EDATE, :P33_STAFF_ID, :P33_STATUS,:P33_COMPANY_CODE,:P33_SUB_ORG,:P33_DEPARTMENT,:P33_UNIT;',
'  CLOSE c_people;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4223913437240207
);
wwv_flow_imp.component_end;
end;
/
