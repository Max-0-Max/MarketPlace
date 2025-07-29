prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Aproved Loan Report'
,p_alias=>'LOAN-APPROVAL-REPORT'
,p_step_title=>'Loan Approval Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77682334291030569)
,p_plug_name=>'Approved Loan Report'
,p_icon_css_classes=>'fa-check-square'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(80647941796443959)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77683053962030571)
,p_plug_name=>'Approved Loan Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ',
' B.FULL_NAME,',
' P.PRODUCT_NAME,',
' A.LOAN_AMOUNT,',
' A.LOAN_STATUS,',
' T.LOAN_TYPE,',
' A.LOAN_ID',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS A , XXHRMS.XXHRMS_PEOPLE B , XXMRKT.XXMRKT_PRODUCT_LIST P , XXMRKT.XXMRKT_LOAN_TYPES T',
'WHERE A.COMPANY_ID= :AP_COMPANY_ID',
'AND A.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.STAFF_ID = B.PERSON_ID',
'AND A.PRODUCT_ID=P.PRODUCT_ID',
'AND UPPER(A.LOAN_STATUS) IN(''APPROVED'' ,''DISBURSED'')',
'AND T.LOAN_TYPE_ID=P.PRODUCT_TYPE',
'--AND C.STATUS =''DISBURSED''',
'AND B.PERSON_ID = NVL(:P23_EMPLOYEE,B.PERSON_ID)',
'AND A.LOAN_STATUS = NVL(:P23_STATUS,A.LOAN_STATUS)',
'AND (',
'    (:P23_START_DATE IS NULL OR TRUNC(A.START_DATE) >= TRUNC(TO_DATE(:P23_START_DATE, ''MM/DD/YYYY''))) AND',
'    (:P23_END_DATE   IS NULL OR TRUNC(A.END_DATE)   <= TRUNC(TO_DATE(:P23_END_DATE, ''MM/DD/YYYY'')))',
')',
'    ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Loan Approval Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(77683138360030571)
,p_name=>'Loan Approval Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_download_filename=>'Approved Loan Report'
,p_enable_mail_download=>'Y'
,p_owner=>'DADEGBITE'
,p_internal_uid=>77683138360030571
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77748498031066840)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>87
,p_column_identifier=>'Y'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77749457901066850)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>97
,p_column_identifier=>'Z'
,p_column_label=>'Loan Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80238825066938811)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>107
,p_column_identifier=>'AA'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80238951257938812)
,p_db_column_name=>'LOAN_STATUS'
,p_display_order=>117
,p_column_identifier=>'AB'
,p_column_label=>'Loan Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80239061206938813)
,p_db_column_name=>'LOAN_TYPE'
,p_display_order=>127
,p_column_identifier=>'AC'
,p_column_label=>'Loan Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84279759351879307)
,p_db_column_name=>'LOAN_ID'
,p_display_order=>137
,p_column_identifier=>'AD'
,p_column_label=>'Loan Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77760202068192417)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'777603'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:LOAN_TYPE:PRODUCT_NAME:LOAN_AMOUNT:LOAN_STATUS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76628535690284328)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77683053962030571)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76628167185284324)
,p_name=>'P23_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77683053962030571)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME, PERSON_ID',
'FROM XXHRMS.XXHRMS_PEOPLE p',
'WHERE EXISTS(',
'    SELECT 1 ',
'    FROM XXMRKT.XXMRKT_APPLIED_LOANS ',
'    WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'    AND COMPANY_ID = :AP_COMPANY_ID',
'    AND p.PERSON_ID=STAFF_ID',
')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76628266388284325)
,p_name=>'P23_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77683053962030571)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:APPROVED;APPROVED,DISBURSED;DISBURSED'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76628339132284326)
,p_name=>'P23_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77683053962030571)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76628420491284327)
,p_name=>'P23_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77683053962030571)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
