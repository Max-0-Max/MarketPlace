prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_name=>'Employee Exit Request'
,p_alias=>'BF1'
,p_step_title=>'Employee Exit Request'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*#btn3 {',
'    height: 30px;',
'    width: 10px;',
'}*/'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15886058153880793)
,p_plug_name=>'Employee Exit Request'
,p_icon_css_classes=>'fa-box-arrow-out-east'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15887665384963103)
,p_plug_name=>'Exit'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15887492118963101)
,p_plug_name=>'SubmitExit'
,p_parent_plug_id=>wwv_flow_imp.id(15887665384963103)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15890375461963130)
,p_name=>'Approval Path'
,p_parent_plug_id=>wwv_flow_imp.id(15887492118963101)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum levels,b.full_name||''[''||a.supervisor||'']'' supervisor',
'from xxhrms.xxhrms_assignments a, xxhrms.xxhrms_people b',
'  where a.company_code= b.company_code',
'  and a.supervisor=b.person_id',
'  and a.person_id=:AP_STAFF_ID',
'  and b.company_code=:AP_COMPANY_CODE',
'  and a.supervisor is not null ',
'  union',
'select rownum levels,b.full_name||''[''||a.supervisor||'']'' supervisor',
'from xxhrms.xxhrms_assignments a, xxhrms.xxhrms_people b',
'where a.person_id=:AP_STAFF_ID',
'and a.supervisor = b.person_id',
'and a.supervisor in (select staff_id from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':'')) where column_value = :AP_COMPANY_CODE )',
'',
' ',
'  ',
' /*select levels,b.full_name||''[''||a.supervisor||'']'' supervisor',
'from xxhrms.xxhrms_approval_path_v a, xxhrms.xxhrms_people b',
'  where a.supervisor is not null ',
'  and a.supervisor=b.person_id',
'  and b.company_code=:AP_COMPANY_CODE',
'order by a.levels',
'*/'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15890444828963131)
,p_query_column_id=>1
,p_column_alias=>'LEVELS'
,p_column_display_sequence=>1
,p_column_heading=>'Levels'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15890532384963132)
,p_query_column_id=>2
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>2
,p_column_heading=>'Supervisor'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18845995187849024)
,p_plug_name=>'Exit  &P62_STATUS.'
,p_parent_plug_id=>wwv_flow_imp.id(15887492118963101)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15890698748963133)
,p_plug_name=>'Resignation  &P62_STATUS.'
,p_parent_plug_id=>wwv_flow_imp.id(18845995187849024)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17708357373920512)
,p_plug_name=>'Attachments'
,p_parent_plug_id=>wwv_flow_imp.id(18845995187849024)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       STAFF_ID,',
'      -- BLOB_CONTENT,',
'       MIME_TYPE,',
'       FILENAME,',
'       FILE_DESCRIPTION,',
'       COMPANY_CODE',
'  from XXHRMS.XXHRMS_EXIT_DOCUMENTS',
'where staff_id = :AP_STAFF_ID',
'and BLOB_CONTENT is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_COUNT NUMBER;',
'BEGIN',
'SELECT COUNT(1) INTO V_COUNT FROM XXADM.XXADM_PROFILE_OPTIONS',
'WHERE  PROFILE_CODE= ''EXIT_ATTACHMENT''',
'AND PROFILE_VAL = ''Y''',
'AND COMPANY_CODE = :AP_COMPANY_CODE',
'AND APPLICATION = ''2000004'';',
'',
'IF V_COUNT > 0 THEN ',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(18843719806849002)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Attachment(s)'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AWAZIRI'
,p_internal_uid=>18843719806849002
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18844111066849006)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18844289254849007)
,p_db_column_name=>'FILENAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18844663079849011)
,p_db_column_name=>'FILE_DESCRIPTION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'File Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18845267970849017)
,p_db_column_name=>'COMPANY_CODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18845572620849020)
,p_db_column_name=>'ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'&nbsp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:XXHRMS_EXIT_DOCUMENTS:BLOB_CONTENT:ID::MIME_TYPE:FILENAME:LAST_UPDATED:CHARACTER_SET:attachment::XXHRMS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18845655009849021)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP:P50_ID,P50_FILE_DESCRIPTION,P50_FILENAME:#ID#,#FILE_DESCRIPTION#,#FILENAME#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NULL'
,p_display_condition=>'P62_REQUEST_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18878979321075437)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'188790'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FILENAME:FILE_DESCRIPTION:ID:STAFF_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15887538848963102)
,p_plug_name=>'Employee Details'
,p_parent_plug_id=>wwv_flow_imp.id(15887665384963103)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15887777263963104)
,p_name=>'Details'
,p_parent_plug_id=>wwv_flow_imp.id(15887538848963102)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_NUMBER',
', FULL_NAME',
', ORIGINAL_DATE_OF_HIRE',
', DATE_OF_BIRTH',
', MAR_STATUS',
', SEX',
', JOB_TITLE',
', DEPARTMENT',
', DEPT_LOC LOCATION',
', SUB_ORGANIZATION',
', GRADE',
', STEP',
', PFA_NAME',
', PIN_NUMBER',
', RESIDENCE_ADDRESS',
', TELEPHONE_NUMBER_1 TELEPHONE',
'from XXHRMS.XXHRMS_MASTER_ALL',
'where person_id=:AP_STAFF_ID',
'and organization_id=:AP_COMPANY_CODE'))
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
 p_id=>wwv_flow_imp.id(15887830959963105)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Number:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15887947442963106)
,p_query_column_id=>2
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Full Name:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888024338963107)
,p_query_column_id=>3
,p_column_alias=>'ORIGINAL_DATE_OF_HIRE'
,p_column_display_sequence=>3
,p_column_heading=>'Date Of Hire:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888152550963108)
,p_query_column_id=>4
,p_column_alias=>'DATE_OF_BIRTH'
,p_column_display_sequence=>4
,p_column_heading=>'Date Of Birth:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888256877963109)
,p_query_column_id=>5
,p_column_alias=>'MAR_STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Marital Status:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888385647963110)
,p_query_column_id=>6
,p_column_alias=>'SEX'
,p_column_display_sequence=>6
,p_column_heading=>'Gender:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888445021963111)
,p_query_column_id=>7
,p_column_alias=>'JOB_TITLE'
,p_column_display_sequence=>7
,p_column_heading=>'Job Title:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888523048963112)
,p_query_column_id=>8
,p_column_alias=>'DEPARTMENT'
,p_column_display_sequence=>8
,p_column_heading=>'Department:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888675569963113)
,p_query_column_id=>9
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>9
,p_column_heading=>'Location:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888747713963114)
,p_query_column_id=>10
,p_column_alias=>'SUB_ORGANIZATION'
,p_column_display_sequence=>10
,p_column_heading=>'Sub Organization:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888818262963115)
,p_query_column_id=>11
,p_column_alias=>'GRADE'
,p_column_display_sequence=>11
,p_column_heading=>'Grade:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15888971206963116)
,p_query_column_id=>12
,p_column_alias=>'STEP'
,p_column_display_sequence=>12
,p_column_heading=>'Step:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15889201476963119)
,p_query_column_id=>13
,p_column_alias=>'PFA_NAME'
,p_column_display_sequence=>13
,p_column_heading=>'Pfa Name:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15889312175963120)
,p_query_column_id=>14
,p_column_alias=>'PIN_NUMBER'
,p_column_display_sequence=>14
,p_column_heading=>'Pin Number:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15889042061963117)
,p_query_column_id=>15
,p_column_alias=>'RESIDENCE_ADDRESS'
,p_column_display_sequence=>15
,p_column_heading=>'Residence Address:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15889135873963118)
,p_query_column_id=>16
,p_column_alias=>'TELEPHONE'
,p_column_display_sequence=>16
,p_column_heading=>'Telephone:'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15891415388963141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18845995187849024)
,p_button_name=>'Close'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15890856499963135)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18845995187849024)
,p_button_name=>'cancel_request'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Request'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from XXHRMS.XXHRMS_EXIT_REQUESTS',
'where EMPLOYEE_ID = :AP_STAFF_ID',
'and EXIT_INTERVIEW IN (''N'',''A'')',
'AND WF_STATUS != ''C''',
'and COMPANY_CODE  = :AP_COMPANY_CODE',
'AND INS_PATH = ''E''',
'AND :P62_REQUEST_ID IS NOT NULL'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17414320887090323)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18845995187849024)
,p_button_name=>'Clearance'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Clearance'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:RP,47:P47_STAFF_ID:&AP_STAFF_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from XXHRMS.XXHRMS_EXIT_REQUESTS',
'where EMPLOYEE_ID = :AP_STAFF_ID',
'and EXIT_INTERVIEW = ''Y''',
'and WF_STATUS = ''H''',
'and EMPLOYEE_ID in (select EXITING_STAFF from XXHRMS.XXHRMS_DELIVE_EXIT)',
'and COMPANY_CODE  = :AP_COMPANY_CODE'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16830348932108517)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18845995187849024)
,p_button_name=>'Exit_interview'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Exit Interview'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,46::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_PCOUNT NUMBER;',
'V_RCOUNT NUMBER;',
'BEGIN',
'SELECT COUNT(1) INTO V_PCOUNT FROM XXADM.XXADM_PROFILE_OPTIONS',
'WHERE  PROFILE_CODE= ''EMP_FILL_INT''',
'AND PROFILE_VAL = ''Y''',
'AND COMPANY_CODE = :AP_COMPANY_CODE',
'AND APPLICATION = ''2000004'';',
'',
'select COUNT(1) INTO V_RCOUNT',
'from XXHRMS.XXHRMS_EXIT_REQUESTS',
'where EMPLOYEE_ID = :AP_STAFF_ID',
'and WF_STATUS = ''K''',
'and COMPANY_CODE  = :AP_COMPANY_CODE;',
'',
'IF V_PCOUNT > 0 AND V_RCOUNT > 0 THEN ',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15889552688963122)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18845995187849024)
,p_button_name=>'submit_exit'
,p_button_static_id=>'btn3'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Request'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_PROFILE varchar(1);',
'v_count number;',
'BEGIN',
'SELECT PROFILE_VAL INTO V_PROFILE FROM XXADM.XXADM_PROFILE_OPTIONS',
'WHERE  PROFILE_CODE= ''EXIT_ATTACHMENT''',
'AND COMPANY_CODE = :AP_COMPANY_CODE',
'AND APPLICATION = ''2000004'';',
'',
'select count(1) into v_count',
'  from XXHRMS.XXHRMS_EXIT_DOCUMENTS',
'where staff_id = :AP_STAFF_ID',
'and BLOB_CONTENT is not null;',
'',
'IF :P62_REQUEST_ID IS NULL THEN',
'    if V_PROFILE = ''Y'' AND v_count > 0 THEN',
'    RETURN TRUE;',
'    ELSIF V_PROFILE = ''N'' AND v_count = 0 THEN',
'    RETURN TRUE;',
'    ELSE',
'    RETURN FALSE;',
'    END IF;',
'ELSE ',
'RETURN FALSE;',
'',
'END IF;',
'',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-arrow-circle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17707703485920506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17708357373920512)
,p_button_name=>'P62_ATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP:P50_STAFF_ID,P50_COMPANY_CODE:&AP_STAFF_ID.,&AP_COMPANY_CODE.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15889829594963125)
,p_branch_name=>'Bk_22'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1,62::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(15889552688963122)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15889458882963121)
,p_name=>'P62_COMMENTS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15890698748963133)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cHeight=>4
,p_read_only_when=>'P62_REQUEST_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15890710142963134)
,p_name=>'P62_EFFECTIVE_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15890698748963133)
,p_item_default=>'to_char(sysdate, ''DD-MON-RR'');'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Effective Date:'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_read_only_when=>'P62_REQUEST_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15890948084963136)
,p_name=>'P62_REQUEST_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15890698748963133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15891016438963137)
,p_name=>'P62_WF_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15890698748963133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15891253006963139)
,p_name=>'P62_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15890698748963133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18845703496849022)
,p_name=>'refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(17708357373920512)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19829123542118813)
,p_event_id=>wwv_flow_imp.id(18845703496849022)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15889976545963126)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save_request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number;',
'v_msg varchar2(4000);',
'v_request_id number;',
'begin',
'',
'    select count(1)',
'    into v_cnt',
'    from xxhrms.xxhrms_assignments',
'    where company_code=:AP_COMPANY_CODE',
'    and person_id=:AP_STAFF_ID',
'    and supervisor is not null',
'	  union',
'	select count(1)',
'	from xxhrms.xxhrms_assignments',
'	where person_id=:AP_STAFF_ID',
'	and supervisor in (select staff_id from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':'')) where column_value = :AP_COMPANY_CODE );',
'    ',
'    if v_cnt =0 then',
'         raise_application_error(-20111,''Approval Path Not Found'');',
'    end if;',
'    ',
'    select count(1)',
'    into v_cnt',
'    from XXHRMS.XXHRMS_EXIT_REQUESTS',
'    where WF_STATUS not in(''C'',''R'')',
'    and EMPLOYEE_ID=:AP_STAFF_ID',
'    and company_code=:AP_COMPANY_CODE;',
'    ',
'    if v_cnt >0 then',
'         raise_application_error(-20111,''Incomplete/Approved Exit Request Found. Please cancel previous request to proceed..'');',
'    end if;',
'    ',
'    select XXHRMS.XXHRMS_EXIT_REQUESTS_SEQ.nextval',
'    into v_request_id',
'    from dual;',
'    insert into XXHRMS.XXHRMS_EXIT_REQUESTS(REQUEST_ID,EMPLOYEE_ID,EFFECTIVE_DATE,COMMENTS,WF_STATUS,COMPANY_CODE,INS_PATH)',
'    values(v_request_id,:AP_STAFF_ID,:P62_EFFECTIVE_DATE,:P62_COMMENTS,''P'',:AP_COMPANY_CODE,''E'');',
'    ',
'    ----INSERT INTO xxhrms.XXHRMS_APPROVAL_TAB',
'   /*  delete from xxhrms.XXHRMS_APPROVAL_TAB',
'       where TRANS_ID=v_request_id',
'       and TRANS_TYPE=''TERMINATION''; */',
'       ',
'     for i in (select rownum levels,a.supervisor,b.company_code',
'            from xxhrms.xxhrms_assignments a, xxhrms.xxhrms_people b',
'              where a.person_id=:AP_STAFF_ID',
'               and a.company_code=:AP_COMPANY_CODE',
'			   and a.supervisor = b.person_id',
'              and a.supervisor is not null',
'			  union',
'			  select rownum levels,a.supervisor,b.company_code',
'			  from xxhrms.xxhrms_assignments a, xxhrms.xxhrms_people b',
'			  where a.person_id=:AP_STAFF_ID',
'			  and a.supervisor = b.person_id',
'			  and a.supervisor in (select staff_id from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':'')) where column_value = :AP_COMPANY_CODE ))',
'     loop',
'          INSERT INTO xxhrms.XXHRMS_APPROVAL_TAB (TRANS_TYPE,TRANS_ID,APR_LVL,APR_ID,STATUS)',
'          VALUES (''TERMINATION'',v_request_id,i.levels,i.supervisor,''PENDING'');',
'          ',
'          --send mail to supervisor',
'           xxhrms.XXHRMS_NOTIFICATION_ALRT.Supervisor_Request_Exit_Notif(:AP_STAFF_ID, i.supervisor, i.company_code);',
'           ',
'           --send mail to employee',
'           xxhrms.XXHRMS_NOTIFICATION_ALRT.Employee_Exit_Request_Notif(:AP_STAFF_ID, i.supervisor, i.company_code);',
'          ',
'     end loop;',
'    commit;',
'    ',
'exception ',
'  when others then',
'      rollback;',
'      v_msg:=sqlerrm;',
'      raise_application_error(-20111,''Submit Exit Error: ''|| v_msg);',
'      ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15889552688963122)
,p_process_success_message=>'Exit Request Successfully Submitted for Approval'
,p_internal_uid=>15889976545963126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15891329155963140)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cancel_request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_msg varchar2(1000);',
'begin',
'',
'    --send Notification',
'    update XXHRMS.XXHRMS_EXIT_REQUESTS',
'    set WF_STATUS=''C''',
'    where REQUEST_ID=:P62_REQUEST_ID',
'    and EMPLOYEE_ID=:AP_STAFF_ID',
'    AND INS_PATH = ''E''',
'    and company_code=:AP_COMPANY_CODE',
'    and WF_STATUS in (''P'',''S'',''K'');',
'    ',
'    --',
'   /* delete from xxhrms.XXHRMS_APPROVAL_TAB',
'       where TRANS_ID=:P62_REQUEST_ID',
'       and TRANS_TYPE=''TERMINATION'';*/',
'       ',
'    update xxhrms.XXHRMS_APPROVAL_TAB',
'    set status = ''CANCELLED''',
'       where TRANS_ID=:P62_REQUEST_ID',
'       and TRANS_TYPE=''TERMINATION'';',
'       ',
'    --send Notification',
'    --delete attachments',
'    ',
'    delete from XXHRMS.XXHRMS_EXIT_DOCUMENTS',
'    where staff_id = :AP_STAFF_ID;',
'    ',
'    DELETE FROM XXHRMS.XXHRMS_EXIT_INTERVIEW_ASSIGN',
'    WHERE STAFF_ID = :AP_STAFF_ID;',
'',
'    ',
'    commit;',
'    ',
'exception ',
'  when others then',
'      rollback;',
'      v_msg:=sqlerrm;',
'      raise_application_error(-20111,''Submit Exit Error: ''|| v_msg);',
'      ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15890856499963135)
,p_process_success_message=>'Exit Request Successfully Canceled'
,p_internal_uid=>15891329155963140
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15890227821963129)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'    :P62_REQUEST_ID:=null;',
'    :P62_EFFECTIVE_DATE:=null;',
'    :P62_COMMENTS:=null;',
'    :P62_WF_STATUS:=null;',
'    :P62_STATUS:=null;',
'    ',
'    APEX_UTIL.set_session_state(',
'            p_name  => ''AP_AUTH_STAFF''',
'          , p_value => :AP_STAFF_ID);',
'    APEX_UTIL.set_session_state(',
'            p_name  => ''AP_AUTH_TYPE''',
'          , p_value => ''TERMINATION'');',
'',
'    begin',
'        select REQUEST_ID,EFFECTIVE_DATE,COMMENTS,WF_STATUS',
'        , decode(WF_STATUS,''P'', '': Approval In-Progress'',''S'', '': Request Approved'','' '')',
'        into :P62_REQUEST_ID,:P62_EFFECTIVE_DATE,:P62_COMMENTS,:P62_WF_STATUS, :P62_STATUS',
'        from XXHRMS.XXHRMS_EXIT_REQUESTS',
'        where WF_STATUS not in (''C'',''R'')',
'        and EMPLOYEE_ID=:AP_STAFF_ID',
'        and COMPANY_CODE=:AP_COMPANY_CODE',
'        and ins_path = ''E'';',
'        ',
'    exception ',
'      when others then',
'      null;',
'    end;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15890227821963129
);
wwv_flow_imp.component_end;
end;
/
