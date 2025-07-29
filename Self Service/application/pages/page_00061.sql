prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_name=>'Leave Administration'
,p_step_title=>'Leave Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8186329545602401)
,p_plug_name=>'Hidden'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37314820002315386)
,p_plug_name=>'Handover Note'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       *',
'  from XXHRMS.XXHRMS_DOCUMENTS',
'  where id = (SELECT ID FROM XXHRMS.XXHRMS_DOCUMENTS WHERE UPPER(FILENAME) = UPPER(:P61_HANDOVER_NOTE))'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P61_HANDOVER_NOTE'
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
 p_id=>wwv_flow_imp.id(43921849440375871)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'SUITEUSER'
,p_internal_uid=>43921849440375871
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30196609988379779)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Download'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DOWNLOAD:XXHRMS_DOCUMENTS:BLOB_CONTENT:ID::MIME_TYPE:FILENAME:::attachment:<span class="fa fa-download"></span>:XXHRMS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30197020026379780)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30197486284379780)
,p_db_column_name=>'BLOB_CONTENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Blob Content'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30197826117379781)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30198230524379781)
,p_db_column_name=>'FILENAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Handover Note'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30198686655379781)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30199010235379782)
,p_db_column_name=>'CHARACTER_SET'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Character Set'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30199423718379782)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'File Size'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30199805745379782)
,p_db_column_name=>'FILE_DESCRIPTION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'File Description'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30200214712379783)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30200682820379783)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Document Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30201039357379784)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30201472493379784)
,p_db_column_name=>'INS_TIME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ins Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30201842898379784)
,p_db_column_name=>'INS_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30202237115379785)
,p_db_column_name=>'COMPANY_CODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(43968713865437151)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'302026'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FILENAME:ID:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41740466806995079)
,p_plug_name=>'Request History'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT x.ID,',
'    --x.staff_id,',
'    x.leave_type_code,',
'    x.leave_type_name,',
'    x.start_date,',
'    x.end_date,',
'    x.pending_leave_days,',
'    x.replacement,',
'    y.full_name replacement_name,',
'    z.full_name staff_name,',
'    x.contact_address,',
'    x.contact_number,',
'    x.created_by,',
'    x.created_date,',
'    x.updated_by,',
'    x.updated_date,',
'    X.staff_id||x.leave_type_name||workflow_status search,',
'    NVL(x.workflow_status,''PENDING'') workflow_status,',
'    x.leave_days  leave_days ',
' FROM xxhrms.xxhrms_ss_leave x, xxhrms.xxhrms_people y, xxhrms.xxhrms_people Z, xxhrms.xxhrms_assignments p',
' WHERE x.replacement = y.person_id(+)',
' AND y.person_id = p.person_id',
' and y.company_code=p.company_code',
'AND x.staff_id = NVL(:P99_EMPLOYEE,x.staff_id)',
'AND x.staff_id = z.person_id ',
' and z.company_code=p.company_code',
'AND z.COMPANY_CODE = :SS_COMPANY_CODE',
'and x.staff_id = :AP_STAFF_ID',
'and to_char(x.START_DATE,''YYYY'') = :P61_YEAR',
'',
'order by x.end_date desc'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_ajax_items_to_submit=>'P61_YEAR'
,p_plug_query_num_rows=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP,61:P61_ID,P61_YEAR:&ID.,&P61_YEAR.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_column', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    'Start Date: <font color="green">&START_DATE.</font>',
    'End Date: <font color="green">&END_DATE.</font>',
    'Reliever: <font color="green">&REPLACEMENT_NAME.</font>',
    'Status: <font color="green">&WORKFLOW_STATUS.</font>',
    '</pre>')),
  'text_formatting', 'Leave Type: <font color="blue">&LEAVE_TYPE_NAME.</font>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42416791374934785)
,p_plug_name=>'Leave Administration'
,p_icon_css_classes=>'fa-plane'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(94667235461826995)
,p_name=>'Available Leave'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT se.leave_name, xxhrms.xxhrms_ss_leave_pk.pending_leave_days_fn(bs.person_id, se.absence_id,:P61_LEAVE_PERIOD) pending_leave_days, se.max_no_of_days',
'FROM xxhrms.xxhrms_leave_setup se , xxhrms.xxhrms_assignments bs, xxhrms.xxhrms_people pe',
'WHERE se.status=''ACTIVE''',
'and se.company_code = :SS_COMPANY_CODE',
'  AND bs.staff_category = NVL(se.staff_category, bs.staff_category)',
'  AND bs.person_id = :P61_STAFF_ID_1',
'  AND bs.person_id = pe.person_id',
'  and bs.company_code=pe.company_code',
'   AND nvl(se.hr_flag,''0'')=''0''',
'  AND ((SUBSTR(pe.sex,1,1) = ''F'' AND UPPER(leave_name) NOT LIKE ''%PATERNITY%'')  ',
'      OR (SUBSTR(pe.sex,1,1) = ''M'' AND UPPER(leave_name) NOT LIKE ''%MATERNITY%''))',
'  AND ((bs.assignment_status = ''ACTIVE'' AND se.probation_flag = ''1'')',
'    OR NVL(se.probation_flag,0) = ''0'') ',
'AND :P61_NEW = ''Y''',
'union',
'SELECT se.leave_name, xxhrms.xxhrms_ss_leave_pk.pending_leave_days_fn(bs.person_id, se.absence_id,:P61_LEAVE_PERIOD) pending_leave_days, se.max_no_of_days',
'FROM xxhrms.xxhrms_leave_setup se , xxhrms.xxhrms_assignments bs, xxhrms.xxhrms_people pe',
'WHERE se.status=''ACTIVE''',
'and se.company_code = :SS_COMPANY_CODE',
'  AND bs.staff_category = NVL(se.staff_category, bs.staff_category)',
'  AND bs.person_id = :P61_STAFF_ID_1',
'  AND bs.person_id = pe.person_id',
'  and bs.company_code=pe.company_code',
'   AND nvl(se.hr_flag,''0'')=''0''',
'  AND ((SUBSTR(pe.sex,1,1) = ''F'' AND UPPER(leave_name) NOT LIKE ''%PATERNITY%'')  ',
'      OR (SUBSTR(pe.sex,1,1) = ''M'' AND UPPER(leave_name) NOT LIKE ''%MATERNITY%''))',
'  AND ((bs.assignment_status = ''ACTIVE'' AND se.probation_flag = ''1'')',
'    OR NVL(se.probation_flag,0) = ''0'') ',
'  and se.deffered = ''Y''',
'AND :P61_NEW = ''N'''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P61_NEW,P61_LEAVE_PERIOD'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30209143627379802)
,p_query_column_id=>1
,p_column_alias=>'LEAVE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Leave Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30209557033379802)
,p_query_column_id=>2
,p_column_alias=>'PENDING_LEAVE_DAYS'
,p_column_display_sequence=>3
,p_column_heading=>'Available'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30209958891379803)
,p_query_column_id=>3
,p_column_alias=>'MAX_NO_OF_DAYS'
,p_column_display_sequence=>2
,p_column_heading=>'Maximum'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94668511158826997)
,p_plug_name=>'Leave Details'
,p_region_name=>'SENDMAIL_REG'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_item_display_point=>'BELOW'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>':P61_ID IS NOT NULL AND :P61_WORKFLOW_STATUS not in (''NEW'',''SAVED'')'
,p_plug_read_only_when2=>'PLSQL'
,p_plug_header=>'Fill in the details to apply for your leave.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101183303220845115)
,p_plug_name=>'Leave Return Update'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm.xxadm_profile_options',
'where upper(profile_option) like ''%USE%LEAVE%RETURN%UPDATE%''',
'and profile_val=''Y'' and :P61_WORKFLOW_STATUS=''APPROVED'''))
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.xxhrms_ss_leave',
'where leave_rtn_status = ''Y''',
'and ID = :P61_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(111407796207788871)
,p_name=>'Approval History'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Level''||'' ''||APR_LVL "Level", APR_ID, COMMENTS, STATUS, UPDATED_TIME',
'from XXHRMS.XXHRMS_APPROVAL_TAB',
'where TRANS_ID = :P61_ID',
'and TRANS_TYPE = ''LEAVE''',
'order by APR_LVL asc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approvals have been made on this Leave Request'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32563577497467038)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>2
,p_column_heading=>'Level'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32563671139467039)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Approver'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30208420327379801)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comment'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30208060107379800)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32563775569467040)
,p_query_column_id=>5
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Date Approved'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(111991212264649172)
,p_name=>'Leave Approval Path'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select levels,supervisor',
'from xxhrms.xxhrms_approval_path_v',
'where supervisor is not null'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'Leave Approval Path Not Found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30195020659379765)
,p_query_column_id=>1
,p_column_alias=>'LEVELS'
,p_column_display_sequence=>1
,p_column_heading=>'Levels'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30194691852379764)
,p_query_column_id=>2
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>2
,p_column_heading=>'Supervisor'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME D, PERSON_ID R FROM xxhrms.xxhrms_people',
'--where company_code = :AP_COMPANY_CODE',
'where person_id in (select staff_id from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':'')) where column_value = :AP_COMPANY_CODE)'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30203343190379792)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(101183303220845115)
,p_button_name=>'UPDATE_STATUS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Status'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.xxhrms_ss_leave',
'where leave_rtn_status = ''Y''',
'and ID = :P61_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30210650174379805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'F'
,p_button_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30211033954379805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_condition=>'F'
,p_button_condition_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30211484552379805)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm("Are you sure you want to delete this record?",{request:"DELETE"});'
,p_button_execute_validations=>'N'
,p_button_condition=>'return NVL(:P61_WORKFLOW_STATUS,''NEW'') IN (''NEW'',''SAVED'');'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30211822588379806)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30212296980379806)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Request'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'NVL(:P61_WORKFLOW_STATUS,''NEW'') IN (''NEW'',''SAVED'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30195652949379772)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(42416791374934785)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Leave Request'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP,61:NOT_LVEMPNAME,NOT_LVALLOWANCE,NOT_RELIEVER,NOT_STARTDATE,NOT_TYPE,NOT_LVDAYS,NOT_ENDATE:&"61_NOT_LVEMPNAME".,&"61_NOT_LVALLOWANCE".,&"61_NOT_RELIEVER".,&"61_NOT_STARTDATE_1".,&"61_NOT_TYPE".,&"61_NOT_LVDAYS_1".,&"61_NOT_ENDATE_1".'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(30252076696379857)
,p_branch_name=>'Go To Page 61'
,p_branch_action=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP,61::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(30211484552379805)
,p_branch_sequence=>1
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P61_VALIDATE = ''1'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(30251613100379856)
,p_branch_name=>'Go To Page 61'
,p_branch_action=>'f?p=&APP_ID.:61:&SESSION.:&AP_REQUEST.:&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(30212296980379806)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8222430291681309)
,p_name=>'P61_CHK'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15697042418272513)
,p_name=>'P61_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41740466806995079)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct to_char(START_DATE,''YYYY'') d, to_char(START_DATE,''YYYY'') r ',
'from xxhrms_ss_leave',
'where STAFF_ID = :AP_STAFF_ID',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Year--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30203789211379793)
,p_name=>'P61_LEAVE_RTN_STATUS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(101183303220845115)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30204165945379795)
,p_name=>'P61_LEAVE_RTN_DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(101183303220845115)
,p_prompt=>'Date:'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_date', '&P61_MIN_RTN_DATE.',
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30204580076379795)
,p_name=>'P61_LEAVE_RTN_COMMENT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(101183303220845115)
,p_prompt=>'Comment:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
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
 p_id=>wwv_flow_imp.id(30204921894379796)
,p_name=>'P61_MIN_RTN_DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(101183303220845115)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30205350657379796)
,p_name=>'P61_FOR_DA_HDDN'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(101183303220845115)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30212640119379807)
,p_name=>'P61_VALIDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30213098017379807)
,p_name=>'P61_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30213442318379808)
,p_name=>'P61_ORG_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30213883594379808)
,p_name=>'P61_STAFF_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_item_default=>':P61_STAFF_ID_1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30214282566379808)
,p_name=>'P61_STAFF_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Staff Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_display_when=>'D'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
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
 p_id=>wwv_flow_imp.id(30214682689379809)
,p_name=>'P61_STAFF_ID_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_item_default=>'&AP_STAFF_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'D'
,p_display_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30215086934379810)
,p_name=>'P61_LEAVE_TYPE_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_leave_name varchar2(200);',
'cursor c_leave IS ',
'SELECT leave_name ',
'  FROM xxhrms_leave_setup ',
' WHERE absence_id = :P61_LEAVE_TYPE_code;',
'begin',
'  OPEN c_leave;',
'  FETCH c_leave ',
'   INTO v_leave_name;',
'  CLOSE c_leave;',
' return v_leave_name;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30215410511379811)
,p_name=>'P61_LEAVE_PERIOD'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Leave Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct FROM_DATE||'' TO ''||TO_DATE D, FROM_DATE||'':''||TO_DATE R',
'FROM XXHRMS.xxhrms_leave_yr_v',
'WHERE COMPANY_CODE = :SS_COMPANY_CODE',
'order by 2 desc',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Leave Period--'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30215864365379811)
,p_name=>'P61_LEAVE_TYPE_CODE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Leave Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT se.leave_name D, se.absence_id R',
'FROM xxhrms.xxhrms_leave_setup se , xxhrms.xxhrms_assignments bs, xxhrms.xxhrms_people pe',
'WHERE se.status=''ACTIVE''',
'and se.company_code = :SS_COMPANY_CODE',
'  AND bs.staff_category = NVL(se.staff_category, bs.staff_category)',
'  AND bs.person_id = nvl(:P61_STAFF_ID_1, :P61_STAFF_ID)',
'  AND bs.person_id = pe.person_id',
'  AND nvl(se.hr_flag,''0'')=''0''',
'  AND ((SUBSTR(pe.sex,1,1) = ''F'' AND UPPER(leave_name) NOT LIKE ''%PATERNITY%'')  ',
'      OR (SUBSTR(pe.sex,1,1) = ''M'' AND UPPER(leave_name) NOT LIKE ''%MATERNITY%''))',
'  AND ((bs.assignment_status = ''ACTIVE'' AND se.probation_flag = ''1'')',
'    OR NVL(se.probation_flag,0) = ''0'') ',
'    AND :P61_NEW = ''Y''',
' UNION',
' SELECT se.leave_name D, se.absence_id R',
'FROM xxhrms.xxhrms_leave_setup se , xxhrms.xxhrms_assignments bs, xxhrms.xxhrms_people pe',
'WHERE se.status=''ACTIVE''',
'and se.company_code = :SS_COMPANY_CODE',
'  AND bs.staff_category = NVL(se.staff_category, bs.staff_category)',
'  AND bs.person_id = nvl(:P61_STAFF_ID_1, :P61_STAFF_ID)',
'  AND bs.person_id = pe.person_id',
'  AND nvl(se.hr_flag,''0'')=''0''',
'  AND ((SUBSTR(pe.sex,1,1) = ''F'' AND UPPER(leave_name) NOT LIKE ''%PATERNITY%'')  ',
'      OR (SUBSTR(pe.sex,1,1) = ''M'' AND UPPER(leave_name) NOT LIKE ''%MATERNITY%''))',
'  AND ((bs.assignment_status = ''ACTIVE'' AND se.probation_flag = ''1'')',
'    OR NVL(se.probation_flag,0) = ''0'') ',
'     and se.deffered = ''Y''',
'    AND :P61_NEW = ''N''',
' ',
'    ',
'    ',
'    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Leave type--'
,p_lov_cascade_parent_items=>'P61_LEAVE_PERIOD,P61_NEW'
,p_ajax_items_to_submit=>'P61_LEAVE_PERIOD,P61_NEW'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30216239736379811)
,p_name=>'P61_PENDING_LEAVE_DAYS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Available Days'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="background-color:#dddddd;"'
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
 p_id=>wwv_flow_imp.id(30216689655379812)
,p_name=>'P61_START_DATE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Proposed Start Date'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30217078939379813)
,p_name=>'P61_END_DATE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Proposed End Date'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'number_of_months', '2',
  'show', 'both',
  'show_other_months', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30217433168379813)
,p_name=>'P61_LEAVE_DAYS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Leave Days'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_tag_attributes=>'readonly="readonly", style="background-color:#dddddd;"'
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
 p_id=>wwv_flow_imp.id(30217842297379814)
,p_name=>'P61_HANDOVER_NOTE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'&P61_HANDOVER_LABEL.'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30218237168379814)
,p_name=>'P61_REPLACEMENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Reliever'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.FULL_NAME as display_value, b.PERSON_ID as return_value ',
'  from XXHRMS.XXHRMS_ASSIGNMENTS a, xxhrms_people b',
'WHERE a.company_code = :AP_COMPANY_CODE',
'and upper(a.ASSIGNMENT_STATUS) <>''INACTIVE''',
'and a.person_id = b.person_id',
'and a.PERSON_ID <> :P61_STAFF_ID_1',
'and NOT exists (select 1',
'    from xxhrms.xxhrms_suspension_mgr x',
'    where x.PERSON_ID = a.PERSON_ID ',
'    and sysdate between x.START_DATE and x.END_DATE)',
' order by a.FULLNAME;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Relief--'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
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
 p_id=>wwv_flow_imp.id(30219005985379815)
,p_name=>'P61_CONTACT_ADDRESS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact Address'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(residence_address,contact_address)',
'from xxhrms_master_all where person_id = :P61_STAFF_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>400
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
 p_id=>wwv_flow_imp.id(30219449196379816)
,p_name=>'P61_CONTACT_NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact Number'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TELEPHONE_NUMBER_1 ',
'from xxhrms_master_all where person_id = (select staff_id from xxadm_password where upper(logname) = :APP_USER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30219819964379817)
,p_name=>'P61_CREATED_BY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30220249893379817)
,p_name=>'P61_CREATED_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30220645811379817)
,p_name=>'P61_UPDATED_BY'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30221050750379818)
,p_name=>'P61_UPDATED_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30221461259379818)
,p_name=>'P61_WORKFLOW_STATUS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30221866596379818)
,p_name=>'P61_LEAVE_ALLOW_REQUEST'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Leave Allowance'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Yes;Y'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30222254105379819)
,p_name=>'P61_FROM'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30222625719379820)
,p_name=>'P61_SUBJ'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30223042050379820)
,p_name=>'P61_BODY'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30223444305379820)
,p_name=>'NOT_LVEMPNAME_1'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30223861012379821)
,p_name=>'NOT_STARTDATE_1'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30224295070379821)
,p_name=>'NOT_ENDATE_1'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30224637995379821)
,p_name=>'NOT_LVDAYS_1'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30225012908379822)
,p_name=>'NOT_RELIEVER_1'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30225476313379822)
,p_name=>'NOT_TYPE_1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30225804314379822)
,p_name=>'NOT_LVALLOWANCE_1'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30226278378379823)
,p_name=>'P61_RELIEVER_NAME'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33157392680522316)
,p_name=>'P61_HANDOVER_CHK'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(8186329545602401)
,p_prompt=>'HANDOVER_CHK'
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
 p_id=>wwv_flow_imp.id(33157433650522317)
,p_name=>'P61_ALLOW_CHK'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(8186329545602401)
,p_prompt=>'ALLOW_CHK'
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
 p_id=>wwv_flow_imp.id(37961816370622814)
,p_name=>'P61_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95311998688893324)
,p_name=>'P61_HANDOVER_LABEL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97214937740033204)
,p_name=>'P61_RELIVER_EMAIL'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(94668511158826997)
,p_prompt=>'Reliever Email Address'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMAIL d, EMAIL r',
'from xxhrms.xxhrms_people where person_id  = :P61_REPLACEMENT'))
,p_lov_cascade_parent_items=>'P61_REPLACEMENT'
,p_ajax_items_to_submit=>'P61_RELIVER_EMAIL'
,p_ajax_optimize_refresh=>'Y'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30227721798379829)
,p_validation_name=>'P61_CREATED_DATE must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P61_CREATED_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(30220249893379817)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30228113080379830)
,p_validation_name=>'P61_UPDATED_DATE must be timestamp'
,p_validation_sequence=>140
,p_validation=>'P61_UPDATED_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(30221050750379818)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30228584148379830)
,p_validation_name=>'P61_LEAVE_DAYS'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_NUMBER(:P61_LEAVE_DAYS) <=',
'TO_NUMBER(:P61_PENDING_LEAVE_DAYS)'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Selected days cannot be greater than available leave days!!!'
,p_always_execute=>'Y'
,p_validation_condition=>'P61_VALIDATE'
,p_validation_condition2=>'1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(30217433168379813)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30229355999379831)
,p_validation_name=>'P61_LEAVE_DAYS_1'
,p_validation_sequence=>160
,p_validation=>'TO_NUMBER(:P61_LEAVE_DAYS) > 0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Leave Days must be greater than Zero (0). Select an End Date.'
,p_always_execute=>'Y'
,p_validation_condition=>'P61_VALIDATE'
,p_validation_condition2=>'1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(30217433168379813)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30227373937379828)
,p_validation_name=>'replacement'
,p_validation_sequence=>170
,p_validation=>'P61_REPLACEMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Replacement is Required'
,p_validation_condition=>':P61_LEAVE_DAYS > 0 AND :SS_COMPANY_CODE in (''58'',''48'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30228932655379830)
,p_validation_name=>'leave type'
,p_validation_sequence=>180
,p_validation=>'P61_LEAVE_TYPE_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Replacement is Required'
,p_validation_condition=>'P61_LEAVE_DAYS'
,p_validation_condition2=>'1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30230110029379831)
,p_validation_name=>'Leave Approval Path'
,p_validation_sequence=>185
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxhrms.xxhrms_approval_path_v',
'where supervisor is not null'))
,p_validation_type=>'EXISTS'
,p_error_message=>'Leave Approval Path Must Not be Empty'
,p_when_button_pressed=>wwv_flow_imp.id(30212296980379806)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30236933978379844)
,p_name=>'Leave days'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30237922728379845)
,p_event_id=>wwv_flow_imp.id(30236933978379844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_LEAVE_DAYS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_max_days number;',
'  v_name VARCHAR2(50);',
'  v_weekend varchar2(2);',
'  v_profile_sat varchar2(3);',
'  v_profile_sun varchar2(3);',
'BEGIN',
'  --',
'  begin',
'  select leave_name, INCLUDE_WEEKENDS ',
'    into v_name, v_weekend',
'    from xxhrms.xxhrms_leave_setup',
'    where absence_id  =:P61_LEAVE_TYPE_CODE',
'    and rownum = 1;',
'   exception',
'     when no_Data_found then',
'    v_name  := null;',
'  end;',
'--======selecting profile values===================',
'    select profile_val into v_profile_sat',
'    from xxadm.xxadm_profile_options',
'    WHERE profile_option = ''Saturday is workday''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'and rownum = 1;',
'',
'select profile_val into v_profile_sun',
'    from xxadm.xxadm_profile_options',
'    WHERE profile_option = ''Sunday is workday''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'and rownum = 1;',
'  --',
'  --IF UPPER(v_name) = ''ANNUAL LEAVE'' THEN',
'  IF UPPER(v_weekend) = ''Y'' THEN',
'  --==============updating profile option based on leave type==========',
'    update xxadm.xxadm_profile_options',
'set  profile_val = ''Y''',
'WHERE profile_option = ''Saturday is workday'' --in (''Sunday is workday'',''Saturday is workday'') ',
'and COMPANY_CODE = :AP_COMPANY_CODE;',
'----------------------------------',
'    SELECT COUNT(1) INTO v_max_days',
'      FROM (SELECT rownum - 1 + to_date(:P61_START_DATE, ''YYYY-MM-DD'') wk_Date, TO_CHAR(rownum - 1 + TO_DATE(:P61_START_DATE, ''YYYY-MM-DD''),''DY'') wk_day',
'	      FROM all_objects',
'	     WHERE rownum < TO_DATE(:P61_END_DATE, ''YYYY-MM-DD'') -  TO_DATE(:P61_START_DATE, ''YYYY-MM-DD'') +2) aa',
'     WHERE NOT EXISTS (SELECT 1 FROM xxhrms.xxhrms_ss_holidays',
'     WHERE aa.wk_date = holiday_date',
'       AND status=''ACTIVE'')',
'      AND (wk_Day != ''SAT'' or xxhrms.xxhrms_utils_pkg.weekend_is_holiday(''SAT'') = ''0'')',
'       AND (wk_Day != ''SUN'' or xxhrms.xxhrms_utils_pkg.weekend_is_holiday(''SUN'') = ''0'');',
'--===============returning profile option to original state===========',
'    update xxadm.xxadm_profile_options',
'set  profile_val = v_profile_sat',
'WHERE profile_option = ''Saturday is workday''',
'and COMPANY_CODE = :AP_COMPANY_CODE;',
'',
' update xxadm.xxadm_profile_options',
'set  profile_val = v_profile_sun',
'WHERE profile_option = ''Sunday is workday''',
'and COMPANY_CODE = :AP_COMPANY_CODE;',
'--------------------------',
'  ELSE  ',
'  --==============updating profile option based on leave type==========   ',
'  update xxadm.xxadm_profile_options',
'set  profile_val = ''N''',
'WHERE profile_option = ''Saturday is workday'' --in (''Sunday is workday'',''Saturday is workday'') ',
'and COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'  SELECT COUNT(1) INTO v_max_days',
'    FROM (SELECT rownum - 1 + to_date(:P61_START_DATE, ''YYYY-MM-DD'') wk_Date, TO_CHAR(rownum - 1 + TO_DATE(:P61_START_DATE, ''YYYY-MM-DD''),''DY'') wk_day',
'	    FROM all_objects',
'	   WHERE rownum < TO_DATE(:P61_END_DATE, ''YYYY-MM-DD'') - TO_DATE(:P61_START_DATE, ''YYYY-MM-DD'') +2) aa',
'   WHERE wk_Day NOT IN (''SAT'',''SUN'')       ',
'     AND NOT EXISTS (SELECT 1 FROM xxhrms.xxhrms_ss_holidays',
'   WHERE aa.wk_date = holiday_date',
'     AND status=''ACTIVE'');',
'',
'--===============returning profile option to original state===========',
'     update xxadm.xxadm_profile_options',
'set  profile_val = v_profile_sat',
'WHERE profile_option = ''Saturday is workday''',
'and COMPANY_CODE = :AP_COMPANY_CODE;',
'',
' update xxadm.xxadm_profile_options',
'set  profile_val = v_profile_sun',
'WHERE profile_option = ''Sunday is workday''',
'and COMPANY_CODE = :AP_COMPANY_CODE;',
'  END IF;',
'  --',
'  RETURN v_max_days;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    v_max_days := 0;',
'  RETURN v_max_days;',
'END;'))
,p_attribute_07=>'P61_START_DATE,P61_END_DATE,P61_LEAVE_TYPE_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30237467674379844)
,p_event_id=>wwv_flow_imp.id(30236933978379844)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'NOT_ENDATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30238413427379845)
,p_event_id=>wwv_flow_imp.id(30236933978379844)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'  v_edate varchar2(50);',
'  v_sdate varchar2(50);',
'  v_days number;',
'  begin',
'  ',
'  select :P61_END_DATE, :P61_START_DATE  INTO v_edate, v_sdate',
'    from DUAL;',
'       ',
'  ',
'  APEX_UTIL.set_session_state(',
'        p_name  => ''NOT_ENDATE_1''',
'      , p_value => v_edate);',
'        ',
'  APEX_UTIL.set_session_state(',
'        p_name  => ''NOT_STARTDATE_1''',
'      , p_value => v_sdate);',
'  ',
'End;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8222279945681307)
,p_event_id=>wwv_flow_imp.id(30236933978379844)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_LEAVE_ALLOW_REQUEST'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8222349844681308)
,p_event_id=>wwv_flow_imp.id(30236933978379844)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'      select ''Y''',
'      into :P61_CHK ',
'      from xxhrms.xxhrms_ss_leave',
'      where staff_id = :AP_STAFF_ID',
'      and  substr((:P61_LEAVE_PERIOD),18,3) = substr(to_date(:P61_START_DATE,''YYYY-MM-DD''),9,4)',
'      and WORKFLOW_STATUS = ''APPROVED''',
'      --and LEAVE_PAID is not null',
'      and LEAVE_ALLOW_REQUEST = ''Y''',
'      and company_code = :AP_COMPANY_CODE',
'      and rownum = 1;',
'Exception When no_data_found then',
'      null;',
'end;'))
,p_attribute_02=>'AP_STAFF_ID,P61_START_DATE'
,p_attribute_03=>'P61_CHK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30238871142379846)
,p_name=>'pending leave details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_LEAVE_TYPE_CODE'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30239304227379846)
,p_event_id=>wwv_flow_imp.id(30238871142379846)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_PENDING_LEAVE_DAYS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select xxhrms.xxhrms_ss_leave_pk.pending_leave_days_fn(:P61_STAFF_ID_1, :P61_LEAVE_TYPE_CODE, :P61_LEAVE_PERIOD) from dual;'
,p_attribute_07=>'P61_STAFF_ID_1,P61_LEAVE_TYPE_CODE,P61_LEAVE_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30239894194379847)
,p_event_id=>wwv_flow_imp.id(30238871142379846)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111991212264649172)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30240249371379847)
,p_name=>'Staff ID'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_STAFF_ID_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30242290285379849)
,p_event_id=>wwv_flow_imp.id(30240249371379847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :P61_STAFF_ID_1);',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''LEAVE'');'))
,p_attribute_02=>'P61_STAFF_ID_1'
,p_attribute_03=>'AP_AUTH_STAFF,AP_AUTH_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30241709983379848)
,p_event_id=>wwv_flow_imp.id(30240249371379847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
'  v_name varchar2(50);',
'  begin',
'  ',
'  select full_name into :NOT_LVEMPNAME',
'    from xxhrms.xxhrms_master_all ',
'    where person_id = :P61_STAFF_ID_1;',
' ',
'      SELECT nvl(:P61_BODY,'''')  into :P61_BODY',
'FROM dual;',
'      ',
' ',
'     ',
'',
'    ',
'  ',
'  ',
'     END;',
''))
,p_attribute_02=>'NOT_LVEMPNAME_1'
,p_attribute_03=>'NOT_LVEMPNAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30240799673379847)
,p_event_id=>wwv_flow_imp.id(30240249371379847)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_BODY,NOT_LVEMPNAME_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30241277993379848)
,p_event_id=>wwv_flow_imp.id(30240249371379847)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(111991212264649172)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30242652455379849)
,p_name=>'Leave Return Update'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30203343190379792)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30243101956379850)
,p_event_id=>wwv_flow_imp.id(30242652455379849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update xxhrms.xxhrms_ss_leave',
'set leave_rtn_status=''Y'',leave_rtn_date=:P61_leave_rtn_date,',
'    leave_rtn_comment=:P61_leave_rtn_comment',
'where id = :P61_ID;',
' apex_util.set_session_state(''P61_FOR_DA_HDDN'', TO_CHAR(SYSTIMESTAMP) ); ',
' commit;',
'',
'	begin',
'		---send mail',
'		XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'												 pTYPE=> ''LEAVE'',',
'												 pTRANS_ID => :P61_ID,',
'												 pNOTETPYE => ''Return''',
'												);',
'	exception ',
'		when others then    ',
'			xxsbs.log_xxtest(sqlerrm||''--leave return---''||dbms_utility.format_error_backtrace);',
'	end;',
' ',
'exception ',
'when others then',
'rollback;',
'Raise_Application_Error (-20344, ''Error Encountered while Updating Leave Return Status'');',
'',
'end;'))
,p_attribute_02=>'P61_ID,P61_FOR_DA_HDDN,P61_LEAVE_RTN_COMMENT,P61_LEAVE_RTN_DATE'
,p_attribute_03=>'P61_FOR_DA_HDDN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10454983049658110)
,p_event_id=>wwv_flow_imp.id(30242652455379849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30243569665379850)
,p_name=>'Leave return update Alert'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_FOR_DA_HDDN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30244066345379850)
,p_event_id=>wwv_flow_imp.id(30243569665379850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Leave Return Updated Successfully'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30236082866379841)
,p_name=>'Refresh'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_LEAVE_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37961751375622813)
,p_event_id=>wwv_flow_imp.id(30236082866379841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_from_date date;',
'v_to_date date;',
'V_NEW VARCHAR2(1);',
'',
'  begin',
'  ',
'  ',
'  select to_date(COLUMN_VALUE,''DD-MON-RR'')',
'    INTO v_from_date',
'    from(select rownum row_num,a.* from table(apex_string.split(:P61_LEAVE_PERIOD,'':'')) a)',
'    where row_num=1;',
'    ',
'    select to_date(COLUMN_VALUE,''DD-MON-RR'')',
'    INTO v_to_date',
'    from(select rownum row_num,a.* from table(apex_string.split(:P61_LEAVE_PERIOD,'':'')) a)',
'    where row_num=2;',
'    ',
'    if (SYSDATE >=v_from_date)  and (SYSDATE <=v_to_date) THEN',
'        V_NEW:=''Y'';',
'    else',
'        V_NEW:=''N'';',
'    end if;',
'    ',
'    apex_util.set_session_state(p_name => ''P61_NEW'',',
'			p_value => V_NEW);',
'  end;'))
,p_attribute_02=>'P61_LEAVE_PERIOD'
,p_attribute_03=>'P61_NEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30236567180379843)
,p_event_id=>wwv_flow_imp.id(30236082866379841)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(94667235461826995)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30244431597379851)
,p_name=>'Setvalue'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30245955891379852)
,p_event_id=>wwv_flow_imp.id(30244431597379851)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'NOT_STARTDATE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var val = apex.item(''P61_START_DATE'').getValue();',
'//alert(val);',
'apex.item(''NOT_STARTDATE_1'').setValue(val);',
'//alert(apex.item(''NOT_STARTDATE_1'').setValue(val));',
'//alert(apex.item(''NOT_STARTDATE_1'').getValue());'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30245475308379851)
,p_event_id=>wwv_flow_imp.id(30244431597379851)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'  v_date varchar2(50);',
'  begin',
'  ',
'  select :P61_START_DATE INTO :NOT_STARTDATE_1',
'    from DUAL;',
'  ',
'  ',
'  APEX_UTIL.set_session_state(',
'        p_name  => ''NOT_STARTDATE''',
'      , p_value => :P61_START_DATE);',
'      ',
'      end;'))
,p_attribute_02=>'NOT_STARTDATE'
,p_attribute_03=>'NOT_STARTDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30246475410379852)
,p_event_id=>wwv_flow_imp.id(30244431597379851)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'NOT_STARTDATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30244979563379851)
,p_event_id=>wwv_flow_imp.id(30244431597379851)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_BODY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30246808499379852)
,p_name=>'SetAllowance'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_LEAVE_ALLOW_REQUEST'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30247344909379853)
,p_event_id=>wwv_flow_imp.id(30246808499379852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       declare',
'  v_allowance varchar2(50);',
'  begin',
'  select',
'          decode(:P61_LEAVE_ALLOW_REQUEST,''Y'',''Yes'',''N'',''No'') into :NOT_LVALLOWANCE',
'FROM dual;',
'  ',
'      end;',
'',
'    '))
,p_attribute_02=>'NOT_LVALLOWANCE_1'
,p_attribute_03=>'NOT_LVALLOWANCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30247864688379853)
,p_event_id=>wwv_flow_imp.id(30246808499379852)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'NOT_LVALLOWANCE_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30248293138379853)
,p_name=>'SetLeaveDays'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_LEAVE_DAYS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30248773522379854)
,p_event_id=>wwv_flow_imp.id(30248293138379853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'  v_lvdays varchar2(50);',
'  begin',
'  ',
'        SELECT :P61_LEAVE_DAYS  into :NOT_LVDAYS_1 FROM dual;',
'  ',
'      APEX_UTIL.set_session_state(',
'        p_name  => ''NOT_LVDAYS_1''',
'     , p_value => v_lvdays);',
'',
'      end;',
'',
'    '))
,p_attribute_02=>'NOT_LVDAYS'
,p_attribute_03=>'NOT_LVDAYS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30249228017379854)
,p_event_id=>wwv_flow_imp.id(30248293138379853)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var valdays = apex.item(''P61_LEAVE_DAYS'').getValue();',
'//alert(valdays);',
'apex.item(''NOT_LVDAYS'').setValue(valdays);',
'//alert(apex.item(''NOT_LVDAYS'').setValue(''test''));',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30249635553379854)
,p_name=>'New'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_REPLACEMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30250649288379855)
,p_event_id=>wwv_flow_imp.id(30249635553379854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_RELIVER_EMAIL'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30250140945379855)
,p_event_id=>wwv_flow_imp.id(30249635553379854)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_RELIVER_EMAIL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select EMAIL_ADDRESS from xxhrms.xxhrms_master_All where person_id = :P61_REPLACEMENT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30251191812379856)
,p_event_id=>wwv_flow_imp.id(30249635553379854)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_RELIEVER_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select FULL_NAME from xxhrms.xxhrms_master_All where person_id = :P61_REPLACEMENT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33157017761522313)
,p_name=>'Handover_Allow'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_LEAVE_TYPE_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33157131042522314)
,p_event_id=>wwv_flow_imp.id(33157017761522313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_HANDOVER_CHK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPLOAD_HANDOVER from xxhrms.XXHRMS_LEAVE_SETUP',
'where ABSENCE_ID = :P61_LEAVE_TYPE_CODE'))
,p_attribute_07=>'P61_LEAVE_TYPE_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33157275040522315)
,p_event_id=>wwv_flow_imp.id(33157017761522313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_ALLOW_CHK'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_val number;',
' v_result varchar2(20);',
' v_check_allow_pay varchar2(200);',
'begin',
'',
'--check if attract leave pay is yes',
'select count(1)',
'into v_check_allow_pay',
'from xxhrms.XXHRMS_LEAVE_SETUP a',
'where a.absence_id = :P61_LEAVE_TYPE_CODE',
'and a.ATTRACT_LEAVE_PAY = ''Y'';',
'',
'--check if employee has applied for leave and has been paid leave allowance during the current period',
'select count(1)',
'into v_val',
'from xxhrms.XXHRMS_LEAVE_SETUP a, xxhrms.xxhrms_ss_leave b',
'where a.ABSENCE_ID = b.leave_type_code',
'and :P61_LEAVE_PERIOD IN (b.leave_period2)',
'and b.LEAVE_ALLOW_REQUEST = ''Y''',
'and a.ATTRACT_LEAVE_PAY = ''Y''',
'and b.WORKFLOW_STATUS = ''APPROVED''',
'and b.staff_id = :AP_STAFF_ID;',
'',
'-- if leave has been applied for and allowance has been paid, return no, else return yes,',
'if v_check_allow_pay > 0 then',
'    if v_val > 0 then',
'         v_result := ''N'';',
'    else ',
'         v_result := ''Y'';',
'    end if;',
'  return v_result;',
'end if;',
'end;'))
,p_attribute_07=>'P61_LEAVE_TYPE_CODE,P61_LEAVE_PERIOD,AP_STAFF_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39549927444023302)
,p_event_id=>wwv_flow_imp.id(33157017761522313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_LEAVE_ALLOW_REQUEST'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33157563828522318)
,p_name=>'Hand_1'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_HANDOVER_CHK'
,p_condition_element=>'P61_HANDOVER_CHK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33157677522522319)
,p_event_id=>wwv_flow_imp.id(33157563828522318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_HANDOVER_NOTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33157748546522320)
,p_event_id=>wwv_flow_imp.id(33157563828522318)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_HANDOVER_NOTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33158367558522326)
,p_event_id=>wwv_flow_imp.id(33157563828522318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_HANDOVER_NOTE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33158481378522327)
,p_event_id=>wwv_flow_imp.id(33157563828522318)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_HANDOVER_NOTE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33157891002522321)
,p_name=>'Allow_1'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_ALLOW_CHK'
,p_condition_element=>'P61_ALLOW_CHK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33157938259522322)
,p_event_id=>wwv_flow_imp.id(33157891002522321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_LEAVE_ALLOW_REQUEST'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33158090880522323)
,p_event_id=>wwv_flow_imp.id(33157891002522321)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_LEAVE_ALLOW_REQUEST'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8223329516681318)
,p_name=>'New_1'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_CHK'
,p_condition_element=>'P61_CHK'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8223466690681319)
,p_event_id=>wwv_flow_imp.id(8223329516681318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_LEAVE_ALLOW_REQUEST'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8223578321681320)
,p_event_id=>wwv_flow_imp.id(8223329516681318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_LEAVE_ALLOW_REQUEST'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15697156038272514)
,p_name=>'New_2'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15697244086272515)
,p_event_id=>wwv_flow_imp.id(15697156038272514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41740466806995079)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30230472364379831)
,p_process_sequence=>110
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_leave IS',
'    select xx.STAFF_ID, xx.STAFF_ID, yy.full_name, xx.LEAVE_TYPE_NAME, xx.START_DATE, xx.END_DATE, xx.PENDING_LEAVE_DAYS, xx.REPLACEMENT, xx.CONTACT_ADDRESS, xx.CONTACT_NUMBER, ',
'	   xx.CREATED_BY, xx.CREATED_DATE, xx.UPDATED_BY, xx.UPDATED_DATE, NVL(xx.WORKFLOW_STATUS,''NEW''), LEAVE_DAYS, yy.COMPANY_CODE,',
'        xx.leave_rtn_status, xx.leave_rtn_date, xx.leave_rtn_comment,  xx.START_DATE+1,decode( xx.LEAVE_ALLOW_REQUEST,''Y'', xx.LEAVE_ALLOW_REQUEST,null) LEAVE_ALLOW_REQUEST,',
'        LEAVE_RTN_DATE,LEAVE_RTN_COMMENT,LEAVE_PERIOD2,HANDOVER_ID,(SELECT EMAIL_ADDRESS FROM xxhrms_master_all WHERE person_id = xx.REPLACEMENT) AS RELIEVER_EMAIL',
'      from xxhrms_ss_leave xx, xxhrms_people yy',
'     where xx.staff_id = yy.person_id',
'       and xx.id = :P61_ID;',
'begin',
'  OPEN c_leave;',
'  FETCH c_leave into :P61_STAFF_ID, :P61_STAFF_ID_1, :P61_STAFF_NAME,  :P61_LEAVE_TYPE_CODE, :P61_START_DATE, :P61_END_DATE, :P61_PENDING_LEAVE_DAYS, :P61_REPLACEMENT, ',
'	:P61_CONTACT_ADDRESS, :P61_CONTACT_NUMBER, :P61_CREATED_BY, :P61_CREATED_DATE, :P61_UPDATED_BY, :P61_UPDATED_DATE, :P61_WORKFLOW_STATUS, :P61_LEAVE_DAYS, :P61_ORG_ID',
'    ,:P61_leave_rtn_status,:P61_leave_rtn_date,:P61_leave_rtn_comment,:P61_MIN_RTN_DATE,:P61_LEAVE_ALLOW_REQUEST,:P61_LEAVE_RTN_DATE,:P61_LEAVE_RTN_COMMENT,:P61_LEAVE_PERIOD,:P61_HANDOVER_NOTE,:P61_RELIVER_EMAIL;',
'  CLOSE c_leave;',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P61_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>30230472364379831
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30233625226379835)
,p_process_sequence=>120
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pending days'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P61_PENDING_LEAVE_DAYS := xxhrms.xxhrms_ss_leave_pk.pending_leave_days_fn(:P61_STAFF_ID_1, :P61_LEAVE_TYPE_CODE,:P61_LEAVE_PERIOD);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>30233625226379835
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95311806558893323)
,p_process_sequence=>130
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HANDOVER NOTE LABEL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :SS_COMPANY_CODE = 63 THEN',
':P61_HANDOVER_LABEL := ''Supporting Document'';',
'else ',
':P61_HANDOVER_LABEL := ''Handover Note'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>95311806558893323
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30231250430379833)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submit row'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_leave_table xxhrms_ss_leave%ROWTYPE;',
' l_filerow apex_application_temp_files%rowtype;',
' v_doc_id number;',
'   ',
'begin',
'     IF  TO_NUMBER(:P61_LEAVE_DAYS) > TO_NUMBER(:P61_PENDING_LEAVE_DAYS) THEN ',
'      RAISE_APPLICATION_ERROR(-20001, ''Leave days should not exceed available leave days'' );',
'    END IF;      ',
'    SELECT XXHRMS.XXHRMS_DOCUMENTS_SEQ.NEXTVAL INTO v_doc_id FROM DUAL;',
'   ',
'   --',
' --  IF (:P61_HANDOVER_NOTE is not null and :P61_HANDOVER_CHK = ''Y'') then',
'     IF ( :P61_HANDOVER_CHK = ''Y'') THEN',
'     Begin',
'       Begin',
'                ',
'           select *',
'           into l_filerow',
'           from apex_application_temp_files',
'           where name = :P61_HANDOVER_NOTE;',
'           ',
'           insert into XXHRMS.XXHRMS_DOCUMENTS (ID, STAFF_ID, filename, mime_Type, BLOB_CONTENT, DOCUMENT_TYPE) ',
'           values (v_doc_id,:P61_staff_id_1,l_filerow.filename, l_filerow.mime_Type, l_filerow.blob_content, ''HANDOVER NOTE'');',
'    ',
'           /* IF (v_leave_table.HANDOVER_ID is null or :P61_HANDOVER_ID is null) Then ',
'                v_doc_id := '''';',
'                v_doc_id       := v_leave_table.HANDOVER_ID;',
'            Else',
'             insert into XXHRMS.XXHRMS_DOCUMENTS (ID, STAFF_ID, filename, mime_Type, BLOB_CONTENT, DOCUMENT_TYPE) ',
'           values (v_doc_id,:P61_staff_id_1,l_filerow.filename, l_filerow.mime_Type, l_filerow.blob_content, ''HANDOVER NOTE'');',
'           End if;*/',
'        End;',
'       Exception when others then',
'             raise_application_error(-20000,''Handover Note is Required!'');',
'     End;',
'    ELSE',
'      --  raise_application_error(-20000,''Handover Note is Required!'');',
'     --  raise_application_error(-20000,''Handover Note is Required!'');',
'     null;',
'    End if;',
'    ------',
'   ',
'    ',
'    ',
'   --Do something with l_filerow',
'  ',
'     v_leave_table.id := :P61_ID;',
'     v_leave_table.STAFF_ID := :AP_STAFF_ID;',
'     v_leave_table.LEAVE_TYPE_NAME := :P61_LEAVE_TYPE_NAME;',
'     v_leave_table.LEAVE_TYPE_CODE := :P61_LEAVE_TYPE_CODE;',
'     v_leave_table.LEAVE_PERIOD2 := :P61_LEAVE_PERIOD;',
'     v_leave_table.START_DATE := to_date(:P61_START_DATE,''yyyy-mm-dd'');',
'     v_leave_table.END_DATE := to_date(:P61_END_DATE,''yyyy-mm-dd'');',
'     v_leave_table.PENDING_LEAVE_DAYS := :P61_PENDING_LEAVE_DAYS;',
'     v_leave_table.REPLACEMENT := :P61_REPLACEMENT;',
'     v_leave_table.CONTACT_ADDRESS := :P61_CONTACT_ADDRESS;',
'     v_leave_table.CONTACT_NUMBER := :P61_CONTACT_NUMBER;',
'     v_leave_table.workflow_status := ''NEW''; --:P61_WORKFLOW_STATUS;',
'     v_leave_table.LEAVE_DAYS := :P61_LEAVE_DAYS;',
'     v_leave_table.LEAVE_ALLOW_REQUEST:= :P61_LEAVE_ALLOW_REQUEST;',
'     v_leave_table.HANDOVER_ID   := v_doc_id;',
'	 v_leave_table.COMPANY_CODE := :SS_COMPANY_CODE;',
'     xxhrms.xxhrms_wrkflw_pkg.ins_record(v_leave_table);',
'',
'        ',
'exception ',
'when no_data_found then',
'rollback;',
'raise_application_error(-20000,''Handover Note is Required!'');',
'When others then',
'rollback;',
' raise_application_error(-20000,sqlerrm);',
' --raise_application_error(-20004,sqlerrm||dbms_utility.format_error_backtrace);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(30212296980379806)
,p_process_success_message=>'Leave Application Successfully Created'
,p_internal_uid=>30231250430379833
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30230854729379832)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert row'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_leave_table xxhrms.xxhrms_ss_leave%ROWTYPE;',
'  l_filerow apex_application_files%rowtype;',
'begin',
'     SELECT XXHRMS.XXHRMS_DOCUMENTS_SEQ.NEXTVAL INTO :P61_HANDOVER_NOTE FROM DUAL;',
'    --',
'    select *',
'    into l_filerow',
'    from apex_application_files',
'    where name = :P61_HANDOVER_NOTE;',
'    ',
'    --Do something with l_filerow',
'    insert into XXHRMS.XXHRMS_DOCUMENTS (ID, STAFF_ID, filename, mime_Type, BLOB_CONTENT, DOCUMENT_TYPE) ',
'    values (:P61_HANDOVER_NOTE,:P61_staff_id_1,l_filerow.filename, l_filerow.mime_Type, l_filerow.blob_content, ''HANDOVER NOTE'');',
'',
'',
'  v_leave_table.LEAVE_TYPE_NAME := :P61_LEAVE_TYPE_NAME;',
'  v_leave_table.LEAVE_TYPE_CODE := :P61_LEAVE_TYPE_CODE;',
'  v_leave_table.START_DATE := to_date(:P61_START_DATE,''yyyy-mm-dd'');',
'  v_leave_table.END_DATE := to_date(:P61_END_DATE,''yyyy-mm-dd'');',
'  v_leave_table.PENDING_LEAVE_DAYS := :P61_PENDING_LEAVE_DAYS;',
'  v_leave_table.REPLACEMENT := :P61_REPLACEMENT;',
'  v_leave_table.CONTACT_ADDRESS := :P61_CONTACT_ADDRESS;',
'  v_leave_table.CONTACT_NUMBER := :P61_CONTACT_NUMBER;',
'  v_leave_table.workflow_status := ''SAVED'';',
'  v_leave_table.id := :P61_ID;',
'  v_leave_table.LEAVE_DAYS := :P61_LEAVE_DAYS;',
'  v_leave_table.LEAVE_PERIOD2 := :P61_LEAVE_PERIOD;',
'  v_leave_table.REQUEST_LEAVE_DAYS := :P61_LEAVE_DAYS;',
'  v_leave_table.REQUEST_START_DATE := to_date(:P61_START_DATE,''yyyy-mm-dd'');',
'  v_leave_table.REQUEST_END_DATE := to_date(:P61_END_DATE,''yyyy-mm-dd'');',
'  v_leave_table.LEAVE_ALLOW_REQUEST:= :P61_LEAVE_ALLOW_REQUEST;',
'  v_leave_table.HANDOVER_ID   := :P61_HANDOVER_NOTE;',
'  xxhrms.xxhrms_wrkflw_pkg.ins_record(v_leave_table);',
'  ',
' exception ',
'   when others then',
'    rollback;',
'    raise_application_error(-20000,sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(30211822588379806)
,p_process_when_type=>'NEVER'
,p_internal_uid=>30230854729379832
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30231678765379834)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'4'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>30231678765379834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30232052945379834)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'  delete xxhrms.XXHRMS_SS_LEAVE',
'  where ID = :P61_ID;',
'  ----',
'  delete  xxhrms.XXHRMS_APPROVAL_TAB',
'  where TRANS_ID = :P61_ID',
'  and TRANS_TYPE = ''LEAVE'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>30232052945379834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32812926590317332)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clearsession'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P61_ID,P61_STAFF_ID,P61_STAFF_NAME,P61_STAFF_ID_1,P61_LEAVE_TYPE_NAME,P61_LEAVE_PERIOD,P61_LEAVE_TYPE_CODE,P61_PENDING_LEAVE_DAYS,P61_START_DATE,P61_END_DATE,P61_LEAVE_DAYS,P61_REPLACEMENT,P61_CONTACT_ADDRESS,P61_CONTACT_NUMBER,P61_WORKFLOW_STATUS,P6'
||'1_HANDOVER_CHK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(30211484552379805)
,p_internal_uid=>32812926590317332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30234095359379836)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch ReplaceMail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
'     v_sndr varchar2(100);',
'     v_subj varchar2(200);',
'     v_clob clob;',
'     cursor cur ',
'     is',
'     select FULL_NAME from xxhrms.xxhrms_master_All where person_id = :P61_REPLACEMENT;',
' Begin',
' open cur;',
' fetch cur into :P61_RELIEVER_NAME;',
' close cur;',
'         select ',
'              EMAIL_FROM,',
'            EMAIL_SUBJECT,',
'           replace ',
'               (replace ',
'                    (replace',
'                         (replace(',
'                            replace',
'                             (replace( ',
'                              replace(EMAIL_BODY,'':NOT_LVEMPNAME'',:NOT_LVEMPNAME),',
'                                     '':NOT_TYPE'',:NOT_TYPE),',
'                                      '':NOT_RELIEVER'',:NOT_RELIEVER),',
'                                     '':NOT_LVALLOWANCE'',:NOT_LVALLOWANCE),',
'                                     '':NOT_LVDAYS'',:NOT_LVDAYS),',
'                                     '':NOT_STARTDATE'',''10/01/1992''),',
'                                     '':NOT_ENDATE'',:NOT_ENDATE',
'              )',
'         into :P61_FROM, :P61_SUBJ, :P61_BODY',
'        from XXHRMS.XXHRMS_EMAIL_TEMPLATE',
'        where auth_type = ''LEAVE'' and upper(NOTIFY_TYPE) like upper(''NewReq%'')',
'        AND COMPANY_CODE = :SS_COMPANY_CODE;',
' ',
'                  exception',
'                    when others then',
'                    raise_application_error(-20001,sqlerrm);',
' End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>30234095359379836
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30232493791379834)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'no validate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P61_VALIDATE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30232493791379834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30232837323379835)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'after save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P61_VALIDATE := ''1'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(30211822588379806)
,p_internal_uid=>30232837323379835
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30233297211379835)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'after submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  :P61_VALIDATE := ''1'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SUBMIT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>30233297211379835
);
wwv_flow_imp.component_end;
end;
/
