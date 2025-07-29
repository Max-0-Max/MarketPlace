prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Other Request'
,p_step_title=>'Other Request'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54502759160151960)
,p_plug_name=>'Other Request'
,p_icon_css_classes=>'fa-headphones'
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
 p_id=>wwv_flow_imp.id(54604762454799204)
,p_plug_name=>'Other Request List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,TRAINING_REQUEST,CERTIFICATION_REQUEST,REQUEST_NAME,DESCRIPTION,START_DATE,END_DATE,',
'LOCATION,CERTIFICATION_BODY,CERTIFICATION_PROOF,FILENAME,MIMETYPE,R.COMPANY_CODE,EMP_ID,R.CREATED_DATE,CATEGORY_NAME,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''OTHER'' AND STATUS =''REJECTED'')>0',
'THEN ''REJECTED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''OTHER'' AND STATUS !=''APPROVED'')>0',
'THEN ''PENDING''',
'ELSE ''APPROVED''',
'END STATUS,',
'case ',
'when emp_id is  not null then (select x.full_name from xxhrms.xxhrms_people_f x where x.person_id =r.emp_id and rownum=1)',
'end full_name,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''OTHER'')',
'      AND TRANS_TYPE=''VOUCHER'')=0 THEN ',
'''NOT RAISED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''OTHER'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''PENDING''))>0 THEN ',
'''PENDING''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''OTHER'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED''))>0 THEN ',
'''REJECTED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''OTHER'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED'',''PENDING''))=0 THEN',
'''APPROVED''',
'END VOUCH_STATUS',
'FROM XXCLM.XXCLM_OTHER_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C',
'where R.company_code=:SS_COMPANY_CODE',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'and emp_id=:AP_STAFF_ID',
'--AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''OTHER'' AND STATUS IN(''REJECTED'',''PENDING''))',
'AND EXISTS (SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=R.REQUEST_ID AND TRANS_TYPE=''OTHER'')',
'ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP:P9_REQUEST_ID:&REQUEST_ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_EXACT_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    'Category : &CATEGORY_NAME.',
    'Status : &STATUS.',
    'Created Date : &START_DATE.',
    'Request for : &FULL_NAME.',
    'Voucher Status : <font color="red">&VOUCH_STATUS.</font>',
    '</pre>')),
  'text_formatting', '&REQUEST_NAME.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302263971634589724)
,p_plug_name=>'Claims Management'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34794465356249513)
,p_plug_name=>'Proof'
,p_region_name=>'proof_det'
,p_parent_plug_id=>wwv_flow_imp.id(302263971634589724)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,CERTIFICATION_PROOF,MIMETYPE,FILENAME,DESCRIPTION',
'from xxclm.XXCLM_OTHER_REQUEST',
'where REQUEST_ID = :P9_REQUEST_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P9_REQUEST_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(34795819012249527)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LADEYEMI'
,p_internal_uid=>34795819012249527
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34795969929249528)
,p_db_column_name=>'REQUEST_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Request Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:XXCLM_OTHER_REQUEST:CERTIFICATION_PROOF:REQUEST_ID::MIMETYPE:FILENAME:::attachment::XXCLM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34796078031249529)
,p_db_column_name=>'CERTIFICATION_PROOF'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Certification Proof'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34796189705249530)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34796273155249531)
,p_db_column_name=>'FILENAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34796352576249532)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39424088852137715)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'394241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REQUEST_ID:CERTIFICATION_PROOF:MIMETYPE:FILENAME:DESCRIPTION'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(54604933828799205)
,p_name=>'Other Request Details'
,p_region_name=>'req_rep'
,p_parent_plug_id=>wwv_flow_imp.id(302263971634589724)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,TRAINING_REQUEST,CERTIFICATION_REQUEST,REQUEST_NAME,DESCRIPTION,START_DATE,END_DATE,',
'LOCATION,FILENAME,R.COMPANY_CODE,EMP_ID,R.CREATED_DATE,CATEGORY_NAME,REQUEST_TYPE,',
'CASE',
'WHEN r.REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(l.ITEM_NAME)||'' @''||q.price||'' qty: ''||q.QUANTITY||'' Total: ''||q.price*q.QUANTITY,''<br/>'') within group (order by q.ID )',
'     FROM XXCLM.XXCLM_OTHER_REQUEST_ITEM Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.OTHER_REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'FROM XXCLM.XXCLM_OTHER_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C',
'where R.company_code=:SS_COMPANY_CODE',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND REQUEST_ID=:P9_REQUEST_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_REQUEST_ID'
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
 p_id=>wwv_flow_imp.id(28744113707427444)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28744521093427446)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28744970675427448)
,p_query_column_id=>3
,p_column_alias=>'TRAINING_REQUEST'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28745396141427449)
,p_query_column_id=>4
,p_column_alias=>'CERTIFICATION_REQUEST'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28745784028427451)
,p_query_column_id=>5
,p_column_alias=>'REQUEST_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Request Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28746142678427452)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>8
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28746510962427453)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28746945516427456)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_OTHER_REQUEST	',
'where training_REQUEST is not null',
'and request_id=:p9_request_id'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28747338710427456)
,p_query_column_id=>9
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_OTHER_REQUEST	',
'where training_REQUEST is not null',
'and request_id=:p9_request_id'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34794312488249512)
,p_query_column_id=>10
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28748105094427462)
,p_query_column_id=>11
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>14
,p_column_heading=>'Company Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48581182525701704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28748506569427463)
,p_query_column_id=>12
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>15
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28748901620427465)
,p_query_column_id=>13
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'Created Date'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28749324516427465)
,p_query_column_id=>14
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28749741927427468)
,p_query_column_id=>15
,p_column_alias=>'REQUEST_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Request Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and lower(lookup_code) = lower(''other_req'')',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where lower(lookup_code) = lower(''other_req'') ',
'ORDER BY 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28743710997427443)
,p_query_column_id=>16
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>9
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54718426939123073)
,p_plug_name=>'Other Request Form'
,p_region_name=>'req_form'
,p_parent_plug_id=>wwv_flow_imp.id(302263971634589724)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54720648625123096)
,p_plug_name=>'Other Request Details'
,p_region_name=>'empty_rep'
,p_parent_plug_id=>wwv_flow_imp.id(302263971634589724)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<i>Select created request from list or click the create request button to create new request</i>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81416647922334592)
,p_plug_name=>'Claims Voucher'
,p_region_name=>'clm_voucher'
,p_parent_plug_id=>wwv_flow_imp.id(302263971634589724)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81417482763334601)
,p_plug_name=>'Caims Items Details'
,p_parent_plug_id=>wwv_flow_imp.id(81416647922334592)
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
 p_id=>wwv_flow_imp.id(81568276644192252)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KUNLE'
,p_internal_uid=>81568276644192252
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28735233332427419)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28735660104427420)
,p_db_column_name=>'C001'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28736067349427421)
,p_db_column_name=>'C002'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28737212105427423)
,p_db_column_name=>'C005'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'c005'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28736471377427422)
,p_db_column_name=>'C003'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Item Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28736838104427423)
,p_db_column_name=>'C004'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Claim Items'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28737679488427424)
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
 p_id=>wwv_flow_imp.id(28738066227427425)
,p_db_column_name=>'C006'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'c006'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28738438999427426)
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
 p_id=>wwv_flow_imp.id(28738893289427427)
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
 p_id=>wwv_flow_imp.id(28739260587427427)
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
 p_id=>wwv_flow_imp.id(81598830416210084)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'287396'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID:C004:N002:N001:C003:EDIT::TOTAL'
,p_sum_columns_on_break=>'TOTAL:N001'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82133809577804796)
,p_plug_name=>'Caims Items'
,p_parent_plug_id=>wwv_flow_imp.id(81416647922334592)
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
 p_id=>wwv_flow_imp.id(82223205115319164)
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
 p_id=>wwv_flow_imp.id(82223267528319165)
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
 p_id=>wwv_flow_imp.id(82223441461319166)
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
 p_id=>wwv_flow_imp.id(82223523563319167)
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
 p_id=>wwv_flow_imp.id(82223579664319168)
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
 p_id=>wwv_flow_imp.id(82223697202319169)
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
 p_id=>wwv_flow_imp.id(82223791951319170)
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
 p_id=>wwv_flow_imp.id(82223861123319171)
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
 p_id=>wwv_flow_imp.id(82224028565319172)
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
 p_id=>wwv_flow_imp.id(82224160879319174)
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
 p_id=>wwv_flow_imp.id(82224330183319175)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(82224368162319176)
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
 p_id=>wwv_flow_imp.id(82223064733319163)
,p_internal_uid=>82223064733319163
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
 p_id=>wwv_flow_imp.id(82229251251329162)
,p_interactive_grid_id=>wwv_flow_imp.id(82223064733319163)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(82229305757329164)
,p_report_id=>wwv_flow_imp.id(82229251251329162)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82229772169329183)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(82223205115319164)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82230278646329197)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(82223267528319165)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82230850536329205)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(82223441461319166)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82231342639329210)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(82223523563319167)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82231818367329215)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(82223579664319168)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82232312150329220)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(82223697202319169)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82232841966329225)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(82223791951319170)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82233301298329230)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(82223861123319171)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82233824396329236)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(82224028565319172)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82234735978329262)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(82224160879319174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82235204541329271)
,p_view_id=>wwv_flow_imp.id(82229305757329164)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(82224330183319175)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(82546872796107149)
,p_name=>'Voucher Details'
,p_region_name=>'voucher_det'
,p_parent_plug_id=>wwv_flow_imp.id(302263971634589724)
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
'select r.REQUEST_ID,R.CATEGORY_ID,',
'VOUCHER_ID,	CLAIMS_ID,	v.DATE_CREATED,	VOUCHER_VALUE,V.EMP_ID,raised_by,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''VOUCHER'' AND STATUS =''REJECTED'')>0',
'THEN ''REJECTED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''VOUCHER'' AND STATUS !=''APPROVED'')>0',
'THEN ''PENDING''',
'ELSE ''APPROVED''',
'END STATUS',
'',
'from XXCLM.XXCLM_OTHER_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXCLM.XXCLM_CLAIMS_VOUCHER v',
'where R.company_code=:SS_COMPANY_CODE',
'and R.REQUEST_ID=:P9_REQUEST_ID',
'and v.request_id=r.REQUEST_ID',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND CLAIMS_ID=''OTHER'''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_REQUEST_ID'
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
 p_id=>wwv_flow_imp.id(28719971317427373)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28720360101427376)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28720791058427379)
,p_query_column_id=>3
,p_column_alias=>'VOUCHER_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28721123467427381)
,p_query_column_id=>4
,p_column_alias=>'CLAIMS_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Claim Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28719534147427370)
,p_query_column_id=>5
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>1
,p_column_heading=>'Created Date'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28721512058427386)
,p_query_column_id=>6
,p_column_alias=>'VOUCHER_VALUE'
,p_column_display_sequence=>7
,p_column_heading=>'Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28722312984427388)
,p_query_column_id=>7
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28721977181427387)
,p_query_column_id=>8
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Raised By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28719134820427369)
,p_query_column_id=>9
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302264064274589725)
,p_plug_name=>'Not Enabled'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'Claims Management is not enabled. Please contact your administrator.'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''N'';'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28723023059427390)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(81416647922334592)
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
 p_id=>wwv_flow_imp.id(28751651409427473)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54718426939123073)
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
 p_id=>wwv_flow_imp.id(28723415109427391)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(81416647922334592)
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
 p_id=>wwv_flow_imp.id(28752078555427473)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(54718426939123073)
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
 p_id=>wwv_flow_imp.id(28750514851427470)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54604933828799205)
,p_button_name=>'edit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561269565224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_OTHER_REQUEST R',
'where R.REQUEST_ID=:P9_REQUEST_ID',
'AND NOT EXISTS(SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=(SELECT VOUCHER_ID FROM XXCLM.XXCLM_CLAIMS_VOUCHER WHERE REQUEST_ID=R.REQUEST_ID AND CLAIMS_ID=''OTHER'')',
'       AND TRANS_TYPE=''VOUCHER'' AND STATUS IN(''REJECTED'',''APPROVED'')',
'              )'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28741913491427434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(54502759160151960)
,p_button_name=>'create_new_request'
,p_button_static_id=>'req_but'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Request'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28723781386427391)
,p_name=>'P9_PAYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81416647922334592)
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
 p_id=>wwv_flow_imp.id(28724120095427392)
,p_name=>'P9_VOUCHER_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81416647922334592)
,p_prompt=>'Voucher Value'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28724588572427393)
,p_name=>'P9_VOUCHER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81416647922334592)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28724968627427394)
,p_name=>'P9_CLAIMS_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(81416647922334592)
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
 p_id=>wwv_flow_imp.id(28725323347427394)
,p_name=>'P9_PROJECT_ID_VOUCHER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(81416647922334592)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28731413392427411)
,p_name=>'P9_SEQ_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82133809577804796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28731816122427411)
,p_name=>'P9_QTY_EDIT_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82133809577804796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28732268394427412)
,p_name=>'P9_QTY_EDIT_1_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(82133809577804796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28732648672427413)
,p_name=>'P9_ITEM_EDIT_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(82133809577804796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28740094291427430)
,p_name=>'P9_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81417482763334601)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28740495802427431)
,p_name=>'P9_QTY_EDIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81417482763334601)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28740865001427431)
,p_name=>'P9_QTY_EDIT_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81417482763334601)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28741288611427432)
,p_name=>'P9_ITEM_EDIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(81417482763334601)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28742398890427435)
,p_name=>'P9_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54502759160151960)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28743000833427439)
,p_name=>'P9_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54604762454799204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28750970003427471)
,p_name=>'P9_ITEM_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54604933828799205)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28752400503427474)
,p_name=>'P9_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28752873946427475)
,p_name=>'P9_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_item_default=>'Other_Request'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28753261497427476)
,p_name=>'P9_CATEGORY_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_prompt=>'Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(CATEGORY_NAME) D, CATEGORY_ID R',
'FROM XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'and lower(CATEGORY_NAME) not like (''%trav%'') ',
'AND lower(CATEGORY_NAME) not like (''%reim%'' )'))
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
 p_id=>wwv_flow_imp.id(28754055930427477)
,p_name=>'P9_STAFF_CATEGORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28754439978427478)
,p_name=>'P9_STAFF_CATEGORY_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28754856048427479)
,p_name=>'P9_REQUEST_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_prompt=>'Request Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28755227340427479)
,p_name=>'P9_START_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28755659324427480)
,p_name=>'P9_CERTIFICATION_PROOF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_prompt=>'Proof'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'grey-bg'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28756027701427481)
,p_name=>'P9_DESCRIPTION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(54718426939123073)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28761304829427503)
,p_name=>'location select'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_LOCATION'
,p_condition_element=>'P9_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28761855275427506)
,p_event_id=>wwv_flow_imp.id(28761304829427503)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_LOCATION_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28762352824427506)
,p_event_id=>wwv_flow_imp.id(28761304829427503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_LOCATION_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28762758293427508)
,p_name=>'LABEL'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_TYPE'
,p_condition_element=>'P9_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28763702846427511)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_REQUEST_NAME_LABEL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Training Name'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28764742390427515)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CERTIFICATION_PROOF'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28766270425427519)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_LOCATION_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28765794536427518)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_START_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28765244648427516)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CERTIFICATION_PROOF'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28766773458427520)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CERTIFICATION_PROOF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28764271828427514)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_REQUEST_NAME_LABEL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Certification Name'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28767236198427521)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CERTIFICATION_PROOF'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28763206354427510)
,p_event_id=>wwv_flow_imp.id(28762758293427508)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_LOCATION_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28767686978427521)
,p_name=>'New page'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28768668704427523)
,p_event_id=>wwv_flow_imp.id(28767686978427521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P9_REQUEST_ID'')==''''){',
'    $(''#empty_rep'').show();',
'    $(''#req_rep'').hide();',
'    $(''#req_form'').hide();',
'    $(''#voucher_det'').hide();',
'    $(''#proof_det'').hide();',
'}',
'else {',
'    $(''#empty_rep'').hide();',
'    $(''#req_rep'').show();',
'    $(''#voucher_det'').show();',
'     $(''#proof_det'').show();',
'    $(''#req_form'').hide();',
'}',
'',
'$s(''P9_LOCATION'','''');',
'',
'$(''#clm_voucher'').hide();',
'$(''#voucher_edit_form'').hide();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28768171910427522)
,p_event_id=>wwv_flow_imp.id(28767686978427521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_LOCATION_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28769186522427524)
,p_event_id=>wwv_flow_imp.id(28767686978427521)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''OTHER'');'))
,p_attribute_02=>'AP_AUTH_STAFF,AP_AUTH_TYPE'
,p_attribute_03=>'AP_AUTH_STAFF,AP_AUTH_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28769526250427524)
,p_name=>'create new request'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28741913491427434)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28770583881427526)
,p_event_id=>wwv_flow_imp.id(28769526250427524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28771083214427527)
,p_event_id=>wwv_flow_imp.id(28769526250427524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_TYPE,P9_CATEGORY_ID,P9_STAFF_CATEGORY_1,P9_REQUEST_NAME,P9_START_DATE,P9_CERTIFICATION_PROOF,P9_DESCRIPTION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28770041982427525)
,p_event_id=>wwv_flow_imp.id(28769526250427524)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#req_rep").hide();',
'$("#req_but").hide();',
'$(''#voucher_det'').hide();',
'$(''#proof_det'').hide();',
'    $("#req_form").show();',
'$s(''P9_CATEGORY_ID'','''');',
'$s(''P9_ACTION'',''CREATE'');',
'$s(''P9_REQUEST_NAME'','''');',
'$s(''P9_DESCRIPTION'','''');',
'$s(''P9_EMP_ID'','''');',
'/*$s(''P9_TYPE'','''');*/',
'$s(''P9_START_DATE'','''');',
'$s(''P9_STAFF_CATEGORY'','''');',
'$s(''P9_CERTIFICATION_BODY'','''');',
'$s(''P9_CERTIFICATION_PROOF'','''');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28772434880427530)
,p_name=>'EDIT request'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28750514851427470)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28774452632427533)
,p_event_id=>wwv_flow_imp.id(28772434880427530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_TYPE,P9_CATEGORY_ID,P9_STAFF_CATEGORY_1,P9_REQUEST_NAME,P9_START_DATE,P9_CERTIFICATION_PROOF,P9_DESCRIPTION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28774967762427534)
,p_event_id=>wwv_flow_imp.id(28772434880427530)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_STAFF_CATEGORY_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28775407167427535)
,p_event_id=>wwv_flow_imp.id(28772434880427530)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_STAFF_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28772967334427530)
,p_event_id=>wwv_flow_imp.id(28772434880427530)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#req_rep").hide();',
'$("#req_but").hide();',
'    $("#req_form").show();',
'$(''#voucher_det'').hide();',
'// $(''#proof_det'').hide();',
'$s(''P9_CATEGORY_ID'','''');',
'$s(''P9_REQUEST_NAME'','''');',
'$s(''P9_DESCRIPTION'','''');',
'$s(''P9_LOCATION'','''');',
'$s(''P9_START_DATE'','''');',
'$s(''P9_END_DATE'','''');',
'$s(''P9_CERTIFICATION_BODY'','''');',
'$s(''P9_CERTIFICATION_PROOF'','''');',
'$s(''P9_ACTION'',''EDIT'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28773478833427531)
,p_event_id=>wwv_flow_imp.id(28772434880427530)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CT NUMBER;',
'l_emp_id varchar2(100);',
'BEGIN',
'',
'BEGIN',
'SELECT CATEGORY_ID,REQUEST_NAME,DESCRIPTION,START_DATE',
'INTO :P9_CATEGORY_ID,:P9_REQUEST_NAME,:P9_DESCRIPTION,:P9_START_DATE',
'FROM XXCLM.XXCLM_OTHER_REQUEST',
'WHERE REQUEST_ID=:P9_REQUEST_ID',
'AND COMPANY_CODE = :AP_COMPANY_CODE;',
' EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      NULL; ',
'    WHEN TOO_MANY_ROWS THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Multiple requests found for ID: '' || :P9_REQUEST_ID);',
'END;',
'',
'BEGIN',
'select STAFF_CATEGORY INTO :P9_STAFF_CATEGORY from XXHRMS_ASSIGNMENTS',
'WHERE PERSON_ID=:AP_STAFF_ID',
'and company_code = :ap_company_code;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P9_STAFF_CATEGORY := NULL;',
'END;',
' ',
'BEGIN',
'select VALUE_DESC INTO :P9_STAFF_CATEGORY_1 ',
'From xxhrms.XXHRMS_LOOKUP_LOV_V ',
'WHERE UPPER(TYPE_CODE) = ''EMP_CAT''',
'AND VALUE_CODE  =:P9_STAFF_CATEGORY',
'and company_code = :ap_company_code;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P9_STAFF_CATEGORY_1 := NULL;',
'END;',
'',
'END;'))
,p_attribute_02=>'P9_REQUEST_ID'
,p_attribute_03=>'P9_CATEGORY_ID,P9_REQUEST_NAME,P9_DESCRIPTION,P9_START_DATE,P9_TYPE,P9_STAFF_CATEGORY_1,P9_STAFF_CATEGORY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28775905934427536)
,p_event_id=>wwv_flow_imp.id(28772434880427530)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_REQUEST_ITEM_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28773922528427532)
,p_event_id=>wwv_flow_imp.id(28772434880427530)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28776381065427536)
,p_name=>'CANCEL FORM'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28752078555427473)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28776838321427537)
,p_event_id=>wwv_flow_imp.id(28776381065427536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P9_REQUEST_ID'')==''''){',
'    $("#empty_rep").show();',
'    $("#req_rep").hide();',
'    $("#req_form").hide();',
'$(''#voucher_det'').hide();',
'}',
'',
'else{',
'    $("#req_rep").show();',
'$(''#voucher_det'').show();',
'    $("#empty_rep").hide();',
'    $("#req_form").hide();',
'   }',
'apex.event.trigger(''#req_rep'', ''apexrefresh'');',
'$("#req_but").show();',
'$s(''P9_CATEGORY_ID'','''');',
'$s(''P9_REQUEST_NAME'','''');',
'$s(''P9_DESCRIPTION'','''');',
'$s(''P9_LOCATION'','''');',
'$s(''P9_START_DATE'','''');',
'$s(''P9_END_DATE'','''');',
'$s(''P9_CERTIFICATION_BODY'','''');',
'$s(''P9_CERTIFICATION_PROOF'','''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28777315620427538)
,p_event_id=>wwv_flow_imp.id(28776381065427536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28777707470427538)
,p_name=>'SUBMIT FORM'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28751651409427473)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28779260304427541)
,p_event_id=>wwv_flow_imp.id(28777707470427538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s((''P9_REQUEST_NAME''),($v(''P9_REQUEST_NAME'').replace(/\s+/, '' '')));',
'//$s((''P9_CATEGORY_ID''),($v(''P9_CATEGORY_ID'').replace(/\s+/, '' '')));',
'$s((''P9_DESCRIPTION''),($v(''P9_DESCRIPTION'').replace(/\s+/, '' '')));',
'$s((''P9_CERTIFICATION_BODY''),($v(''P9_CERTIFICATION_BODY'').replace(/\s+/, '' '')));',
'$s((''P9_LOCATION''),($v(''P9_LOCATION'').replace(/\s+/, '' '')));',
'$s((''P9_START_DATE''),($v(''P9_START_DATE'').replace(/\s+/, '' '')));',
'',
'',
'',
'var a=$v("P9_REQUEST_NAME");',
'var b=$v("P9_CATEGORY_ID");',
'var c=$v("P9_CERTIFICATION_BODY");',
'var d=$v("P9_DESCRIPTION");',
'var e=$v("P9_LOCATION");',
'var f=$v("P9_START_DATE");',
'',
'',
'    if (a==""||b==""||d==""||f==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'if (confirm(''Confirm to Submit?'')){',
'    //apex.util.showSpinner( $( "#req_form" ) );',
'   ',
'    return true;',
'    ',
'   }',
'else{',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28778222172427539)
,p_event_id=>wwv_flow_imp.id(28777707470427538)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_TYPE,P9_CATEGORY_ID,P9_STAFF_CATEGORY_1,P9_REQUEST_NAME,P9_START_DATE,P9_CERTIFICATION_PROOF,P9_DESCRIPTION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28778780508427540)
,p_event_id=>wwv_flow_imp.id(28777707470427538)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100591762772116440)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(34794465356249513)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100591898430116441)
,p_event_id=>wwv_flow_imp.id(100591762772116440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54718426939123073)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28758176574427488)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT REQUEST'
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
' v_cnt number;',
'begin',
'/*select count(0) into v_cnt',
'            from xxhrms.xxhrms_approval_path_v where supervisor is not null;',
'if v_cnt = 0 then ',
'raise_application_error(-20006, ''No approval path found'');',
'end if;*/',
'if :P9_ACTION=''CREATE''',
'',
'then',
'',
'XXCLM.XXCLM_CLAIMS_PKG.create_other_req(',
'    p_type=>:P9_TYPE,',
'	p_category_id =>:P9_CATEGORY_ID,',
'    p_req_name =>:P9_REQUEST_NAME,',
'    p_desc =>:P9_DESCRIPTION,',
'    p_start_date =>:P9_START_DATE,',
'    p_company_code =>:SS_COMPANY_CODE,',
'   p_EMP_ID =>:AP_STAFF_ID,',
'    p_req_type =>:P9_TYPE,',
'    p_id =>:P9_ID);  ',
'    ',
'    :P9_REQUEST_ID :=:P9_ID;',
'    IF :P9_CERTIFICATION_PROOF IS NOT NULL',
'    THEN ',
'    for r in (select * from apex_application_temp_files)',
'      loop',
'    apex_debug.message(''name: %s - filename: %s'', r.name, r.filename);',
'      end loop;',
'',
'  apex_debug.message(''P9_CERTIFICATION_PROOF: %s'', :P9_CERTIFICATION_PROOF);',
'    ',
'   SELECT blob_content,MIME_TYPE,FILENAME',
'      INTO l_blob,l_mimetype,l_filename',
'      FROM apex_application_temp_files',
'      WHERE name = :P9_CERTIFICATION_PROOF;',
'      apex_debug.message(''blob length: %s'', dbms_lob.getlength(l_blob));',
'    ',
'    update  XXCLM.XXCLM_OTHER_REQUEST SET',
'    CERTIFICATION_PROOF=l_blob,',
'    MIMETYPE=l_mimetype,',
'    FILENAME=l_filename',
'    where REQUEST_ID=:P9_ID;',
'    END IF;',
':P9_REQUEST_ID:=:P9_ID;   ',
'    ELSE',
'    ',
'    l_existed := APEX_COLLECTION.COLLECTION_EXISTS (',
'        p_collection_name => ''NEW_MAP'');',
'        IF l_existed = TRUE',
'        then',
'      APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''NEW_MAP'');',
'        end if;',
'    ',
'   ',
'UPDATE XXCLM.XXCLM_OTHER_REQUEST SET',
'',
'CATEGORY_ID=:P9_CATEGORY_ID,',
'REQUEST_NAME=:P9_REQUEST_NAME,',
'DESCRIPTION=:P9_DESCRIPTION,',
'START_DATE=:P9_START_DATE,',
'REQUEST_TYPE=:P9_TYPE',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND REQUEST_ID	=:P9_REQUEST_ID;',
'',
'IF :P9_CERTIFICATION_PROOF IS NOT NULL',
'    THEN ',
'    for r in (select * from apex_application_temp_files)',
'  loop',
'    apex_debug.message(''name: %s - filename: %s'', r.name, r.filename);',
'  end loop;',
'',
'  apex_debug.message(''P9_CERTIFICATION_PROOF: %s'', :P9_CERTIFICATION_PROOF);',
'    ',
'   SELECT blob_content,MIME_TYPE,FILENAME',
'      INTO l_blob,l_mimetype,l_filename',
'      FROM apex_application_temp_files',
'      WHERE name = :P9_CERTIFICATION_PROOF;',
'      apex_debug.message(''blob length: %s'', dbms_lob.getlength(l_blob));',
'    ',
'    update  XXCLM.XXCLM_OTHER_REQUEST SET',
'    CERTIFICATION_PROOF=l_blob,',
'    MIMETYPE=l_mimetype,',
'    FILENAME=l_filename',
'    where REQUEST_ID=:P9_REQUEST_ID;',
'    END IF;',
'    ',
'    ',
' ',
'END IF;',
'exception',
' when others then',
' raise_application_error(-20001, :P9_TYPE||''***''||sqlerrm||dbms_utility.format_error_backtrace);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28758176574427488
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28633047822838903)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OTHER CATEGORY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STAFF_CATEGORY INTO :P9_STAFF_CATEGORY ',
'from XXHRMS_ASSIGNMENTS',
'WHERE person_id =:AP_STAFF_ID;',
'/* ',
'select VALUE_DESC INTO :P9_STAFF_CATEGORY_1 ',
'From xxhrms.XXHRMS_LOOKUP_LOV_V ',
'WHERE UPPER(TYPE_CODE) = ''EMP_CAT''',
'*/',
'select *  INTO :P9_STAFF_CATEGORY_1 ',
'from(',
' select MEANING ',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''EMP_CAT''',
'union',
'select MEANING',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EMP_CAT'' ',
'AND LOOKUP_TYPE_CODE  =:P9_STAFF_CATEGORY',
'    );',
'  ',
'  :P9_STAFF_CATEGORY :=:P9_STAFF_CATEGORY_1;',
'  ',
'  ',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>28633047822838903
);
wwv_flow_imp.component_end;
end;
/
