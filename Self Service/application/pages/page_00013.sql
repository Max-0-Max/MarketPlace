prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>'TRAVEL'
,p_alias=>'AW1'
,p_step_title=>'TRAVEL'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79196437810793416)
,p_plug_name=>'Claims Voucher'
,p_region_name=>'clm_voucher'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79197272651793425)
,p_plug_name=>'Caims Items'
,p_parent_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Seq_Id,C001,C002,C003,C004,c005,c006,n001,''<a class="edit_it" href="javascript:void(null);"data-id=''||Seq_Id||''>''||n002||''   ',
'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""></a>'' n002 ,',
'case when c003=''EDITABLE''',
'THEN ''<a href="javascript:void(null);"data-id=''||Seq_Id||''><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" ',
'class="apex-edit-pencil-alt edit_vouch_item" alt=""></a>''',
'END EDIT,',
'n001*n002 total',
'',
'',
'from apex_collections ',
'where collection_name = ''RAISE_VOUCHER'''))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(79348066532651076)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KUNLE'
,p_internal_uid=>79348066532651076
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27610637755756523)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27611023213756527)
,p_db_column_name=>'C001'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27611441713756528)
,p_db_column_name=>'C002'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27612636020756535)
,p_db_column_name=>'C005'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'c005'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27611850260756529)
,p_db_column_name=>'C003'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Item Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27612290482756533)
,p_db_column_name=>'C004'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Claim Items'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27613087440756536)
,p_db_column_name=>'N001'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Items Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27613440153756537)
,p_db_column_name=>'C006'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'c006'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27613859332756539)
,p_db_column_name=>'EDIT'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Click to edit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27614280266756541)
,p_db_column_name=>'N002'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Item Quantity'
,p_allow_computations=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27614629626756542)
,p_db_column_name=>'TOTAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79378620304668908)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'276150'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID:C004:N002:N001:C003:EDIT::TOTAL'
,p_sum_columns_on_break=>'TOTAL:N001'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79424799089952507)
,p_plug_name=>'Edit Voucher Item'
,p_parent_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79913599466263620)
,p_plug_name=>'Caims Items'
,p_parent_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Seq_Id,C001,C002,C003,C004,c005,c006,n001, n002 ,',
'n001*n002 total',
'',
'',
'from apex_collections ',
'where collection_name = ''RAISE_VOUCHER'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(80002995003777988)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(80003057416777989)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'C001'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(80003231349777990)
,p_name=>'C002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C002'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'C002'
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
 p_id=>wwv_flow_imp.id(80003313451777991)
,p_name=>'C003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C003'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'C003'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(80003369552777992)
,p_name=>'C004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C004'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'C004'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(80003487090777993)
,p_name=>'C005'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C005'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'C005'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(80003581839777994)
,p_name=>'C006'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C006'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'C006'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(80003651011777995)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'N001'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(80003818453777996)
,p_name=>'N002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N002'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'N002'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>248
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(80003950767777998)
,p_name=>'TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total'
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
 p_id=>wwv_flow_imp.id(80004120071777999)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(80004158050778000)
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
 p_id=>wwv_flow_imp.id(80002854621777987)
,p_internal_uid=>80002854621777987
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
 p_id=>wwv_flow_imp.id(80009041139787986)
,p_interactive_grid_id=>wwv_flow_imp.id(80002854621777987)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(80009095645787988)
,p_report_id=>wwv_flow_imp.id(80009041139787986)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80009562057788007)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(80002995003777988)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80010068534788021)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(80003057416777989)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80010640424788029)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(80003231349777990)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80011132527788034)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(80003313451777991)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80011608255788039)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(80003369552777992)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80012102038788044)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(80003487090777993)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80012631854788049)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(80003581839777994)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80013091186788054)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(80003651011777995)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80013614284788060)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(80003818453777996)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80014525866788086)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(80003950767777998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80014994429788095)
,p_view_id=>wwv_flow_imp.id(80009095645787988)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(80004120071777999)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79516307702535605)
,p_plug_name=>'Edit Deliverables'
,p_region_name=>'deliv_edit_form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79827554975406706)
,p_plug_name=>'Update Deliverables'
,p_region_name=>'up_dev'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,REQUEST_ID,DELIVERABLES,REASONS,STATUS,EMP_ID,COMPANY_CODE,DATE_CREATED from XXCLM.XXCLM_DELIVERABLES_UPDATE',
'where request_id=:P13_TRAVEL_ID_LISTING',
'and company_code=:SS_COMPANY_CODE'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P13_TRAVEL_ID_LISTING',
'AND exists (select * from XXCLM.XXCLM_CLAIM_APPROVED_REQUEST v where v.request_id=r.REQUEST_ID ',
'                 and TRAVEL_REQUEST is not null',
'                 )',
'AND not exists(select * from XXCLM.XXCLM_CLAIMS_REJECTED_REQUESTS v where v.request_id=r.REQUEST_ID ',
'                 and TRAVEL_REQUEST is not null)'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53768664004355780)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:Completed;Completed,Ongoing;Ongoing,Incomplete;Incompete,Pending;Pending'
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
 p_id=>wwv_flow_imp.id(79827752244406708)
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
 p_id=>wwv_flow_imp.id(79827856890406709)
,p_name=>'REQUEST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_ID'
,p_data_type=>'NUMBER'
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
,p_default_expression=>'P13_TRAVEL_ID_LISTING'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79828040939406710)
,p_name=>'DELIVERABLES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELIVERABLES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Deliverables'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(79828051410406711)
,p_name=>'REASONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reasons'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79828218467406712)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
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
,p_default_type=>'ITEM'
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79828279132406713)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
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
,p_default_type=>'ITEM'
,p_default_expression=>'SS_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79828384458406714)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'TIMESTAMP'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'sysdate'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79828477029406715)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79828622526406716)
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
 p_id=>wwv_flow_imp.id(79827693384406707)
,p_internal_uid=>79827693384406707
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
 p_id=>wwv_flow_imp.id(79893196216998364)
,p_interactive_grid_id=>wwv_flow_imp.id(79827693384406707)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(79893309357998366)
,p_report_id=>wwv_flow_imp.id(79893196216998364)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54008611201977211)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(53768664004355780)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79893735772998409)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(79827752244406708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79894161519998423)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(79827856890406709)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79894643001998428)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(79828040939406710)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79895149145998432)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(79828051410406711)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79895683084998436)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(79828218467406712)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79896178820998440)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(79828279132406713)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79896699719998444)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(79828384458406714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79897186442998449)
,p_view_id=>wwv_flow_imp.id(79893309357998366)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(79828477029406715)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79912783082263612)
,p_name=>'Authorization Path'
,p_region_name=>'auth_pth'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select levels,supervisor',
'from xxhrms.xxhrms_approval_path_v',
''))
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
 p_id=>wwv_flow_imp.id(27617304423756565)
,p_query_column_id=>1
,p_column_alias=>'LEVELS'
,p_column_display_sequence=>1
,p_column_heading=>'Levels'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27617768759756566)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104366177204493862)
,p_plug_name=>'Travel Request List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'PROJECT_DELIVERABLES,R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,PROJECT_NAME,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'' AND STATUS =''REJECTED'')>0',
'THEN ''REJECTED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'' AND STATUS !=''APPROVED'')>0',
'THEN ''PENDING''',
'ELSE ''APPROVED''',
'END STATUS,FULL_NAME,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'      AND TRANS_TYPE=''VOUCHER'')=0 THEN ',
'''NOT RAISED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''PENDING''))>0 THEN ',
'''PENDING''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED''))>0 THEN ',
'''REJECTED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED'',''PENDING''))=0 THEN',
'''APPROVED''',
'END VOUCH_STATUS',
'',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXHRMS.xxhrms_master_all X',
'where R.company_code=:SS_COMPANY_CODE',
'',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND X.person_id=R.EMP_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'',
'and emp_id=:ap_staff_id',
'ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P13_TRAVEL_ID_LISTING:&REQUEST_ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    'Trip : &TRIP_CATEGORY.',
    'Category : &CATEGORY_NAME.',
    'Request Status : &STATUS.',
    'Departure Date : &DEPARTURE_DATE.',
    'Voucher Status : <font color="red">&VOUCH_STATUS.</font>',
    '</pre>')),
  'text_formatting', '&PROJECT_NAME.')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(104367014817498424)
,p_name=>'Travel Request Details'
,p_region_name=>'trav_rep'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'--''<a class="edit_deliv" href="javascript:void(null);"data-id=''||REQUEST_ID||''>''||PROJECT_DELIVERABLES||''   ',
'--<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""></a>''PROJECT_DELIVERABLES,',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,PROJECT_NAME,',
'CASE',
'WHEN REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P',
'where R.company_code=:SS_COMPANY_CODE',
'and R.REQUEST_ID=:P13_TRAVEL_ID_LISTING',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'',
'AND R.PROJECT_ID=P.PROJECT_ID',
'and emp_id=:ap_staff_id'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13_TRAVEL_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(27577177835756322)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27577585602756324)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27577941422756325)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27578378559756327)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>8
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27578744348756327)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27579117955756329)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27579549503756330)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>9
,p_column_heading=>'Departure Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27579993549756332)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Arrival Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27580311558756332)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>13
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27576320314756318)
,p_query_column_id=>10
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27580704532756336)
,p_query_column_id=>11
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27576798013756321)
,p_query_column_id=>12
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>15
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27581135983756336)
,p_query_column_id=>13
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27581524085756337)
,p_query_column_id=>14
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27581973631756338)
,p_query_column_id=>15
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>3
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104370719466508010)
,p_plug_name=>'Travel Request Form'
,p_region_name=>'trav_form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104371182579501740)
,p_plug_name=>'Travel Request Details'
,p_region_name=>'empty_rep'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<i>Click on a trip category to view details or click the add new category button to create new trip category.</i>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(105732506420057403)
,p_name=>'Claims Extension'
,p_region_name=>'clm_ext'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,REQUEST_ID,EXTENSION_START_DATE,EXTENSION_END_DATE,EXTENSION_REASONS,DATE_CREATED,COMPANY_CODE,EMP_ID',
'from XXCLM.XXCLM_CLAIMS_EXTENSION',
'where request_id=:P13_TRAVEL_ID_LISTING'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_CLAIMS_EXTENSION',
'where request_id=:P13_TRAVEL_ID_LISTING'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13_TRAVEL_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(27571299739756272)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt edit_ext" alt="">'
,p_column_link_attr=>'data-id=#ID#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27570815648756271)
,p_query_column_id=>2
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27568458620756267)
,p_query_column_id=>3
,p_column_alias=>'EXTENSION_START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Extension Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27568889722756268)
,p_query_column_id=>4
,p_column_alias=>'EXTENSION_END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Extension End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27569222568756268)
,p_query_column_id=>5
,p_column_alias=>'EXTENSION_REASONS'
,p_column_display_sequence=>5
,p_column_heading=>'Extension Reasons'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27569657019756269)
,p_query_column_id=>6
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27570063741756270)
,p_query_column_id=>7
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27570471065756270)
,p_query_column_id=>8
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156394911494762146)
,p_plug_name=>'Travel Request Form'
,p_region_name=>'trav_forms'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27572261904756298)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(156394911494762146)
,p_button_name=>'submit_EXTENSION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Extension'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27584983276756345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_button_name=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27598062671756444)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_button_name=>'CONFIRM_VOUCHER'
,p_button_static_id=>'conf_vouch_but'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm Voucher'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27608775912756499)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79424799089952507)
,p_button_name=>'Save_edit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Edited Value'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27571899430756297)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(156394911494762146)
,p_button_name=>'cancel_extension'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27584532330756344)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_button_name=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27591232544756364)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79516307702535605)
,p_button_name=>'Save_deliv'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Deliverables'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27598466787756446)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_button_name=>'CANCEL_VOUCHER_RAISE'
,p_button_static_id=>'conf_vouch_buts'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel Voucher'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27590866062756363)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(79516307702535605)
,p_button_name=>'cancel_Deliv'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27609174183756500)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(79424799089952507)
,p_button_name=>'cancel_edit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27582701797756340)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104367014817498424)
,p_button_name=>'edit_TRAVELS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561269565224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Travels'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P13_TRAVEL_ID_LISTING',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED'',''APPROVED''))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27583530995756342)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(104367014817498424)
,p_button_name=>'VOUCHER'
,p_button_static_id=>'vo_form_but'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Raise Voucher'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P13_TRAVEL_ID_LISTING',
'and exists (select * from XXCLM.XXCLM_CLAIM_APPROVED_REQUEST v where v.request_id=r.REQUEST_ID ',
'                 and TRAVEL_REQUEST is not null',
'                 )',
'AND not exists(select * from XXCLM.XXCLM_CLAIMS_VOUCHER',
'where REQUEST_ID=:P13_TRAVEL_ID_LISTING)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-strikethrough'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27582397463756339)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(104367014817498424)
,p_button_name=>'edit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Extend Claim'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P13_TRAVEL_ID_LISTING',
'AND  EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'' AND STATUS NOT IN(''REJECTED'',''PENDING''))',
'AND not exists(select * from XXCLM.XXCLM_CLAIMS_REJECTED_REQUESTS v where v.request_id=r.REQUEST_ID ',
'                 and TRAVEL_REQUEST is not null)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27574979132756311)
,p_button_sequence=>10
,p_button_name=>'new_request'
,p_button_static_id=>'trav_but'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Travel Request'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27583104348756341)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(104367014817498424)
,p_button_name=>'UPDATE_DELIVERABLES_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Deliverables'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P13_TRAVEL_ID_LISTING',
'and exists (select * from XXCLM.XXCLM_CLAIM_APPROVED_REQUEST v where v.request_id=r.REQUEST_ID ',
'                 and TRAVEL_REQUEST is not null',
'                 )',
'AND not exists(select * from XXCLM.XXCLM_CLAIMS_REJECTED_REQUESTS v where v.request_id=r.REQUEST_ID ',
'                 and TRAVEL_REQUEST is not null)'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27572687363756299)
,p_name=>'P13_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156394911494762146)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27573033905756303)
,p_name=>'P13_EXT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156394911494762146)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27573498558756304)
,p_name=>'P13_EXTENSION_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(156394911494762146)
,p_prompt=>'Extension Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27573898805756306)
,p_name=>'P13_EXTENSION_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(156394911494762146)
,p_prompt=>'Extension End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27574264157756307)
,p_name=>'P13_EXTENSION_REASONS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(156394911494762146)
,p_prompt=>'Extension Reasons'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27575601514756314)
,p_name=>'P13_TRAVEL_ID_LISTING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104366177204493862)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27585348413756347)
,p_name=>'P13_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27585702229756348)
,p_name=>'P13_CATEGORY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Category'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(CATEGORY_NAME) D, CATEGORY_ID R',
'FROM XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27586178664756353)
,p_name=>'P13_PROJECT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Project'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(PROJECT_NAME) D, PROJECT_ID R',
'FROM XXPBG.XXPBG_PROJECTS',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27586586406756354)
,p_name=>'P13_STAFF_CATEGORY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27586920864756355)
,p_name=>'P13_STAFF_CATEGORY_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Staff Category'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
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
 p_id=>wwv_flow_imp.id(27587324644756355)
,p_name=>'P13_CLAIM_ITM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_arr apex_t_varchar2;',
'begin',
'  select ITEM_ID  ',
'  bulk collect into v_arr ',
'    from XXCLM.XXCLM_TRIP_REQUEST_ITEMS',
'    WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID=:P13_TRAVEL_ID_LISTING;',
'  ',
'  return(apex_string.join(v_arr, '':''));',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Claims Items'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEM_NAME d, ITEM_id r',
'from XXCLM.XXCLM_ITEM_LIST',
'where CATEGORY_ID=:P13_CATEGORY_ID',
'AND COMPANY_CODE=:SS_COMPANY_CODE',
'and STAFF_CATEGORY=:P13_STAFF_CATEGORY'))
,p_lov_cascade_parent_items=>'P13_CATEGORY_ID'
,p_ajax_items_to_submit=>'P13_CATEGORY_ID,P13_STAFF_CATEGORY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27587754700756357)
,p_name=>'P13_TRIP_CATEGORY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Trip Category'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TRIP_CATEGORY_NAME, TRIP_CATEGORY_NAME R',
'from XXCLM.XXCLM_TRIPS_CATEGORY',
'where company_code=:SS_COMPANY_CODE'))
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27588199042756358)
,p_name=>'P13_DEPARTURE_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27588563433756359)
,p_name=>'P13_ARRIVAL_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27588932303756359)
,p_name=>'P13_DEPARTURE_LOCATION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Departure Location'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOCATION_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
' order by 1'))
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27589350024756360)
,p_name=>'P13_ARRIVAL_LOCATION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Arrival Location'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOCATION_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
' order by 1'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27589790383756361)
,p_name=>'P13_ARRIVAL_LOCATION_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Arrival Location'
,p_display_as=>'NATIVE_SHUTTLE'
,p_named_lov=>'LOCATION_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
' order by 1'))
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27590113026756362)
,p_name=>'P13_PROJECT_DELIVERABLES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(104370719466508010)
,p_prompt=>'Project Deliverables'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27591699293756365)
,p_name=>'P13_PROJECT_DELIVERABLES_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(79516307702535605)
,p_prompt=>'Project Deliverables'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:In-progress;In-progress,Completed;Completed,Pending;Pending,In-complete;incomplete'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27592063465756366)
,p_name=>'P13_REASON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(79516307702535605)
,p_prompt=>'Reason'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(27598820095756449)
,p_name=>'P13_PAYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_item_default=>'Suiteuser'
,p_prompt=>'Payee'
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
 p_id=>wwv_flow_imp.id(27599224739756451)
,p_name=>'P13_PROJECT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_prompt=>'Project Name'
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
 p_id=>wwv_flow_imp.id(27599663159756452)
,p_name=>'P13_CLAIMS_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_prompt=>'Claims'
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
 p_id=>wwv_flow_imp.id(27600033928756454)
,p_name=>'P13_VOUCHER_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_prompt=>'Voucher Value'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27600437167756457)
,p_name=>'P13_PROJECT_ID_VOUCHER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79196437810793416)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27606515314756488)
,p_name=>'P13_SEQ_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79913599466263620)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27606915332756490)
,p_name=>'P13_QTY_EDIT_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79913599466263620)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27607207764756491)
,p_name=>'P13_QTY_EDIT_1_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79913599466263620)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27607664972756493)
,p_name=>'P13_ITEM_EDIT_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79913599466263620)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27609594753756501)
,p_name=>'P13_CLAIM_ITEM_EDIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79424799089952507)
,p_prompt=>'Claim Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'send_on_page_submit', 'Y',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27609993955756501)
,p_name=>'P13_ITEM_RATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79424799089952507)
,p_prompt=>'Item Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27615408750756560)
,p_name=>'P13_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79197272651793425)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27615841734756561)
,p_name=>'P13_QTY_EDIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79197272651793425)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27616253344756562)
,p_name=>'P13_QTY_EDIT_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79197272651793425)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27616674532756562)
,p_name=>'P13_ITEM_EDIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79197272651793425)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27626959310756604)
,p_name=>'NEW PAGE LOAD'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27627445074756607)
,p_event_id=>wwv_flow_imp.id(27626959310756604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#trav_form,#clm_voucher,#voucher_edit_form,#deliv_edit_form,#auth_pth,#trav_forms'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27627982428756608)
,p_event_id=>wwv_flow_imp.id(27626959310756604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P13_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'}',
'else{',
'    $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    ',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27628366419756609)
,p_name=>'create new request'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26238022748422299)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27628810141756609)
,p_event_id=>wwv_flow_imp.id(27628366419756609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
' $("#trav_forms").hide();',
'    $("#clm_ext").hide();',
'$("#up_dev").hide();',
'$s(''P13_CATEGORY_ID'','''');',
'$s(''P13_PROJECT_ID'','''');',
'$s(''P13_CLAIMS_ITEMS'','''');',
'$s(''P13_TRIP_CATEGORY'','''');',
'$s(''P13_DEPARTURE_DATE'','''');',
'$s(''P13_ARRIVAL_DATE'','''');',
'$s(''P13_DEPARTURE_LOCATION'','''');',
'$s(''P13_ARRIVAL_LOCATION'','''');',
'$s(''P13_PROJECT_DELIVERABLES'','''');',
'$("#auth_pth").show();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27629394943756610)
,p_event_id=>wwv_flow_imp.id(27628366419756609)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27629739205756611)
,p_name=>'EDIT request'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26245842836422365)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27631204583756614)
,p_event_id=>wwv_flow_imp.id(27629739205756611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27630792493756613)
,p_event_id=>wwv_flow_imp.id(27629739205756611)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
'$s(''P13_CATEGORY_ID'','''');',
'$s(''P13_PROJECT_ID'','''');',
'$s(''P13_CLAIMS_ITEMS'','''');',
'$s(''P13_TRIP_CATEGORY'','''');',
'$s(''P13_DEPARTURE_DATE'','''');',
'$s(''P13_ARRIVAL_DATE'','''');',
'$s(''P13_DEPARTURE_LOCATION'','''');',
'$s(''P13_ARRIVAL_LOCATION'','''');',
'$s(''P13_PROJECT_DELIVERABLES'','''');',
'$("#auth_pth").show();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27630201662756612)
,p_event_id=>wwv_flow_imp.id(27629739205756611)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REQUEST_ID,CATEGORY_ID,PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'PROJECT_DELIVERABLES',
'INTO :P13_REQUEST_ID,:P13_CATEGORY_ID,:P13_PROJECT_ID,:P13_TRIP_CATEGORY,:P13_DEPARTURE_DATE,:P13_ARRIVAL_DATE,:P13_DEPARTURE_LOCATION,',
':P13_ARRIVAL_LOCATION,:P13_PROJECT_DELIVERABLES',
'',
'FROM XXCLM.XXCLM_TRAVEL_REQUEST',
'WHERE REQUEST_ID=:P13_TRAVEL_ID_LISTING;'))
,p_attribute_02=>'P13_TRAVEL_ID_LISTING'
,p_attribute_03=>'P13_REQUEST_ID,P13_CATEGORY_ID,P13_PROJECT_ID,P13_CLAIM_ITM,P13_TRIP_CATEGORY,P13_DEPARTURE_DATE,P13_ARRIVAL_DATE,P13_DEPARTURE_LOCATION,P13_ARRIVAL_LOCATION,P13_PROJECT_DELIVERABLES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27631674506756614)
,p_name=>'CANCEL TRAVEL FORM'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26248007215422378)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27632163636756615)
,p_event_id=>wwv_flow_imp.id(27631674506756614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P13_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'    $("#trav_form").hide();',
'}',
'',
'else{',
'    $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    $("#trav_form").hide();',
'     $("#up_dev").show();',
'    $("#clm_ext").show();',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'$("#trav_but").show();',
'$s(''P13_CATEGORY_ID'','''');',
'$s(''P13_PROJECT_ID'','''');',
'$s(''P13_CLAIMS_ITEMS'','''');',
'$s(''P13_TRIP_CATEGORY'','''');',
'$s(''P13_DEPARTURE_DATE'','''');',
'$s(''P13_ARRIVAL_DATE'','''');',
'$s(''P13_DEPARTURE_LOCATION'','''');',
'$s(''P13_ARRIVAL_LOCATION'','''');',
'$s(''P13_PROJECT_DELIVERABLES'','''');',
'$("#auth_pth").hide();',
'$("html, body").animate({ scrollTop:  $("#tr").offset().top }, "slow");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27632667519756617)
,p_event_id=>wwv_flow_imp.id(27631674506756614)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27633066671756617)
,p_name=>'SUBMIT TRAVEL FORM'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26248482369422379)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27635574269756629)
,p_event_id=>wwv_flow_imp.id(27633066671756617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$s((''P13_DEPARTURE_DATE''),($v(''P13_DEPARTURE_DATE'').replace(/\s+/, '' '')));',
'$s((''P13_ARRIVAL_DATE''),($v(''P13_ARRIVAL_DATE'').replace(/\s+/, '' '')));',
'$s((''P13_DEPARTURE_LOCATION''),($v(''P13_DEPARTURE_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P13_ARRIVAL_LOCATION''),($v(''P13_ARRIVAL_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P13_PROJECT_DELIVERABLES''),($v(''P13_PROJECT_DELIVERABLES'').replace(/\s+/, '' '')));',
'',
'',
'',
'var a=$v("P13_CATEGORY_ID");',
'var b=$v("P13_PROJECT_ID");',
'',
'var d=$v("P13_TRIP_CATEGORY");',
'var e=$v("P13_DEPARTURE_DATE");',
'',
'var g=$v("P13_DEPARTURE_LOCATION");',
'var h=$v("P13_ARRIVAL_LOCATION");',
'',
'',
' if (a==""||b==""||d==""||e==""||g==""||h==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'if (confirm("Confirm to submit?")){',
'    apex.util.showSpinner( $( "#trav_form" ) );',
'    return true;',
'   ',
'}',
'else{',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27634037331756622)
,p_event_id=>wwv_flow_imp.id(27633066671756617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_existed boolean;',
'l_exist boolean;',
'l_exists boolean;',
'    l_message varchar2(4000) ;',
'    ct number;',
'     v_exists number;',
'  l_string          varchar2(4000) := ''P1_X:P1_Y'';',
'  l_page_items_arr  apex_t_varchar2;',
'begin',
'if :P13_REQUEST_ID is null OR :P13_REQUEST_ID=''''',
'then',
'IF :P13_TRIP_CATEGORY!=''Multi-Location Trip''',
'THEN',
'',
'XXCLM.XXCLM_CLAIMS_PKG.create_travel_request(',
'	p_CATEGORY_ID =>:P13_CATEGORY_ID,',
'    p_PROJECT_ID =>:P13_PROJECT_ID,',
'    p_TRIP_CATEGORY =>:P13_TRIP_CATEGORY,',
'    p_DEPARTURE_DATE =>:P13_DEPARTURE_DATE,',
'    p_ARRIVAL_DATE =>:P13_ARRIVAL_DATE,',
'    p_DEPARTURE_LOCATION =>:P13_DEPARTURE_LOCATION,',
'    p_ARRIVAL_LOCATION =>:P13_ARRIVAL_LOCATION,',
'    p_PROJECT_DELIVERABLES =>:P13_PROJECT_DELIVERABLES,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:AP_STAFF_ID,',
'    p_category_items =>:P13_CLAIM_ITM,',
'    ',
'    p_id =>:P13_REQUEST_ID);',
'    END IF; ',
'    ELSE',
'    l_existed := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''NEW_MAPPING'');',
'        IF l_existed = TRUE',
'        then',
'      APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''NEW_MAPPING'');',
'        end if;',
'      ',
'UPDATE XXCLM.XXCLM_TRAVEL_REQUEST SET',
'',
'CATEGORY_ID=:P13_CATEGORY_ID,',
'PROJECT_ID=:P13_PROJECT_ID,',
'TRIP_CATEGORY=:P13_TRIP_CATEGORY,',
'DEPARTURE_DATE=:P13_DEPARTURE_DATE,',
'ARRIVAL_DATE=:P13_ARRIVAL_DATE,',
'DEPARTURE_LOCATION=:P13_DEPARTURE_LOCATION,',
'ARRIVAL_LOCATION=:P13_ARRIVAL_LOCATION,',
'PROJECT_DELIVERABLES=:P13_PROJECT_DELIVERABLES',
'',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID=:P13_TRAVEL_ID_LISTING;',
' ',
'l_exists := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''EXIST_MAPPING'');',
'        IF l_exists = TRUE',
'        then ',
'        APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''EXIST_MAPPING'');',
'        ',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'        p_collection_name => ''EXIST_MAPPING'', ',
'        p_query => ''SELECT ALL ITEM_ID,REQUEST_ID FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS WHERE REQUEST_ID=''||:P13_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        else',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'        p_collection_name => ''EXIST_MAPPING'', ',
'        p_query => ''SELECT ALL ITEM_ID,REQUEST_ID FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS WHERE REQUEST_ID=''||:P13_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        END IF;',
'        ',
' l_page_items_arr := apex_string.split(p_str => :P13_CLAIM_ITM, p_sep => '':'');',
'     for i in 1..l_page_items_arr.count',
'  loop',
'  l_exist := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''NEW_MAPPING'');',
'        IF l_exist = TRUE',
'        then ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''NEW_MAPPING'',',
'        p_c001            => l_page_items_arr(i),',
'            p_c002=>:P13_TRAVEL_ID_LISTING',
'            );',
'            ',
'        ELSE',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''NEW_MAPPING'');',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''NEW_MAPPING'',',
'        p_c001            => l_page_items_arr(i),',
'            p_c002=>:P13_TRAVEL_ID_LISTING',
'            );',
'            END IF;',
'            SELECT COUNT(*) INTO CT FROM APEX_COLLECTIONS C',
'              WHERE collection_name = ''EXIST_MAPPING''',
'              AND c001=l_page_items_arr(i)',
'              and c002=:P13_TRAVEL_ID_LISTING;',
'              if ct=0',
'              then            ',
'    insert into XXCLM.XXCLM_TRIP_REQUEST_ITEMS (REQUEST_ID,ITEM_ID,COMPANY_CODE,DATE_CREATED,ITEM_QUANTITY)',
'    values(:P13_TRAVEL_ID_LISTING,l_page_items_arr(i),:SS_COMPANY_CODE,sysdate,1);',
'    end if;',
'  end loop;',
'  END IF;',
'END;'))
,p_attribute_02=>'P13_TRAVEL_ID_LISTING,P13_REQUEST_ID,P13_CATEGORY_ID,P13_PROJECT_ID,P13_TRIP_CATEGORY,P13_DEPARTURE_DATE,P13_ARRIVAL_DATE,P13_DEPARTURE_LOCATION,P13_ARRIVAL_LOCATION,P13_PROJECT_DELIVERABLES,P13_CLAIM_ITM,P13_ARRIVAL_LOCATION_1'
,p_attribute_03=>'P13_REQUEST_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27633528507756619)
,p_event_id=>wwv_flow_imp.id(27633066671756617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_existed boolean;',
'l_exist boolean;',
'l_exists boolean;',
'    l_message varchar2(4000) ;',
'    ct number;',
'     v_exists number;',
'  l_string          varchar2(4000) := ''P1_X:P1_Y'';',
'  l_page_items_arr  apex_t_varchar2;',
'begin',
'if :P13_REQUEST_ID is not  null OR :P13_REQUEST_ID!=''''',
'then',
'delete from XXCLM.XXCLM_TRIP_REQUEST_ITEMS',
'  where exists (select * FROM APEX_COLLECTIONS ',
'              WHERE collection_name = ''EXIST_MAPPING'' ',
'                  and c001=ITEM_ID',
'                   and c002=REQUEST_ID)',
'and not exists (select * FROM APEX_COLLECTIONS C',
'              WHERE collection_name = ''NEW_MAPPING'' ',
'                  and c001=ITEM_ID',
'                   and c002=REQUEST_ID)',
'                   and request_id=:P13_TRAVEL_ID_LISTING;',
'',
'  END IF;',
'END;'))
,p_attribute_02=>'P13_TRAVEL_ID_LISTING,P13_REQUEST_ID,P13_CATEGORY_ID,P13_PROJECT_ID,P13_TRIP_CATEGORY,P13_DEPARTURE_DATE,P13_ARRIVAL_DATE,P13_DEPARTURE_LOCATION,P13_ARRIVAL_LOCATION,P13_PROJECT_DELIVERABLES,P13_CLAIM_ITM'
,p_attribute_03=>'P13_REQUEST_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27635002395756625)
,p_event_id=>wwv_flow_imp.id(27633066671756617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//#budget_rep,#bud_button#budget_form',
'$("#auth_pth").hide();',
'$("#trav_but").show();',
'    $("#trav_form").hide();',
'$s(''P13_CATEGORY_ID'','''');',
'$s(''P13_PROJECT_ID'','''');',
'$s(''P13_CLAIMS_ITEMS'','''');',
'$s(''P13_TRIP_CATEGORY'','''');',
'$s(''P13_DEPARTURE_DATE'','''');',
'$s(''P13_ARRIVAL_DATE'','''');',
'$s(''P13_DEPARTURE_LOCATION'','''');',
'$s(''P13_ARRIVAL_LOCATION'','''');',
'$s(''P13_PROJECT_DELIVERABLES'','''');',
'',
'     $("#up_dev").show();',
'    $("#clm_ext").show();',
'    ',
'if($v(''P13_REQUEST_ID'')==$v(''P13_TRAVEL_ID_LISTING'')){',
'    $s(''P13_TRAVEL_ID_LISTING'',$v(''P13_REQUEST_ID''));',
'    apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'    $("#trav_rep").show();',
'    $("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();',
'}',
'else{',
'    $s(''P13_TRAVEL_ID_LISTING'',$v(''P13_REQUEST_ID''));',
'        ',
'    apex.submit();',
'}',
'$("html, body").animate({ scrollTop:  $("#tr").offset().top }, "slow");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27634528328756623)
,p_event_id=>wwv_flow_imp.id(27633066671756617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104366177204493862)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27623265560756598)
,p_name=>'HIDE/SHOW SUBMIT BUTTON'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_CLAIMS_ITEMS'
,p_condition_element=>'P13_CLAIMS_ITEMS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27623702458756599)
,p_event_id=>wwv_flow_imp.id(27623265560756598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27624248673756600)
,p_event_id=>wwv_flow_imp.id(27623265560756598)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27624604063756601)
,p_name=>'button '
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_CLAIM_ITM'
,p_condition_element=>'P13_CLAIM_ITM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27625121205756601)
,p_event_id=>wwv_flow_imp.id(27624604063756601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27625641365756602)
,p_event_id=>wwv_flow_imp.id(27624604063756601)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27619172181756588)
,p_name=>'VOUCHER_FORM'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27583530995756342)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27620059133756592)
,p_event_id=>wwv_flow_imp.id(27619172181756588)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_category_id number;',
'l_exists boolean;',
'begin',
'select PROJECT_ID,CATEGORY_ID into :P13_PROJECT_ID_VOUCHER,l_category_id from XXCLM.XXCLM_TRAVEL_REQUEST ',
'where REQUEST_ID=:P13_TRAVEL_ID_LISTING;',
'select PROJECT_NAME into :P13_PROJECT_NAME FROM XXPBG.XXPBG_PROJECTS WHERE PROJECT_ID=:P13_PROJECT_ID_VOUCHER;',
'SELECT CATEGORY_NAME INTO :P13_CLAIMS_NAME FROM XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY WHERE CATEGORY_ID=l_category_id;',
'',
'l_exists := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''RAISE_VOUCHER'');',
'        IF l_exists = TRUE',
'        then ',
'        APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''RAISE_VOUCHER'');',
'        ',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY2 (',
'        p_collection_name => ''RAISE_VOUCHER'', ',
'        p_query => ''SELECT ALL o.ITEM_RATE,ITEM_QUANTITY,null,null,null,null,null,null,null,null,',
'    I.ITEM_ID,REQUEST_ID,ITEM_OPTION,ITEM_NAME FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS I, XXCLM.XXCLM_ITEM_LIST O',
'        WHERE I.ITEM_ID=O.ITEM_ID AND REQUEST_ID=''||:P13_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        else',
'        ',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY2 (',
'        p_collection_name => ''RAISE_VOUCHER'', ',
'        p_query => ''SELECT ALL o.ITEM_RATE,ITEM_QUANTITY,null,null,null,null,null,null,null,null,',
'    I.ITEM_ID,REQUEST_ID,ITEM_OPTION,ITEM_NAME FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS I, XXCLM.XXCLM_ITEM_LIST O',
'        WHERE I.ITEM_ID=O.ITEM_ID AND REQUEST_ID=''||:P13_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        END IF;',
'',
'SELECT TO_CHAR(SUM(N001*n002),''999G999G999G999G990D00'') INTO :P13_VOUCHER_VALUE FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RAISE_VOUCHER'';',
'end;'))
,p_attribute_02=>'P13_TRAVEL_ID_LISTING,P13_PROJECT_ID_VOUCHER'
,p_attribute_03=>'P13_PROJECT_NAME,P13_PROJECT_ID_VOUCHER,P13_CLAIMS_NAME,P13_VOUCHER_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27620584964756594)
,p_event_id=>wwv_flow_imp.id(27619172181756588)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79197272651793425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27619618800756591)
,p_event_id=>wwv_flow_imp.id(27619172181756588)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#trav_rep").hide();',
'    $("#empty_rep").hide();',
'$("#clm_voucher").show();',
'$("#trav_but").hide();',
'    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27638357121756637)
,p_name=>'CANCEL VOUCHER RAISE'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26260615514422487)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27638872844756641)
,p_event_id=>wwv_flow_imp.id(27638357121756637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#trav_rep").show();',
'    $("#empty_rep").hide();',
'$("#clm_voucher").hide();',
'$("#trav_but").show();',
'    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27646953268756658)
,p_name=>'CANCEL deliverAbles'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26253432826422406)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27647467259756659)
,p_event_id=>wwv_flow_imp.id(27646953268756658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#trav_rep").show();',
'    $("#empty_rep").hide();',
'$("#deliv_edit_form").hide();',
'$("#trav_but").show();',
'    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27620937326756595)
,p_name=>'EDIT VOUCHER CLAIM ITEM'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_vouch_item'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27621484915756596)
,p_event_id=>wwv_flow_imp.id(27620937326756595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P13_SEQ_ID",$(this.triggeringElement).parent().data(''id''));',
'$(''#voucher_edit_form'').show();',
'$(''#coll_reg'').hide();',
'$(''#conf_vouch_but'').hide();',
'$(''#conf_vouch_buts'').hide();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27621934988756596)
,p_event_id=>wwv_flow_imp.id(27620937326756595)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C004, n001 into :P13_CLAIM_ITEM_EDIT, :P13_ITEM_RATE',
'FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RAISE_VOUCHER''',
'AND SEQ_ID=:P13_SEQ_ID;'))
,p_attribute_02=>'P13_SEQ_ID'
,p_attribute_03=>'P13_CLAIM_ITEM_EDIT,P13_ITEM_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27622320299756597)
,p_name=>'cancel voucher edit form'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27609174183756500)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27622849502756598)
,p_event_id=>wwv_flow_imp.id(27622320299756597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#voucher_edit_form'').hide();',
'$(''#coll_reg'').show();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27635929324756629)
,p_name=>'SAVE TRAVEL REQUEST ITEM'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27608775912756499)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27636987199756634)
,p_event_id=>wwv_flow_imp.id(27635929324756629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Submit to confirm?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27637467621756636)
,p_event_id=>wwv_flow_imp.id(27635929324756629)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''RAISE_VOUCHER'',',
'        p_seq => :P13_SEQ_ID,',
'        p_attr_number => ''1'',',
'        p_number_value => :P13_ITEM_RATE);',
'',
'SELECT TO_CHAR(SUM(N001*n002),''999G999G999G999G990D00'') INTO :P13_VOUCHER_VALUE ',
'FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RAISE_VOUCHER'';'))
,p_attribute_02=>'P13_ITEM_RATE,P13_SEQ_ID'
,p_attribute_03=>'P13_VOUCHER_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27637986312756637)
,p_event_id=>wwv_flow_imp.id(27635929324756629)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79197272651793425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27636491858756633)
,p_event_id=>wwv_flow_imp.id(27635929324756629)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#voucher_edit_form'').hide();',
'$(''#coll_reg'').show();',
'$(''#conf_vouch_but'').show();',
'$(''#conf_vouch_buts'').show();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27647810054756660)
,p_name=>'UPDATE DELIVERABLES'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26253883310422406)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27648891205756661)
,p_event_id=>wwv_flow_imp.id(27647810054756660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a=$v("P13_PROJECT_DELIVERABLES_1");',
'',
'',
' if (a==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'if (confirm("Confirm to Update deliverables?")){',
'    apex.util.showSpinner( $( "#deliv_edit_form" ) );',
'    return true;',
'   ',
'}',
'else{',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27649397115756662)
,p_event_id=>wwv_flow_imp.id(27647810054756660)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'UPDATE XXCLM.XXCLM_TRAVEL_REQUEST SET',
'',
'',
'PROJECT_DELIVERABLES=:P13_PROJECT_DELIVERABLES_1',
'',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID=:P13_TRAVEL_ID_LISTING;',
'',
'',
'INSERT INTO XXCLM.XXCLM_DELIVERABLES_UPDATE (REQUEST_ID,DELIVERABLES,REASONS,EMP_ID,COMPANY_CODE,DATE_CREATED)',
'VALUES(:P13_TRAVEL_ID_LISTING,:P13_PROJECT_DELIVERABLES_1,:P13_REASON,:AP_STAFF_ID,:SS_COMPANY_CODE,SYSDATE);',
'END;'))
,p_attribute_02=>'P13_TRAVEL_ID_LISTING,P13_REQUEST_ID,P13_CATEGORY_ID,P13_PROJECT_ID,P13_TRIP_CATEGORY,P13_DEPARTURE_DATE,P13_ARRIVAL_DATE,P13_DEPARTURE_LOCATION,P13_ARRIVAL_LOCATION,P13_PROJECT_DELIVERABLES,P13_CLAIM_ITM,P13_PROJECT_DELIVERABLES_1,P13_REASON'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27648326217756660)
,p_event_id=>wwv_flow_imp.id(27647810054756660)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//#budget_rep,#bud_button#budget_form',
'$("#trav_but").show();',
'    $("#deliv_edit_form").hide();',
'',
'$s(''P13_PROJECT_DELIVERABLES_1'','''');',
'    ',
'',
'    apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'    $("#trav_rep").show();',
'    $("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27641602510756650)
,p_name=>'SAVE ITEM_1'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_it'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27643127675756652)
,p_event_id=>wwv_flow_imp.id(27641602510756650)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P13_SEQ_ID",$(this.triggeringElement).data(''id''));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27643614770756653)
,p_event_id=>wwv_flow_imp.id(27641602510756650)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c004,n002 INTO :P13_ITEM_EDIT, :P13_QTY_EDIT_1 from apex_collections',
'where collection_name=''RAISE_VOUCHER''',
'AND SEQ_ID=:P13_SEQ_ID;'))
,p_attribute_02=>'P13_ITEM_RATE,P13_SEQ_ID,P13_QTY_EDIT,P13_ITEM_EDIT'
,p_attribute_03=>'P13_VOUCHER_VALUE,P13_ITEM_EDIT,P13_QTY_EDIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27644134755756654)
,p_event_id=>wwv_flow_imp.id(27641602510756650)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var qty = prompt(''Enter quantity ''+$v(''P13_ITEM_EDIT''), $v(''P13_QTY_EDIT_1''));',
'if (qty!=null ||qty!=''''){',
'',
'    $s((''P13_QTY_EDIT''),qty);',
'   return true;',
'}',
'    else{',
'        alert(''Quantity can\''t be empty.'');',
'     return false;',
'',
'    }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27642181797756650)
,p_event_id=>wwv_flow_imp.id(27641602510756650)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P13_QTY_EDIT is not null ',
'then',
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''RAISE_VOUCHER'',',
'        p_seq => :P13_SEQ_ID,',
'        p_attr_number => ''2'',',
'        p_number_value => :P13_QTY_EDIT);',
'',
'SELECT TO_CHAR(SUM(N001*n002),''999G999G999G999G990D00'') INTO :P13_VOUCHER_VALUE FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RAISE_VOUCHER'';',
'end if;'))
,p_attribute_02=>'P13_ITEM_RATE,P13_SEQ_ID,P13_QTY_EDIT'
,p_attribute_03=>'P13_VOUCHER_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27642646216756651)
,p_event_id=>wwv_flow_imp.id(27641602510756650)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79197272651793425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27639281930756641)
,p_name=>'CONFIRM RAISED VOUCHER'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26260229605422486)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27639796809756644)
,p_event_id=>wwv_flow_imp.id(27639281930756641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Submit to confirm raised voucher?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27640203225756647)
,p_event_id=>wwv_flow_imp.id(27639281930756641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'CT NUMBER;',
'BEGIN',
'SELECT SUM(N001*n002) INTO CT FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''RAISE_VOUCHER'';',
'',
'',
'insert into XXCLM.XXCLM_CLAIMS_VOUCHER(REQUEST_ID,EMP_ID,PROJECT_ID,CLAIMS_ID,COMPANY_CODE,DATE_CREATED,VOUCHER_VALUE)',
'values(:P13_TRAVEL_ID_LISTING,:AP_STAFF_ID,:P13_PROJECT_ID_VOUCHER,NULL,:SS_COMPANY_CODE,SYSDATE,CT);',
'',
'',
'for x in (select * from apex_collections where collection_name=''RAISE_VOUCHER'')',
'LOOP',
'UPDATE XXCLM.XXCLM_TRIP_REQUEST_ITEMS',
'SET ITEM_RATE=x.n001,',
'item_quantity=x.n002',
'where REQUEST_ID=x.c002',
'and item_id=x.c001;',
'end loop;',
'END;'))
,p_attribute_02=>'P13_PROJECT_ID_VOUCHER,P13_TRAVEL_ID_LISTING,AP_STAFF_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27640704952756648)
,p_event_id=>wwv_flow_imp.id(27639281930756641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'voucher has been raised.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27641270398756649)
,p_event_id=>wwv_flow_imp.id(27639281930756641)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#trav_rep").show();',
'    $("#empty_rep").hide();',
'$("#clm_voucher").hide();',
'$("#vo_form_but").hide();',
'$("#trav_but").show();',
'    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27626094242756603)
,p_name=>'UPDATE_DELIVERABLES_TABLE'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27583104348756341)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27626588325756604)
,p_event_id=>wwv_flow_imp.id(27626094242756603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("html, body").animate({ scrollTop:  $("#up_dev").offset().top }, "slow");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27649726171756663)
,p_name=>'New'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27650216411756664)
,p_event_id=>wwv_flow_imp.id(27649726171756663)
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
'      , p_value => ''TRAVEL'');'))
,p_attribute_02=>'AP_STAFF_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27650601712756664)
,p_name=>'EDIT request'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26408142152863223)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27651644343756666)
,p_event_id=>wwv_flow_imp.id(27650601712756664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27651163469756665)
,p_event_id=>wwv_flow_imp.id(27650601712756664)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#up_dev").hide();',
'$("#trav_but").hide();',
'    $("#trav_forms").show();',
'    $("#clm_ext").hide();',
'$s(''P13_EXTENSION_START_DATE'','''');',
'$s(''P13_EXTENSION_END_DATE'','''');',
'$s(''P13_EXTENSION_REASONS'','''');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27652073242756667)
,p_name=>'CANCEL EXT FORM'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26405242296858510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27652576921756667)
,p_event_id=>wwv_flow_imp.id(27652073242756667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P13_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'    $("#trav_forms").hide();',
'',
'}',
'',
'else{',
'    $("#trav_rep").show();',
'    $("#clm_ext").show();',
'    $("#empty_rep").hide();',
'    $("#trav_forms").hide();',
'    $("#up_dev").show();',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'$("#trav_but").show();',
'$s(''P8_CATEGORY_ID'','''');',
'$s(''P8_PROJECT_ID'','''');',
'$s(''P8_CLAIMS_ITEMS'','''');',
'$s(''P8_TRIP_CATEGORY'','''');',
'$s(''P8_DEPARTURE_DATE'','''');',
'$s(''P8_ARRIVAL_DATE'','''');',
'$s(''P8_DEPARTURE_LOCATION'','''');',
'$s(''P8_ARRIVAL_LOCATION'','''');',
'$s(''P8_PROJECT_DELIVERABLES'','''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27653030343756668)
,p_event_id=>wwv_flow_imp.id(27652073242756667)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27653492824756669)
,p_name=>'SUBMIT EXTEN FORM'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26405650937858512)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27655428342756672)
,p_event_id=>wwv_flow_imp.id(27653492824756669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s((''P13_EXTENSION_START_DATE''),($v(''P13_EXTENSION_START_DATE'').replace(/\s+/, '' '')));',
'$s((''P13_EXTENSION_END_DATE''),($v(''P13_EXTENSION_END_DATE'').replace(/\s+/, '' '')));',
'$s((''P13_EXTENSION_REASONS''),($v(''P13_EXTENSION_REASONS'').replace(/\s+/, '' '')));',
'',
'',
'var a=$v("P13_EXTENSION_START_DATE");',
'var b=$v("P13_EXTENSION_END_DATE");',
'',
'var d=$v("P13_EXTENSION_REASONS");',
'',
' if (a==""||b==""||d==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'if (confirm("Confirm to submit?")){',
'    apex.util.showSpinner( $( "#trav_form" ) );',
'    ',
'    return true;',
'   ',
'}',
'else{',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27653914278756670)
,p_event_id=>wwv_flow_imp.id(27653492824756669)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_existed boolean;',
'l_exist boolean;',
'l_exists boolean;',
'    l_message varchar2(4000) ;',
'    ct number;',
'     v_exists number;',
'  l_string          varchar2(4000) := ''P1_X:P1_Y'';',
'  l_page_items_arr  apex_t_varchar2;',
'begin',
'if :P13_ID is null OR :P13_ID=''''',
'then',
'XXCLM.XXCLM_CLAIMS_PKG.create_claim_ext(',
'	p_REQUEST_ID =>:P13_TRAVEL_ID_LISTING,',
'    p_EXTENSION_START_DATE =>:P13_EXTENSION_START_DATE,',
'    p_EXTENSION_END_DATE =>:P13_EXTENSION_END_DATE,',
'    p_EXTENSION_REASONS =>:P13_EXTENSION_REASONS,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:AP_STAFF_ID,',
'   p_id =>:P13_ID);',
'     ',
'    ELSE',
'    ',
'UPDATE XXCLM.XXCLM_CLAIMS_EXTENSION SET',
'',
'EXTENSION_START_DATE=:P13_EXTENSION_START_DATE,',
'EXTENSION_END_DATE=:P13_EXTENSION_END_DATE,',
'EXTENSION_REASONS=:P13_EXTENSION_REASONS',
'',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND ID=:P13_EXT_ID;',
' ',
'  END IF;',
'END;'))
,p_attribute_02=>'P13_ID,P13_TRAVEL_ID_LISTING,P13_EXTENSION_START_DATE,P13_EXTENSION_END_DATE,P13_EXTENSION_REASONS,P13_EXT_ID'
,p_attribute_03=>'P13_ID,P13_TRAVEL_ID_LISTING,P13_EXTENSION_START_DATE,P13_EXTENSION_END_DATE,P13_EXTENSION_REASONS,P13_EXT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27654999613756671)
,p_event_id=>wwv_flow_imp.id(27653492824756669)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//#budget_rep,#bud_button#budget_form',
'$("#trav_but").show();',
'    $("#trav_forms").hide();',
'$s(''P13_EXTENSION_START_DATE'','''');',
'$s(''P13_EXTENSION_END_DATE'','''');',
'$s(''P13_EXTENSION_REASONS'','''');',
'',
'  ',
'if($v(''P13_ID'')==$v(''P13_EXT_ID'')){',
'    $s(''P13_EXT_ID'',$v(''P13_ID''));',
'    apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'    apex.event.trigger(''#trav_ext'', ''apexrefresh'');',
'    $("#trav_rep").show();',
'    $("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();',
'    ',
'}',
'else{',
'    $s(''P13_EXT_ID'',$v(''P13_ID''));',
'        ',
'    apex.submit();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27654429058756671)
,p_event_id=>wwv_flow_imp.id(27653492824756669)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27655861652756673)
,p_name=>'EDIT_FORM'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_ext'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27656331228756674)
,p_event_id=>wwv_flow_imp.id(27655861652756673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P13_EXT_ID",$(this.triggeringElement).parent().data(''id''));',
'$("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#trav_but").hide();',
'    $("#trav_forms").show();',
'    $("#clm_ext").hide();',
'$s(''P13_EXTENSION_START_DATE'','''');',
'$s(''P13_EXTENSION_END_DATE'','''');',
'$s(''P13_EXTENSION_REASONS'','''');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27656898825756675)
,p_event_id=>wwv_flow_imp.id(27655861652756673)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ID,EXTENSION_START_DATE,EXTENSION_END_DATE,EXTENSION_REASONS into ',
':P13_ID,:P13_EXTENSION_START_DATE,:P13_EXTENSION_END_DATE,:P13_EXTENSION_REASONS',
'from ',
'XXCLM.xXCLM_CLAIMS_EXTENSION',
'where id=:P13_EXT_ID;'))
,p_attribute_02=>'P13_ID,P13_TRAVEL_ID_LISTING,P13_EXTENSION_START_DATE,P13_EXTENSION_END_DATE,P13_EXTENSION_REASONS,P13_EXT_ID'
,p_attribute_03=>'P13_ID,P13_TRAVEL_ID_LISTING,P13_EXTENSION_START_DATE,P13_EXTENSION_END_DATE,P13_EXTENSION_REASONS,P13_EXT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27644517154756654)
,p_name=>'TRIP TYPE'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_TRIP_CATEGORY'
,p_condition_element=>'P13_TRIP_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Multi-Location Trip'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27645090389756655)
,p_event_id=>wwv_flow_imp.id(27644517154756654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_ARRIVAL_LOCATION_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27646544125756658)
,p_event_id=>wwv_flow_imp.id(27644517154756654)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_ARRIVAL_LOCATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27645558722756656)
,p_event_id=>wwv_flow_imp.id(27644517154756654)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_ARRIVAL_LOCATION_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27646010854756657)
,p_event_id=>wwv_flow_imp.id(27644517154756654)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_ARRIVAL_LOCATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27597395104756428)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(79827554975406706)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Deliverables - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27597395104756428
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27608011917756496)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(79913599466263620)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Caims Items - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27608011917756496
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27618718147756586)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'STAFF CATEGORY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NVL(STAFF_CATEGORY,''No Category'') INTO :P13_STAFF_CATEGORY from XXHRMS_MASTER_ALL',
'WHERE EMPLOYEE_NUMBER=:AP_STAFF_ID;',
'  ',
'  select nvl(VALUE_DESC, ''No Value'') INTO :P13_STAFF_CATEGORY_1 ',
'   From xxhrms.XXHRMS_LOOKUP_LOV_V ',
'  WHERE UPPER(TYPE_CODE) = ''EMP_CAT''',
'  AND COMPANY_CODE = :SS_COMPANY_CODE',
'  AND VALUE_CODE =:P13_STAFF_CATEGORY',
'  and rownum = 1;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>27618718147756586
);
wwv_flow_imp.component_end;
end;
/
