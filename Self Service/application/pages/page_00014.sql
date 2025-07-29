prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'TRAVEL req'
,p_alias=>'YT6'
,p_step_title=>'TRAVEL req'
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
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28311295675945150)
,p_plug_name=>'Travel Request'
,p_icon_css_classes=>'fa-plane'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81748018536182180)
,p_plug_name=>'Edit Deliverables'
,p_region_name=>'deliv_edit_form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(82144493915910187)
,p_name=>'Authorization Path'
,p_region_name=>'auth_pth'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(28383410600048961)
,p_query_column_id=>1
,p_column_alias=>'LEVELS'
,p_column_display_sequence=>1
,p_column_heading=>'Levels'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28383874493048964)
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
 p_id=>wwv_flow_imp.id(82564177397225392)
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
  'link_target', 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P14_TRAVEL_ID_LISTING:&REQUEST_ID.',
  'list_view_features', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_column', 'STATUS',
  'text_column', 'PROJECT_NAME')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(82564492118225395)
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
'END STATUS',
'',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXCLM.XXCLM_CLAIMS_VOUCHER v',
'where R.company_code=:SS_COMPANY_CODE',
'and R.REQUEST_ID=:P14_TRAVEL_ID_LISTING',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'and v.request_id=r.REQUEST_ID',
'',
'AND R.PROJECT_ID=P.PROJECT_ID',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P14_TRAVEL_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(28407364409049092)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28402666042049083)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28403092202049083)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28403439968049084)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>6
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(27892164151428213)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28401862019049081)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28402239776049082)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28403839649049085)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28404280898049086)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28404631134049087)
,p_query_column_id=>9
,p_column_alias=>'VOUCHER_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28405091936049087)
,p_query_column_id=>10
,p_column_alias=>'CLAIMS_ID'
,p_column_display_sequence=>12
,p_column_heading=>'Claim Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28406978252049091)
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
 p_id=>wwv_flow_imp.id(28405401926049088)
,p_query_column_id=>12
,p_column_alias=>'VOUCHER_VALUE'
,p_column_display_sequence=>13
,p_column_heading=>'Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28405804920049089)
,p_query_column_id=>13
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Request for'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28406212898049090)
,p_query_column_id=>14
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>15
,p_column_heading=>'Raised By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28406631145049090)
,p_query_column_id=>15
,p_column_alias=>'STATUS'
,p_column_display_sequence=>14
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83206553344775171)
,p_plug_name=>'DELIVERABLES'
,p_region_name=>'deliverables'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,REQUEST_ID,DELIVERABLES,REASONS,EMP_ID,COMPANY_CODE,DATE_CREATED,STATUS',
'FROM XXCLM.XXCLM_DELIVERABLES_UPDATE',
'WHERE REQUEST_ID=:P14_TRAVEL_ID_LISTING'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83206851239775173)
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
 p_id=>wwv_flow_imp.id(83206946818775174)
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
,p_default_expression=>'P14_TRAVEL_ID_LISTING'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83206979955775175)
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
 p_id=>wwv_flow_imp.id(83207088245775176)
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
 p_id=>wwv_flow_imp.id(83207160155775177)
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
,p_default_expression=>'AP_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83207301625775178)
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
 p_id=>wwv_flow_imp.id(83207394660775179)
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
 p_id=>wwv_flow_imp.id(83207479496775180)
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
 p_id=>wwv_flow_imp.id(83207576688775181)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83207708785775182)
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
 p_id=>wwv_flow_imp.id(83206720153775172)
,p_internal_uid=>83206720153775172
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
 p_id=>wwv_flow_imp.id(83228723986370642)
,p_interactive_grid_id=>wwv_flow_imp.id(83206720153775172)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(83228765271370643)
,p_report_id=>wwv_flow_imp.id(83228723986370642)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83229185912370675)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(83206851239775173)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83229656921370691)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(83206946818775174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83230219831370706)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(83206979955775175)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83230727106370713)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(83207088245775176)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83231204748370720)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(83207160155775177)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83231655664370726)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(83207301625775178)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83232159407370732)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(83207394660775179)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83232567750370743)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(83207479496775180)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83234388559387200)
,p_view_id=>wwv_flow_imp.id(83228765271370643)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(83207576688775181)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106597888038140437)
,p_plug_name=>'Travel Request'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
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
'and emp_id=:ap_staff_id',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND X.person_id=R.EMP_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'' AND STATUS IN(''REJECTED'',''PENDING''))',
'ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P14_TRAVEL_ID_LISTING:&REQUEST_ID.',
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
    'Voucher Status : <font color="red">&VOUCH_STATUS.</font>',
    '</pre>')),
  'text_formatting', '&FULL_NAME.')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(106598725651144999)
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
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,',
'case TRIP_CATEGORY ',
'when ''multi''   THEN (SELECT listagg(INITCAP(LOCATION),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_MULTI_LOCATIONS Q',
'                                   WHERE Q.REQUEST_ID=R.REQUEST_ID',
'                                  )',
'     else ARRIVAL_LOCATION',
'     END ARRIVAL_LOCATION,',
'--''<a class="edit_deliv" href="javascript:void(null);"data-id=''||REQUEST_ID||''>''||PROJECT_DELIVERABLES||''   ',
'--<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""></a>''PROJECT_DELIVERABLES,',
'case ',
'when request_id is not null then (select listagg(DELIVERABLES,''<br/> '') within group (order by id ) from XXCLM.XXCLM_DELIVERABLES_UPDATE u',
'where u.request_id=r.REQUEST_ID)',
'end',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,PROJECT_NAME,',
'Case',
'when (select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P14_TRAVEL_ID_LISTING)>1 then',
'''<a class="vouch_det" href="javascript:void(null);">''||(select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where ',
'                                                        REQUEST_ID=:P14_TRAVEL_ID_LISTING)||',
''' vouchers raised</a>''',
'',
'when (select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P14_TRAVEL_ID_LISTING)=1 then',
'''<a class="vouch_det" href="javascript:void(null);">''||(select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where ',
'                                                       REQUEST_ID=:P14_TRAVEL_ID_LISTING)||',
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
'and R.REQUEST_ID=:P14_TRAVEL_ID_LISTING',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND R.PROJECT_ID=P.PROJECT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P14_TRAVEL_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(28387037354049008)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28387445059049011)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28387896340049014)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28388275808049017)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>4
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(27892164151428213)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28388673821049020)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28389045221049023)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28389470527049026)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Departure Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28389812138049028)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>11
,p_column_heading=>'Arrival Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28390235114049031)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>14
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28392271734049045)
,p_query_column_id=>10
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28390643381049034)
,p_query_column_id=>11
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28386241424049001)
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
 p_id=>wwv_flow_imp.id(28391067318049036)
,p_query_column_id=>13
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28391475425049039)
,p_query_column_id=>14
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28386626738049006)
,p_query_column_id=>15
,p_column_alias=>'VOUCHER'
,p_column_display_sequence=>16
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
 p_id=>wwv_flow_imp.id(28391866905049042)
,p_query_column_id=>16
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>5
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106602430300154585)
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
 p_id=>wwv_flow_imp.id(106602893413148315)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28393023870049051)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(106598725651144999)
,p_button_name=>'edit_deliverables'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Update Deliverables'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P14_TRAVEL_ID_LISTING'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28384502228048967)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28311295675945150)
,p_button_name=>'new_request'
,p_button_static_id=>'trav_but'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Travel Request'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28394443825049058)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(106602430300154585)
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
 p_id=>wwv_flow_imp.id(28394000390049057)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(106602430300154585)
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
 p_id=>wwv_flow_imp.id(28400348376049077)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(81748018536182180)
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
 p_id=>wwv_flow_imp.id(28399994233049077)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(81748018536182180)
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
 p_id=>wwv_flow_imp.id(28392632977049048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(106598725651144999)
,p_button_name=>'edit'
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
'where R.REQUEST_ID=:P14_TRAVEL_ID_LISTING',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' --AND STATUS IN(''REJECTED'',''APPROVED'')',
'              )'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(28431239977049211)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28384982154048971)
,p_name=>'P14_ITEM_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28311295675945150)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28385674148048994)
,p_name=>'P14_TRAVEL_ID_LISTING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106597888038140437)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28394825081049059)
,p_name=>'P14_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28395250327049061)
,p_name=>'P14_CATEGORY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
,p_prompt=>'Category'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(CATEGORY_NAME) D, CATEGORY_ID R',
'FROM XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'and lower(CATEGORY_NAME) like ''%trav%'''))
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
 p_id=>wwv_flow_imp.id(28395613833049066)
,p_name=>'P14_PROJECT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
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
 p_id=>wwv_flow_imp.id(28396024733049068)
,p_name=>'P14_TRIP_CATEGORY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
,p_prompt=>'Trip Category'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'TRIP CATEGORY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and lower(lookup_code) = lower(''trip_category'')',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'WHERE lower(lookup_code) = lower(''trip_category'')',
'ORDER BY 1',
' '))
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28396442713049069)
,p_name=>'P14_DEPARTURE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
,p_prompt=>'Departure Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'focus',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28396843509049070)
,p_name=>'P14_ARRIVAL_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
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
  'show', 'focus',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28397277936049071)
,p_name=>'P14_DEPARTURE_LOCATION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
,p_prompt=>'Departure Location'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOCATION_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Other'
,p_lov_null_value=>'Others'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28397645188049071)
,p_name=>'P14_NAME_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
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
 p_id=>wwv_flow_imp.id(28398036495049072)
,p_name=>'P14_ARRIVAL_LOCATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
,p_prompt=>'Arrival Location'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOCATION_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Other'
,p_lov_null_value=>'Others'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(28398496722049073)
,p_name=>'P14_NAME_2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
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
 p_id=>wwv_flow_imp.id(28398846917049073)
,p_name=>'P14_MULTILOCATIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_arr apex_t_varchar2;',
'begin',
'  select LOCATION  ',
'  bulk collect into v_arr ',
'    from XXCLM.XXCLM_MULTI_LOCATIONS',
'    WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID=:P14_TRAVEL_ID_LISTING;',
'  ',
'  return(apex_string.join(v_arr, '':''));',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Multi-Location'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'LOCATION_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
' order by 1'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%',
  'attribute_11', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28399208295049075)
,p_name=>'P14_PROJECT_DELIVERABLES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(106602430300154585)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28400781738049078)
,p_name=>'P14_PROJECT_DELIVERABLES_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(81748018536182180)
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
 p_id=>wwv_flow_imp.id(28401144185049079)
,p_name=>'P14_REASON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(81748018536182180)
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
 p_id=>wwv_flow_imp.id(28408096899049095)
,p_name=>'P14_TRAVEL_ID_LISTING_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82564177397225392)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28413116293049169)
,p_name=>'create new request'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27660195857776261)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28413687357049170)
,p_event_id=>wwv_flow_imp.id(28413116293049169)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
'$(''#deliverables'').hide();',
'$("#voucher_det").hide();  ',
'$s(''P14_CATEGORY_ID'','''');',
'$s(''P14_PROJECT_ID'','''');',
'$s(''P14_CLAIMS_ITEMS'','''');',
'$s(''P14_TRIP_CATEGORY'','''');',
'$s(''P14_DEPARTURE_DATE'','''');',
'$s(''P14_ARRIVAL_DATE'','''');',
'$s(''P14_DEPARTURE_LOCATION'','' '');',
'$s(''P14_ARRIVAL_LOCATION'','' '');',
'$s(''P14_PROJECT_DELIVERABLES'','''');',
'$s(''P14_EMP_ID'','''');',
'$s(''P14_STAFF_CATEGORY'','''');',
'$("#auth_pth").show();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28414124311049171)
,p_event_id=>wwv_flow_imp.id(28413116293049169)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQUEST_ID,P14_ARRIVAL_LOCATION,P14_DEPARTURE_LOCATION,P14_NAME_1,P14_NAME_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28415108922049173)
,p_event_id=>wwv_flow_imp.id(28413116293049169)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_STAFF_CATEGORY,P14_CLAIM_ITM'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28415625158049173)
,p_event_id=>wwv_flow_imp.id(28413116293049169)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_STAFF_CATEGORY_1,P14_CLAIM_ITM_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28416614213049175)
,p_event_id=>wwv_flow_imp.id(28413116293049169)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select CODE INTO :P14_DEPARTURE_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'  select null INTO :P14_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'  END;'))
,p_attribute_02=>'P14_DEPARTURE_LOCATION'
,p_attribute_03=>'P14_DEPARTURE_LOCATION,P14_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28416114646049175)
,p_event_id=>wwv_flow_imp.id(28413116293049169)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'ct number;',
'BEGIN',
'select count(*) into ct from  XXHRMS.XXHRMS_DEP_LOCATION;',
'select CODE INTO :P14_DEPARTURE_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWnum=1',
'  order by name desc;',
'  select CODE INTO :P14_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1',
'  order by name asc;',
'  ',
'  END;'))
,p_attribute_02=>'P14_DEPARTURE_LOCATION'
,p_attribute_03=>'P14_DEPARTURE_LOCATION,P14_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28414604862049172)
,p_event_id=>wwv_flow_imp.id(28413116293049169)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_CATEGORY_ID,P14_PROJECT_ID,P14_TRIP_CATEGORY,P14_DEPARTURE_DATE,P14_DEPARTURE_LOCATION,P14_ARRIVAL_DATE,P14_ARRIVAL_LOCATION,P14_PROJECT_DELIVERABLES,P14_MULTILOCATIONS,P14_NAME_1,P14_NAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28417060497049176)
,p_name=>'EDIT request'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27668204328776316)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28420061380049181)
,p_event_id=>wwv_flow_imp.id(28417060497049176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28419531620049180)
,p_event_id=>wwv_flow_imp.id(28417060497049176)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#voucher_det").hide();  ',
'$("#trav_but").hide();',
'$(''#deliverables'').hide();',
'    $("#trav_form").show();',
'$s(''P14_CATEGORY_ID'','''');',
'$s(''P14_PROJECT_ID'','''');',
'$s(''P14_CLAIMS_ITEMS'','''');',
'$s(''P14_TRIP_CATEGORY'','''');',
'$s(''P14_DEPARTURE_DATE'','''');',
'$s(''P14_ARRIVAL_DATE'','''');',
'$s(''P14_DEPARTURE_LOCATION'','''');',
'$s(''P14_ARRIVAL_LOCATION'','''');',
'$s(''P14_PROJECT_DELIVERABLES'','''');',
'$s(''P14_STAFF_CATEGORY'','''');',
'$("#auth_pth").show();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28420505728049183)
,p_event_id=>wwv_flow_imp.id(28417060497049176)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REQUEST_ID,CATEGORY_ID,PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'PROJECT_DELIVERABLES',
'INTO :P14_REQUEST_ID,:P14_CATEGORY_ID,:P14_PROJECT_ID,:P14_TRIP_CATEGORY,:P14_DEPARTURE_DATE,:P14_ARRIVAL_DATE,:P14_DEPARTURE_LOCATION,',
':P14_ARRIVAL_LOCATION,:P14_PROJECT_DELIVERABLES',
'',
'FROM XXCLM.XXCLM_TRAVEL_REQUEST',
'WHERE REQUEST_ID=:P14_TRAVEL_ID_LISTING;',
'',
'',
'',
'IF :P14_TRIP_CATEGORY = ''multi''',
'THEN ',
'select CODE INTO :P14_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'  END IF;'))
,p_attribute_02=>'P14_TRAVEL_ID_LISTING'
,p_attribute_03=>'P14_REQUEST_ID,P14_CATEGORY_ID,P14_PROJECT_ID,P14_TRIP_CATEGORY,P14_DEPARTURE_DATE,P14_ARRIVAL_DATE,P14_DEPARTURE_LOCATION,P14_ARRIVAL_LOCATION,P14_PROJECT_DELIVERABLES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28418523156049179)
,p_event_id=>wwv_flow_imp.id(28417060497049176)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_STAFF_CATEGORY_1,P14_CLAIM_ITM_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28419039726049180)
,p_event_id=>wwv_flow_imp.id(28417060497049176)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_STAFF_CATEGORY,P14_CLAIM_ITM'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28418035329049178)
,p_event_id=>wwv_flow_imp.id(28417060497049176)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_CLAIM_ITM_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28417520176049177)
,p_event_id=>wwv_flow_imp.id(28417060497049176)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_CATEGORY_ID,P14_PROJECT_ID,P14_TRIP_CATEGORY,P14_DEPARTURE_DATE,P14_DEPARTURE_LOCATION,P14_ARRIVAL_DATE,P14_ARRIVAL_LOCATION,P14_PROJECT_DELIVERABLES,P14_MULTILOCATIONS,P14_NAME_1,P14_NAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28420917313049184)
,p_name=>'CANCEL FORM'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27670060324776323)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28421401628049185)
,p_event_id=>wwv_flow_imp.id(28420917313049184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P14_TRAVEL_ID_LISTING'')==''''){',
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
'    $(''#deliverables'').show();',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'$("#trav_but").show();',
'$s(''P14_CATEGORY_ID'','''');',
'$s(''P14_PROJECT_ID'','''');',
'$s(''P14_CLAIMS_ITEMS'','''');',
'$s(''P14_TRIP_CATEGORY'','''');',
'$s(''P14_DEPARTURE_DATE'','''');',
'$s(''P14_ARRIVAL_DATE'','''');',
'$s(''P14_DEPARTURE_LOCATION'','''');',
'$s(''P14_ARRIVAL_LOCATION'','''');',
'$s(''P14_PROJECT_DELIVERABLES'','''');',
'$("#auth_pth").hide();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28421930013049186)
,p_event_id=>wwv_flow_imp.id(28420917313049184)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28422356771049186)
,p_name=>'SUBMIT FORM'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27670404164776325)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28424260010049193)
,p_event_id=>wwv_flow_imp.id(28422356771049186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s((''P14_DEPARTURE_DATE''),($v(''P14_DEPARTURE_DATE'').replace(/\s+/, '' '')));',
'$s((''P14_ARRIVAL_DATE''),($v(''P14_ARRIVAL_DATE'').replace(/\s+/, '' '')));',
'$s((''P14_DEPARTURE_LOCATION''),($v(''P14_DEPARTURE_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P14_ARRIVAL_LOCATION''),($v(''P14_ARRIVAL_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P14_PROJECT_DELIVERABLES''),($v(''P14_PROJECT_DELIVERABLES'').replace(/\s+/, '' '')));',
'',
'',
'',
'var a=$v("P14_CATEGORY_ID");',
'var b=$v("P14_PROJECT_ID");',
'',
'var d=$v("P14_TRIP_CATEGORY");',
'var e=$v("P14_DEPARTURE_DATE");',
'',
'var g=$v("P14_DEPARTURE_LOCATION");',
'var h=$v("P14_ARRIVAL_LOCATION");',
'',
'if ($v(''P14_TRIP_CATEGORY'')!=''Multi-Location Trip''){',
' if (a==""||b==""||d==""||e==""||g==""||h==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'}',
'',
'if ($v(''P14_TRIP_CATEGORY'')==''Multi-Location Trip''){',
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
 p_id=>wwv_flow_imp.id(28422870199049188)
,p_event_id=>wwv_flow_imp.id(28422356771049186)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'IF :P14_DEPARTURE_LOCATION =''Others''',
'then',
':P14_DEPARTURE_LOCATION :=:P14_NAME_1;',
'END IF;',
'IF :P14_ARRIVAL_LOCATION =''Others'' and :P14_TRIP_CATEGORY!=''multi''',
'then',
':P14_ARRIVAL_LOCATION :=:P14_NAME_2;',
'ELSIF  :P14_ARRIVAL_LOCATION =''Others'' and :P14_TRIP_CATEGORY=''multi''',
'THEN',
':P14_ARRIVAL_LOCATION :='''';',
'END IF;',
'',
'if :P14_REQUEST_ID is null OR :P14_REQUEST_ID=''''',
'then',
'XXCLM.XXCLM_CLAIMS_PKG.create_travel_request(',
'	p_CATEGORY_ID =>:P14_CATEGORY_ID,',
'    p_PROJECT_ID =>:P14_PROJECT_ID,',
'    p_TRIP_CATEGORY =>:P14_TRIP_CATEGORY,',
'    p_DEPARTURE_DATE =>:P14_DEPARTURE_DATE,',
'    p_ARRIVAL_DATE =>:P14_ARRIVAL_DATE,',
'    p_DEPARTURE_LOCATION =>:P14_DEPARTURE_LOCATION,',
'    p_ARRIVAL_LOCATION =>:P14_ARRIVAL_LOCATION,',
'    p_PROJECT_DELIVERABLES =>:P14_PROJECT_DELIVERABLES,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:AP_STAFF_ID,',
'    p_category_items =>'''',',
'    P_ACTION =>''INSERT'',',
'    p_multi =>:P14_MULTILOCATIONS,',
'    p_id =>:P14_REQUEST_ID);',
'     ELSE',
'XXCLM.XXCLM_CLAIMS_PKG.create_travel_request(',
'	p_CATEGORY_ID =>:P14_CATEGORY_ID,',
'    p_PROJECT_ID =>:P14_PROJECT_ID,',
'    p_TRIP_CATEGORY =>:P14_TRIP_CATEGORY,',
'    p_DEPARTURE_DATE =>:P14_DEPARTURE_DATE,',
'    p_ARRIVAL_DATE =>:P14_ARRIVAL_DATE,',
'    p_DEPARTURE_LOCATION =>:P14_DEPARTURE_LOCATION,',
'    p_ARRIVAL_LOCATION =>:P14_ARRIVAL_LOCATION,',
'    p_PROJECT_DELIVERABLES =>:P14_PROJECT_DELIVERABLES,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:P14_EMP_ID,',
'    p_category_items =>'''',',
'    P_ACTION =>''UPDATE'',',
'    p_multi =>:P14_MULTILOCATIONS,',
'    p_id =>:P14_TRAVEL_ID_LISTING);',
'  END IF;',
'END;'))
,p_attribute_02=>'P14_TRAVEL_ID_LISTING,P14_REQUEST_ID,P14_CATEGORY_ID,P14_PROJECT_ID,P14_TRIP_CATEGORY,P14_DEPARTURE_DATE,P14_ARRIVAL_DATE,P14_DEPARTURE_LOCATION,P14_ARRIVAL_LOCATION,P14_PROJECT_DELIVERABLES,P14_NAME_1,P14_NAME_2,P14_MULTILOCATIONS'
,p_attribute_03=>'P14_REQUEST_ID,P14_DEPARTURE_LOCATION,P14_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28423796153049192)
,p_event_id=>wwv_flow_imp.id(28422356771049186)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//#budget_rep,#bud_button#budget_form',
'$("#auth_pth").hide();',
'$("#trav_but").show();',
'    $("#trav_form").hide();',
'$s(''P14_CATEGORY_ID'','''');',
'$s(''P14_PROJECT_ID'','''');',
'$s(''P14_CLAIMS_ITEMS'','''');',
'$s(''P14_TRIP_CATEGORY'','''');',
'$s(''P14_DEPARTURE_DATE'','''');',
'$s(''P14_ARRIVAL_DATE'','''');',
'$s(''P14_DEPARTURE_LOCATION'','''');',
'$s(''P14_ARRIVAL_LOCATION'','''');',
'$s(''P14_PROJECT_DELIVERABLES'','''');',
'    ',
'if($v(''P14_REQUEST_ID'')==$v(''P14_TRAVEL_ID_LISTING'')){',
'    $s(''P14_TRAVEL_ID_LISTING'',$v(''P14_REQUEST_ID''));',
'    apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'    $("#trav_rep").show();',
'    $("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();',
'    $("#voucher_det").show();',
'}',
'else{',
'    $s(''P14_TRAVEL_ID_LISTING'',$v(''P14_REQUEST_ID''));',
'    apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'    $("#trav_rep").show();',
'      //$(''#deliverables'').show();',
'    apex.submit();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28423332739049191)
,p_event_id=>wwv_flow_imp.id(28422356771049186)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106597888038140437)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28424636202049195)
,p_name=>'CANCEL delivera'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28399994233049077)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28425128572049197)
,p_event_id=>wwv_flow_imp.id(28424636202049195)
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
 p_id=>wwv_flow_imp.id(28425591212049198)
,p_name=>'UPDATE DELIVERABLES'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27668673214776317)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28426056798049198)
,p_event_id=>wwv_flow_imp.id(28425591212049198)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#deliverables'').show();',
'$("html, body").animate({ scrollTop:  $("#deliverables").offset().top }, "slow");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28430270147049205)
,p_name=>'REFRESH AUTHO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28430751205049205)
,p_event_id=>wwv_flow_imp.id(28430270147049205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82144493915910187)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28428853680049203)
,p_name=>'Departure'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_DEPARTURE_LOCATION'
,p_condition_element=>'P14_DEPARTURE_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Others'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28429398680049203)
,p_event_id=>wwv_flow_imp.id(28428853680049203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_NAME_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28429839326049204)
,p_event_id=>wwv_flow_imp.id(28428853680049203)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_NAME_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28409395982049159)
,p_name=>'Arrival'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_ARRIVAL_LOCATION'
,p_condition_element=>'P14_ARRIVAL_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Others'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28409883943049163)
,p_event_id=>wwv_flow_imp.id(28409395982049159)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28410306161049164)
,p_event_id=>wwv_flow_imp.id(28409395982049159)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28426433819049199)
,p_name=>'CHANGE'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_TRIP_CATEGORY'
,p_condition_element=>'P14_TRIP_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'multi'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28426910643049200)
,p_event_id=>wwv_flow_imp.id(28426433819049199)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_MULTILOCATIONS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28427931336049201)
,p_event_id=>wwv_flow_imp.id(28426433819049199)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_ARRIVAL_LOCATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28428412796049202)
,p_event_id=>wwv_flow_imp.id(28426433819049199)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_ARRIVAL_LOCATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28427434116049201)
,p_event_id=>wwv_flow_imp.id(28426433819049199)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_MULTILOCATIONS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28410735744049164)
,p_name=>'NEW PAGE LOAD'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28411756487049166)
,p_event_id=>wwv_flow_imp.id(28410735744049164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#trav_form,#clm_voucher,#voucher_edit_form,#deliv_edit_form,#auth_pth,#deliverables'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28411226799049165)
,p_event_id=>wwv_flow_imp.id(28410735744049164)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28412229722049168)
,p_event_id=>wwv_flow_imp.id(28410735744049164)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P14_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'    $("#voucher_det").hide();  ',
'}',
'else{',
'    $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    $("#voucher_det").show();  ',
'    $(''#deliverables'').show();',
'}',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28412740411049169)
,p_event_id=>wwv_flow_imp.id(28410735744049164)
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
'      , p_value => ''TRAVEL'');'))
,p_attribute_02=>'AP_STAFF_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28382871338048946)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(83206553344775171)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'UPDATE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28382871338048946
);
wwv_flow_imp.component_end;
end;
/
