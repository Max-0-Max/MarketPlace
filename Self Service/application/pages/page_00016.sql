prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>'Travel Request'
,p_step_title=>'Travel Request'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function addDays(date, inx) {',
'    var d = new Date(date);',
'    d.setDate(d.getDate() + inx);  ',
'    return d;',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $(''#P5_DEPARTURE_DATE'').datepicker(''option'', ''onSelect'', function(dateTxt, inst) {',
'        var currentDay = new Date(inst[''selectedYear''], inst[''selectedMonth''], inst[''selectedDay'']);',
'        $(''#P5_ARRIVAL_DATE'').datepicker(''option'', ''minDate'', addDays(currentDay, 0));',
'    });',
''))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56028168581161158)
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
 p_id=>wwv_flow_imp.id(56029003422161167)
,p_plug_name=>'Caims Items'
,p_parent_plug_id=>wwv_flow_imp.id(56028168581161158)
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
'THEN ''<a class="edit_vouch_item" href="javascript:void(null);"data-id=''||Seq_Id||''>''||C003||''   ',
'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""></a>''',
'ELSE C003',
'END EDIT,',
'n001*n002 total,',
'case when c003=''EDITABLE''',
'THEN ''<a href="javascript:void(null);"data-id=''||Seq_Id||''><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" ',
'class="apex-edit-pencil-alt edit_vouch_item" alt=""></a>''',
'END SD',
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
 p_id=>wwv_flow_imp.id(56179797303018818)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KUNLE'
,p_internal_uid=>56179797303018818
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30688824865546317)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30689238490546319)
,p_db_column_name=>'C001'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30689608673546319)
,p_db_column_name=>'C002'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30690823602546320)
,p_db_column_name=>'C005'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'c005'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30690041467546320)
,p_db_column_name=>'C003'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Item Option'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30690402004546320)
,p_db_column_name=>'C004'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Claim Items'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30691267440546321)
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
 p_id=>wwv_flow_imp.id(30691613783546321)
,p_db_column_name=>'C006'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'c006'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30692012459546322)
,p_db_column_name=>'EDIT'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Item Option'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30692409335546322)
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
 p_id=>wwv_flow_imp.id(30692870090546322)
,p_db_column_name=>'TOTAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30693269960546323)
,p_db_column_name=>'SD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Sd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56210351075036650)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'306936'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID:C004:N002:N001:C003:EDIT::TOTAL:SD'
,p_sum_columns_on_break=>'TOTAL:N001'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56256529860320249)
,p_plug_name=>'Edit Voucher Item'
,p_parent_plug_id=>wwv_flow_imp.id(56028168581161158)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56745330236631362)
,p_plug_name=>'Caims Items'
,p_parent_plug_id=>wwv_flow_imp.id(56028168581161158)
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
 p_id=>wwv_flow_imp.id(56834725774145730)
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
 p_id=>wwv_flow_imp.id(56834788187145731)
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
 p_id=>wwv_flow_imp.id(56834962120145732)
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
 p_id=>wwv_flow_imp.id(56835044222145733)
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
 p_id=>wwv_flow_imp.id(56835100323145734)
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
 p_id=>wwv_flow_imp.id(56835217861145735)
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
 p_id=>wwv_flow_imp.id(56835312610145736)
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
 p_id=>wwv_flow_imp.id(56835381782145737)
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
 p_id=>wwv_flow_imp.id(56835549224145738)
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
 p_id=>wwv_flow_imp.id(56835681538145740)
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
 p_id=>wwv_flow_imp.id(56835850842145741)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56835888821145742)
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
 p_id=>wwv_flow_imp.id(56834585392145729)
,p_internal_uid=>56834585392145729
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
 p_id=>wwv_flow_imp.id(56840771910155728)
,p_interactive_grid_id=>wwv_flow_imp.id(56834585392145729)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(56840826416155730)
,p_report_id=>wwv_flow_imp.id(56840771910155728)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56841292828155749)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(56834725774145730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56841799305155763)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(56834788187145731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56842371195155771)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(56834962120145732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56842863298155776)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(56835044222145733)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56843339026155781)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(56835100323145734)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56843832809155786)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(56835217861145735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56844362625155791)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(56835312610145736)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56844821957155796)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(56835381782145737)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56845345055155802)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(56835549224145738)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56846256637155828)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(56835681538145740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(56846725200155837)
,p_view_id=>wwv_flow_imp.id(56840826416155730)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(56835850842145741)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56348038472903347)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(56744513852631354)
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
,p_ajax_items_to_submit=>'P16_EMP_ID'
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
 p_id=>wwv_flow_imp.id(30706435664546342)
,p_query_column_id=>1
,p_column_alias=>'LEVELS'
,p_column_display_sequence=>1
,p_column_heading=>'Levels'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30706882881546342)
,p_query_column_id=>2
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>2
,p_column_heading=>'Supervisor'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57164197333946559)
,p_plug_name=>'All Request'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
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
'END STATUS',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P',
'where R.company_code=:SS_COMPANY_CODE',
'',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'',
'AND R.PROJECT_ID=P.PROJECT_ID',
'and emp_id=:ap_staff_id'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P16_TRAVEL_ID_LISTING:&REQUEST_ID.',
  'list_view_features', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_column', 'STATUS',
  'text_column', 'PROJECT_NAME')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(57164512054946562)
,p_name=>'Voucher Details'
,p_region_name=>'voucher_det'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_grid_column_span=>5
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'VOUCHER_ID,	CLAIMS_ID,	v.DATE_CREATED,	VOUCHER_VALUE,V.EMP_ID,RAISED_BY,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''VOUCHER'' AND STATUS =''REJECTED'')>0',
'THEN ''REJECTED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''VOUCHER'' AND STATUS !=''APPROVED'')>0',
'THEN ''PENDING''',
'ELSE ''APPROVED''',
'END STATUS,',
'CASE',
'WHEN r.REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME)||''- Amount:''||to_char((ITEM_QUANTITY*q.ITEM_RATE),''999G999G999G999G990D00''),''<br/>'')',
'      ',
'within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'',
'',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXCLM.XXCLM_CLAIMS_VOUCHER v',
'where R.company_code=:SS_COMPANY_CODE',
'and R.REQUEST_ID=:P16_TRAVEL_ID_LISTING',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'and v.request_id=r.REQUEST_ID',
'',
'AND R.PROJECT_ID=P.PROJECT_ID',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P16_TRAVEL_ID_LISTING'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'<i>No voucher raised</i>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30669885196546291)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30670229634546291)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30670607537546291)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30671099011546292)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>6
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30671465723546292)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30671836759546293)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30672264099546293)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30672639344546293)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30673092367546294)
,p_query_column_id=>9
,p_column_alias=>'VOUCHER_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30673467214546294)
,p_query_column_id=>10
,p_column_alias=>'CLAIMS_ID'
,p_column_display_sequence=>12
,p_column_heading=>'Claim Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30669400055546290)
,p_query_column_id=>11
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>1
,p_column_heading=>'Created Date'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30673889682546294)
,p_query_column_id=>12
,p_column_alias=>'VOUCHER_VALUE'
,p_column_display_sequence=>14
,p_column_heading=>'Total Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30674263573546295)
,p_query_column_id=>13
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Request for'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30668673568546289)
,p_query_column_id=>14
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>16
,p_column_heading=>'Raised By'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30669095673546290)
,p_query_column_id=>15
,p_column_alias=>'STATUS'
,p_column_display_sequence=>15
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30674659703546295)
,p_query_column_id=>16
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>13
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57806573281496338)
,p_plug_name=>'DELIVERABLES'
,p_region_name=>'deliverables'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,REQUEST_ID,DELIVERABLES,REASONS,EMP_ID,COMPANY_CODE,DATE_CREATED,STATUS',
'FROM XXCLM.XXCLM_DELIVERABLES_UPDATE',
'WHERE REQUEST_ID=:P16_REQUEST_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57806871176496340)
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
 p_id=>wwv_flow_imp.id(57806966755496341)
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
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P16_REQUEST_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57806999892496342)
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
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57807108182496343)
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(57807180092496344)
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
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P16_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57807321562496345)
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
 p_id=>wwv_flow_imp.id(57807414597496346)
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
 p_id=>wwv_flow_imp.id(57807499433496347)
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
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:Ongoing;Ongoing,Not Started;Not Started,Deffered;Deffered,Completed;Completed'
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
 p_id=>wwv_flow_imp.id(57807596625496348)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57807728722496349)
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
 p_id=>wwv_flow_imp.id(57806740090496339)
,p_internal_uid=>57806740090496339
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
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
 p_id=>wwv_flow_imp.id(57828743923091809)
,p_interactive_grid_id=>wwv_flow_imp.id(57806740090496339)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(57828785208091810)
,p_report_id=>wwv_flow_imp.id(57828743923091809)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57829205849091842)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(57806871176496340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57829676858091858)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(57806966755496341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57830239768091873)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(57806999892496342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57830747043091880)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(57807108182496343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57831224685091887)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(57807180092496344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57831675601091893)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(57807321562496345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57832179344091899)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(57807414597496346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57832587687091910)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(57807499433496347)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57834408496108367)
,p_view_id=>wwv_flow_imp.id(57828785208091810)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(57807596625496348)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58468181922691146)
,p_plug_name=>'Reimbursement Details'
,p_region_name=>'reim_details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID,ITEM_NAME, C001, C002,N001,N002,N003,BLOB001,C003 from apex_collections,XXCLM.XXCLM_ITEM_LIST',
'where collection_name =''REIM_ITEMS''',
'AND ITEM_ID=C001',
'',
'',
'',
''))
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
 p_id=>wwv_flow_imp.id(58469529086691159)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:void(null);'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt edit_reim" alt="">'
,p_detail_link_attr=>'data-id=#SEQ_ID#'
,p_owner=>'KUNLE'
,p_internal_uid=>58469529086691159
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30696697646546332)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30697034652546332)
,p_db_column_name=>'C001'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'c001'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30697444551546333)
,p_db_column_name=>'C002'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'it'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30697850613546333)
,p_db_column_name=>'BLOB001'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Proof'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30698238285546334)
,p_db_column_name=>'N001'
,p_display_order=>550
,p_column_identifier=>'BD'
,p_column_label=>'Amount Disbursed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30698673921546334)
,p_db_column_name=>'N002'
,p_display_order=>1100
,p_column_identifier=>'DG'
,p_column_label=>'Amount Spent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30699081175546334)
,p_db_column_name=>'C003'
,p_display_order=>1110
,p_column_identifier=>'DH'
,p_column_label=>'Proof'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30699408253546335)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>1120
,p_column_identifier=>'DI'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30699872018546335)
,p_db_column_name=>'N003'
,p_display_order=>1130
,p_column_identifier=>'DJ'
,p_column_label=>'N003'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58619921736478544)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'307002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEM_NAME:N001:N002:C003:'
,p_sum_columns_on_break=>'N001:N002'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58468408423691148)
,p_plug_name=>'Reimbursement Form'
,p_region_name=>'reim_form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61055935253029523)
,p_plug_name=>'Travel Request Form'
,p_region_name=>'trav_form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60164058817031659)
,p_plug_name=>'Multi Location '
,p_parent_plug_id=>wwv_flow_imp.id(61055935253029523)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,REQUEST_ID,LOCATION,COMPANY_CODE,	END_LOCATION,	TRAVEL_DATE,NULL MULTI',
'from XXCLM.XXCLM_MULTI_LOCATIONS',
'where REQUEST_ID=:P16_TRAVEL_ID_LISTING'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P16_TRAVEL_ID_LISTING'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60164234313031661)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60164348397031662)
,p_name=>'REQUEST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(60164466896031663)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Departure Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, name as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
' order by 1'))
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
 p_id=>wwv_flow_imp.id(60164564949031664)
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
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'SS_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60164633966031665)
,p_name=>'END_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Arrival Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, name as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
' order by 1'))
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
 p_id=>wwv_flow_imp.id(61055577053029520)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61055689602029521)
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
 p_id=>wwv_flow_imp.id(61058236660029546)
,p_name=>'TRAVEL_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRAVEL_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Travel Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(61234343092944819)
,p_name=>'MULTI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MULTI'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61234665168944822)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(60164171074031660)
,p_internal_uid=>60164171074031660
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
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
 p_id=>wwv_flow_imp.id(61052572890986628)
,p_interactive_grid_id=>wwv_flow_imp.id(60164171074031660)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(61052753588986629)
,p_report_id=>wwv_flow_imp.id(61052572890986628)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61053236391986635)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(60164234313031661)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61053737628986641)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(60164348397031662)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61054220601986644)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(60164466896031663)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61054678716986647)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(60164564949031664)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61055219378986649)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(60164633966031665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61064908390056261)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(61055577053029520)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61083582460176317)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(61058236660029546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61246668955061360)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(61234343092944819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61251481070139735)
,p_view_id=>wwv_flow_imp.id(61052753588986629)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(61234665168944822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61057948620029543)
,p_plug_name=>'Travel Request Form'
,p_parent_plug_id=>wwv_flow_imp.id(61055935253029523)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81202450236875752)
,p_plug_name=>'Travel Request Form'
,p_parent_plug_id=>wwv_flow_imp.id(61055935253029523)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81197907974861604)
,p_plug_name=>'Approved Request'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,',
'CASE',
'WHEN TRIP_CATEGORY IS NOT NULL THEN (select C.VALUE_DESC',
'                                   From xxhrms.XXHRMS_LOOKUP_LOV_V C',
'                                   WHERE UPPER(TYPE_CODE) = ''TRIP_CATEGORY''',
'                                       AND R.TRIP_CATEGORY = C.VALUE_CODE)',
'                                               END ',
'TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
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
'''<font color="#a0ad17">NOT RAISED</font>''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''PENDING''))>0 THEN ',
'''<font color="#e40bc9">PENDING</font>''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED''))>0 THEN ',
'''<font color="red">REJECTED</font>''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED'',''PENDING''))=0 THEN',
'',
'''<font color="blue">APPROVED</font>''',
'',
'END VOUCH_STATUS',
'',
'',
'',
'',
'',
'',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXHRMS.xxhrms_master_all X',
'where R.company_code=:SS_COMPANY_CODE',
'',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND X.person_id=R.EMP_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'' AND STATUS IN(''REJECTED'',''PENDING''))',
'AND EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'')',
'ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P16_TRAVEL_ID_LISTING:&REQUEST_ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    'Trip : &TRIP_CATEGORY.',
    'Category : &CATEGORY_NAME.',
    'Project : <font color="blue">&PROJECT_NAME.</font>',
    'Request Status : <font color="green"> &STATUS.</font>',
    'Departure Date : &DEPARTURE_DATE.',
    'Arrival Date : &ARRIVAL_DATE.',
    'Voucher Status : &VOUCH_STATUS.',
    '</pre>')),
  'text_formatting', '&FULL_NAME.')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(81198745587866166)
,p_name=>'Travel Request Details'
,p_region_name=>'trav_rep'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,',
'case TRIP_CATEGORY ',
'when ''multi''   THEN (SELECT listagg(rownum||''. ''|| INITCAP(LOCATION)||''-''||INITCAP(END_LOCATION),''<br/>'') within group ',
'                     (order by ID )',
'     FROM XXCLM.XXCLM_MULTI_LOCATIONS Q',
'                                   WHERE Q.REQUEST_ID=R.REQUEST_ID',
'                                  )',
'     else CASE',
'           WHEN (select COUNT(*) from XXHRMS.XXHRMS_DEP_LOCATION where DEPARTURE_LOCATION=CODE)>0',
'           THEN',
'           (select name from XXHRMS.XXHRMS_DEP_LOCATION where DEPARTURE_LOCATION=CODE )',
'           ELSE lower(DEPARTURE_LOCATION)',
'           END           ',
'           ||'' - ''||',
'           CASE',
'            WHEN (select COUNT(*) from XXHRMS.XXHRMS_DEP_LOCATION where ARRIVAL_LOCATION=CODE)>0',
'           THEN',
'           (select name from XXHRMS.XXHRMS_DEP_LOCATION where ARRIVAL_LOCATION=code)',
'           else',
'           lower (ARRIVAL_LOCATION)',
'           end',
'     END ARRIVAL_LOCATION,',
'--''<a class="edit_deliv" href="javascript:void(null);"data-id=''||REQUEST_ID||''>''||PROJECT_DELIVERABLES||''   ',
'--<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""></a>''PROJECT_DELIVERABLES,',
'case ',
'when request_id is not null then (select listagg(rownum||''. ''|| DELIVERABLES,''<br/> '') within group (order by id ) from XXCLM.XXCLM_DELIVERABLES_UPDATE u',
'where u.request_id=r.REQUEST_ID)',
'end',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,PROJECT_NAME,',
'Case',
'when (select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P16_TRAVEL_ID_LISTING)>1 then',
'''<a class="vouch_det" href="javascript:void(null);">''||(select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where ',
'                                                        REQUEST_ID=:P16_TRAVEL_ID_LISTING)||',
''' vouchers raised</a>''',
'',
'when (select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P16_TRAVEL_ID_LISTING)=1 then',
'''<a class="vouch_det" href="javascript:void(null);">''||(select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where ',
'                                                       REQUEST_ID=:P16_TRAVEL_ID_LISTING)||',
''' voucher raised </a>''',
'else ''No voucher Raised''',
'end voucher,',
'',
'CASE',
'WHEN REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P',
'where R.company_code=:SS_COMPANY_CODE',
'and R.REQUEST_ID=:P16_TRAVEL_ID_LISTING',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND R.PROJECT_ID=P.PROJECT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P16_TRAVEL_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(30641438265546245)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30641865995546245)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30642234374546246)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30642682506546246)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>9
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30643028866546247)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30643473616546247)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30643848738546248)
,p_query_column_id=>7
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Travel Location Details'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30644279950546248)
,p_query_column_id=>8
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>13
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30640266782546244)
,p_query_column_id=>9
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30644659891546248)
,p_query_column_id=>10
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30640622899546244)
,p_query_column_id=>11
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>14
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30645086883546249)
,p_query_column_id=>12
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30645493511546249)
,p_query_column_id=>13
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30641019009546245)
,p_query_column_id=>14
,p_column_alias=>'VOUCHER'
,p_column_display_sequence=>15
,p_column_heading=>'Voucher'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'#VOUCHER#'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30645840727546250)
,p_query_column_id=>15
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>4
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81202913349869482)
,p_plug_name=>'Travel Request Details'
,p_region_name=>'empty_rep'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<i>Click on a travel request to view details or click the new travel request button to create new travel request.</i>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30657342929546264)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61057948620029543)
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
 p_id=>wwv_flow_imp.id(30675710666546297)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56028168581161158)
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
 p_id=>wwv_flow_imp.id(30686992096546309)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56256529860320249)
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
 p_id=>wwv_flow_imp.id(30702554946546338)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_button_name=>'Update'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30648041778546253)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56348038472903347)
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
 p_id=>wwv_flow_imp.id(30656951061546264)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61057948620029543)
,p_button_name=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30676160930546297)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56028168581161158)
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
 p_id=>wwv_flow_imp.id(30702124061546338)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_button_name=>'Cancel_update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30647680445546252)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(56348038472903347)
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
 p_id=>wwv_flow_imp.id(30687385286546309)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(56256529860320249)
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
 p_id=>wwv_flow_imp.id(30646246991546250)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(81198745587866166)
,p_button_name=>'edit'
,p_button_static_id=>'edit_trav_req'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit/Add Claim Items'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P16_TRAVEL_ID_LISTING',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' --AND STATUS IN(''REJECTED'',''APPROVED'')',
'              )'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30675030271546296)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(57164512054946562)
,p_button_name=>'CLAIM_REIMBURSEMENT'
,p_button_static_id=>'reim_but'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim/Reimbursement'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from xxclm.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P16_TRAVEL_ID_LISTING',
'AND CLAIMS_ID=''TRAVEL''',
'',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED'',''PENDING''))',
'AND not EXISTS (SELECT * FROM XXCLM.XXCLM_REIMBURSEMENT_REQUESTS WHERE TRAVEL_REQUEST_ID=:P16_TRAVEL_ID_LISTING)',
'AND EXISTS (SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''VOUCHER'')'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30646642566546251)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(81198745587866166)
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
'where R.REQUEST_ID=:P16_TRAVEL_ID_LISTING',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'' AND STATUS IN(''REJECTED'',''PENDING''))',
'AND EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'')',
'',
'AND not exists(select * from XXCLM.XXCLM_CLAIMS_VOUCHER',
'where REQUEST_ID=:P16_TRAVEL_ID_LISTING)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-strikethrough'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30637651171546229)
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
 p_id=>wwv_flow_imp.id(30700641885546336)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58468181922691146)
,p_button_name=>'REQUEST_REIMBURSEMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm Reimbursement Request'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30701087902546336)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(58468181922691146)
,p_button_name=>'CANCEL_REIMBURSEMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel Reimbursement'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(30768105164546411)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30638037972546233)
,p_name=>'P16_ITEM_SEARCH'
,p_item_sequence=>10
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30638716951546239)
,p_name=>'P16_TRAVEL_ID_LISTING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81197907974861604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30639105610546240)
,p_name=>'P16_TIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81197907974861604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30639589364546240)
,p_name=>'P16_ACTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81197907974861604)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30648401780546253)
,p_name=>'P16_PROJECT_DELIVERABLES_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(56348038472903347)
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
 p_id=>wwv_flow_imp.id(30648868582546254)
,p_name=>'P16_REASON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(56348038472903347)
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
 p_id=>wwv_flow_imp.id(30649828497546255)
,p_name=>'P16_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30650283583546256)
,p_name=>'P16_CATEGORY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Category'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(CATEGORY_NAME) D, CATEGORY_ID R',
'FROM XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'and UPPER(grp_cat)=upper(''TRAVEL'')'))
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
 p_id=>wwv_flow_imp.id(30650646211546257)
,p_name=>'P16_PROJECT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
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
 p_id=>wwv_flow_imp.id(30651061423546257)
,p_name=>'P16_EMP_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'SINGLE',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30651434642546258)
,p_name=>'P16_STAFF_CATEGORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Staff Category'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'EMPLOYEE CATEGORY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''EMP_CAT''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EMP_CAT'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P16_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(30651811679546258)
,p_name=>'P16_STAFF_CATEGORY_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Staff Category'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'EMPLOYEE CATEGORY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''EMP_CAT''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EMP_CAT'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30652228939546259)
,p_name=>'P16_CLAIM_ITM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_arr apex_t_varchar2;',
'begin',
'  select ITEM_ID  ',
'  bulk collect into v_arr ',
'    from XXCLM.XXCLM_TRIP_REQUEST_ITEMS',
'    WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
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
'where CATEGORY_ID=:P16_CATEGORY_ID',
'AND COMPANY_CODE=:SS_COMPANY_CODE',
'and STAFF_CATEGORY=:P16_STAFF_CATEGORY'))
,p_lov_cascade_parent_items=>'P16_STAFF_CATEGORY,P16_CATEGORY_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
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
 p_id=>wwv_flow_imp.id(30652600694546260)
,p_name=>'P16_CLAIM_ITM_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_arr apex_t_varchar2;',
'begin',
'  select ITEM_ID  ',
'  bulk collect into v_arr ',
'    from XXCLM.XXCLM_TRIP_REQUEST_ITEMS',
'    WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
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
'where CATEGORY_ID=:P16_CATEGORY_ID',
'AND COMPANY_CODE=:SS_COMPANY_CODE',
'and STAFF_CATEGORY=:P16_STAFF_CATEGORY_1'))
,p_cHeight=>5
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
 p_id=>wwv_flow_imp.id(30653001913546260)
,p_name=>'P16_TRIP_CATEGORY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Trip Category'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'NONE',
  'submit_when_enter_pressed', '3',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30653417390546260)
,p_name=>'P16_DEPARTURE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30653890324546261)
,p_name=>'P16_ARRIVAL_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30654229594546261)
,p_name=>'P16_DEPARTURE_LOCATION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Departure Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Others'
,p_lov_null_value=>'Others'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'SINGLE',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30654694633546262)
,p_name=>'P16_NAME_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Specify'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(30655069798546262)
,p_name=>'P16_ARRIVAL_LOCATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Arrival Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Others'
,p_lov_null_value=>'Others'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'SINGLE',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30655457188546262)
,p_name=>'P16_NAME_2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_prompt=>'Specify'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(30655872691546263)
,p_name=>'P16_MULTILOCATIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_arr apex_t_varchar2;',
'begin',
'  select LOCATION  ',
'  bulk collect into v_arr ',
'    from XXCLM.XXCLM_MULTI_LOCATIONS',
'    WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
'  ',
'  return(apex_string.join(v_arr, '':''));',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Multi-Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'MULTI',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30656215326546263)
,p_name=>'P16_PROJECT_DELIVERABLES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(81202450236875752)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30662634260546281)
,p_name=>'P16_MULTI_SEQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60164058817031659)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30676548113546297)
,p_name=>'P16_PAYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56028168581161158)
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
 p_id=>wwv_flow_imp.id(30676988351546298)
,p_name=>'P16_VOUCHER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56028168581161158)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30677328791546298)
,p_name=>'P16_PROJECT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56028168581161158)
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
 p_id=>wwv_flow_imp.id(30677790660546298)
,p_name=>'P16_CLAIMS_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56028168581161158)
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
 p_id=>wwv_flow_imp.id(30678187007546299)
,p_name=>'P16_VOUCHER_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56028168581161158)
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
 p_id=>wwv_flow_imp.id(30678540405546299)
,p_name=>'P16_PROJECT_ID_VOUCHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56028168581161158)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30684625859546307)
,p_name=>'P16_SEQ_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56745330236631362)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30685080791546307)
,p_name=>'P16_QTY_EDIT_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56745330236631362)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30685453023546307)
,p_name=>'P16_QTY_EDIT_1_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56745330236631362)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30685890993546308)
,p_name=>'P16_ITEM_EDIT_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56745330236631362)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30687760419546310)
,p_name=>'P16_CLAIM_ITEM_EDIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56256529860320249)
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
 p_id=>wwv_flow_imp.id(30688182211546310)
,p_name=>'P16_ITEM_RATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56256529860320249)
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
 p_id=>wwv_flow_imp.id(30694055805546328)
,p_name=>'P16_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56029003422161167)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30694419409546328)
,p_name=>'P16_QTY_EDIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56029003422161167)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30694867872546329)
,p_name=>'P16_QTY_EDIT_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56029003422161167)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30695265232546329)
,p_name=>'P16_ITEM_EDIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56029003422161167)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30695938723546330)
,p_name=>'P16_TRAVEL_ID_LISTING_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(57164197333946559)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30701471480546337)
,p_name=>'P16_REIM_SEQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58468181922691146)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30702926314546338)
,p_name=>'P16_TRAVEL_REQUEST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30703372467546339)
,p_name=>'P16_REIM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30703727534546339)
,p_name=>'P16_TRAVEL_ITEM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_prompt=>'Travel Item'
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
 p_id=>wwv_flow_imp.id(30704147629546339)
,p_name=>'P16_TRAVEL_ITEM_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30704571804546340)
,p_name=>'P16_TRAVEL_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_prompt=>'Amount Received'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30704985927546340)
,p_name=>'P16_NEW_VALUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_prompt=>'Actual Amount Spent'
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
 p_id=>wwv_flow_imp.id(30705311222546340)
,p_name=>'P16_PROOF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_prompt=>'Proof'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'NATIVE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30705779542546341)
,p_name=>'P16_PROOF_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(58468408423691148)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30724781480546375)
,p_name=>'create new request'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25258736108903046)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30727742367546378)
,p_event_id=>wwv_flow_imp.id(30724781480546375)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
'$("#voucher_det").hide();  ',
'$s(''P16_CATEGORY_ID'','''');',
'$s(''P16_PROJECT_ID'','''');',
'$s(''P16_CLAIMS_ITEMS'','''');',
'$s(''P16_TRIP_CATEGORY'','''');',
'$s(''P16_DEPARTURE_DATE'','''');',
'$s(''P16_ARRIVAL_DATE'','''');',
'$s(''P16_DEPARTURE_LOCATION'','' '');',
'$s(''P16_ARRIVAL_LOCATION'','' '');',
'$s(''P16_PROJECT_DELIVERABLES'','''');',
'$s(''P16_EMP_ID'','''');',
'$s(''P16_STAFF_CATEGORY'','''');',
'$s(''P16_TIL'',$v(''P16_TRAVEL_ID_LISTING''));',
'$s(''P16_ACTION'',''INSERT'');',
'$("#auth_pth").show();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30728280537546378)
,p_event_id=>wwv_flow_imp.id(30724781480546375)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_REQUEST_ID,P16_ARRIVAL_LOCATION,P16_DEPARTURE_LOCATION,P16_NAME_1,P16_NAME_2,P16_VOUCHER_VALUE,P16_MULTILOCATIONS,P16_TRAVEL_ID_LISTING'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30725759463546376)
,p_event_id=>wwv_flow_imp.id(30724781480546375)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_STAFF_CATEGORY,P16_CLAIM_ITM'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30726208410546377)
,p_event_id=>wwv_flow_imp.id(30724781480546375)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_STAFF_CATEGORY_1,P16_CLAIM_ITM_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30727238577546377)
,p_event_id=>wwv_flow_imp.id(30724781480546375)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select CODE INTO :P16_DEPARTURE_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'  select null INTO :P16_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'  END;'))
,p_attribute_02=>'P16_DEPARTURE_LOCATION'
,p_attribute_03=>'P16_DEPARTURE_LOCATION,P16_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30726747702546377)
,p_event_id=>wwv_flow_imp.id(30724781480546375)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'ct number;',
'BEGIN',
'select count(*) into ct from  XXHRMS.XXHRMS_DEP_LOCATION;',
'select CODE INTO :P16_DEPARTURE_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWnum=1',
'  order by name desc;',
'  select CODE INTO :P16_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1',
'  order by name asc;',
'  ',
'  END;'))
,p_attribute_02=>'P16_DEPARTURE_LOCATION'
,p_attribute_03=>'P16_DEPARTURE_LOCATION,P16_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30725293824546376)
,p_event_id=>wwv_flow_imp.id(30724781480546375)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_CATEGORY_ID,P16_PROJECT_ID,P16_STAFF_CATEGORY,P16_TRIP_CATEGORY,P16_DEPARTURE_DATE,P16_DEPARTURE_LOCATION,P16_ARRIVAL_DATE,P16_ARRIVAL_LOCATION,P16_PROJECT_DELIVERABLES,P16_EMP_ID,P16_STAFF_CATEGORY_1,P16_MULTILOCATIONS,P16_NAME_1,P16_NAME_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30728721515546379)
,p_event_id=>wwv_flow_imp.id(30724781480546375)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_VOUCHER_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30729163611546379)
,p_name=>'EDIT request'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25307557844416948)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30732102551546381)
,p_event_id=>wwv_flow_imp.id(30729163611546379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_REQUEST_ID,P16_STAFF_CATEGORY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30731609997546381)
,p_event_id=>wwv_flow_imp.id(30729163611546379)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#voucher_det").hide();  ',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
'$s(''P16_CATEGORY_ID'','''');',
'$s(''P16_PROJECT_ID'','''');',
'$s(''P16_CLAIMS_ITEMS'','''');',
'$s(''P16_TRIP_CATEGORY'','''');',
'$s(''P16_DEPARTURE_DATE'','''');',
'$s(''P16_ARRIVAL_DATE'','''');',
'$s(''P16_DEPARTURE_LOCATION'','''');',
'$s(''P16_ARRIVAL_LOCATION'','''');',
'$s(''P16_PROJECT_DELIVERABLES'','''');',
'$s(''P16_STAFF_CATEGORY'','''');',
'$s(''P16_ACTION'',''UPDATE'');',
'$("#auth_pth").show();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30732664735546382)
,p_event_id=>wwv_flow_imp.id(30729163611546379)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REQUEST_ID,CATEGORY_ID,PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'PROJECT_DELIVERABLES,EMP_ID',
'INTO :P16_REQUEST_ID,:P16_CATEGORY_ID,:P16_PROJECT_ID,:P16_TRIP_CATEGORY,:P16_DEPARTURE_DATE,:P16_ARRIVAL_DATE,:P16_DEPARTURE_LOCATION,',
':P16_ARRIVAL_LOCATION,:P16_PROJECT_DELIVERABLES,:p16_EMP_ID',
'',
'FROM XXCLM.XXCLM_TRAVEL_REQUEST',
'WHERE REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
'',
'select STAFF_CATEGORY INTO :P16_STAFF_CATEGORY_1 from XXHRMS_MASTER_ALL',
'WHERE EMPLOYEE_NUMBER=:P16_EMP_ID;',
'',
'',
'IF :P16_TRIP_CATEGORY = ''Multi-Location Trip''',
'THEN ',
'select CODE INTO :P16_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'  END IF;'))
,p_attribute_02=>'P16_TRAVEL_ID_LISTING,P16_EMP_ID'
,p_attribute_03=>'P16_REQUEST_ID,P16_CATEGORY_ID,P16_PROJECT_ID,P16_CLAIM_ITM,P16_TRIP_CATEGORY,P16_DEPARTURE_DATE,P16_ARRIVAL_DATE,P16_DEPARTURE_LOCATION,P16_ARRIVAL_LOCATION,P16_PROJECT_DELIVERABLES,P16_EMP_ID,P16_STAFF_CATEGORY_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30730687290546380)
,p_event_id=>wwv_flow_imp.id(30729163611546379)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_STAFF_CATEGORY_1,P16_CLAIM_ITM_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30731172910546381)
,p_event_id=>wwv_flow_imp.id(30729163611546379)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_STAFF_CATEGORY,P16_CLAIM_ITM'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30730105876546380)
,p_event_id=>wwv_flow_imp.id(30729163611546379)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_CLAIM_ITM_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30729683386546379)
,p_event_id=>wwv_flow_imp.id(30729163611546379)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_CATEGORY_ID,P16_PROJECT_ID,P16_STAFF_CATEGORY,P16_TRIP_CATEGORY,P16_DEPARTURE_DATE,P16_DEPARTURE_LOCATION,P16_ARRIVAL_DATE,P16_ARRIVAL_LOCATION,P16_PROJECT_DELIVERABLES,P16_EMP_ID,P16_STAFF_CATEGORY_1,P16_MULTILOCATIONS,P16_NAME_1,P16_NAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30733061078546382)
,p_name=>'CANCEL FORM'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25308952859426511)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30733531391546383)
,p_event_id=>wwv_flow_imp.id(30733061078546382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P16_TRAVEL_ID_LISTING'',$v(''P16_TIL''));',
'if ($v(''P16_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'    $("#trav_form").hide();',
'    $("#voucher_det").hide();  ',
'}',
'',
'else{',
'    $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    $("#trav_form").hide();',
'    $("#voucher_det").show();  ',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'$("#trav_but").show();',
'$s(''P16_CATEGORY_ID'','''');',
'$s(''P16_PROJECT_ID'','''');',
'$s(''P16_CLAIMS_ITEMS'','''');',
'$s(''P16_TRIP_CATEGORY'','''');',
'$s(''P16_DEPARTURE_DATE'','''');',
'$s(''P16_ARRIVAL_DATE'','''');',
'$s(''P16_DEPARTURE_LOCATION'','''');',
'$s(''P16_ARRIVAL_LOCATION'','''');',
'$s(''P16_PROJECT_DELIVERABLES'','''');',
'$("#auth_pth").hide();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30734015953546383)
,p_event_id=>wwv_flow_imp.id(30733061078546382)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30734409546546384)
,p_name=>'SUBMIT FORM'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25308583872426508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30735960333546385)
,p_event_id=>wwv_flow_imp.id(30734409546546384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s((''P16_DEPARTURE_DATE''),($v(''P16_DEPARTURE_DATE'').replace(/\s+/, '' '')));',
'$s((''P16_ARRIVAL_DATE''),($v(''P16_ARRIVAL_DATE'').replace(/\s+/, '' '')));',
'$s((''P16_DEPARTURE_LOCATION''),($v(''P16_DEPARTURE_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P16_ARRIVAL_LOCATION''),($v(''P16_ARRIVAL_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P16_PROJECT_DELIVERABLES''),($v(''P16_PROJECT_DELIVERABLES'').replace(/\s+/, '' '')));',
'',
'',
'',
'var a=$v("P16_CATEGORY_ID");',
'var b=$v("P16_PROJECT_ID");',
'',
'var d=$v("P16_TRIP_CATEGORY");',
'var e=$v("P16_DEPARTURE_DATE");',
'',
'var g=$v("P16_DEPARTURE_LOCATION");',
'var h=$v("P16_ARRIVAL_LOCATION");',
'',
'if ($v(''P16_TRIP_CATEGORY'')!=''Multi-Location Trip''){',
' if (a==""||b==""||d==""||e==""||g==""||h==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'}',
'',
'if ($v(''P16_TRIP_CATEGORY'')==''Multi-Location Trip''){',
' if (a==""||b==""||d==""||e==""||g==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'}',
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
 p_id=>wwv_flow_imp.id(30736464530546386)
,p_event_id=>wwv_flow_imp.id(30734409546546384)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_ACTION=''UPDATE''',
'then',
' ',
'XXCLM.XXCLM_CLAIMS_PKG.create_travel_request(',
'	p_CATEGORY_ID =>:P16_CATEGORY_ID,',
'    p_PROJECT_ID =>:P16_PROJECT_ID,',
'    p_TRIP_CATEGORY =>:P16_TRIP_CATEGORY,',
'    p_DEPARTURE_DATE =>:P16_DEPARTURE_DATE,',
'    p_ARRIVAL_DATE =>:P16_ARRIVAL_DATE,',
'    p_DEPARTURE_LOCATION =>:P16_DEPARTURE_LOCATION,',
'    p_ARRIVAL_LOCATION =>:P16_ARRIVAL_LOCATION,',
'    p_PROJECT_DELIVERABLES =>:P16_PROJECT_DELIVERABLES,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:P16_EMP_ID,',
'    p_category_items =>:P16_CLAIM_ITM_1,',
'    P_ACTION =>''UPDATE'',',
'    p_multi =>:P16_MULTILOCATIONS,',
'    P_ml_code=>:P16_MULTI_SEQ,',
'    p_id =>:P16_TRAVEL_ID_LISTING);',
'    END IF;'))
,p_attribute_02=>'P16_TRAVEL_ID_LISTING,P16_REQUEST_ID,P16_CATEGORY_ID,P16_PROJECT_ID,P16_TRIP_CATEGORY,P16_DEPARTURE_DATE,P16_ARRIVAL_DATE,P16_DEPARTURE_LOCATION,P16_ARRIVAL_LOCATION,P16_PROJECT_DELIVERABLES,P16_NAME_1,P16_NAME_2,P16_MULTILOCATIONS,P16_ACTION'
,p_attribute_03=>'P16_REQUEST_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30735499648546384)
,p_event_id=>wwv_flow_imp.id(30734409546546384)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'    apex.submit();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30734987233546384)
,p_event_id=>wwv_flow_imp.id(30734409546546384)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81197907974861604)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30710105490546361)
,p_name=>'VOUCHER_FORM'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25390898180614938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30711150161546363)
,p_event_id=>wwv_flow_imp.id(30710105490546361)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_category_id number;',
'l_exists boolean;',
'l_emp_id varchar2(100);',
'ct number;',
'begin',
'select EMP_ID,PROJECT_ID,CATEGORY_ID into l_emp_id, :P16_PROJECT_ID_VOUCHER,l_category_id from XXCLM.XXCLM_TRAVEL_REQUEST ',
'where REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
'select PROJECT_NAME into :P16_PROJECT_NAME FROM XXPBG.XXPBG_PROJECTS WHERE PROJECT_ID=:P16_PROJECT_ID_VOUCHER;',
'SELECT CATEGORY_NAME INTO :P16_CLAIMS_NAME FROM XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY WHERE CATEGORY_ID=l_category_id;',
'select FULL_NAME into :P16_PAYEE from XXHRMS.xxhrms_master_all where person_id=(select EMP_ID from XXCLM.XXCLM_TRAVEL_REQUEST ',
'                                                                               where REQUEST_ID=:P16_TRAVEL_ID_LISTING);',
'                                                                               ',
'select count(*) into ct from XXCLM.XXCLM_TRIP_REQUEST_ITEMS where REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
'if ct=0',
'then',
':P16_ITEM_SEARCH :=0;',
'else',
':P16_ITEM_SEARCH :=1;',
'end if;',
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
'        WHERE I.ITEM_ID=O.ITEM_ID AND REQUEST_ID=''||:P16_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        else',
'        ',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY2 (',
'        p_collection_name => ''RAISE_VOUCHER'', ',
'        p_query => ''SELECT ALL o.ITEM_RATE,ITEM_QUANTITY,null,null,null,null,null,null,null,null,',
'    I.ITEM_ID,REQUEST_ID,ITEM_OPTION,ITEM_NAME FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS I, XXCLM.XXCLM_ITEM_LIST O',
'        WHERE I.ITEM_ID=O.ITEM_ID AND REQUEST_ID=''||:P16_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        END IF;',
'',
'SELECT TO_CHAR(SUM(N001*n002),''999G999G999G999G990D00'') INTO :P16_VOUCHER_VALUE FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RAISE_VOUCHER'';',
'end;'))
,p_attribute_02=>'P16_TRAVEL_ID_LISTING,P16_PROJECT_ID_VOUCHER'
,p_attribute_03=>'P16_PROJECT_NAME,P16_PROJECT_ID_VOUCHER,P16_CLAIMS_NAME,P16_VOUCHER_VALUE,P16_PAYEE,P16_ITEM_SEARCH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30711648325546364)
,p_event_id=>wwv_flow_imp.id(30710105490546361)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56029003422161167)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30710607536546362)
,p_event_id=>wwv_flow_imp.id(30710105490546361)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P16_ITEM_SEARCH'')==0){',
'    alert(''Request has no items selected, Voucher can\''t be raised.'');',
'    return false',
'}',
'else{',
'$("#trav_rep").hide();',
'    $("#empty_rep").hide();',
'$("#clm_voucher").show();',
'$("#trav_but").hide();',
'$("#voucher_det").hide();  ',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30739208576546388)
,p_name=>'CANCEL VOUCHER RAISE'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25708245679357102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30739751698546388)
,p_event_id=>wwv_flow_imp.id(30739208576546388)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#trav_rep").show();',
'    $("#empty_rep").hide();',
'$("#clm_voucher").hide();',
'$("#trav_but").show();',
'$("#voucher_det").show();  ',
'    '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30740293523546389)
,p_event_id=>wwv_flow_imp.id(30739208576546388)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_VOUCHER_VALUE,P16_VOUCHER_ID,P16_PROJECT_ID_VOUCHER,P16_CLAIMS_NAME,P16_PROJECT_NAME,P16_PAYEE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30747430764546394)
,p_name=>'CANCEL delivera'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25711764584357137)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30747905508546395)
,p_event_id=>wwv_flow_imp.id(30747430764546394)
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
 p_id=>wwv_flow_imp.id(30712068547546364)
,p_name=>'EDIT VOUCHER CLAIM ITEM'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_vouch_item'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30712501526546365)
,p_event_id=>wwv_flow_imp.id(30712068547546364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s("P16_SEQ_ID",$(this.triggeringElement).parent().data(''id''));',
'$s("P16_SEQ_ID",$(this.triggeringElement).data(''id''));',
'',
'$(''#voucher_edit_form'').show();',
'$(''#coll_reg'').hide();',
'$(''#conf_vouch_but'').hide();',
'$(''#conf_vouch_buts'').hide();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30713048216546365)
,p_event_id=>wwv_flow_imp.id(30712068547546364)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C004, n001 into :P16_CLAIM_ITEM_EDIT, :P16_ITEM_RATE',
'FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RAISE_VOUCHER''',
'AND SEQ_ID=:P16_SEQ_ID;'))
,p_attribute_02=>'P16_REIM_SEQ,P16_SEQ_ID'
,p_attribute_03=>'P16_CLAIM_ITEM_EDIT,P16_ITEM_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30713451017546365)
,p_name=>'cancel voucher edit form'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25620455788774041)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30713943723546366)
,p_event_id=>wwv_flow_imp.id(30713451017546365)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#voucher_edit_form'').hide();',
'$(''#coll_reg'').show();',
'$(''#conf_vouch_but'').show();',
'$(''#conf_vouch_buts'').show();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30736871357546386)
,p_name=>'SAVE ITEM'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25620385161774040)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30737812261546387)
,p_event_id=>wwv_flow_imp.id(30736871357546386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Submit to confirm?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30738396414546387)
,p_event_id=>wwv_flow_imp.id(30736871357546386)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''RAISE_VOUCHER'',',
'        p_seq => :P16_SEQ_ID,',
'        p_attr_number => ''1'',',
'        p_number_value => :P16_ITEM_RATE);',
'        ',
'       ',
'',
'SELECT TO_CHAR(SUM(N001*n002),''999G999G999G999G990D00'') INTO :P16_VOUCHER_VALUE ',
'FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RAISE_VOUCHER'';'))
,p_attribute_02=>'P16_ITEM_RATE,P16_REIM_SEQ'
,p_attribute_03=>'P16_VOUCHER_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30738817493546388)
,p_event_id=>wwv_flow_imp.id(30736871357546386)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56029003422161167)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30737348461546386)
,p_event_id=>wwv_flow_imp.id(30736871357546386)
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
 p_id=>wwv_flow_imp.id(30748340781546395)
,p_name=>'UPDATE DELIVERABLES'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25711848418357138)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30749353200546396)
,p_event_id=>wwv_flow_imp.id(30748340781546395)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a=$v("P16_PROJECT_DELIVERABLES_1");',
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
 p_id=>wwv_flow_imp.id(30749821064546396)
,p_event_id=>wwv_flow_imp.id(30748340781546395)
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
'PROJECT_DELIVERABLES=:P16_PROJECT_DELIVERABLES_1',
'',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
'',
'',
'INSERT INTO XXCLM.XXCLM_DELIVERABLES_UPDATE (REQUEST_ID,DELIVERABLES,REASONS,EMP_ID,COMPANY_CODE,DATE_CREATED)',
'VALUES(:P16_TRAVEL_ID_LISTING,:P16_PROJECT_DELIVERABLES_1,:P16_REASON,:AP_STAFF_ID,:SS_COMPANY_CODE,SYSDATE);',
'END;'))
,p_attribute_02=>'P16_TRAVEL_ID_LISTING,P16_REQUEST_ID,P16_CATEGORY_ID,P16_PROJECT_ID,P16_TRIP_CATEGORY,P16_DEPARTURE_DATE,P16_ARRIVAL_DATE,P16_DEPARTURE_LOCATION,P16_ARRIVAL_LOCATION,P16_PROJECT_DELIVERABLES,P16_CLAIM_ITM,P16_PROJECT_DELIVERABLES_1,P16_REASON'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30748806011546395)
,p_event_id=>wwv_flow_imp.id(30748340781546395)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//#budget_rep,#bud_button#budget_form',
'$("#trav_but").show();',
'    $("#deliv_edit_form").hide();',
'',
'$s(''P16_PROJECT_DELIVERABLES_1'','''');',
'    ',
'',
'    apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'    $("#trav_rep").show();',
'    $("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30744553021546392)
,p_name=>'SAVE PROMPT VALUE'
,p_event_sequence=>170
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_it'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30746066977546393)
,p_event_id=>wwv_flow_imp.id(30744553021546392)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P16_SEQ_ID",$(this.triggeringElement).data(''id''));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30746591267546394)
,p_event_id=>wwv_flow_imp.id(30744553021546392)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c004,n002 INTO :P16_ITEM_EDIT, :P16_QTY_EDIT_1 from apex_collections',
'where collection_name=''RAISE_VOUCHER''',
'AND SEQ_ID=:P16_SEQ_ID;'))
,p_attribute_02=>'P16_ITEM_RATE,P16_REIM_SEQ,P16_QTY_EDIT,P16_ITEM_EDIT,P16_SEQ_ID'
,p_attribute_03=>'P16_VOUCHER_VALUE,P16_ITEM_EDIT,P16_QTY_EDIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30747037107546394)
,p_event_id=>wwv_flow_imp.id(30744553021546392)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var qty = prompt(''Enter quantity ''+$v(''P16_ITEM_EDIT''), $v(''P16_QTY_EDIT_1''));',
'if (qty != null) {',
'if (!$.isNumeric(qty)){',
'    alert(''Value entered must be a number'');',
'    return false;',
'}',
'}',
'if (qty!=null ||qty!=''''){',
'',
'    $s((''P16_QTY_EDIT''),qty);',
'   return true;',
'}',
'    else{',
'        alert(''Quantity can\''t be empty.'');',
'     return false;',
'',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30745091588546392)
,p_event_id=>wwv_flow_imp.id(30744553021546392)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_QTY_EDIT is not null and :P16_QTY_EDIT  >0',
'then',
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''RAISE_VOUCHER'',',
'        p_seq => :P16_SEQ_ID,',
'        p_attr_number => ''2'',',
'        p_number_value => :P16_QTY_EDIT);',
'',
'SELECT TO_CHAR(SUM(N001*n002),''999G999G999G999G990D00'') INTO :P16_VOUCHER_VALUE FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RAISE_VOUCHER'';',
'end if;'))
,p_attribute_02=>'P16_ITEM_RATE,P16_REIM_SEQ,P16_QTY_EDIT'
,p_attribute_03=>'P16_VOUCHER_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30745525308546393)
,p_event_id=>wwv_flow_imp.id(30744553021546392)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56029003422161167)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30740607004546389)
,p_name=>'CONFIRM RAISED VOUCHER'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25708116477357101)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30741631785546390)
,p_event_id=>wwv_flow_imp.id(30740607004546389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Submit to confirm raised voucher?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30742123730546390)
,p_event_id=>wwv_flow_imp.id(30740607004546389)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'CT NUMBER;',
'l_emp_id XXHRMS.xxhrms_master_all.person_id%TYPE;',
'BEGIN',
'SELECT SUM(N001*n002) INTO CT FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''RAISE_VOUCHER'';',
'',
'for x in (select * from apex_collections where collection_name=''RAISE_VOUCHER'')',
'LOOP',
'UPDATE XXCLM.XXCLM_TRIP_REQUEST_ITEMS',
'SET ITEM_RATE=x.n001,',
'item_quantity=x.n002',
'where REQUEST_ID=:P16_TRAVEL_ID_LISTING',
'and item_id=x.c001;',
'',
'end loop;',
'',
'',
'/*insert into XXCLM.XXCLM_CLAIMS_VOUCHER(REQUEST_ID,EMP_ID,PROJECT_ID,CLAIMS_ID,COMPANY_CODE,DATE_CREATED,VOUCHER_VALUE)',
'values(:P16_TRAVEL_ID_LISTING,:AP_STAFF_ID,:P16_PROJECT_ID_VOUCHER,NULL,:SS_COMPANY_CODE,SYSDATE,CT);',
'*/',
'select EMP_ID into l_emp_id from XXCLM.XXCLM_TRAVEL_REQUEST ',
'where REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
'',
'XXCLM.XXCLM_CLAIMS_PKG.claims_voucher(',
'    p_req_id =>:P16_TRAVEL_ID_LISTING,',
'    p_project_id=>:P16_PROJECT_ID_VOUCHER,',
'    p_vouch_val =>CT,',
'    p_emp_id =>l_emp_id,',
'    p_raise => :AP_STAFF_ID,',
'    p_coy_id =>:SS_COMPANY_CODE,',
'    p_claim_id =>''TRAVEL'',',
'    p_id =>:P16_VOUCHER_ID',
');',
'',
'',
'',
'END;'))
,p_attribute_02=>'P16_PROJECT_ID_VOUCHER,P16_TRAVEL_ID_LISTING,AP_STAFF_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30742640755546390)
,p_event_id=>wwv_flow_imp.id(30740607004546389)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'voucher has been raised.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30743120578546391)
,p_event_id=>wwv_flow_imp.id(30740607004546389)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#trav_rep").show();',
'    $("#empty_rep").hide();',
'$("#clm_voucher").hide();',
'$("#vo_form_but").hide();',
'$("#trav_but").show();',
'$("#edit_trav_req").hide();',
'    $("#voucher_det").show();',
'$s(''P16_VOUCHER_VALUE'','''');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30741136820546389)
,p_event_id=>wwv_flow_imp.id(30740607004546389)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(57164512054946562)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30743654525546391)
,p_event_id=>wwv_flow_imp.id(30740607004546389)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81197907974861604)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30744184028546392)
,p_event_id=>wwv_flow_imp.id(30740607004546389)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_VOUCHER_VALUE,P16_VOUCHER_ID,P16_PROJECT_ID_VOUCHER,P16_CLAIMS_NAME,P16_PROJECT_NAME,P16_PAYEE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30761315230546405)
,p_name=>'REFRESH AUTHO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30762357403546406)
,p_event_id=>wwv_flow_imp.id(30761315230546405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :P16_EMP_ID);',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''TRAVEL'');'))
,p_attribute_02=>'AP_STAFF_ID,P16_EMP_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30761877226546405)
,p_event_id=>wwv_flow_imp.id(30761315230546405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56744513852631354)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30756551707546401)
,p_name=>'Departure'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_DEPARTURE_LOCATION'
,p_condition_element=>'P16_DEPARTURE_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Others'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30757078642546402)
,p_event_id=>wwv_flow_imp.id(30756551707546401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_NAME_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30757589190546402)
,p_event_id=>wwv_flow_imp.id(30756551707546401)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_NAME_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30714323231546366)
,p_name=>'Arrival'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_ARRIVAL_LOCATION'
,p_condition_element=>'P16_ARRIVAL_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Others'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30714877570546367)
,p_event_id=>wwv_flow_imp.id(30714323231546366)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30715342687546367)
,p_event_id=>wwv_flow_imp.id(30714323231546366)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30721365212546372)
,p_name=>'NEW PAGE LOAD'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30722399399546373)
,p_event_id=>wwv_flow_imp.id(30721365212546372)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#trav_form,#clm_voucher,#voucher_edit_form,#deliv_edit_form,#auth_pth,#deliverables'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30721849122546373)
,p_event_id=>wwv_flow_imp.id(30721365212546372)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_NAME_2,P16_MULTILOCATIONS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30722867543546374)
,p_event_id=>wwv_flow_imp.id(30721365212546372)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P16_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'    $("#voucher_det").hide();  ',
'    $("#reim_details").hide();',
'    $("#reim_form").hide();',
'}',
'else{',
'    if ($v(''P16_PROOF_STATUS'')==''INACTIVE''){',
'        $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    $("#voucher_det").show();  ',
'    $("#reim_details").hide();',
'    $("#reim_form").hide();',
'        ',
'    }',
'    else{',
'    $("#trav_rep").hide();',
'    $("#empty_rep").hide();',
'    $("#voucher_det").hide();  ',
'    $("#reim_details").show();',
'    $("#reim_form").show();',
'    }',
'}',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'apex.event.trigger(''#reim_details'', ''apexrefresh'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30723378227546374)
,p_event_id=>wwv_flow_imp.id(30721365212546372)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''TRAVEL'');',
'      ',
'APEX_UTIL.set_session_state(',
'        p_name  => ''P16_PROOF_STATUS''',
'      , p_value => ''INACTIVE'');',
'      ',
'      APEX_UTIL.set_session_state(',
'        p_name  => ''P16_NEW_VALUE''',
'      , p_value => '''');',
'      ',
'      ',
'',
'      ',
'      '))
,p_attribute_02=>'AP_STAFF_ID'
,p_attribute_03=>'P16_PROOF_STATUS,P16_NEW_VALUE,P16_MULTI_SEQ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30723809953546375)
,p_event_id=>wwv_flow_imp.id(30721365212546372)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30702124061546338)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30724348823546375)
,p_event_id=>wwv_flow_imp.id(30721365212546372)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30702554946546338)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30757986752546402)
,p_name=>'CREATE REIMBURSEMENT'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27831134135144928)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30758476433546403)
,p_event_id=>wwv_flow_imp.id(30757986752546402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Create reimbursement request?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30760991251546405)
,p_event_id=>wwv_flow_imp.id(30757986752546402)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#trav_rep").hide();',
'    $("#empty_rep").hide();',
'    $("#voucher_det").hide();  ',
'    $("#reim_details").show();',
'    $("#reim_form").show();',
'$("#trav_but").hide();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30758946857546403)
,p_event_id=>wwv_flow_imp.id(30757986752546402)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_category_id number;',
'l_exists boolean;',
'l_emp_id varchar2(100);',
'ct number;',
'begin',
'l_exists := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''REIM_ITEMS'');',
'        IF l_exists = TRUE',
'        then ',
'        APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''REIM_ITEMS'');',
'        ',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY2 (',
'        p_collection_name => ''REIM_ITEMS'', ',
'        p_query => ''SELECT ALL I.ITEM_RATE*ITEM_QUANTITY,I.ITEM_RATE*ITEM_QUANTITY,L.ITEM_ID,null,null,null,null,null,null,null,',
'    I.ITEM_ID,REQUEST_ID FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS I, XXCLM.XXCLM_ITEM_LIST L',
'        WHERE I.ITEM_ID=L.ITEM_ID AND  REQUEST_ID=''||:P16_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        ',
'        else',
'        ',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY2 (',
'        p_collection_name => ''REIM_ITEMS'', ',
'         p_query => ''SELECT ALL I.ITEM_RATE*ITEM_QUANTITY,I.ITEM_RATE*ITEM_QUANTITY,L.ITEM_ID,null,null,null,null,null,null,null,',
'    I.ITEM_ID,REQUEST_ID FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS I, XXCLM.XXCLM_ITEM_LIST L',
'        WHERE I.ITEM_ID=L.ITEM_ID AND  REQUEST_ID=''||:P16_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        ',
'        END IF;',
'',
'END;'))
,p_attribute_02=>'P16_TRAVEL_ID_LISTING'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30760414331546404)
,p_event_id=>wwv_flow_imp.id(30757986752546402)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_TRAVEL_ITEM,P16_TRAVEL_VALUE,P16_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30759994381546404)
,p_event_id=>wwv_flow_imp.id(30757986752546402)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#reim_details,#reim_form'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30759493640546404)
,p_event_id=>wwv_flow_imp.id(30757986752546402)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58468181922691146)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30762765084546406)
,p_name=>'Edit Reimbursement'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_reim'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30763201572546406)
,p_event_id=>wwv_flow_imp.id(30762765084546406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P16_REIM_SEQ",$(this.triggeringElement).parent().data(''id''));',
'$s((''P16_NEW_VALUE''),($v(''P16_NEW_VALUE'').replace(/\s+/, '' '')));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30763775784546407)
,p_event_id=>wwv_flow_imp.id(30762765084546406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C002,C001,TO_CHAR(N002,''999G999G999G999G990D00'') INTO :P16_TRAVEL_REQUEST, :P16_TRAVEL_ITEM_1, :P16_TRAVEL_VALUE FROM apex_collections',
'where collection_name =''REIM_ITEMS''',
'and SEQ_ID=:P16_REIM_SEQ;',
'',
'select INITCAP(ITEM_NAME)into :P16_TRAVEL_ITEM',
'from apex_collections, XXCLM.XXCLM_ITEM_LIST L where collection_name =''REIM_ITEMS''',
'and N003=l.item_id',
'and SEQ_ID=:P16_REIM_SEQ;'))
,p_attribute_02=>'P16_REIM_SEQ'
,p_attribute_03=>'P16_TRAVEL_REQUEST,P16_TRAVEL_ITEM,P16_TRAVEL_VALUE,P16_TRAVEL_ITEM_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30764249509546407)
,p_event_id=>wwv_flow_imp.id(30762765084546406)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_TRAVEL_ITEM,P16_TRAVEL_VALUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30764716118546408)
,p_event_id=>wwv_flow_imp.id(30762765084546406)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30702124061546338)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30765299081546408)
,p_event_id=>wwv_flow_imp.id(30762765084546406)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30702554946546338)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30715722716546367)
,p_name=>'update_reimbursement_collection '
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30702554946546338)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30716239748546368)
,p_event_id=>wwv_flow_imp.id(30715722716546367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a=$v("P16_NEW_VALUE");',
' if (a==""){',
'        alert(''Please enter the total spent amount'');',
'        return false;',
'    }',
'else{',
'    apex.util.showSpinner($("#reim_form"));',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30716778067546368)
,p_event_id=>wwv_flow_imp.id(30715722716546367)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_blob BLOB;',
'l_mimetype varchar2(100);',
'l_filename varchar2(100);',
'l_filerow apex_application_files%rowtype;',
'BEGIN',
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''REIM_ITEMS'',',
'        p_seq => :P16_REIM_SEQ,',
'        p_attr_number => ''2'',',
'        p_number_value => :P16_NEW_VALUE);',
'        ',
'      ',
'END;',
''))
,p_attribute_02=>'P16_NEW_VALUE,P16_REIM_SEQ'
,p_attribute_03=>'P16_PROOF_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30718116430546370)
,p_event_id=>wwv_flow_imp.id(30715722716546367)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30702124061546338)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30718656874546370)
,p_event_id=>wwv_flow_imp.id(30715722716546367)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30702554946546338)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30717634226546369)
,p_event_id=>wwv_flow_imp.id(30715722716546367)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58468181922691146)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30719151099546371)
,p_event_id=>wwv_flow_imp.id(30715722716546367)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P16_PROOF'')==''''){',
'   // $s(''P3_BUDGET_NAME'','''');',
'    $s(''P16_PROOF_STATUS'',''INACTIVE'');',
'    $("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();',
'    return true;',
'}',
'',
'else {',
'  $s(''P16_PROOF_STATUS'',''ACTIVE'');',
'    //apex.util.showSpinner( $( "#reim_details" ) );',
'    apex.submit(''proof'');',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30717144970546369)
,p_event_id=>wwv_flow_imp.id(30715722716546367)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_TRAVEL_ITEM,P16_TRAVEL_VALUE,P16_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30719577500546371)
,p_name=>'cancel reimbursement'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28042559533485143)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30720561094546372)
,p_event_id=>wwv_flow_imp.id(30719577500546371)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    $("#voucher_det").show();  ',
'    $("#reim_details").hide();',
'    $("#reim_form").hide();',
'$("#trav_but").show();',
'',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30720004182546371)
,p_event_id=>wwv_flow_imp.id(30719577500546371)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_PROOF_STATUS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'INACTIVE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30753177909546399)
,p_name=>'CHANGE'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_TRIP_CATEGORY'
,p_condition_element=>'P16_TRIP_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'multi'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30755646535546401)
,p_event_id=>wwv_flow_imp.id(30753177909546399)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60164058817031659)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30753623310546399)
,p_event_id=>wwv_flow_imp.id(30753177909546399)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60164058817031659)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30755187097546400)
,p_event_id=>wwv_flow_imp.id(30753177909546399)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_ARRIVAL_LOCATION,P16_DEPARTURE_LOCATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30754159371546400)
,p_event_id=>wwv_flow_imp.id(30753177909546399)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_ARRIVAL_LOCATION,P16_DEPARTURE_LOCATION,P16_MULTILOCATIONS,P16_NAME_1,P16_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30756170111546401)
,p_event_id=>wwv_flow_imp.id(30753177909546399)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'ct number;',
'BEGIN',
'select count(*) into ct from  XXHRMS.XXHRMS_DEP_LOCATION;',
'select CODE INTO :P16_DEPARTURE_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWnum=1',
'  order by name desc;',
'  select CODE INTO :P16_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1',
'  order by name asc;',
'  ',
'  END;'))
,p_attribute_02=>'P16_DEPARTURE_LOCATION'
,p_attribute_03=>'P16_DEPARTURE_LOCATION,P16_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30754639332546400)
,p_event_id=>wwv_flow_imp.id(30753177909546399)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60164058817031659)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30720917577546372)
,p_name=>'New'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_PROOF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30750215619546396)
,p_name=>'CONFIRM CREATED REIMBURSEMENT'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28042483447485142)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30751776403546398)
,p_event_id=>wwv_flow_imp.id(30750215619546396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Submit to confirm created reimbursement?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30752733393546398)
,p_event_id=>wwv_flow_imp.id(30750215619546396)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.util.showSpinner( $( "#reim_details" ) );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30751286352546397)
,p_event_id=>wwv_flow_imp.id(30750215619546396)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_trav_req_val number;',
'l_reim_val number;',
'l_tot number;',
'l_emp_id varchar2(100);',
'begin',
'',
'select emp_id into  l_emp_id from xxclm.xxclm_travel_request where request_id=:P16_TRAVEL_ID_LISTING;',
'XXCLM.XXCLM_CLAIMS_PKG.create_reimbursement_req(',
'	p_category_id =>'''',',
'    p_project_id =>'''',',
'    p_claim_value =>'''',',
'    p_company_code =>:SS_COMPANY_CODE,',
'   p_EMP_ID =>l_emp_id,',
'    p_items =>'''',',
'    p_travel_request =>:P16_TRAVEL_ID_LISTING,',
'    p_id =>:P16_REIM_ID);',
'',
'',
'APEX_UTIL.set_session_state(',
'        p_name  => ''P16_PROOF_STATUS''',
'      , p_value => ''INACTIVE'');',
'end;'))
,p_attribute_02=>'P16_TRAVEL_ID_LISTING,P16_PROOF_STATUS'
,p_attribute_03=>'P16_REIM_ID,P16_PROOF_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30750743514546397)
,p_event_id=>wwv_flow_imp.id(30750215619546396)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''REIMBURSEMENT'');',
'      '))
,p_attribute_02=>'AP_STAFF_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30752280851546398)
,p_event_id=>wwv_flow_imp.id(30750215619546396)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    $("#voucher_det").show();  ',
'    $("#reim_details").hide();',
'    $("#reim_form").hide();',
'    $("#reim_but").hide();',
'$("#trav_but").show();',
'alert(''Reimbursement request has been created.'');',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'apex.event.trigger(''#voucher_det'', ''apexrefresh'');',
'$("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30765664968546408)
,p_name=>'WAY'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_TRIP_CATEGORY'
,p_condition_element=>'P16_TRIP_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'one_way'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30766158138546409)
,p_event_id=>wwv_flow_imp.id(30765664968546408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_ARRIVAL_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30766622043546409)
,p_event_id=>wwv_flow_imp.id(30765664968546408)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_ARRIVAL_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30767168523546409)
,p_event_id=>wwv_flow_imp.id(30765664968546408)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_ARRIVAL_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30767645224546410)
,p_event_id=>wwv_flow_imp.id(30765664968546408)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_ARRIVAL_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*IF :P16_DEPARTURE_DATE IS NOT NULL',
'THEN ',
'RETURN SYSDATE;',
'END IF;*/',
'',
'return :P16_DEPARTURE_DATE;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30708542824546358)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear voucher_1'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P16_VOUCHER_VALUE,P16_VOUCHER_ID,P16_PROJECT_ID_VOUCHER,P16_CLAIMS_NAME,P16_PROJECT_NAME,P16_PAYEE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30708542824546358
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30709747012546360)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ML_CODE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P16_ACTION=''INSERT''',
'then',
'SELECT XXCLM.XXCLM_MULTI_SEQ.NEXTVAL INTO :P16_MULTI_SEQ FROM DUAL;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P16_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'INSERT'
,p_internal_uid=>30709747012546360
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30663013983546281)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(60164058817031659)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Multi Location  - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'CT NUMBER;',
'begin',
'',
'if :P16_ACTION=''INSERT''',
'then',
'CT := :P16_MULTI_SEQ;',
'',
'ELSE',
'SELECT MAX(ML_CODE) INTO CT FROM  XXCLM.XXCLM_MULTI_LOCATIONS WHERE REQUEST_ID=:P16_TRAVEL_ID_LISTING;',
'APEX_UTIL.set_session_state(',
'        p_name  => ''P16_MULTI_SEQ''',
'      , p_value => CT);',
'',
'END IF;',
'',
'',
'',
'     case :APEX$ROW_STATUS  ',
'     when ''C'' then',
'         insert into XXCLM.XXCLM_MULTI_LOCATIONS (ML_CODE,LOCATION,COMPANY_CODE,END_LOCATION,TRAVEL_DATE)  ',
'         values (CT, :LOCATION,:SS_COMPANY_CODE, :END_LOCATION,:TRAVEL_DATE )  ',
'         returning rowid into :ROWID;  ',
'     when ''U'' then  ',
'         update XXCLM.XXCLM_MULTI_LOCATIONS  ',
'            set END_LOCATION  = :END_LOCATION,  ',
'                LOCATION = :LOCATION,',
'                TRAVEL_DATE =:TRAVEL_DATE',
'          where rowid  = :ROWID;  ',
'     when ''D'' then  ',
'         delete XXCLM.XXCLM_MULTI_LOCATIONS  ',
'         where rowid = :ROWID;  ',
'     end case;  ',
'end;  '))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30663013983546281
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30709350297546359)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT REQUEST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count number;',
'l_existed boolean;',
'l_exist boolean;',
'l_exists boolean;',
'l_from varchar2(100);',
'l_subject varchar2(2000);',
'l_body clob;',
'p_employee XXHRMS.XXHRMS_MASTER_ALL.FULL_NAME%type;',
'p_emp_email XXHRMS.XXHRMS_MASTER_ALL.email_address%type;',
'p_dep_loc XXHRMS.XXHRMS_DEP_LOCATION.name%type;',
'p_ariv_loc XXHRMS.XXHRMS_DEP_LOCATION.name%type;',
'p_dep_date XXCLM.XXCLM_TRAVEL_REQUEST.DEPARTURE_DATE%type;',
'p_ariv_date XXCLM.XXCLM_TRAVEL_REQUEST.DEPARTURE_DATE%type;',
'    l_message varchar2(4000) ;',
'    ct number;',
'     v_exists number;',
'  l_string          varchar2(4000) := ''P1_X:P1_Y'';',
'  l_page_items_arr  apex_t_varchar2;',
'  ',
'begin',
'IF :P16_DEPARTURE_LOCATION =''Others''',
'then',
':P16_DEPARTURE_LOCATION :=:P16_NAME_1;',
'END IF;',
'IF :P16_ARRIVAL_LOCATION =''Others'' and :P16_TRIP_CATEGORY!=''multi''',
'then',
':P16_ARRIVAL_LOCATION :=:P16_NAME_2;',
'ELSIF  :P16_ARRIVAL_LOCATION =''Others'' and :P16_TRIP_CATEGORY=''multi''',
'THEN',
':P16_ARRIVAL_LOCATION :='''';',
'END IF;',
'',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''TRAVEL'');',
'      ',
'      ',
'if :P16_ACTION=''INSERT''',
'then',
'select XXCLM.XXCLM_TRAVEL_REQUEST_SEQ.nextval into :P16_TRAVEL_ID_LISTING from sys.dual; ',
':P16_REQUEST_ID:=:P16_TRAVEL_ID_LISTING;',
'XXCLM.XXCLM_CLAIMS_PKG.create_travel_request(',
'	p_CATEGORY_ID =>:P16_CATEGORY_ID,',
'    p_PROJECT_ID =>:P16_PROJECT_ID,',
'    p_TRIP_CATEGORY =>:P16_TRIP_CATEGORY,',
'    p_DEPARTURE_DATE =>:P16_DEPARTURE_DATE,',
'    p_ARRIVAL_DATE =>:P16_ARRIVAL_DATE,',
'    p_DEPARTURE_LOCATION =>:P16_DEPARTURE_LOCATION,',
'    p_ARRIVAL_LOCATION =>:P16_ARRIVAL_LOCATION,',
'    p_PROJECT_DELIVERABLES =>:P16_PROJECT_DELIVERABLES,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:P16_EMP_ID,',
'    p_category_items =>:P16_CLAIM_ITM,',
'    P_ACTION =>''INSERT'',',
'    p_multi =>:P16_MULTILOCATIONS,',
'    P_ml_code=>:p16_multi_seq,',
'    p_id =>:P16_REQUEST_ID);',
'    ',
'    ELSE',
'    update XXCLM.XXCLM_MULTI_LOCATIONS',
'  set REQUEST_ID=:P16_TRAVEL_ID_LISTING',
'  where ml_code=:P16_multi_seq',
'  and COMPANY_CODE=:SS_COMPANY_CODE;',
'',
'        ',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P16_ACTION'
,p_process_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_process_when2=>'INSERT:UPDATE'
,p_internal_uid=>30709350297546359
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30708198250546358)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear voucher'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P16_VOUCHER_VALUE,P16_VOUCHER_ID,P16_PROJECT_ID_VOUCHER,P16_CLAIMS_NAME,P16_PROJECT_NAME,P16_PAYEE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30708198250546358
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30686285373546308)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(56745330236631362)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Caims Items - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>30686285373546308
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30708930069546359)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'proof'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_blob BLOB;',
'l_mimetype varchar2(100);',
'l_filename varchar2(100);',
'l_filerow apex_application_files%rowtype;',
'BEGIN',
' SELECT blob_content,MIME_TYPE,FILENAME',
'      INTO l_blob,l_mimetype,l_filename',
'      FROM apex_application_temp_files',
'      WHERE NAME=:P16_PROOF;',
'      ',
'      APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''REIM_ITEMS'',',
'        p_seq => :P16_REIM_SEQ,',
'        p_blob_number => ''1'',',
'        p_blob_value => l_blob);',
'        ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''REIM_ITEMS'',',
'        p_seq => :P16_REIM_SEQ,',
'        p_attr_number => ''3'',',
'        p_attr_value => l_filename);',
'        ',
'         APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''REIM_ITEMS'',',
'        p_seq => :P16_REIM_SEQ,',
'        p_attr_number => ''4'',',
'        p_attr_value => l_mimetype);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P16_PROOF_STATUS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'ACTIVE'
,p_internal_uid=>30708930069546359
);
wwv_flow_imp.component_end;
end;
/
