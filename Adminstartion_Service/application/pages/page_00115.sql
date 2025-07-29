prompt --application/pages/page_00115
begin
--   Manifest
--     PAGE: 00115
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>115
,p_name=>'Payroll Approval Report'
,p_alias=>'AX1'
,p_step_title=>'Payroll Approval Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17236522992119049)
,p_plug_name=>'Payroll Approval Report'
,p_icon_css_classes=>'fa-scatter-chart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50439115233947109)
,p_plug_name=>'Payroll Approval Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT x.apr_id,x.SUB_ORGANIZATION_CODE, x.SUB_ORGANIZATION_NAME,  x.PAYRUN, value_desc payrun_desc, x.paymonth_code,to_char(to_date(x.paymonth_code,''yyyymm''),''Month YYYY'') Paymonth, initiator, FULL_NAME, ',
'CASE ',
'  WHEN approval_level = 0 THEN ''Submitted'' ',
'  WHEN NVL(processed_flag,''0'') = ''Y'' THEN ''Approved''',
'  --WHEN NVL(processed_flag,''0'') = NULL THEN ''C''',
'  --When approval_status != ''REJECT'' THEN ''Approval in progress''',
'  When approval_status = ''REJECT'' THEN ''Rejected''',
'  When approval_status = ''APPROVE'' THEN ''Approval in progress''',
'  When approval_status = ''APPROVED'' THEN ''Approved''',
'  ELSE ''Rejected''',
'END approval_status, SUM(TAXABLE_EARNING) TAXABLE_EARNING,  SUM(TOTAL_DEDUCTION) TOTAL_DEDUCTION, ',
'  SUM(NETPAY) NETPAY,  SUM(TOTAL_EARNING) TOTAL_EARNING',
'FROM xxpay.xxpay_payroll_approval_list_v x, XXHRMS_LOOKUP_PAY_RUN_V y, XXPAY_ARCHIVE_PAY_PROCESSINGV Z,XXHRMS_aSSIGNMENTS W',
'where x.payrun = value_code',
'and (exists (select 1 from xxhrms.XXHRMS_PAYROLL_APPROVERS y',
'where x.apr_id = y.apr_id',
'             and y.employee_id = :P1_STAFF_ID)',
'OR INITIATOR = :APP_USER)',
'AND x.paymonth_code = :P115_PAYMONTH',
'and x.COMPANY_CODE = :AP_COMPANY_CODE',
'and x.PAYRUN = :P115_PAYRUN',
'and w.staff_id = z.staff_id',
'and :P115_PAYMONTH = z.paymonth_code',
'and z.PAYRUN = :P115_PAYRUN',
'AND x.sub_organization_code = w.sub_organization_code',
'group by x.apr_id,x.SUB_ORGANIZATION_CODE, x.SUB_ORGANIZATION_NAME,  x.PAYRUN, value_desc, x.paymonth_code, initiator, FULL_NAME,approval_level, processed_flag, approval_status'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(50439545239947111)
,p_name=>'Payroll Approval'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:107:P114_APR_ID,P114_PMONTH,P114_PRUN,P114_SORG:#APR_ID#,#PAYMONTH_CODE#,#PAYRUN#,#SUB_ORGANIZATION_CODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'IADEBONA'
,p_internal_uid=>50439545239947111
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17230132114119035)
,p_db_column_name=>'SUB_ORGANIZATION_CODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'&AP_SUBORG_LABEL. Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17230550439119036)
,p_db_column_name=>'SUB_ORGANIZATION_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'&AP_SUBORG_LABEL. Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17230976861119037)
,p_db_column_name=>'PAYRUN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Payrun'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17231334673119037)
,p_db_column_name=>'INITIATOR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Initiator'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17231733119119038)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'&AP_FULLNAME_LABEL.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17232171248119039)
,p_db_column_name=>'APR_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Apr Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17232518137119040)
,p_db_column_name=>'PAYMONTH_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Paymonth Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17232931560119040)
,p_db_column_name=>'PAYMONTH'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Pay Period'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17233367033119041)
,p_db_column_name=>'PAYRUN_DESC'
,p_display_order=>29
,p_column_identifier=>'K'
,p_column_label=>'Payrun'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17233789235119042)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17228593644119032)
,p_db_column_name=>'TAXABLE_EARNING'
,p_display_order=>40
,p_column_identifier=>'U'
,p_column_label=>'Taxable earning'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17228950159119033)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>50
,p_column_identifier=>'V'
,p_column_label=>'Total deduction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17229354134119034)
,p_db_column_name=>'NETPAY'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Netpay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17229729312119034)
,p_db_column_name=>'TOTAL_EARNING'
,p_display_order=>70
,p_column_identifier=>'X'
,p_column_label=>'Total earning'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50443993670947116)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'172341'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAYMONTH:SUB_ORGANIZATION_NAME:PAYRUN_DESC:INITIATOR:FULL_NAME:APPROVAL_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50445494125958440)
,p_plug_name=>'Payroll Approval Result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>5
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17234806283119045)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(50445494125958440)
,p_button_name=>'Go'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Get Report'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17235226187119046)
,p_name=>'P115_PAYMONTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50445494125958440)
,p_prompt=>'Paymonth'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct to_char(to_Date(paymonth_code,''yyyymm''),''Month YYYY'') d, paymonth_code r',
'from xxhrms.xxhrms_payroll_appr_tbl',
'where company_Code = :AP_COMPANY_CODE',
'order by paymonth_Code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Paymonth--'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17235631209119047)
,p_name=>'P115_ORG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50445494125958440)
,p_item_default=>'&AP_COMPANY_CODE.'
,p_source=>'AP_COMPANY_CODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17236081971119048)
,p_name=>'P115_PAYRUN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50445494125958440)
,p_prompt=>'Payrun'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.meaning d, a.lookup_code r',
'from xxhrms.XXHRMS_LOOKUP_VALUES_TAB a, xxhrms.XXHRMS_LOOKUP_TYPES_TAB b',
'where a.lookup_type_id = b.lookup_type_id',
'and b.lookup_code = ''PAY_RUN''',
'and enabled_flag = ''Y''',
'and organization_code = :AP_COMPANY_CODE',
'--select value_desc, value_code',
'--from XXHRMS_LOOKUP_PAY_RUN_V',
'--where value_code in (select payrun from xxhrms.XXHRMS_PAYROLL_APPR_TBL)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select All--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
