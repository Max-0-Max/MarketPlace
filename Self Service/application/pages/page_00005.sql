prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Travel Request'
,p_alias=>'BK5'
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
 p_id=>wwv_flow_imp.id(53692481313988533)
,p_plug_name=>'Travel Request'
,p_icon_css_classes=>'fa-plane'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54961019094485830)
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
  'link_target', 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TRAVEL_ID_LISTING:&REQUEST_ID.',
  'list_view_features', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_column', 'STATUS',
  'text_column', 'PROJECT_NAME')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78994729735400875)
,p_plug_name=>'All Requests'
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
'WHEN (SELECT COUNT(*)  FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID ',
'                                                                      AND CLAIMS_ID=''TRAVEL'' AND SOFT_PAY IS NOT NULL)>0 THEN',
'',
'''<font color="blue">APPROVED</font>''',
'',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID IN(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID ',
'                                                                      AND CLAIMS_ID=''TRAVEL'')',
'      AND TRANS_TYPE=''VOUCHER'')=0 THEN ',
'''<font color="#a0ad17">NOT RAISED</font>''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID IN (SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID ',
'                                                                      AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''PENDING''))>0 THEN ',
'''<font color="#e40bc9">PENDING</font>''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID IN (SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID ',
'                                                                      AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED''))>0 THEN ',
'''<font color="red">REJECTED</font>''',
'',
'',
'END VOUCH_STATUS',
'',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXHRMS.xxhrms_master_all X',
'where R.company_code=:SS_COMPANY_CODE',
'AND R.EMP_ID=:AP_STAFF_ID',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND X.person_id=R.EMP_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'and x.organization_id = :SS_COMPANY_CODE',
'--AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'' AND STATUS IN(''REJECTED'',''PENDING''))',
'AND EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''TRAVEL'')',
'ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TRAVEL_ID_LISTING:&REQUEST_ID.',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302263744077589722)
,p_plug_name=>'Claims Management'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54541335613170625)
,p_name=>'Authorization Path'
,p_region_name=>'auth_pth'
,p_parent_plug_id=>wwv_flow_imp.id(302263744077589722)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_grid_column_span=>3
,p_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(28496330546085766)
,p_query_column_id=>1
,p_column_alias=>'LEVELS'
,p_column_display_sequence=>1
,p_column_heading=>'Levels'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28496778266085767)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54961333815485833)
,p_name=>'Voucher Details'
,p_region_name=>'voucher_det'
,p_parent_plug_id=>wwv_flow_imp.id(302263744077589722)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_grid_column_span=>5
,p_display_point=>'SUB_REGIONS'
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
'and R.REQUEST_ID=:P5_TRAVEL_ID_LISTING',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'and v.request_id=r.REQUEST_ID',
'',
'AND R.PROJECT_ID=P.PROJECT_ID',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P5_TRAVEL_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(28460257932085636)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28460673815085637)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28461001311085637)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28461410710085638)
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
 p_id=>wwv_flow_imp.id(28461847752085639)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28462219319085639)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28462614267085640)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28463041377085641)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28463469574085642)
,p_query_column_id=>9
,p_column_alias=>'VOUCHER_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28463866491085642)
,p_query_column_id=>10
,p_column_alias=>'CLAIMS_ID'
,p_column_display_sequence=>12
,p_column_heading=>'Claim Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28459879475085635)
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
 p_id=>wwv_flow_imp.id(28464209802085643)
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
 p_id=>wwv_flow_imp.id(28464647396085644)
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
 p_id=>wwv_flow_imp.id(28459028975085633)
,p_query_column_id=>14
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>16
,p_column_heading=>'Raised By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28459413500085634)
,p_query_column_id=>15
,p_column_alias=>'STATUS'
,p_column_display_sequence=>15
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28465033953085645)
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
 p_id=>wwv_flow_imp.id(56265003683230417)
,p_plug_name=>'Reimbursement Details'
,p_region_name=>'reim_details'
,p_parent_plug_id=>wwv_flow_imp.id(302263744077589722)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(56266350847230430)
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
,p_internal_uid=>56266350847230430
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28486504132085745)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28486917791085746)
,p_db_column_name=>'C001'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'c001'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28487380039085746)
,p_db_column_name=>'C002'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'it'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28487767940085747)
,p_db_column_name=>'BLOB001'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Proof'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28488156464085748)
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
 p_id=>wwv_flow_imp.id(28488530759085749)
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
 p_id=>wwv_flow_imp.id(28488904120085750)
,p_db_column_name=>'C003'
,p_display_order=>1110
,p_column_identifier=>'DH'
,p_column_label=>'Proof'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28489388260085751)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>1120
,p_column_identifier=>'DI'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28489707225085751)
,p_db_column_name=>'N003'
,p_display_order=>1130
,p_column_identifier=>'DJ'
,p_column_label=>'N003'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56416743497017815)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'284901'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEM_NAME:N001:N002:C003:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56265230184230419)
,p_plug_name=>'Reimbursement Form'
,p_region_name=>'reim_form'
,p_parent_plug_id=>wwv_flow_imp.id(302263744077589722)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78995567348405437)
,p_name=>'Travel Request Details'
,p_region_name=>'trav_rep'
,p_parent_plug_id=>wwv_flow_imp.id(302263744077589722)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,',
'',
'   to_date(ARRIVAL_DATE,''DD-MM-YYYY'') - to_date(DEPARTURE_DATE,''DD-MM-YYYY'')+1 Available_days,',
'case TRIP_CATEGORY ',
'when ''multi''   THEN (SELECT LISTAGG(ROWNUM||''. ''|| ',
'                           CASE WHEN LOCATION = ''Others'' THEN OTHER_START_LOC ELSE LOCATION END || ''-'' ||',
'                           CASE WHEN END_LOCATION = ''Others'' THEN OTHER_END_LOC ELSE END_LOCATION END, ''   '') ',
'                                    FROM XXCLM.XXCLM_MULTI_LOCATIONS Q',
'                                    WHERE Q.REQUEST_ID = R.REQUEST_ID',
'                               ',
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
'     END LOCATIONS,',
'--''<a class="edit_deliv" href="javascript:void(null);"data-id=''||REQUEST_ID||''>''||PROJECT_DELIVERABLES||''   ',
'--<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""></a>''PROJECT_DELIVERABLES,',
'case ',
'when request_id is not null then (SELECT LISTAGG(rn || ''. '' || DELIVERABLES, ''<br/> '')WITHIN GROUP (ORDER BY rn) AS deliverables_list',
'    FROM (SELECT ROWNUM AS rn, t.DELIVERABLES',
'             FROM (SELECT DELIVERABLES',
'                        FROM XXCLM.XXCLM_DELIVERABLES_UPDATE WHERE request_id = r.REQUEST_ID ORDER BY id',
'                    ) t',
'          ))',
'end',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,PROJECT_NAME,',
'Case',
'when (select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P5_TRAVEL_ID_LISTING)>1 then',
'''<a class="vouch_det" href="javascript:void(null);">''||(select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where ',
'                                                        REQUEST_ID=:P5_TRAVEL_ID_LISTING)||',
''' vouchers raised</a>''',
'',
'when (select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P5_TRAVEL_ID_LISTING)=1 then',
'''<a class="vouch_det" href="javascript:void(null);">''||(select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where ',
'                                                       REQUEST_ID=:P5_TRAVEL_ID_LISTING)||',
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
'and R.REQUEST_ID=:P5_TRAVEL_ID_LISTING',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND R.PROJECT_ID=P.PROJECT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P5_TRAVEL_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(28437492856085525)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28437856912085528)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28438279493085531)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28438689065085534)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>9
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(27892164151428213)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28439095852085537)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>29
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28439431912085540)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>39
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100589017750116413)
,p_query_column_id=>7
,p_column_alias=>'AVAILABLE_DAYS'
,p_column_display_sequence=>49
,p_column_heading=>'Available Days'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40613260947778840)
,p_query_column_id=>8
,p_column_alias=>'LOCATIONS'
,p_column_display_sequence=>19
,p_column_heading=>'Locations'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28440642947085554)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>59
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28436219487085516)
,p_query_column_id=>10
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28441037234085560)
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
 p_id=>wwv_flow_imp.id(28436676695085519)
,p_query_column_id=>12
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>69
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28441421805085565)
,p_query_column_id=>13
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28441836921085571)
,p_query_column_id=>14
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28437087616085522)
,p_query_column_id=>15
,p_column_alias=>'VOUCHER'
,p_column_display_sequence=>79
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
 p_id=>wwv_flow_imp.id(28442217862085577)
,p_query_column_id=>16
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>4
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55603395042035609)
,p_plug_name=>'DELIVERABLES'
,p_region_name=>'deliverables'
,p_parent_plug_id=>wwv_flow_imp.id(78995567348405437)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,REQUEST_ID,DELIVERABLES,REASONS,EMP_ID,COMPANY_CODE,DATE_CREATED,STATUS,FLAG',
'FROM XXCLM.XXCLM_DELIVERABLES_UPDATE',
'WHERE REQUEST_ID=:P5_TRAVEL_ID_LISTING'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5_TRAVEL_ID_LISTING'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28971295699546208)
,p_name=>'FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLAG'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55603692937035611)
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
 p_id=>wwv_flow_imp.id(55603788516035612)
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
,p_default_expression=>'P5_TRAVEL_ID_LISTING'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55603821653035613)
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
 p_id=>wwv_flow_imp.id(55603929943035614)
,p_name=>'REASONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'COMMENTS'
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
 p_id=>wwv_flow_imp.id(55604001853035615)
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
 p_id=>wwv_flow_imp.id(55604143323035616)
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
 p_id=>wwv_flow_imp.id(55604236358035617)
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
 p_id=>wwv_flow_imp.id(55604321194035618)
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
 p_id=>wwv_flow_imp.id(55604418386035619)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(55604550483035620)
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
 p_id=>wwv_flow_imp.id(55603561851035610)
,p_internal_uid=>55603561851035610
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
,p_no_data_found_message=>'Kindly provide the deliverables for this travel request, else, the request will not be approved.'
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
 p_id=>wwv_flow_imp.id(55625565683631080)
,p_interactive_grid_id=>wwv_flow_imp.id(55603561851035610)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(55625606968631081)
,p_report_id=>wwv_flow_imp.id(55625565683631080)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28984919514825704)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(28971295699546208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55626027609631113)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(55603692937035611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55626498618631129)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(55603788516035612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55627061528631144)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(55603821653035613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55627568803631151)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(55603929943035614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55628046445631158)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(55604001853035615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55628497361631164)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(55604143323035616)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55629001104631170)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(55604236358035617)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55629409447631181)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(55604321194035618)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(55631230256647638)
,p_view_id=>wwv_flow_imp.id(55625606968631081)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(55604418386035619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78999735110408753)
,p_plug_name=>'Travel Request Details'
,p_region_name=>'empty_rep'
,p_parent_plug_id=>wwv_flow_imp.id(302263744077589722)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<i>Click on a travel request to view details or click the new travel request button to create new travel request.</i>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91859529397921204)
,p_plug_name=>'Travel Request Form'
,p_region_name=>'trav_form'
,p_parent_plug_id=>wwv_flow_imp.id(302263744077589722)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91007648452086074)
,p_plug_name=>'Multi Location '
,p_region_name=>'multi_loc'
,p_parent_plug_id=>wwv_flow_imp.id(91859529397921204)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,REQUEST_ID,LOCATION,COMPANY_CODE,	END_LOCATION,	TRAVEL_DATE,NULL MULTI,other_start_loc,other_end_loc',
'from XXCLM.XXCLM_MULTI_LOCATIONS',
'where REQUEST_ID=:P5_TRAVEL_ID_LISTING'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5_TRAVEL_ID_LISTING'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68480530071589701)
,p_name=>'OTHER_START_LOC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OTHER_START_LOC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Other Start Locaction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68480669498589702)
,p_name=>'OTHER_END_LOC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OTHER_END_LOC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Other End Locaction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(68480990601589705)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91007823948086076)
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
 p_id=>wwv_flow_imp.id(91007938032086077)
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
 p_id=>wwv_flow_imp.id(91008056531086078)
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
' select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  where COMPANY_CODE=:SS_COMPANY_CODE',
'',
' union',
'select ''Others'' as display_value, ''Others'' as return_value ',
'  from dual',
' order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'Others'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91008154584086079)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(91008223601086080)
,p_name=>'END_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Arrival Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, name as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  where company_code = :SS_COMPANY_CODE',
' order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'Others'
,p_lov_null_value=>'Others'
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
 p_id=>wwv_flow_imp.id(91899166688083935)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91899279237083936)
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
 p_id=>wwv_flow_imp.id(91901826295083961)
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
 p_id=>wwv_flow_imp.id(92077932727999234)
,p_name=>'MULTI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MULTI'
,p_data_type=>'VARCHAR2'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(91007760709086075)
,p_internal_uid=>91007760709086075
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
 p_id=>wwv_flow_imp.id(91896162526041043)
,p_interactive_grid_id=>wwv_flow_imp.id(91007760709086075)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(91896343224041044)
,p_report_id=>wwv_flow_imp.id(91896162526041043)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68486492293591200)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(68480530071589701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68486959432591205)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(68480669498589702)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68492491661876419)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(68480990601589705)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91896826027041050)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(91007823948086076)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91897327264041056)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(91007938032086077)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91897810237041059)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(91008056531086078)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91898268352041062)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(91008154584086079)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91898809014041064)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(91008223601086080)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91908498025110676)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(91899166688083935)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(91927172095230732)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(91901826295083961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(92090258590115775)
,p_view_id=>wwv_flow_imp.id(91896343224041044)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(92077932727999234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91861542764921224)
,p_plug_name=>'Travel Request Form'
,p_parent_plug_id=>wwv_flow_imp.id(91859529397921204)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112006044381767433)
,p_plug_name=>'Travel Request Form'
,p_parent_plug_id=>wwv_flow_imp.id(91859529397921204)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302263844358589723)
,p_plug_name=>'Not Enabled'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'Claims Management is not enabled. Please contact your administrator'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''N'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28492489613085757)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56265230184230419)
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
 p_id=>wwv_flow_imp.id(30811636057891693)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(91861542764921224)
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
 p_id=>wwv_flow_imp.id(28492086735085757)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56265230184230419)
,p_button_name=>'Cancel_update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30811282279891692)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(91861542764921224)
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
 p_id=>wwv_flow_imp.id(28442656442085580)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(78995567348405437)
,p_button_name=>'edit'
,p_button_static_id=>'edit_trav_req'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Request'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P5_TRAVEL_ID_LISTING',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''TRAVEL'')',
'       AND TRANS_TYPE=''VOUCHER'' --AND STATUS IN(''REJECTED'',''APPROVED'')',
'              )'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28465468665085646)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54961333815485833)
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28970554225546201)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(78995567348405437)
,p_button_name=>'edit_deliverables'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Update Deliverables'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28434418787085497)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53692481313988533)
,p_button_name=>'new_request'
,p_button_static_id=>'trav_but'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Travel Request'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28490538237085753)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56265003683230417)
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
 p_id=>wwv_flow_imp.id(28490931562085754)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56265003683230417)
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
 p_id=>wwv_flow_imp.id(28552961768085908)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10454420283658105)
,p_name=>'P5_DEPARTURE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_prompt=>'Departure Date'
,p_format_mask=>'DD-MON-RRRR'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2561020762224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28434800626085499)
,p_name=>'P5_ITEM_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53692481313988533)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28435559764085509)
,p_name=>'P5_TRAVEL_ID_LISTING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78994729735400875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28485884679085741)
,p_name=>'P5_TRAVEL_ID_LISTING_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54961019094485830)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28491309229085755)
,p_name=>'P5_REIM_SEQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56265003683230417)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28492815346085758)
,p_name=>'P5_TRAVEL_REQUEST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56265230184230419)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28493254041085759)
,p_name=>'P5_REIM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56265230184230419)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28493662447085760)
,p_name=>'P5_TRAVEL_ITEM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56265230184230419)
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
 p_id=>wwv_flow_imp.id(28494089039085761)
,p_name=>'P5_TRAVEL_ITEM_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56265230184230419)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28494459197085762)
,p_name=>'P5_TRAVEL_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(56265230184230419)
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
 p_id=>wwv_flow_imp.id(28494882106085762)
,p_name=>'P5_NEW_VALUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(56265230184230419)
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
 p_id=>wwv_flow_imp.id(28495242387085763)
,p_name=>'P5_PROOF'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(56265230184230419)
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
 p_id=>wwv_flow_imp.id(28495687333085764)
,p_name=>'P5_PROOF_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(56265230184230419)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29535932108424215)
,p_name=>'P5_AVAILABLE_DAYS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_prompt=>'Available Days'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="background-color:#dddddd;"'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30598308425398612)
,p_name=>'P5_TIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78994729735400875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30598499310398613)
,p_name=>'P5_ACTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(78994729735400875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30804166221891685)
,p_name=>'P5_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30804522641891686)
,p_name=>'P5_CATEGORY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_prompt=>'Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(CATEGORY_NAME) D, CATEGORY_ID R',
'FROM XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'and UPPER(grp_cat)=upper(''TRAVEL'')'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30804936487891686)
,p_name=>'P5_PROJECT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(PROJECT_NAME) D, PROJECT_ID R',
'FROM XXPBG.XXPBG_PROJECTS',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND PROJECT_STATUS= ''ACTIVE''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30805704980891687)
,p_name=>'P5_STAFF_CATEGORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30806176395891688)
,p_name=>'P5_STAFF_CATEGORY_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30807357862891689)
,p_name=>'P5_TRIP_CATEGORY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
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
 p_id=>wwv_flow_imp.id(30808150827891689)
,p_name=>'P5_ARRIVAL_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_prompt=>'Arrival Date'
,p_format_mask=>'DD-MON-RRRR'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808567373891690)
,p_name=>'P5_DEPARTURE_LOCATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_prompt=>'Departure Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  where COMPANY_CODE=:SS_COMPANY_CODE',
'',
' union',
'select ''Others'' as display_value, ''Others'' as return_value ',
'  from dual',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--- Select Departure Location --- '
,p_lov_null_value=>'Others'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30808937299891690)
,p_name=>'P5_NAME_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
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
 p_id=>wwv_flow_imp.id(30809372803891690)
,p_name=>'P5_ARRIVAL_LOCATION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_prompt=>'Arrival Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  where COMPANY_CODE=:SS_COMPANY_CODE',
'',
' union',
'select ''Others'' as display_value, ''Others'' as return_value ',
'  from dual',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--- Select Arrival Location --- '
,p_lov_null_value=>'Others'
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
 p_id=>wwv_flow_imp.id(30809745881891691)
,p_name=>'P5_NAME_2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
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
 p_id=>wwv_flow_imp.id(30810579733891692)
,p_name=>'P5_PROJECT_DELIVERABLES'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(112006044381767433)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30848413526054422)
,p_name=>'P5_MULTI_SEQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91007648452086074)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32512684578319203)
,p_name=>'P5_REIM_ERROR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56265003683230417)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28513551763085814)
,p_name=>'create new request'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28434418787085497)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28516557811085818)
,p_event_id=>wwv_flow_imp.id(28513551763085814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
'$("#voucher_det").hide();  ',
'$s(''P5_CATEGORY_ID'','''');',
'$s(''P5_PROJECT_ID'','''');',
'$s(''P5_CLAIMS_ITEMS'','''');',
'$s(''P5_TRIP_CATEGORY'','''');',
'$s(''P5_DEPARTURE_DATE'','''');',
'$s(''P5_ARRIVAL_DATE'','''');',
'$s(''P5_DEPARTURE_LOCATION'','' '');',
'$s(''P5_ARRIVAL_LOCATION'','' '');',
'$s(''P5_PROJECT_DELIVERABLES'','''');',
'$s(''P5_EMP_ID'','''');',
'$s(''P5_STAFF_CATEGORY'','''');',
'$s(''P5_TIL'',$v(''P5_TRAVEL_ID_LISTING''));',
'$s(''P5_ACTION'',''INSERT'');',
'$("#auth_pth").show();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28517079480085819)
,p_event_id=>wwv_flow_imp.id(28513551763085814)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_REQUEST_ID,P5_ARRIVAL_LOCATION,P5_DEPARTURE_LOCATION,P5_NAME_1,P5_NAME_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28516049001085817)
,p_event_id=>wwv_flow_imp.id(28513551763085814)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select null INTO :P5_DEPARTURE_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'  select null INTO :P5_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'',
'  END;'))
,p_attribute_02=>'P5_DEPARTURE_LOCATION'
,p_attribute_03=>'P5_DEPARTURE_LOCATION,P5_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28515566144085817)
,p_event_id=>wwv_flow_imp.id(28513551763085814)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'ct number;',
'BEGIN',
'-- -- select MAX(CODE) into ct from  XXHRMS.XXHRMS_DEP_LOCATION;',
'-- -- select CODE INTO :P5_DEPARTURE_LOCATION',
'-- --   from XXHRMS.XXHRMS_DEP_LOCATION',
'-- --   WHERE ROWnum=1',
'-- --   order by name desc;',
'-- --   select CODE INTO :P5_ARRIVAL_LOCATION',
'-- --   from XXHRMS.XXHRMS_DEP_LOCATION',
'-- --   WHERE ROWNUM=1',
'-- --   order by name asc;',
'null;',
'  ',
'  END;'))
,p_attribute_02=>'P5_DEPARTURE_LOCATION'
,p_attribute_03=>'P5_DEPARTURE_LOCATION,P5_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28514017917085814)
,p_event_id=>wwv_flow_imp.id(28513551763085814)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CATEGORY_ID,P5_PROJECT_ID,P5_TRIP_CATEGORY,P5_DEPARTURE_LOCATION,P5_ARRIVAL_DATE,P5_ARRIVAL_LOCATION,P5_PROJECT_DELIVERABLES,P5_STAFF_CATEGORY_1,P5_NAME_1,P5_NAME_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28517535840085820)
,p_event_id=>wwv_flow_imp.id(28513551763085814)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_VOUCHER_VALUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28549587597085902)
,p_event_id=>wwv_flow_imp.id(28513551763085814)
,p_event_result=>'TRUE'
,p_action_sequence=>100
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28549088258085902)
,p_event_id=>wwv_flow_imp.id(28513551763085814)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54541335613170625)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28517935156085820)
,p_name=>'EDIT request'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28442656442085580)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28520986519085827)
,p_event_id=>wwv_flow_imp.id(28517935156085820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28520486811085827)
,p_event_id=>wwv_flow_imp.id(28517935156085820)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P5_TIL'',$v(''P5_TRAVEL_ID_LISTING''));',
'$("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#voucher_det").hide();  ',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
'$s(''P5_CATEGORY_ID'','''');',
'$s(''P5_PROJECT_ID'','''');',
'$s(''P5_CLAIMS_ITEMS'','''');',
'$s(''P5_TRIP_CATEGORY'','''');',
'$s(''P5_DEPARTURE_DATE'','''');',
'$s(''P5_ARRIVAL_DATE'','''');',
'$s(''P5_DEPARTURE_LOCATION'','''');',
'$s(''P5_ARRIVAL_LOCATION'','''');',
'$s(''P5_PROJECT_DELIVERABLES'','''');',
'$s(''P5_STAFF_CATEGORY'','''');',
'$s(''P5_ACTION'',''UPDATE'');',
'$("#auth_pth").show();',
'',
'',
'var arrivalSelect = document.getElementById(''P5_ARRIVAL_LOCATION'');',
'var arrivalOption = arrivalSelect.options[arrivalSelect.selectedIndex];',
'if (arrivalOption.text.trim() === ''--- Select Arrival Location ---'') {',
'    arrivalOption.text = ''Others'';',
'}',
'',
'',
'var departureSelect = document.getElementById(''P5_DEPARTURE_LOCATION'');',
'var departureOption = departureSelect.options[departureSelect.selectedIndex];',
'if (departureOption.text.trim() === ''--- Select Departure Location --- '') {',
'    departureOption.text = ''Others'';',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28521426598085829)
,p_event_id=>wwv_flow_imp.id(28517935156085820)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REQUEST_ID,CATEGORY_ID,PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,',
'ARRIVAL_LOCATION,PROJECT_DELIVERABLES',
'INTO :P5_REQUEST_ID,:P5_CATEGORY_ID,:P5_PROJECT_ID,:P5_TRIP_CATEGORY,:P5_DEPARTURE_DATE,:P5_ARRIVAL_DATE,:P5_DEPARTURE_LOCATION,',
':P5_ARRIVAL_LOCATION,:P5_PROJECT_DELIVERABLES',
'',
'FROM XXCLM.XXCLM_TRAVEL_REQUEST',
'WHERE REQUEST_ID=:P5_TRAVEL_ID_LISTING;',
'',
'select STAFF_CATEGORY INTO :P5_STAFF_CATEGORY_1 from XXHRMS_MASTER_ALL',
'WHERE EMPLOYEE_NUMBER=:AP_STAFF_ID and organization_id = :SS_COMPANY_CODE;',
'',
'-- SELECT CODE ',
'-- INTO :P5_NAME_2 ',
'-- FROM DUAL ',
'-- WHERE :P5_ARRIVAL_LOCATION != (',
'--   SELECT CODE ',
'--   FROM XXHRMS.XXHRMS_DEP_LOCATION ',
'--   WHERE COMPANY_CODE = :AP_COMPANY_CODE ',
'-- );',
'',
' SELECT DEPARTURE_LOCATION ,ARRIVAL_LOCATION,   to_date(ARRIVAL_DATE,''DD-MM-YYYY'') - to_date(DEPARTURE_DATE,''DD-MM-YYYY'')+1 Available_days',
'INTO :P5_NAME_1 ,:P5_NAME_2, :P5_AVAILABLE_DAYS',
'FROM XXCLM.XXCLM_TRAVEL_REQUEST',
'WHERE REQUEST_ID=:P5_TRAVEL_ID_LISTING;',
'',
'IF :P5_TRIP_CATEGORY = ''Multi-Location Trip''',
'THEN ',
'select CODE INTO :P5_ARRIVAL_LOCATION',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'  WHERE ROWNUM=1;',
'  END IF;',
'',
''))
,p_attribute_02=>'P5_TRAVEL_ID_LISTING'
,p_attribute_03=>'P5_REQUEST_ID,P5_CATEGORY_ID,P5_PROJECT_ID,P5_CLAIM_ITM,P5_TRIP_CATEGORY,P5_DEPARTURE_DATE,P5_ARRIVAL_DATE,P5_DEPARTURE_LOCATION,P5_ARRIVAL_LOCATION,P5_PROJECT_DELIVERABLES,P5_EMP_ID,P5_STAFF_CATEGORY_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28519411677085824)
,p_event_id=>wwv_flow_imp.id(28517935156085820)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_STAFF_CATEGORY_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28519963157085824)
,p_event_id=>wwv_flow_imp.id(28517935156085820)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_STAFF_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28518985273085823)
,p_event_id=>wwv_flow_imp.id(28517935156085820)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CLAIM_ITM_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28518423643085821)
,p_event_id=>wwv_flow_imp.id(28517935156085820)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CATEGORY_ID,P5_PROJECT_ID,P5_TRIP_CATEGORY,P5_DEPARTURE_LOCATION,P5_ARRIVAL_LOCATION,P5_PROJECT_DELIVERABLES,P5_STAFF_CATEGORY_1,P5_NAME_1,P5_NAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28548504042085901)
,p_name=>'REFRESH AUTHO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34796662990249535)
,p_event_id=>wwv_flow_imp.id(28548504042085901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);',
'APEX_UTIL.set_session_state(',
'p_name  => ''AP_AUTH_TYPE''',
', p_value => ''TRAVEL'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34796735348249536)
,p_event_id=>wwv_flow_imp.id(28548504042085901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54541335613170625)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28510156325085806)
,p_name=>'NEW PAGE LOAD'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28511132690085809)
,p_event_id=>wwv_flow_imp.id(28510156325085806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#trav_form,#clm_voucher,#voucher_edit_form,#deliv_edit_form,#auth_pth'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28510665445085808)
,p_event_id=>wwv_flow_imp.id(28510156325085806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28511692496085811)
,p_event_id=>wwv_flow_imp.id(28510156325085806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P5_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'    $("#voucher_det").hide();  ',
'    $("#reim_details").hide();',
'    $("#reim_form").hide();',
'}',
'else{',
'    if ($v(''P5_PROOF_STATUS'')==''INACTIVE''){',
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
 p_id=>wwv_flow_imp.id(28512188290085812)
,p_event_id=>wwv_flow_imp.id(28510156325085806)
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
'        p_name  => ''P5_PROOF_STATUS''',
'      , p_value => ''INACTIVE'');',
'      ',
'      APEX_UTIL.set_session_state(',
'        p_name  => ''P5_NEW_VALUE''',
'      , p_value => '''');',
'      ',
'      APEX_UTIL.set_session_state(',
'        p_name  => ''P5_STAFF_CATEGORY''',
'      , p_value => '''');',
'',
'    --     APEX_UTIL.set_session_state(',
'    --     p_name  => ''P5_DEPARTURE_LOCATION''',
'    --   , p_value => '''');',
'      ',
'      ',
'    --     APEX_UTIL.set_session_state(',
'    --     p_name  => ''P5_ARRIVAL_LOCATION''',
'    --   , p_value => '''');'))
,p_attribute_02=>'AP_STAFF_ID'
,p_attribute_03=>'P5_PROOF_STATUS,P5_NEW_VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28512696531085812)
,p_event_id=>wwv_flow_imp.id(28510156325085806)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28492086735085757)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28513102684085813)
,p_event_id=>wwv_flow_imp.id(28510156325085806)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28492489613085757)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28545148800085895)
,p_name=>'CREATE REIMBURSEMENT'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28465468665085646)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28545615630085896)
,p_event_id=>wwv_flow_imp.id(28545148800085895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Create reimbursement request?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28548181413085900)
,p_event_id=>wwv_flow_imp.id(28545148800085895)
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
 p_id=>wwv_flow_imp.id(28546119602085897)
,p_event_id=>wwv_flow_imp.id(28545148800085895)
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
'        WHERE I.ITEM_ID=L.ITEM_ID AND  REQUEST_ID=''||:P5_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        ',
'        else',
'        ',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY2 (',
'        p_collection_name => ''REIM_ITEMS'', ',
'         p_query => ''SELECT ALL I.ITEM_RATE*ITEM_QUANTITY,I.ITEM_RATE*ITEM_QUANTITY,L.ITEM_ID,null,null,null,null,null,null,null,',
'    I.ITEM_ID,REQUEST_ID FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS I, XXCLM.XXCLM_ITEM_LIST L',
'        WHERE I.ITEM_ID=L.ITEM_ID AND  REQUEST_ID=''||:P5_TRAVEL_ID_LISTING,',
'        p_generate_md5 => ''YES'');',
'        ',
'        END IF;',
'',
'END;'))
,p_attribute_02=>'P5_TRAVEL_ID_LISTING'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28547621632085899)
,p_event_id=>wwv_flow_imp.id(28545148800085895)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_TRAVEL_ITEM,P5_TRAVEL_VALUE,P5_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28547110062085899)
,p_event_id=>wwv_flow_imp.id(28545148800085895)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#reim_details,#reim_form'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28546603797085898)
,p_event_id=>wwv_flow_imp.id(28545148800085895)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56265003683230417)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28549986569085903)
,p_name=>'Edit Reimbursement'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_reim'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28550426106085904)
,p_event_id=>wwv_flow_imp.id(28549986569085903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P5_REIM_SEQ",$(this.triggeringElement).parent().data(''id''));',
'$s((''P5_NEW_VALUE''),($v(''P5_NEW_VALUE'').replace(/\s+/, '' '')));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28550946826085905)
,p_event_id=>wwv_flow_imp.id(28549986569085903)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C002,C001,TO_CHAR(N002,''999G999G999G999G990D00'') INTO :P5_TRAVEL_REQUEST, :P5_TRAVEL_ITEM_1, :P5_TRAVEL_VALUE FROM apex_collections',
'where collection_name =''REIM_ITEMS''',
'and SEQ_ID=:P5_REIM_SEQ;',
'',
'select INITCAP(ITEM_NAME)into :P5_TRAVEL_ITEM',
'from apex_collections, XXCLM.XXCLM_ITEM_LIST L where collection_name =''REIM_ITEMS''',
'and N003=l.item_id',
'and SEQ_ID=:P5_REIM_SEQ;'))
,p_attribute_02=>'P5_REIM_SEQ'
,p_attribute_03=>'P5_TRAVEL_REQUEST,P5_TRAVEL_ITEM,P5_TRAVEL_VALUE,P5_TRAVEL_ITEM_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28551401751085905)
,p_event_id=>wwv_flow_imp.id(28549986569085903)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_TRAVEL_ITEM,P5_TRAVEL_VALUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28551985732085906)
,p_event_id=>wwv_flow_imp.id(28549986569085903)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28492086735085757)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28552477996085907)
,p_event_id=>wwv_flow_imp.id(28549986569085903)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28492489613085757)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28504560174085787)
,p_name=>'update_reimbursement_collection '
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28492489613085757)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28505086587085788)
,p_event_id=>wwv_flow_imp.id(28504560174085787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var a=$v("P5_NEW_VALUE");',
' if (a==""){',
'        alert(''Please enter the total spent amount'');',
'        return false;',
'    }',
'else{',
'    apex.util.showSpinner($("#reim_form"));',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28505598439085789)
,p_event_id=>wwv_flow_imp.id(28504560174085787)
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
'        p_seq => :P5_REIM_SEQ,',
'        p_attr_number => ''2'',',
'        p_number_value => :P5_NEW_VALUE);',
'        ',
'      ',
'END;',
''))
,p_attribute_02=>'P5_NEW_VALUE,P5_REIM_SEQ'
,p_attribute_03=>'P5_PROOF_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28507072690085795)
,p_event_id=>wwv_flow_imp.id(28504560174085787)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28492086735085757)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28507404161085797)
,p_event_id=>wwv_flow_imp.id(28504560174085787)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28492489613085757)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28506594258085790)
,p_event_id=>wwv_flow_imp.id(28504560174085787)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56265003683230417)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28507946732085799)
,p_event_id=>wwv_flow_imp.id(28504560174085787)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P5_PROOF'')==''''){',
'   // $s(''P3_BUDGET_NAME'','''');',
'    $s(''P5_PROOF_STATUS'',''INACTIVE'');',
'    $("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();',
'    return true;',
'}',
'',
'else {',
'  $s(''P5_PROOF_STATUS'',''ACTIVE'');',
'    //apex.util.showSpinner( $( "#reim_details" ) );',
'    apex.submit(''proof'');',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28506082892085789)
,p_event_id=>wwv_flow_imp.id(28504560174085787)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_TRAVEL_ITEM,P5_TRAVEL_VALUE,P5_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28508384222085800)
,p_name=>'cancel reimbursement'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28490931562085754)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28509344360085803)
,p_event_id=>wwv_flow_imp.id(28508384222085800)
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
 p_id=>wwv_flow_imp.id(28508872426085802)
,p_event_id=>wwv_flow_imp.id(28508384222085800)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PROOF_STATUS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'INACTIVE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28509717347085805)
,p_name=>'New'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_PROOF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28539039092085885)
,p_name=>'CONFIRM CREATED REIMBURSEMENT'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28490538237085753)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28540071999085887)
,p_event_id=>wwv_flow_imp.id(28539039092085885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Submit to confirm created reimbursement?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32512798292319204)
,p_event_id=>wwv_flow_imp.id(28539039092085885)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CT NUMBER;',
'TT NUMBER;',
'BEGIN',
'select sum(N001),sum(N002) INTO CT,TT from apex_collections where collection_name=''REIM_ITEMS'' AND ',
'C002=:P5_TRAVEL_ID_LISTING ;',
'if ct-TT=0',
'then',
':P5_REIM_ERROR :=''N'';',
'else',
':P5_REIM_ERROR :=''Y'';',
'end if;',
'end;',
''))
,p_attribute_02=>'P5_TRAVEL_ID_LISTING'
,p_attribute_03=>'P5_REIM_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28541018883085889)
,p_event_id=>wwv_flow_imp.id(28539039092085885)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P5_REIM_ERROR'')==''N''){',
'    alert(''Action cannot be completed. Total Amount Spent and amount disbursed is equal.'');',
'    return false;',
'}',
'apex.util.showSpinner( $( "#reim_details" ) );'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28539509495085886)
,p_event_id=>wwv_flow_imp.id(28539039092085885)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
'select emp_id into  l_emp_id from xxclm.xxclm_travel_request where request_id=:P5_TRAVEL_ID_LISTING;',
'XXCLM.XXCLM_CLAIMS_PKG.create_reimbursement_req(',
'	p_category_id =>'''',',
'    p_project_id =>'''',',
'    p_claim_value =>'''',',
'    p_company_code =>:SS_COMPANY_CODE,',
'   p_EMP_ID =>l_emp_id,',
'    p_items =>'''',',
'    p_travel_request =>:P5_TRAVEL_ID_LISTING,',
'    p_id =>:P5_REIM_ID,',
'    P_Req_by=>:AP_STAFF_ID);',
'',
'',
'APEX_UTIL.set_session_state(',
'        p_name  => ''P5_PROOF_STATUS''',
'      , p_value => ''INACTIVE'');',
'exception',
'when others then',
'raise_application_error(-20005,sqlerrm);',
'end;'))
,p_attribute_02=>'P5_TRAVEL_ID_LISTING,P5_PROOF_STATUS,AP_STAFF_ID'
,p_attribute_03=>'P5_REIM_ID,P5_PROOF_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28633754510838910)
,p_event_id=>wwv_flow_imp.id(28539039092085885)
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
'      , p_value => ''REIMBURSEMENT'');'))
,p_attribute_02=>'AP_STAFF_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28540576443085888)
,p_event_id=>wwv_flow_imp.id(28539039092085885)
,p_event_result=>'TRUE'
,p_action_sequence=>60
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
 p_id=>wwv_flow_imp.id(28970660337546202)
,p_name=>'Edit Deliverables'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30811636057891693)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28970753478546203)
,p_event_id=>wwv_flow_imp.id(28970660337546202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#deliverables'').show();',
'$("html, body").animate({ scrollTop:  $("#deliverables").offset().top }, "slow");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28970837826546204)
,p_name=>'FLAG'
,p_event_sequence=>310
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(55603395042035609)
,p_triggering_element=>'REQUEST_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28970946502546205)
,p_event_id=>wwv_flow_imp.id(28970837826546204)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DELIVERABLES,REASONS,STATUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28971166405546207)
,p_event_id=>wwv_flow_imp.id(28970837826546204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DELIVERABLES,REASONS,STATUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30817324297896921)
,p_name=>'Departure'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_DEPARTURE_LOCATION'
,p_condition_element=>'P5_DEPARTURE_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Others'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30817759737896922)
,p_event_id=>wwv_flow_imp.id(30817324297896921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_NAME_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30818221469896923)
,p_event_id=>wwv_flow_imp.id(30817324297896921)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_NAME_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30818616644900346)
,p_name=>'Arrival'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ARRIVAL_LOCATION'
,p_condition_element=>'P5_ARRIVAL_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Others'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30819060482900347)
,p_event_id=>wwv_flow_imp.id(30818616644900346)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30819551259900347)
,p_event_id=>wwv_flow_imp.id(30818616644900346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_NAME_2'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30819995217906510)
,p_name=>'CHANGE'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_TRIP_CATEGORY'
,p_condition_element=>'P5_TRIP_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'multi'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30822366115906512)
,p_event_id=>wwv_flow_imp.id(30819995217906510)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91007648452086074)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30820338312906511)
,p_event_id=>wwv_flow_imp.id(30819995217906510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91007648452086074)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30821890662906512)
,p_event_id=>wwv_flow_imp.id(30819995217906510)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ARRIVAL_LOCATION,P5_DEPARTURE_LOCATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30820874341906511)
,p_event_id=>wwv_flow_imp.id(30819995217906510)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ARRIVAL_LOCATION,P5_DEPARTURE_LOCATION,P5_NAME_1,P5_NAME_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30822885595906512)
,p_event_id=>wwv_flow_imp.id(30819995217906510)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'ct number;',
'BEGIN',
'select count(*) into ct from  XXHRMS.XXHRMS_DEP_LOCATION where COMPANY_CODE=:SS_COMPANY_CODE;',
'',
'    ',
'if :P5_DEPARTURE_LOCATION is null',
'then',
'        select MAX(CODE) INTO :P5_DEPARTURE_LOCATION',
'        from XXHRMS.XXHRMS_DEP_LOCATION',
'        WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'        order by name desc;',
'end if;',
'',
'if :P5_ARRIVAL_LOCATION is null',
'then',
'        select MIN(CODE) INTO :P5_ARRIVAL_LOCATION',
'        from XXHRMS.XXHRMS_DEP_LOCATION',
'        WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'        order by name asc;',
'        ',
'        end if;',
'  ',
'  END;'))
,p_attribute_02=>'P5_DEPARTURE_LOCATION'
,p_attribute_03=>'P5_DEPARTURE_LOCATION,P5_ARRIVAL_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30821372667906511)
,p_event_id=>wwv_flow_imp.id(30819995217906510)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40612559650778833)
,p_event_id=>wwv_flow_imp.id(30819995217906510)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_NAME_1,P5_NAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30823271301909462)
,p_name=>'WAY'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_TRIP_CATEGORY'
,p_condition_element=>'P5_TRIP_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'one_way'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30823618040909463)
,p_event_id=>wwv_flow_imp.id(30823271301909462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ARRIVAL_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30824150467909463)
,p_event_id=>wwv_flow_imp.id(30823271301909462)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ARRIVAL_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30824674695909464)
,p_event_id=>wwv_flow_imp.id(30823271301909462)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ARRIVAL_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30598554238398614)
,p_name=>'CANCEL'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30811282279891692)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30598697355398615)
,p_event_id=>wwv_flow_imp.id(30598554238398614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P5_TRAVEL_ID_LISTING'',$v(''P5_TIL''));',
'if ($v(''P5_TRAVEL_ID_LISTING'')==''''){',
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
'$s(''P5_CATEGORY_ID'','''');',
'$s(''P5_PROJECT_ID'','''');',
'$s(''P5_CLAIMS_ITEMS'','''');',
'$s(''P5_TRIP_CATEGORY'','''');',
'$s(''P5_DEPARTURE_DATE'','''');',
'$s(''P5_ARRIVAL_DATE'','''');',
'$s(''P5_DEPARTURE_LOCATION'','''');',
'$s(''P5_ARRIVAL_LOCATION'','''');',
'$s(''P5_PROJECT_DELIVERABLES'','''');',
'$("#auth_pth").hide();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30598766370398616)
,p_event_id=>wwv_flow_imp.id(30598554238398614)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29536095347424216)
,p_name=>'New_3'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ARRIVAL_DATE,P5_DEPARTURE_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29536110116424217)
,p_event_id=>wwv_flow_imp.id(29536095347424216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_AVAILABLE_DAYS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   return to_date(:P5_ARRIVAL_DATE,''DD-MM-RRRR'')-to_date(:P5_DEPARTURE_DATE,''DD-MM-RRRR'')+1;',
'   ',
''))
,p_attribute_07=>'P5_ARRIVAL_DATE,P5_DEPARTURE_DATE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40610338247778811)
,p_event_id=>wwv_flow_imp.id(29536095347424216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P5_DEPARTURE_DATE. , &P5_ARRIVAL_DATE.'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30857493515011203)
,p_name=>'SUBMIT FORM'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30811636057891693)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30858848034011206)
,p_event_id=>wwv_flow_imp.id(30857493515011203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s((''P5_DEPARTURE_DATE''),($v(''P5_DEPARTURE_DATE'').replace(/\s+/, '' '')));',
'$s((''P5_ARRIVAL_DATE''),($v(''P5_ARRIVAL_DATE'').replace(/\s+/, '' '')));',
'$s((''P5_DEPARTURE_LOCATION''),($v(''P5_DEPARTURE_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P5_ARRIVAL_LOCATION''),($v(''P5_ARRIVAL_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P5_PROJECT_DELIVERABLES''),($v(''P5_PROJECT_DELIVERABLES'').replace(/\s+/, '' '')));',
'',
'',
'',
'var a=$v("P5_CATEGORY_ID");',
'var b=$v("P5_PROJECT_ID");',
'',
'var d=$v("P5_TRIP_CATEGORY");',
'var e=$v("P5_DEPARTURE_DATE");',
'',
'var g=$v("P5_DEPARTURE_LOCATION");',
'var h=$v("P5_ARRIVAL_LOCATION");',
'',
'if ($v(''P5_TRIP_CATEGORY'')!=''Multi-Location Trip''){',
' if (a==""||b==""||d==""||e==""||g==""||h==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'}',
'',
'if ($v(''P5_TRIP_CATEGORY'')==''Multi-Location Trip''){',
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
 p_id=>wwv_flow_imp.id(30859350554011206)
,p_event_id=>wwv_flow_imp.id(30857493515011203)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_ACTION=''UPDATE''',
'then',
'begin',
'IF :P5_DEPARTURE_LOCATION =''Others''',
'then',
':P5_DEPARTURE_LOCATION :=:P5_NAME_1;',
'END IF;',
'IF :P5_ARRIVAL_LOCATION =''Others'' and :P5_TRIP_CATEGORY!=''multi''',
'then',
':P5_ARRIVAL_LOCATION :=:P5_NAME_2;',
'ELSIF  :P5_ARRIVAL_LOCATION =''Others'' and :P5_TRIP_CATEGORY=''multi''',
'THEN',
':P5_ARRIVAL_LOCATION :='''';',
'END IF;',
'END;',
'XXCLM.XXCLM_CLAIMS_PKG.create_travel_request(',
'	p_CATEGORY_ID =>:P5_CATEGORY_ID,',
'    p_PROJECT_ID =>:P5_PROJECT_ID,',
'    p_TRIP_CATEGORY =>:P5_TRIP_CATEGORY,',
'    p_DEPARTURE_DATE =>:P5_DEPARTURE_DATE,',
'    p_ARRIVAL_DATE =>:P5_ARRIVAL_DATE,',
'    p_DEPARTURE_LOCATION =>:P5_DEPARTURE_LOCATION,',
'    p_ARRIVAL_LOCATION =>:P5_ARRIVAL_LOCATION,',
'    p_PROJECT_DELIVERABLES =>:P5_PROJECT_DELIVERABLES,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:AP_STAFF_ID,',
'    p_category_items =>'''',',
'    P_ACTION =>''UPDATE'',',
'    p_multi =>'''',',
'    P_ml_code=>:P5_MULTI_SEQ,',
'    p_id =>:P5_TRAVEL_ID_LISTING);',
'    END IF;',
''))
,p_attribute_02=>'P5_TRAVEL_ID_LISTING,P5_REQUEST_ID,P5_CATEGORY_ID,P5_PROJECT_ID,P5_TRIP_CATEGORY,P5_ARRIVAL_DATE,P5_DEPARTURE_LOCATION,P5_ARRIVAL_LOCATION,P5_PROJECT_DELIVERABLES,P5_NAME_1,P5_NAME_2,P5_MULTILOCATIONS,P5_ACTION,P5_DEPARTURE_DATE'
,p_attribute_03=>'P5_REQUEST_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30858390600011205)
,p_event_id=>wwv_flow_imp.id(30857493515011203)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'    apex.submit();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30857885988011205)
,p_event_id=>wwv_flow_imp.id(30857493515011203)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30825595532912322)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ML_CODE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_ACTION=''INSERT''',
'then',
'SELECT XXCLM.XXCLM_MULTI_SEQ.NEXTVAL INTO :P5_MULTI_SEQ FROM DUAL;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P5_ACTION = ''INSERT'' AND :P5_TRIP_CATEGORY=''multi'' then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>30825595532912322
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30598201402398611)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(91007648452086074)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'IG'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'CT NUMBER;',
'begin',
'',
'if :P5_ACTION=''INSERT''',
'then',
'CT := :P5_MULTI_SEQ;',
'',
'ELSE',
'SELECT MAX(ML_CODE) INTO CT FROM  XXCLM.XXCLM_MULTI_LOCATIONS WHERE REQUEST_ID=:P5_TRAVEL_ID_LISTING;',
'APEX_UTIL.set_session_state(',
'        p_name  => ''P5_MULTI_SEQ''',
'      , p_value => CT);',
'',
'END IF;',
'',
'',
'',
'     case :APEX$ROW_STATUS  ',
'     when ''C'' then',
'         insert into XXCLM.XXCLM_MULTI_LOCATIONS (ML_CODE,LOCATION,COMPANY_CODE,END_LOCATION,TRAVEL_DATE,OTHER_START_LOC,OTHER_END_LOC)  ',
'         values (CT, :LOCATION,:SS_COMPANY_CODE, :END_LOCATION,:TRAVEL_DATE,:OTHER_START_LOC,:OTHER_END_LOC )  ',
'         returning rowid into :ROWID;  ',
'     when ''U'' then  ',
'         update XXCLM.XXCLM_MULTI_LOCATIONS  ',
'            set END_LOCATION  = :END_LOCATION,  ',
'                LOCATION = :LOCATION,',
'                TRAVEL_DATE =:TRAVEL_DATE,',
'				OTHER_START_LOC = :OTHER_START_LOC,',
'				OTHER_END_LOC = :OTHER_START_LOC',
'          where rowid  = :ROWID;  ',
'     when ''D'' then  ',
'         delete XXCLM.XXCLM_MULTI_LOCATIONS  ',
'         where rowid = :ROWID;  ',
'     end case;  ',
'end;  '))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30598201402398611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30825857272918342)
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
'IF :P5_DEPARTURE_LOCATION =''Others''',
'then',
':P5_DEPARTURE_LOCATION :=:P5_NAME_1;',
'END IF;',
'IF :P5_ARRIVAL_LOCATION =''Others'' and :P5_TRIP_CATEGORY!=''multi''',
'then',
':P5_ARRIVAL_LOCATION :=:P5_NAME_2;',
'ELSIF  :P5_ARRIVAL_LOCATION =''Others'' and :P5_TRIP_CATEGORY=''multi''',
'THEN',
':P5_ARRIVAL_LOCATION :='''';',
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
'if :P5_ACTION=''INSERT''',
'then',
'XXCLM.XXCLM_CLAIMS_PKG.create_travel_request(',
'	p_CATEGORY_ID =>:P5_CATEGORY_ID,',
'    p_PROJECT_ID =>:P5_PROJECT_ID,',
'    p_TRIP_CATEGORY =>:P5_TRIP_CATEGORY,',
'    p_DEPARTURE_DATE =>:P5_DEPARTURE_DATE,',
'    p_ARRIVAL_DATE =>:P5_ARRIVAL_DATE,',
'    p_DEPARTURE_LOCATION =>:P5_DEPARTURE_LOCATION,',
'    p_ARRIVAL_LOCATION =>:P5_ARRIVAL_LOCATION,',
'    p_PROJECT_DELIVERABLES =>:P5_PROJECT_DELIVERABLES,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:AP_STAFF_ID,',
'    p_category_items =>'''',',
'    P_ACTION =>''INSERT'',',
'    p_multi =>'''',',
'    P_ml_code=>:P5_multi_seq,',
'    p_id =>:P5_REQUEST_ID);',
'    :P5_TRAVEL_ID_LISTING :=:P5_REQUEST_ID;    ',
'    ELSE',
'    update XXCLM.XXCLM_MULTI_LOCATIONS',
'  set REQUEST_ID=:P5_TRAVEL_ID_LISTING',
'  where ml_code=:P5_multi_seq',
'  and COMPANY_CODE=:SS_COMPANY_CODE;',
'',
'        ',
'  END IF;',
'  exception',
'  when others then',
'  raise_application_error(-20007,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P5_ACTION'
,p_process_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_process_when2=>'INSERT:UPDATE'
,p_process_success_message=>'Action Processed'
,p_internal_uid=>30825857272918342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28458317459085631)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(55603395042035609)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'UPDATE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28458317459085631
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28498578779085777)
,p_process_sequence=>50
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
'      WHERE NAME=:P5_PROOF;',
'      ',
'      APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''REIM_ITEMS'',',
'        p_seq => :P5_REIM_SEQ,',
'        p_blob_number => ''1'',',
'        p_blob_value => l_blob);',
'        ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''REIM_ITEMS'',',
'        p_seq => :P5_REIM_SEQ,',
'        p_attr_number => ''3'',',
'        p_attr_value => l_filename);',
'        ',
'         APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''REIM_ITEMS'',',
'        p_seq => :P5_REIM_SEQ,',
'        p_attr_number => ''4'',',
'        p_attr_value => l_mimetype);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P5_PROOF_STATUS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'ACTIVE'
,p_internal_uid=>28498578779085777
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28592047251665475)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'STAFF CATEGORY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'',
'    begin',
'        select STAFF_CATEGORY INTO :P5_STAFF_CATEGORY ',
'        from xxhrms.XXHRMS_ASSIGNMENTS',
'        WHERE PERSON_ID=:AP_STAFF_ID;',
'    Exception',
'        when others then',
'            null;',
'    end;',
' ',
'     begin',
'        select VALUE_DESC INTO :P5_STAFF_CATEGORY_1 ',
'        From xxhrms.XXHRMS_LOOKUP_LOV_V ',
'        WHERE UPPER(TYPE_CODE) = ''EMP_CAT''',
'        AND VALUE_CODE = :P5_STAFF_CATEGORY',
'        AND COMPANY_CODE = :SS_COMPANY_CODE;',
'    Exception',
'        when others then',
'            null;',
'    end;',
'  ',
'  ',
'  :P5_STAFF_CATEGORY :=:P5_STAFF_CATEGORY_1;',
'  ',
'  End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28592047251665475
);
wwv_flow_imp.component_end;
end;
/
