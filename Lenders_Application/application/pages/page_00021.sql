prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>'Loan Application Report'
,p_alias=>'LOAN-APPLICATION-REPORT'
,p_step_title=>'Loan Application Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77652369828676674)
,p_plug_name=>'Loan Application Report'
,p_icon_css_classes=>'fa-angle-double-right'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(80638507558411068)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77653000500676677)
,p_plug_name=>'Loan Application Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
' B.FULL_NAME,',
' A.LOAN_AMOUNT,',
' A.LOAN_STATUS,',
' X.PRODUCT_NAME,',
' A.CREATION_DATE,',
' A.START_DATE,',
' A.END_DATE,',
' T.LOAN_TYPE',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS A , XXHRMS.XXHRMS_PEOPLE B , XXMRKT.XXMRKT_PRODUCT_LIST X , XXMRKT.XXMRKT_LOAN_TYPES T',
'WHERE A.COMPANY_ID= :AP_COMPANY_ID',
'AND A.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.STAFF_ID = B.PERSON_ID',
'and A.product_id = x.product_id',
'AND T.LOAN_TYPE_ID = X.PRODUCT_TYPE',
'AND A.STAFF_ID = NVL(:P21_EMPLOYEE,A.STAFF_ID)',
'AND A.LOAN_STATUS = NVL(:P21_STATUS,A.LOAN_STATUS)',
'AND (',
'    (:P21_START_DATE IS NULL OR TRUNC(A.START_DATE) >= TRUNC(TO_DATE(:P21_START_DATE, ''MM/DD/YYYY''))) AND',
'    (:P21_END_DATE   IS NULL OR TRUNC(A.END_DATE)   <= TRUNC(TO_DATE(:P21_END_DATE, ''MM/DD/YYYY'')))',
')',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P21_EMPLOYEE,P21_STATUS,P21_START_DATE,P21_END_DATE'
,p_prn_page_header=>'Loan Application Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(77653180578676677)
,p_name=>'Loan Application Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_download_filename=>'Loan Application Report'
,p_enable_mail_download=>'Y'
,p_owner=>'DADEGBITE'
,p_internal_uid=>77653180578676677
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76627349395284316)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>10
,p_column_identifier=>'S'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76627486689284317)
,p_db_column_name=>'LOAN_TYPE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Loan Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76627598125284318)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76627827865284321)
,p_db_column_name=>'LOAN_STATUS'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Loan Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80237948825938802)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Loan Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80238327201938806)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84279468136879304)
,p_db_column_name=>'START_DATE'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84279588524879305)
,p_db_column_name=>'END_DATE'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77675710028778048)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'776758'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:LOAN_TYPE:PRODUCT_NAME:LOAN_AMOUNT:LOAN_STATUS:START_DATE:END_DATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76627275267284315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77653000500676677)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76626836716284311)
,p_name=>'P21_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77653000500676677)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76626995147284312)
,p_name=>'P21_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77653000500676677)
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
 p_id=>wwv_flow_imp.id(76627075771284313)
,p_name=>'P21_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77653000500676677)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:INITIATED;INITIATED,APPROVAL IN PROGRESS;APPROVAL IN PROGRESS,DISBURSED;DISBURSED,DENIED;DENIED'
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
 p_id=>wwv_flow_imp.id(76627105740284314)
,p_name=>'P21_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77653000500676677)
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
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
wwv_flow_imp.component_end;
end;
/
