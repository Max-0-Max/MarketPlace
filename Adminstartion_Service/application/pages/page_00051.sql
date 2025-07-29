prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_name=>'Loan Rejection Report'
,p_alias=>'LOAN-REJECTION-REPORT'
,p_step_title=>'Loan Rejection Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80242622498938849)
,p_plug_name=>'Rejected Loan Report'
,p_icon_css_classes=>'fa-times-square'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161910078857512110)
,p_plug_name=>'Loan Rejection Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
' B.FULL_NAME,',
' P.PRODUCT_NAME,',
' A.LOAN_AMOUNT,',
' A.LOAN_STATUS,',
' T.LOAN_TYPE,',
' C.COMPANY_NAME',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS A , XXHRMS.XXHRMS_PEOPLE B , XXMRKT.XXMRKT_PRODUCT_LIST P , XXMRKT.XXMRKT_LOAN_TYPES T , XXMRKT.XXMRKT_COMPANY_LIST C',
'WHERE-- A.COMPANY_ID= :AP_COMPANY_ID AND',
' A.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.STAFF_ID = B.PERSON_ID',
'AND A.PRODUCT_ID=P.PRODUCT_ID',
'AND C.COMPANY_ID=A.COMPANY_ID',
'AND A.LOAN_STATUS =''DENIED''',
'AND T.LOAN_TYPE_ID=P.PRODUCT_TYPE',
'--AND C.STATUS =''DISBURSED''',
'AND B.PERSON_ID = NVL(:P51_EMPLOYEE,B.PERSON_ID)',
'AND A.LOAN_STATUS = NVL(:P51_STATUS,A.LOAN_STATUS)',
'AND (',
'    (:P51_START_DATE IS NULL OR TRUNC(A.START_DATE) >= TO_DATE(:P51_START_DATE)) AND',
'    (:P51_END_DATE   IS NULL OR TRUNC(A.END_DATE)   <= TO_DATE(:P51_END_DATE))',
')',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Loan Rejection Report'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(161910217126512110)
,p_name=>'Loan Rejection Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DADEGBITE'
,p_internal_uid=>161910217126512110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161964901582536855)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>67
,p_column_identifier=>'W'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164454220078408815)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>87
,p_column_identifier=>'Y'
,p_column_label=>'Loan Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164454935733408822)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>97
,p_column_identifier=>'Z'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164455048776408823)
,p_db_column_name=>'LOAN_STATUS'
,p_display_order=>107
,p_column_identifier=>'AA'
,p_column_label=>'Loan Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164455091178408824)
,p_db_column_name=>'LOAN_TYPE'
,p_display_order=>117
,p_column_identifier=>'AB'
,p_column_label=>'Loan Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84280208751879312)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>127
,p_column_identifier=>'AC'
,p_column_label=>'Company Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(163616012237126992)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'793997'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:COMPANY_NAME:LOAN_TYPE:PRODUCT_NAME:LOAN_AMOUNT:LOAN_STATUS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(84219447083470021)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(161910078857512110)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4072362960822175091)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160848472465754350)
,p_name=>'P51_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(161910078857512110)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160848644118754351)
,p_name=>'P51_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(161910078857512110)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160848733739754352)
,p_name=>'P51_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(161910078857512110)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DENIED;DENIED'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160848783351754353)
,p_name=>'P51_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161910078857512110)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME, PERSON_ID',
'FROM XXHRMS.XXHRMS_PEOPLE p',
'WHERE EXISTS(',
'    SELECT 1 ',
'    FROM XXMRKT.XXMRKT_APPLIED_LOANS ',
'    WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'    --AND COMPANY_ID = :AP_COMPANY_ID',
'    AND p.PERSON_ID=STAFF_ID',
')',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
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
