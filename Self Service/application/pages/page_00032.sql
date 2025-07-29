prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'Web Clock '
,p_alias=>'BY1'
,p_step_title=>'Web Clock '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(322801975616248097)
,p_plug_name=>'Welcome &P1_NAME.,  Your last login: &P1_LOGIN.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75611237661946213)
,p_plug_name=>'Workshift Acitivies'
,p_parent_plug_id=>wwv_flow_imp.id(322801975616248097)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'XXADM.get_profile_option(''WRKSHFT_ACT_LST'',:SS_COMPANY_CODE) = ''Y'' AND :P32_ID IS NOT NULL'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75611315743946214)
,p_plug_name=>'Workshift Acitivies'
,p_parent_plug_id=>wwv_flow_imp.id(75611237661946213)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.* FROM XXHRMS.XXHRMS_SS_TASK_LIST a',
'WHERE TRUNC(INS_DATE) =TRUNC(SYSDATE)',
'AND STAFF_ID = :AP_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75611688173946217)
,p_name=>'CLOCKIN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOCKIN_ID'
,p_data_type=>'NUMBER'
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
,p_default_expression=>'P32_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75611722765946218)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
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
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75611854458946219)
,p_name=>'TASK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Task Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(75611936207946220)
,p_name=>'TASK_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Task Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:NOT STARTED;NOT STARTED,IN PROGRESS;IN PROGRESS,COMPLETED;COMPLETED'
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(75612477925946225)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75612581287946226)
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
 p_id=>wwv_flow_imp.id(75612814131946229)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(75613858050946239)
,p_name=>'INS_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Ins Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(75611442380946215)
,p_internal_uid=>75611442380946215
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
,p_add_button_label=>'Add Task'
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
 p_id=>wwv_flow_imp.id(76040073318710808)
,p_interactive_grid_id=>wwv_flow_imp.id(75611442380946215)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(76040146761710808)
,p_report_id=>wwv_flow_imp.id(76040073318710808)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76041094784710852)
,p_view_id=>wwv_flow_imp.id(76040146761710808)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(75611688173946217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76041583607710855)
,p_view_id=>wwv_flow_imp.id(76040146761710808)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(75611722765946218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76042046582710857)
,p_view_id=>wwv_flow_imp.id(76040146761710808)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(75611854458946219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76042546512710858)
,p_view_id=>wwv_flow_imp.id(76040146761710808)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(75611936207946220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76049029673785471)
,p_view_id=>wwv_flow_imp.id(76040146761710808)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(75612477925946225)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76053493684841984)
,p_view_id=>wwv_flow_imp.id(76040146761710808)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(75612814131946229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(76056028543962358)
,p_view_id=>wwv_flow_imp.id(76040146761710808)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(75613858050946239)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(322802366083268012)
,p_plug_name=>'Location'
,p_parent_plug_id=>wwv_flow_imp.id(322801975616248097)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(322803488162311828)
,p_plug_name=>'Workshift Acitivies'
,p_parent_plug_id=>wwv_flow_imp.id(322801975616248097)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(323886211498695892)
,p_name=>'Task'
,p_parent_plug_id=>wwv_flow_imp.id(322803488162311828)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Form--large'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_grid_column_span=>12
,p_display_column=>1
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.workshift_id',
',   b.workshift_name',
',   to_char(b.start_date,''DD-Mon-YYYY'')start_date',
',   to_char(b.end_date,''DD-Mon-YYYY'')end_date',
',   b.clock_in',
',   b.clock_out',
',	xxta.XXTA_WORKSHIFT_UTIL_PKG.workshift_task_list (b.workshift_id)Task',
'from xxta.XXTA_WORKSHIFT_MGT b',
'where b.workshift_id=:P32_WORKSHIFT',
'and trunc(sysdate) between trunc(b.start_date) and trunc(nvl(b.end_date,sysdate))'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305538710942676225)
,p_query_column_id=>1
,p_column_alias=>'WORKSHIFT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Workshift Id'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305539154331676224)
,p_query_column_id=>2
,p_column_alias=>'WORKSHIFT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Workshift Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305539512558676224)
,p_query_column_id=>3
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305539912025676224)
,p_query_column_id=>4
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'End Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305540392069676223)
,p_query_column_id=>5
,p_column_alias=>'CLOCK_IN'
,p_column_display_sequence=>5
,p_column_heading=>'Clock In'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305540707744676223)
,p_query_column_id=>6
,p_column_alias=>'CLOCK_OUT'
,p_column_display_sequence=>6
,p_column_heading=>'Clock Out'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305541120097676222)
,p_query_column_id=>7
,p_column_alias=>'TASK'
,p_column_display_sequence=>7
,p_column_heading=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP:P41_WORKSHIFT_ID:#WORKSHIFT_ID#'
,p_column_linktext=>'View Workshift Activities'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305541596408676221)
,p_query_column_id=>8
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(322805624071533572)
,p_name=>'Request Approval'
,p_parent_plug_id=>wwv_flow_imp.id(322801975616248097)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>5
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select levels,supervisor',
'from xxhrms.xxhrms_approval_path_v'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305482821128930909)
,p_query_column_id=>1
,p_column_alias=>'LEVELS'
,p_column_display_sequence=>1
,p_column_heading=>'Levels'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305482986039930910)
,p_query_column_id=>2
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>2
,p_column_heading=>'Supervisor'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305531821005676245)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(322801975616248097)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8993100805890801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(322801975616248097)
,p_button_name=>'CLOCK_IN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clock IN'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305532678063676244)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(322801975616248097)
,p_button_name=>'CLOCK_OUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Web Clock-Out'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.confirm(''You are about to Clock-out from HR/Project Location. Do you still want to continue?'',''CLOCK_OUT'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM xxta.xxta_emp_attendance',
' WHERE CLOCK_IN_ID = :P32_ID',
'    and CLOCKOUT_TIME is null',
'union',
'SELECT 1 FROM xxhrms.xxhrms_ss_wclockin',
'	WHERE ID = :P32_ID',
'	AND WORKFLOW_STATUS != ''REJECTED''',
'	AND ATTENDANCE_TIMEOUT IS NULL;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(75612719610946228)
,p_branch_name=>'branch_clock_in'
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(8993100805890801)
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'XXADM.get_profile_option(''WRKSHFT_ACT_LST'',:SS_COMPANY_CODE) = ''Y'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(305551651453676197)
,p_branch_name=>'branch_clock_in'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(8993100805890801)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(305552085214676197)
,p_branch_name=>'branch_clock_out'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(305532678063676244)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66579301605631128)
,p_name=>'P32_CLOCKIN_COMMENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Clock IN Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_display_when=>'SS_COMPANY_CODE'
,p_display_when2=>'57'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_read_only_when=>'P32_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(305533386882676237)
,p_name=>'P32_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Staff Id'
,p_source=>':AP_STAFF_ID'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305533768133676234)
,p_name=>'P32_SUB_ORG_ID'
,p_is_required=>true
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Organization'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560980406224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305534105241676234)
,p_name=>'P32_ASSIGNED_WS'
,p_is_required=>true
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Workshift Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ASSIGNED WORKSHIFT;0,UNASSIGNED WORKSHIFT;1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Type'
,p_lov_null_value=>'-1'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305534598901676233)
,p_name=>'P32_CLOCK_DATE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305534916228676232)
,p_name=>'P32_HR_LOCATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'HR Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION a',
'where a.company_code = :P32_SUB_ORG_ID',
'and exists(select 1',
' from xxta.xxta_workshift_emp_assign e,xxta.XXTA_WORKSHIFT_MGT w',
'WHERE e.workshift_id = w.workshift_id',
' AND    w.hr_loc_id = a.CODE',
'and e.person_id= :AP_STAFF_ID',
' and trunc(sysdate) between trunc(w.start_date) and trunc(nvl(w.end_date,sysdate))) ',
' and nvl(:P32_ASSIGNED_WS,-1)=0',
' union all',
' select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION a',
'where a.company_code = :P32_SUB_ORG_ID',
'and  not exists(select 1',
' from xxta.xxta_workshift_emp_assign e,xxta.XXTA_WORKSHIFT_MGT w',
'WHERE  e.workshift_id = w.workshift_id',
' AND    w.hr_loc_id = a.CODE',
'and e.person_id= :AP_STAFF_ID',
'and nvl(:P32_ASSIGNED_WS,-1)=1',
' and trunc(sysdate) between trunc(w.start_date) and trunc(nvl(w.end_date,sysdate))) ',
' and nvl(:P32_ASSIGNED_WS,-1)=1',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P32_ASSIGNED_WS'
,p_ajax_items_to_submit=>'P32_ASSIGNED_WS,P32_SUB_ORG_ID,AP_STAFF_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_read_only_when=>'P32_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560980406224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305535388330676231)
,p_name=>'P32_PRJ_LOCATION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Project Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPANY_NAME as display_value, COMPANY_CODE as return_value ',
'  from XXHRMS.XXHRMS_COMPANYINFO a ',
' where exists(select 1',
' from xxta.xxta_workshift_emp_assign e,xxta.XXTA_WORKSHIFT_MGT w',
'WHERE  e.workshift_id = w.workshift_id',
' AND    w.prj_loc_id = a.COMPANY_CODE',
'and e.person_id= :P32_STAFF_ID',
' and trunc(sysdate) between trunc(w.start_date) and trunc(w.end_date)) ',
'and 1=2',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P32_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_SET_VALUE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305535776788676230)
,p_name=>'P32_CLOCK_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Attendance Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305536108187676230)
,p_name=>'P32_ATTENDANCE_TIME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Attendance Time'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305536533569676229)
,p_name=>'P32_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305536980278676229)
,p_name=>'P32_WORKSHIFT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Workshift Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORKSHIFT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.workshift_name d,a.workshift_id r',
'  FROM xxta.xxta_workshift_mgt a',
'  where company_code = :AP_COMPANY_CODE',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Workshift --'
,p_lov_cascade_parent_items=>'P32_HR_LOCATION_ID,P32_ASSIGNED'
,p_ajax_items_to_submit=>'P32_HR_LOCATION_ID,P32_ASSIGNED,AP_STAFF_ID,P32_ASSIGNED_WS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_read_only_when=>'P32_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305537312131676229)
,p_name=>'P32_UNASSIGN_WORKSHIFT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_prompt=>'Workshift Activities'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_read_only_when=>'P32_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305537706845676228)
,p_name=>'P32_MAX_CLOCK_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(322802366083268012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(305543911228676210)
,p_validation_name=>'P32_WORKSHIFT'
,p_validation_sequence=>10
,p_validation=>':P32_WORKSHIFT IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P32_ASSIGNED_WS'
,p_validation_condition2=>'0'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(305536980278676229)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(305543594844676210)
,p_validation_name=>'P32_WORKSHIFT_OUT'
,p_validation_sequence=>20
,p_validation=>'P32_WORKSHIFT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P32_ASSIGNED_WS'
,p_validation_condition2=>'0'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(305532678063676244)
,p_associated_item=>wwv_flow_imp.id(305536980278676229)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(305544355487676208)
,p_validation_name=>'UNASSIGN-WK'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P32_ASSIGNED_WS = 1 AND ',
':P32_UNASSIGN_WORKSHIFT IS NOT NULL'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Pls enter your workshift Activities'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL ',
'WHERE :P32_ASSIGNED_WS =1'))
,p_validation_condition_type=>'EXISTS'
,p_associated_item=>wwv_flow_imp.id(305537312131676229)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305545817070676205)
,p_name=>'refreshWS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_WORKSHIFT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305546343868676202)
,p_event_id=>wwv_flow_imp.id(305545817070676205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(322803488162311828)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305546712555676202)
,p_name=>'Hide'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_ASSIGNED_WS'
,p_condition_element=>'P32_ASSIGNED_WS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305547248869676201)
,p_event_id=>wwv_flow_imp.id(305546712555676202)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P32_WORKSHIFT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305547750844676201)
,p_event_id=>wwv_flow_imp.id(305546712555676202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P32_WORKSHIFT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305548202631676201)
,p_event_id=>wwv_flow_imp.id(305546712555676202)
,p_event_result=>'FALSE'
,p_action_sequence=>15
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P32_UNASSIGN_WORKSHIFT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305548795126676200)
,p_event_id=>wwv_flow_imp.id(305546712555676202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P32_UNASSIGN_WORKSHIFT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305549165722676200)
,p_name=>'refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_ASSIGNED_WS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305550675544676199)
,p_event_id=>wwv_flow_imp.id(305549165722676200)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P32_HR_LOCATION_ID,P32_PRJ_LOCATION_ID,P32_WORKSHIFT,P32_UNASSIGN_WORKSHIFT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305544635117676208)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submit row'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'V_ID Number;',
'',
'CURSOR C_ID',
'      IS',
'         SELECT xxhrms.XXHRMS_SS_W_CLOCK_IN_seq.NEXTVAL FROM dual;',
'',
'Begin',
'',
'open  C_ID;',
'Fetch C_ID into V_ID;',
'Close C_ID;',
'',
'INSERT INTO xxhrms.xxhrms_ss_wclockin (ID, STAFF_ID, CLOCK_TYPE, ATTENDANCE_TIME, WORKFLOW_STATUS, APPROVAL_COUNT, HR_LOCATION_ID, PRJ_LOCATION_ID, CREATED_BY, CREATED_DATE, WORKSHIFT_ID, UNASSIGN_WK,CLOCK_IN_COMMENT)',
'VALUES (V_ID, :AP_STAFF_ID, ''1'', SYSDATE, ''NEW'', ''0'', :P32_HR_LOCATION_ID, :P32_PRJ_LOCATION_ID, :APP_USER, SYSDATE, :P32_WORKSHIFT, :P32_UNASSIGN_WORKSHIFT,:P32_CLOCKIN_COMMENT);',
'',
'   ',
'--     INSERT INTO xxta.xxta_emp_attendance(attendance_id,employee_id,attendance_time,device_id,hr_location_id',
'--                                          ,prj_location_id,clock_method,workshift_id,COMPANY_CODE,LONGITUDE,LATITUDE,CLOCK_TYPE,CLOCK_IN_ID)',
'                                         ',
'--     VALUES(xxta.xxta_emp_attendance_seq.NEXTVAL,:AP_STAFF_ID, SYSDATE,0',
'--            , :P32_HR_LOCATION_ID,:P32_PRJ_LOCATION_ID,''W'',  :P32_WORKSHIFT, :AP_COMPANY_CODE,',
'-- (SELECT LONGITUDE FROM XXTA.XXTA_WORKSHIFT_MGT WHERE WORKSHIFT_ID = :P32_WORKSHIFT),',
'-- (SELECT LATITUDE FROM XXTA.XXTA_WORKSHIFT_MGT WHERE WORKSHIFT_ID = :P32_WORKSHIFT)',
'-- ,1',
'-- ,V_ID);',
'    ',
' for i in (select levels,supervisor',
'            from xxhrms.xxhrms_approval_path_v',
'              order by 1)',
'     loop',
'          INSERT INTO xxhrms.XXHRMS_APPROVAL_TAB (TRANS_TYPE,TRANS_ID,APR_LVL,APR_ID,STATUS)',
'          VALUES (''WEB_CLOCK'',V_ID,i.levels,i.supervisor,''PENDING'');',
'   End loop;',
'   ',
'    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''WEB_CLOCK'',',
'                                                 pTRANS_ID => V_ID,',
'                                                 pNOTETPYE => ''NewReq'',',
'                                                 pCOMMENT => ''New Web Clock IN Request''',
'                                                );',
'   ',
'    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''WEB_CLOCK'',',
'                                                 pTRANS_ID => V_ID,',
'                                                 pNOTETPYE => ''Approver'',',
'                                                 pCOMMENT => ''New Web Clock IN Request''',
'                                                );',
'   ',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error Submitting Request!!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8993100805890801)
,p_process_success_message=>'Web Clock-in sent to Manager for Approval'
,p_internal_uid=>305544635117676208
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305545018114676206)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submit_clock_out'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*declare',
'  v_wclockin_table xxhrms.xxhrms_ss_wclockin%ROWTYPE;',
'begin',
'     ',
'  v_wclockin_table.id := :P32_ID;',
'  v_wclockin_table.staff_id := :P32_STAFF_ID;',
'  v_wclockin_table.CLOCK_TYPE :=''1'';',
'  v_wclockin_table.ATTENDANCE_TIME :=sysdate;',
'  v_wclockin_table.WORKFLOW_STATUS := ''APPROVED'';',
'  v_wclockin_table.APPROVAL_COUNT := 0;',
'  v_wclockin_table.created_date := SYSDATE;',
'  v_wclockin_table.created_by := NVL(wwv_flow.g_user,USER);',
'  v_wclockin_table.HR_LOCATION_ID := :P32_HR_LOCATION_ID;',
'  v_wclockin_table.PRJ_LOCATION_ID := :P32_PRJ_LOCATION_ID;',
'  v_wclockin_table.workshift_id := :P32_WORKSHIFT;',
'  v_wclockin_table.UNASSIGN_WK := :P32_UNASSIGN_WORKSHIFT;',
'  xxhrms.xxhrms_webclockin_pkg.ins_record(v_wclockin_table);',
'end;',
'*/',
'declare',
'  ',
'begin',
'  ',
'    UPDATE xxta.xxta_emp_attendance',
'       SET CLOCKOUT_TIME = SYSDATE',
'    WHERE CLOCK_IN_ID = :P32_ID',
'	--ATTENDANCE_ID = :P32_ID',
'    and CLOCKOUT_TIME is null;  ',
'    commit;',
'	',
'	update xxhrms.xxhrms_ss_wclockin',
'	SET ATTENDANCE_TIMEOUT = SYSDATE',
'	WHERE ID = :P32_ID',
'	AND WORKFLOW_STATUS != ''REJECTED''',
'	AND ATTENDANCE_TIMEOUT IS NULL;',
'	COMMIT;',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Clock-In request awaiting approval'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLOCK_OUT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Web Clock-Out Successfully Submitted'
,p_internal_uid=>305545018114676206
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75612608485946227)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(75611315743946214)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Workshift Acitivies - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>75612608485946227
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305545488144676206)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DD-MON-YYYY HH24:Miget_subOrg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor sub ',
'is ',
'select organization_id',
'from xxhrms.xxhrms_master_all',
'where person_id=:AP_STAFF_ID;',
'',
'begin',
'  open sub ;',
'  fetch sub into :P32_SUB_ORG_ID;',
' close sub;',
' ',
' select to_char(sysdate,''DD-MON-YYYY HH24:Mi''),to_char(sysdate,''DD-MON-YYYY HH24:Mi'')',
' into :P32_MAX_CLOCK_DATE,:P32_CLOCK_DATE',
' from dual;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>305545488144676206
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305483032994930911)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''WEB_CLOCK'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>305483032994930911
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33100026174526947)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'select ID, HR_LOCATION_ID, PRJ_LOCATION_ID, WORKSHIFT_ID, UNASSIGN_WK',
'into :P32_ID, :P32_HR_LOCATION_ID, :P32_PRJ_LOCATION_ID, :P32_WORKSHIFT, :P32_UNASSIGN_WORKSHIFT',
'from xxhrms.xxhrms_ss_wclockin',
'where STAFF_ID = :AP_STAFF_ID',
'and trunc(ATTENDANCE_TIME) = trunc(sysdate)',
'and CREATED_BY = :APP_USER',
'AND TRUNC(CREATED_DATE) = TRUNC(SYSDATE);',
'exception',
'when others then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33100026174526947
);
wwv_flow_imp.component_end;
end;
/
