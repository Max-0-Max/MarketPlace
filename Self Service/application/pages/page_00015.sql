prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Loan Requests'
,p_step_title=>'Loan Requests'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(72349759287344940)
,p_name=>'Loan Repayment Schedule'
,p_template=>wwv_flow_imp.id(2507973594224067)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from TABLE(xxhrms.xxhrms_loans_pkg.loan_appl_sched(:P15_ID))'
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
 p_id=>wwv_flow_imp.id(26582805653789433)
,p_query_column_id=>1
,p_column_alias=>'LOAN_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Loan Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26583252307789435)
,p_query_column_id=>2
,p_column_alias=>'DEDUCT_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Deduction Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26583600016789436)
,p_query_column_id=>3
,p_column_alias=>'DEDUCT_AMOUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Amount'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26584056742789437)
,p_query_column_id=>4
,p_column_alias=>'DEDUCT_INTEREST'
,p_column_display_sequence=>4
,p_column_heading=>'Interest'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26584412044789437)
,p_query_column_id=>5
,p_column_alias=>'DEDUCT_NET_AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Net Amount'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26584804527789438)
,p_query_column_id=>6
,p_column_alias=>'NET_TO_DATE_AMOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Net To Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26585216683789439)
,p_query_column_id=>7
,p_column_alias=>'OUT_BALANCE_AMOUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Outstanding Balance'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26585670083789440)
,p_query_column_id=>8
,p_column_alias=>'DEDUCT_TO_DATE_AMOUNT'
,p_column_display_sequence=>8
,p_column_heading=>'Deduction To Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26586051779789441)
,p_query_column_id=>9
,p_column_alias=>'REPAYMENT_AMOUNT'
,p_column_display_sequence=>9
,p_column_heading=>'Repayment Amount'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95367686402770012)
,p_plug_name=>'Loan Request Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95377336706770022)
,p_plug_name=>'List of Loan Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT loan_id, staff_id, NAME, loan_name, request_amount, request_date, date_repayment, duration_repayment,',
'  max_amt, interest_rate, grace_period, rate_of_basic, repayment_period, ',
'  DECODE(UPPER(workflow_status),''PENDING'',DECODE(us_auth-up_auth,''0'',''PARTIALLY APPROVED'',',
'  DECODE(us_auth-up_auth/ABS(us_auth-up_auth),''-1'',''PARTIALLY APPROVED'',''PENDING'')),workflow_status) status',
'  FROM',
'(SELECT x.ID loan_id, x.STAFF_ID, z.NAME, y.loan_name, x.REQUEST_AMOUNT, x.REQUEST_DATE, x.DATE_REPAYMENT, aa.auth_group,',
'   x.duration_repayment,  y.max_amt, y.interest_rate, y.grace_period, y.rate_of_basic, y.repayment_period, x.workflow_status,',
'   NVL(w.up_auth,''0'') up_auth, NVL(us_auth,''0'') us_auth',
'        FROM xxhrms.xxhrms_ss_loans x, xxhrms.xxhrms_loans_setup y, xxadm.xxadm_password z, xxhrms.xxhrms_staff_auth aa, ',
'        (SELECT  n.auth_level up_auth, o.logname',
' FROM xxhrms.xxhrms_authourisation n, xxadm.xxadm_password o               ',
' WHERE n.auth_type = ''LOAN''',
'   AND n.staff_id = o.staff_id) w,',
'        (SELECT  j.auth_level us_auth, j.auth_group us_auth_group',
' FROM xxhrms.xxhrms_authourisation j, xxadm.xxadm_password i               ',
' WHERE j.auth_type = ''LOAN''',
'   AND j.staff_id = i.staff_id',
'   AND i.logname = :AP_USERNAME) v',
'        WHERE x.LOAN_TYPE_CODE = y.LOAN_CODE',
'          AND x.staff_id = z.staff_id',
'          AND x.staff_id = aa.staff_id',
'          AND v.us_auth_group = aa.auth_group',
'          AND w.logname(+)=x.updated_by',
'          AND workflow_status IS NOT NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(95377687293770023)
,p_name=>'List of Loan Requests'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:174:&SESSION.:D:&DEBUG.:174:P174_ID:#LOAN_ID#'
,p_detail_link_text=>'Details'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'IADEBONA'
,p_internal_uid=>95377687293770023
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26576624818789395)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Staff Id'
,p_column_linktext=>'#STAFF_ID#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'STAFF_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26576917523789403)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Staff Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26577321523789404)
,p_db_column_name=>'LOAN_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Loan Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26577798829789405)
,p_db_column_name=>'REQUEST_AMOUNT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Amount Requested'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26578119141789406)
,p_db_column_name=>'REQUEST_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Request Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26578564269789407)
,p_db_column_name=>'DATE_REPAYMENT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Repayment Start'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_REPAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26578901296789408)
,p_db_column_name=>'DURATION_REPAYMENT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'No of Payments'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DURATION_REPAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26579340571789409)
,p_db_column_name=>'MAX_AMT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Max Loan Amt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'MAX_AMT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26579745885789409)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990D00'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26580104099789411)
,p_db_column_name=>'GRACE_PERIOD'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Grace Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'GRACE_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26580568411789412)
,p_db_column_name=>'RATE_OF_BASIC'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Rate Of Basic'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RATE_OF_BASIC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26580949181789412)
,p_db_column_name=>'REPAYMENT_PERIOD'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Max Repayment Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'REPAYMENT_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26581376910789413)
,p_db_column_name=>'LOAN_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Loan Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26581780938789414)
,p_db_column_name=>'STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(95383359415770032)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'265821'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'NAME:LOAN_NAME:INTEREST_RATE:REQUEST_AMOUNT:REQUEST_DATE:DATE_REPAYMENT:DURATION_REPAYMENT:STATUS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26586718592789443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26587109208789444)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_button_name=>'REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>':P15_WORKFLOW_STATUS NOT IN (''REJECTED'',''APPROVED'') AND NVL(:P15_UPDATED_BY,''~'') <> :P1_STAFF_ID AND :P15_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26587516711789445)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P15_AUTH_LEVEL > 0 AND :P15_AUTH_LEVEL = :P15_MAX_LEVEL ',
'AND :P15_WORKFLOW_STATUS IN (''NEW'', ''PENDING'') AND :P15_ID IS NOT NULL',
'AND NVL(:P15_APR_CNT,0)  = :P15_AUTH_LEVEL -1'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26587946845789446)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_button_name=>'forward'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Forward'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P15_AUTH_LEVEL > 0 AND :P15_AUTH_LEVEL < :P15_MAX_LEVEL ',
'AND :P15_WORKFLOW_STATUS IN (''NEW'', ''PENDING'') AND :P15_ID IS NOT NULL',
'AND NVL(:P15_APR_CNT,0)  = :P15_AUTH_LEVEL -1'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26598355923789540)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26588318863789447)
,p_name=>'P15_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Loan ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26588742999789450)
,p_name=>'P15_STAFF_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Staff ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26589159631789451)
,p_name=>'P15_STAFF_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Employee Name :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_tag_attributes=>'style="border:0px;font-weight:bold;", readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26589585064789456)
,p_name=>'P15_LOAN_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Loan Type :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26589959956789459)
,p_name=>'P15_INTEREST_RATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Interest Rate :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26590311054789461)
,p_name=>'P15_REPAYMENT_PERIOD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Max No. of Payments'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26590706588789462)
,p_name=>'P15_REQUEST_AMOUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Request Amount :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26591199390789464)
,p_name=>'P15_DURATION_REPAYMENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'No. of Repayments :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26591556028789466)
,p_name=>'P15_MAX_AMT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Max. Loan Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26591983567789467)
,p_name=>'P15_REQUEST_DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Request Date :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26592373226789469)
,p_name=>'P15_DATE_REPAYMENT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Repayment Start Date :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26592777728789470)
,p_name=>'P15_LOAN_REASON'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Reason for Loan :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26593128217789472)
,p_name=>'P15_WORKFLOW_STATUS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Status :'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26593518934789474)
,p_name=>'P15_CREATED_BY'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26593911067789475)
,p_name=>'P15_UPDATED_BY'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26594303277789477)
,p_name=>'P15_PRV'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26594796315789478)
,p_name=>'P15_AUTH_LEVEL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26595151156789480)
,p_name=>'P15_MAX_LEVEL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26595510402789482)
,p_name=>'P15_APR_CNT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26595958766789483)
,p_name=>'P15_COMMENTS'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(95367686402770012)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26597031960789536)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process approval'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_table xxhrms.xxhrms_ss_loans%ROWTYPE;',
'  CURSOR c_tbl is ',
'  select * ',
'    from xxhrms.xxhrms_ss_loans',
'   WHERE id =  :P15_ID;',
'begin',
'  open c_tbl;',
'  fetch c_tbl into v_table;',
'  close c_tbl;',
'  v_table.workflow_status := ''APPROVED'';',
'  xxhrms.xxhrms_loans_pkg.loan_appl_prc(v_table,:P15_COMMENTS);',
'  COMMIT;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26587516711789445)
,p_process_success_message=>'Record Approved'
,p_internal_uid=>26597031960789536
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26597812747789539)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'forward process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_table xxhrms.xxhrms_ss_loans%ROWTYPE;',
'  CURSOR c_tbl is ',
'  select * ',
'    from xxhrms.xxhrms_ss_loans',
'   WHERE id =  :P15_ID;',
'begin',
'  open c_tbl;',
'  fetch c_tbl into v_table;',
'  close c_tbl;',
'  v_table.workflow_status := ''PENDING'';',
'  xxhrms.xxhrms_loans_pkg.loan_appl_prc(v_table);',
'  COMMIT;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26587946845789446)
,p_process_success_message=>'Record Approved'
,p_internal_uid=>26597812747789539
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26596379648789533)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reject record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_table xxhrms.xxhrms_ss_loans%ROWTYPE;',
'  CURSOR c_tbl is ',
'  select * ',
'    from xxhrms.xxhrms_ss_loans',
'   WHERE id =  :P15_ID;',
'begin',
'  open c_tbl;',
'  fetch c_tbl into v_table;',
'  close c_tbl;',
'  v_table.workflow_status := ''REJECTED'';',
'  xxhrms.xxhrms_loans_pkg.loan_appl_prc(v_table);',
'  COMMIT;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26587109208789444)
,p_process_success_message=>'Record Approved'
,p_internal_uid=>26596379648789533
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26596674339789534)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR C_REC IS   SELECT x.staff_id, z.full_NAME, y.loan_name, TRIM(TO_CHAR(x.request_amount,''999G999G999G999G999G990D00'')), TO_CHAR(x.request_date,''DD-MON-YYYY''), ',
'         TO_CHAR(x.date_repayment,''DD-MON-YYYY''), x.duration_repayment,  TRIM(TO_CHAR(y.max_amt,''999G999G999G999G999G990D00'')), to_char(y.interest_rate,''99D00'')||''%'', ',
'         y.repayment_period, x.loan_reason, x.created_by, x.updated_by,NVL(WORKFLOW_STATUS,''SAVED''), NVL(AUTH_LEVEL,0)',
'    FROM xxhrms.xxhrms_ss_loans x, xxhrms.xxhrms_loans_setup y, xxhrms.xxhrms_people z',
'    WHERE x.loan_type_code = y.loan_code',
'      AND x.staff_id = z.person_id',
'      AND x.id = :P15_ID;',
'BEGIN',
'  OPEN C_REC;',
'  FETCH C_REC INTO :p15_staff_id,:p15_staff_name,:p15_loan_type,:p15_request_amount, ',
'         :p15_request_date, :p15_date_repayment, :P15_DURATION_REPAYMENT, ',
'         :p15_max_amt, :p15_interest_rate, :p15_repayment_period, :p15_loan_reason, :p15_created_by, ',
'         :p15_updated_by, :p15_WORKFLOW_STATUS, :P15_APR_CNT;',
'  CLOSE C_REC;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'D'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>26596674339789534
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26597459155789537)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_privilege'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'--',
'CURSOR c_auth IS',
'SELECT auth_level',
'  FROM xxhrms.xxhrms_authourisation xx, xxhrms.xxhrms_staff_auth yy',
' WHERE xx.authorisation_type = ''LOAN''',
'   AND xx.auth_group = yy.auth_group',
'   AND xx.staff_id = :AP_STAFF_ID',
'   AND yy.staff_id = :P15_STAFF_ID;',
'--',
'CURSOR c_max IS',
'SELECT MAX(auth_level)',
'  FROM xxhrms.xxhrms_authourisation xx, xxhrms.xxhrms_staff_auth yy',
' WHERE xx.authorisation_type = ''LOAN''',
'   AND xx.auth_group = yy.auth_group',
'   AND yy.staff_id = :P15_STAFF_ID;',
'begin',
'  OPEN c_AUTH;',
'  FETCH c_auth INTO :P15_AUTH_LEVEL;',
'  CLOSE c_auth;',
'  --',
'  OPEN c_max;',
'  FETCH c_max INTO :P15_MAX_LEVEL;',
'  CLOSE c_max;',
'  --',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'D'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>26597459155789537
);
wwv_flow_imp.component_end;
end;
/
