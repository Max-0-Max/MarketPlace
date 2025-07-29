prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Reimbursement Request'
,p_step_title=>'Reimbursement Request'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#item_det_brk .a-IRR-controlsContainer{',
'display:none;',
'}'))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54430205254074499)
,p_plug_name=>'Reimbursement Requests'
,p_icon_css_classes=>'fa-qrcode'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54430244480074500)
,p_plug_name=>'Reimbursement Request List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.ID,P.CLAIM_VALUE,P.EMP_ID,P.COMPANY_CODE,P.DATE_CREATED,',
'CASE',
'WHEN TRIP_CATEGORY IS NOT NULL THEN (select C.VALUE_DESC',
'                                   From xxhrms.XXHRMS_LOOKUP_LOV_V C',
'                                   WHERE UPPER(TYPE_CODE) = ''TRIP_CATEGORY''',
'                                       AND R.TRIP_CATEGORY = C.VALUE_CODE)',
'                                               END ',
'TRIP_CATEGORY,',
'FULL_NAME,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=P.ID AND TRANS_TYPE=''REIMBURSEMENT'' AND STATUS =''REJECTED'')>0',
'THEN ''REJECTED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=P.ID AND TRANS_TYPE=''REIMBURSEMENT'' AND STATUS !=''APPROVED'')>0',
'THEN ''PENDING''',
'ELSE ''APPROVED''',
'END STATUS,REQUEST_TYPE',
'',
'',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_REIMBURSEMENT_REQUESTS p,XXHRMS.xxhrms_master_all X',
'',
'where R.company_code=:SS_COMPANY_CODE',
'AND X.person_id=R.EMP_ID',
'and R.EMP_ID=:ap_staff_id',
'AND R.REQUEST_ID=P.TRAVEL_REQUEST_ID',
'And X.organization_id = :SS_COMPANY_CODE',
'--AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''REIMBURSEMENT'' AND STATUS IN(''REJECTED'',''PENDING''))',
'--AND EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''REIMBURSEMENT'')',
'ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_REQUEST_ID:&ID.',
  'list_entry_attributes', 'CLASS="reim_list", data-id="&ID.", data-edit="&EDIT."',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    'Category : REIMBURSEMENT',
    'Status : &STATUS.',
    'Request Type : &REQUEST_TYPE.',
    'Created Date :&DATE_CREATED.',
    '',
    '</pre>')),
  'text_formatting', '&FULL_NAME.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302263515290589720)
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
 p_id=>wwv_flow_imp.id(54430412012074501)
,p_name=>'Reimbursement Request Details'
,p_region_name=>'reim_rep'
,p_parent_plug_id=>wwv_flow_imp.id(302263515290589720)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,',
' x.ID,CLAIM_VALUE,x.DATE_CREATED,REQUEST_TYPE,',
'case TRIP_CATEGORY ',
'when ''multi''   THEN (SELECT listagg(INITCAP(LOCATION),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_MULTI_LOCATIONS Q',
'                                   WHERE Q.REQUEST_ID=R.REQUEST_ID',
'                                  )',
'     else ARRIVAL_LOCATION',
'     END ARRIVAL_LOCATION,',
'     case ',
'when request_id is not null then (select listagg(DELIVERABLES,''<br/> '') within group (order by id ) from ',
'                                  XXCLM.XXCLM_DELIVERABLES_UPDATE u',
'where u.request_id=r.REQUEST_ID)',
'end',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,r.EMP_ID,CATEGORY_NAME,PROJECT_NAME,',
'',
'CASE',
'WHEN REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'     ',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXCLM.XXCLM_REIMBURSEMENT_REQUESTS x',
'where R.company_code=:SS_COMPANY_CODE',
'and x.ID=:P10_REQUEST_ID',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'and x.TRAVEL_REQUEST_ID=r.request_id',
''))
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
 p_id=>wwv_flow_imp.id(28650259858349921)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28649439023349919)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28649833663349920)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28650657380349921)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>11
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(27892164151428213)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28651050247349922)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28651423405349923)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28651819144349924)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>14
,p_column_heading=>'Departure Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28647499628349915)
,p_query_column_id=>8
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28647803535349916)
,p_query_column_id=>9
,p_column_alias=>'CLAIM_VALUE'
,p_column_display_sequence=>5
,p_column_heading=>'Claim Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28649010554349918)
,p_query_column_id=>10
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>18
,p_column_heading=>'Date Created'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28653868668349928)
,p_query_column_id=>11
,p_column_alias=>'REQUEST_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Request Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28652206480349924)
,p_query_column_id=>12
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>15
,p_column_heading=>'Arrival Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28652646095349925)
,p_query_column_id=>13
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28648630061349918)
,p_query_column_id=>14
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28648230714349917)
,p_query_column_id=>15
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28653055741349926)
,p_query_column_id=>16
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28653443704349927)
,p_query_column_id=>17
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28654276886349929)
,p_query_column_id=>18
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54430501522074502)
,p_plug_name=>'Reimbursement Request Details'
,p_region_name=>'empty_rep'
,p_parent_plug_id=>wwv_flow_imp.id(302263515290589720)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<i>Select from the list of reimbursement requests to view details or click the Create new reimbursement request button to create new request</i>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56788189741023827)
,p_plug_name=>'Items Details'
,p_region_name=>'item_det_brk'
,p_parent_plug_id=>wwv_flow_imp.id(302263515290589720)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ACTUAL_SPENT_VALUE,TRAVEL_REQ_VALUE,(TRAVEL_REQ_VALUE-ACTUAL_SPENT_VALUE),',
'CASE',
'WHEN TRIP_CATEGORY IS NOT NULL THEN (select C.VALUE_DESC',
'                                   From xxhrms.XXHRMS_LOOKUP_LOV_V C',
'                                   WHERE UPPER(TYPE_CODE) = ''TRIP_CATEGORY''',
'                                       AND R.TRIP_CATEGORY = C.VALUE_CODE)',
'                                               END ',
'TRIP_CATEGORY,',
'FULL_NAME,INITCAP(ITEM_NAME),p.REQUEST_ID,p.ITEM_id',
'',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_REIMBURSEMENT_REQ_ITEM p,XXHRMS.xxhrms_master_all X,XXCLM.XXCLM_ITEM_LIST L',
'',
'where R.company_code=:SS_COMPANY_CODE',
'AND X.person_id=R.EMP_ID',
'AND R.REQUEST_ID=P.TRAVEL_REQ',
'and p.ITEM_ID=L.ITEM_ID',
'and p.REQUEST_ID=:p10_REQUEST_ID',
'and X.organization_id = :SS_COMPANY_CODE',
'--AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''REIMBURSEMENT'' AND STATUS IN(''REJECTED'',''PENDING''))',
'--AND EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''REIMBURSEMENT'')',
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
 p_id=>wwv_flow_imp.id(56789409831023839)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'KUNLE'
,p_internal_uid=>56789409831023839
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28660790524349951)
,p_db_column_name=>'ACTUAL_SPENT_VALUE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Actual Spent Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28661170105349952)
,p_db_column_name=>'TRAVEL_REQ_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Travel Req Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28661520785349954)
,p_db_column_name=>'(TRAVEL_REQ_VALUE-ACTUAL_SPENT_VALUE)'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'(travel Req Value-actual Spent Value)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28661955730349955)
,p_db_column_name=>'TRIP_CATEGORY'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Trip Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28662322364349956)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>110
,p_column_identifier=>'N'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28662709661349957)
,p_db_column_name=>'INITCAP(ITEM_NAME)'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28663105140349957)
,p_db_column_name=>'REQUEST_ID'
,p_display_order=>130
,p_column_identifier=>'P'
,p_column_label=>'Request Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28663551091349958)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56868162932702128)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'286639'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACTUAL_SPENT_VALUE:TRAVEL_REQ_VALUE:(TRAVEL_REQ_VALUE-ACTUAL_SPENT_VALUE):TRIP_CATEGORY:FULL_NAME:INITCAP(ITEM_NAME):REQUEST_ID:ITEM_ID'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(56889489776908331)
,p_report_id=>wwv_flow_imp.id(56868162932702128)
,p_pivot_columns=>'TRIP_CATEGORY'
,p_row_columns=>'INITCAP(ITEM_NAME)'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(28665017887349967)
,p_pivot_id=>wwv_flow_imp.id(56889489776908331)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'ACTUAL_SPENT_VALUE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Amount Disbursed'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(28665436308349967)
,p_pivot_id=>wwv_flow_imp.id(56889489776908331)
,p_display_seq=>2
,p_function_name=>'SUM'
,p_column_name=>'TRAVEL_REQ_VALUE'
,p_db_column_name=>'PFC2'
,p_column_label=>'Amount Spent'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(28664604120349965)
,p_pivot_id=>wwv_flow_imp.id(56889489776908331)
,p_display_seq=>3
,p_function_name=>'SUM'
,p_column_name=>'(TRAVEL_REQ_VALUE-ACTUAL_SPENT_VALUE)'
,p_db_column_name=>'PFC3'
,p_column_label=>'Claim/Reimburse'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(83436777498334596)
,p_name=>'Voucher Details'
,p_region_name=>'voucher_det'
,p_parent_plug_id=>wwv_flow_imp.id(302263515290589720)
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
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXCLM.XXCLM_CLAIMS_VOUCHER v,',
'                    XXCLM.XXCLM_REIMBURSEMENT_REQUESTS P',
'where R.company_code=:SS_COMPANY_CODE',
'and V.REQUEST_ID=:P10_REQUEST_ID',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'and v.request_id=P.ID',
'AND R.REQUEST_ID=P.TRAVEL_REQUEST_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'AND CLAIMS_ID=''REIMBURSEMENT'''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10_TRAVEL_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(28670874959349981)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28671244727349982)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28671675569349983)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28672084334349984)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28672498223349985)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28672880733349985)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28673255750349986)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28673652586349987)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28674055082349988)
,p_query_column_id=>9
,p_column_alias=>'VOUCHER_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28674409418349989)
,p_query_column_id=>10
,p_column_alias=>'CLAIMS_ID'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28670446473349981)
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
 p_id=>wwv_flow_imp.id(28674888888349989)
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
 p_id=>wwv_flow_imp.id(28675285136349990)
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
 p_id=>wwv_flow_imp.id(28669666125349979)
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
 p_id=>wwv_flow_imp.id(28670073178349980)
,p_query_column_id=>15
,p_column_alias=>'STATUS'
,p_column_display_sequence=>15
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28675649544349991)
,p_query_column_id=>16
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302263626785589721)
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
 p_id=>wwv_flow_imp.id(28655084976349931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54430412012074501)
,p_button_name=>'EDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561269565224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'edit_pen'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28646464472349908)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54430205254074499)
,p_button_name=>'new_request'
,p_button_static_id=>'reim_but'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Reimbursement Request'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28632927162838902)
,p_name=>'P10_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56788189741023827)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28677913940350001)
,p_name=>'NEW PAGE LOAD'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28678416395350003)
,p_event_id=>wwv_flow_imp.id(28677913940350001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#reim_form,#clm_voucher'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28678946787350005)
,p_event_id=>wwv_flow_imp.id(28677913940350001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P10_REQUEST_ID'')==''''){',
'    $("#empty_rep").show();',
'    $("#reim_rep").hide();',
'    $("#item_det_brk").hide();',
'    $("#voucher_det").hide();',
'}',
'else{',
'    $("#reim_rep").show();',
'    $("#empty_rep").hide();',
'    $("#item_det_brk").show();',
'    $("#voucher_det").show();',
'    ',
'    ',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28679330237350006)
,p_name=>'create new request'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28646464472349908)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28680308849350009)
,p_event_id=>wwv_flow_imp.id(28679330237350006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28679868305350007)
,p_event_id=>wwv_flow_imp.id(28679330237350006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#reim_rep").hide();',
'$("#reim_but").hide();',
'    $("#reim_form").show();',
'$s(''P10_CATEGORY_ID'','''');',
'$s(''P10_PROJECT_ID'','''');',
'$s(''P10_REIMBURSEMENT_ITEM'','''');',
'$s(''P10_CLAIM_VALUE'','''');',
'$s(''P10_CLAIM_FILE'','''');',
'$s(''P10_ID'','''');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28680704117350011)
,p_name=>'EDIT request'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28655084976349931)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28681207137350012)
,p_event_id=>wwv_flow_imp.id(28680704117350011)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#reim_rep").hide();',
'$("#reim_but").hide();',
'    $("#reim_form").show();',
'$s(''P10_CATEGORY_ID'','''');',
'$s(''P10_PROJECT_ID'','''');',
'$s(''P10_REIMBURSEMENT_ITEM'','''');',
'$s(''P10_CLAIM_VALUE'','''');',
'$s(''P10_CLAIM_FILE'','''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28681744575350014)
,p_event_id=>wwv_flow_imp.id(28680704117350011)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CATEGORY_ID,PROJECT_ID,CLAIM_VALUE,id',
'',
'INTO :P10_CATEGORY_ID,:P10_PROJECT_ID,:P10_CLAIM_VALUE,:P10_ID',
'',
'FROM XXCLM.XXCLM_REIMBURSEMENT_REQUESTS',
'WHERE ID=:P10_REQUEST_ID;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28682112757350015)
,p_name=>'CANCEL FORM'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25787168995724630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28682617232350017)
,p_event_id=>wwv_flow_imp.id(28682112757350015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P10_REQUEST_ID'')==''''){',
'    $("#empty_rep").show();',
'    $("#reim_rep").hide();',
'    $("#reim_form").hide();',
'}',
'',
'else{',
'    $("#reim_rep").show();',
'    $("#empty_rep").hide();',
'    $("#reim_form").hide();',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'$("#reim_but").show();',
'$s(''P10_CATEGORY_ID'','''');',
'$s(''P10_PROJECT_ID'','''');',
'$s(''P10_REIMBURSEMENT_ITEM'','''');',
'$s(''P10_CLAIM_VAUE'','''');',
'$s(''P10_CLAIM_FILE'','''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28683151778350019)
,p_event_id=>wwv_flow_imp.id(28682112757350015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28683550468350020)
,p_name=>'SUBMIT FORM'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25787071084724629)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28684072795350021)
,p_event_id=>wwv_flow_imp.id(28683550468350020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s((''P10_CLAIM_VALUE''),($v(''P10_CLAIM_VALUE'').replace(/\s+/, '' '')));',
'$s((''P10_CLAIM_VALUE''),($v(''P10_CLAIM_VALUE'').replace(/,/g, "")));',
'var a=$v("P10_CLAIM_VALUE");',
'',
'if(!$.isNumeric($v("P10_CLAIM_VALUE"))){',
'    alert(''Claim Value must be a number'');',
'    return false;',
'}',
' if (a==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'',
'        if (confirm("Confirm to submit?")){',
'    //apex.util.showSpinner( $( "#reim_form" ) );',
'    apex.submit(sub);',
'    return true;',
'        }',
'        else{',
'           ',
'    return false;',
'',
'        }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28677078636349999)
,p_name=>'VIEW FORM'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.reim_list'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28677502968350000)
,p_event_id=>wwv_flow_imp.id(28677078636349999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P10_REQUEST_ID",$(this.triggeringElement).data(''id''));',
'$s("P10_BUT_REFRESH",$(this.triggeringElement).data(''edit''));',
'apex.event.trigger(''#reim_rep'', ''apexrefresh'');',
'//apex.util.showSpinner( $( "#reim_rep" ) );',
'//$(''#reim_rep'').show();',
'$(''#reim_form'').hide();',
'$(''#empty_rep'').hide();',
'//$("#item_det_brk").show();',
'if ($v("P10_BUT_REFRESH")==0){',
'    $(".edit_pen").show();',
'}',
'else{',
'    $(".edit_pen").hide();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28676651340349995)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_existed boolean;',
'l_exist boolean;',
'l_exists boolean;',
'l_blob blob;',
'l_mimetype varchar2(100);',
'l_filename varchar2(100);',
'l_filerow apex_application_files%rowtype;',
'    l_message varchar2(4000) ;',
'    ct number;',
'     v_exists number;',
'  l_string          varchar2(4000) := ''P1_X:P1_Y'';',
'  l_page_items_arr  apex_t_varchar2;',
'begin',
'if :P10_ID is null OR :P10_ID=''''',
'then',
'',
'XXCLM.XXCLM_CLAIMS_PKG.create_reimbursement_req(',
'	p_category_id =>:P10_CATEGORY_ID,',
'    p_project_id =>:P10_PROJECT_ID,',
'    p_claim_value =>:P10_CLAIM_VALUE,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:AP_STAFF_ID,',
'    p_items =>:P10_REIMBURSEMENT_ITEM,',
'    p_travel_request =>null,',
'    p_id =>:P10_ID);  ',
'    ',
'    IF :P10_CLAIM_FILE IS NOT NULL',
'    THEN ',
'    for r in (select * from apex_application_temp_files)',
'  loop',
'    apex_debug.message(''name: %s - filename: %s'', r.name, r.filename);',
'  end loop;',
'',
'  apex_debug.message(''P10_CLAIM_FILE: %s'', :P10_CLAIM_FILE);',
'    ',
'   SELECT blob_content,MIME_TYPE,FILENAME',
'      INTO l_blob,l_mimetype,l_filename',
'      FROM apex_application_temp_files',
'      WHERE name = :P10_CLAIM_FILE;',
'      apex_debug.message(''blob length: %s'', dbms_lob.getlength(l_blob));',
'    ',
'    update  XXCLM.XXCLM_REIMBURSEMENT_REQ_ITEM SET',
'    PROOF_FILE=l_blob,',
'    MIMETYPE=l_mimetype,',
'    FILENAME=l_filename',
'    where ID=:P10_ID;',
'    END IF;',
':P10_REQUEST_ID:=:P10_ID;    ',
'         ',
'    ELSE',
'    l_existed := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''REIM_MAPPING'');',
'        IF l_existed = TRUE',
'        then',
'      APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''REIM_MAPPING'');',
'        end if;',
'      ',
'UPDATE XXCLM.XXCLM_REIMBURSEMENT_REQUESTS SET',
'',
'CATEGORY_ID=:P10_CATEGORY_ID,',
'PROJECT_ID=:P10_PROJECT_ID,',
'CLAIM_VALUE=:P10_CLAIM_VALUE',
'',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND ID=:P10_REQUEST_ID;',
' ',
'l_exists := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''REIM_EXIST_MAPPING'');',
'        IF l_exists = TRUE',
'        then ',
'        APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''REIM_EXIST_MAPPING'');',
'        ',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'        p_collection_name => ''REIM_EXIST_MAPPING'', ',
'        p_query => ''SELECT ALL ITEM_ID,REQUEST_ID FROM XXCLM.XXCLM_REIMBURSEMENT_REQ_ITEM WHERE REQUEST_ID=''||:P10_REQUEST_ID,',
'        p_generate_md5 => ''YES'');',
'        else',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'        p_collection_name => ''REIM_EXIST_MAPPING'', ',
'        p_query => ''SELECT ALL ITEM_ID,REQUEST_ID FROM XXCLM.XXCLM_REIMBURSEMENT_REQ_ITEM WHERE REQUEST_ID=''||:P10_REQUEST_ID,',
'        p_generate_md5 => ''YES'');',
'        END IF;',
'        ',
' l_page_items_arr := apex_string.split(p_str => :P10_REIMBURSEMENT_ITEM, p_sep => '':'');',
'     for i in 1..l_page_items_arr.count',
'  loop',
'  l_exist := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''REIM_MAPPING'');',
'        IF l_exist = TRUE',
'        then ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''REIM_MAPPING'',',
'        p_c001            => l_page_items_arr(i),',
'            p_c002=>:P10_REQUEST_ID',
'            );',
'            ',
'        ELSE',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''REIM_MAPPING'');',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''REIM_MAPPING'',',
'        p_c001            => l_page_items_arr(i),',
'            p_c002=>:P10_REQUEST_ID',
'            );',
'            END IF;',
'            SELECT COUNT(*) INTO CT FROM APEX_COLLECTIONS C',
'              WHERE collection_name = ''REIM_EXIST_MAPPING''',
'              AND c001=l_page_items_arr(i)',
'              and c002=:P10_REQUEST_ID;',
'              if ct=0',
'              then            ',
'    insert into XXCLM.XXCLM_REIMBURSEMENT_REQ_ITEM (REQUEST_ID,ITEM_ID,COMPANY_CODE,DATE_CREATED)',
'    values(:P10_REQUEST_ID,l_page_items_arr(i),:SS_COMPANY_CODE,sysdate);',
'    end if;',
'  end loop;',
'  delete from XXCLM.XXCLM_REIMBURSEMENT_REQ_ITEM',
'  where exists (select * FROM APEX_COLLECTIONS ',
'              WHERE collection_name = ''REIM_EXIST_MAPPING'' ',
'                  and c001=ITEM_ID',
'                   and c002=REQUEST_ID)',
'and not exists (select * FROM APEX_COLLECTIONS C',
'              WHERE collection_name = ''REIM_MAPPING'' ',
'                  and c001=ITEM_ID',
'                   and c002=REQUEST_ID)',
'                   and request_id=:P10_REQUEST_ID;',
'',
'  ',
'    IF :P10_CLAIM_FILE IS NOT NULL',
'    THEN ',
'    for r in (select * from apex_application_temp_files)',
'  loop',
'    apex_debug.message(''name: %s - filename: %s'', r.name, r.filename);',
'  end loop;',
'',
'  apex_debug.message(''P10_CLAIM_FILE: %s'', :P10_CLAIM_FILE);',
'    ',
'   SELECT blob_content,MIME_TYPE,FILENAME',
'      INTO l_blob,l_mimetype,l_filename',
'      FROM apex_application_temp_files',
'      WHERE name = :P10_CLAIM_FILE;',
'      apex_debug.message(''blob length: %s'', dbms_lob.getlength(l_blob));',
'    ',
'    update  XXCLM.XXCLM_REIMBURSEMENT_REQUESTS SET',
'    CLAIM_FILE=l_blob,',
'    MIME_TYPE=l_mimetype,',
'    FILENAME=l_filename',
'    where ID=:P10_REQUEST_ID;',
'    END IF;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'sub'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>28676651340349995
);
wwv_flow_imp.component_end;
end;
/
