prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_name=>'Loan Status Report'
,p_alias=>'LOAN-STATUS-REPORT'
,p_step_title=>'Loan Status Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84279181294879301)
,p_plug_name=>'Loan Status Report'
,p_icon_css_classes=>'fa-file-text-o'
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
 p_id=>wwv_flow_imp.id(161952353762537475)
,p_plug_name=>'Loan Status Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
' B.FULL_NAME,',
' L.PRODUCT_TYPE,',
' L.PRODUCT_NAME,',
' A.LOAN_AMOUNT,',
' A.LOAN_STATUS,',
' A.LOAN_ID,',
' A.CREATION_DATE,',
' C.COMPANY_NAME,',
' T.LOAN_TYPE,',
' ROUND(',
' (NVL(SUM(P.repayment_amount), 0)-',
' XXMRKT.XXMRKT_MARKETPLACE_PKG.return_paid_amount(a.loan_id, :AP_COMPANY_ID)) ,2)',
'  OUTSTANDING_BALANCE',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS A ',
'JOIN XXHRMS.XXHRMS_PEOPLE B ON A.STAFF_ID = B.PERSON_ID',
'JOIN XXMRKT.XXMRKT_APPLIED_LOANS_VIEW P ON A.LOAN_ID= P.LOAN_ID',
'JOIN XXMRKT.XXMRKT_PRODUCT_LIST L ON A.PRODUCT_ID=L.PRODUCT_ID',
'JOIN XXMRKT.XXMRKT_COMPANY_LIST C ON A.COMPANY_ID=C.COMPANY_ID',
'JOIN XXMRKT.XXMRKT_LOAN_TYPES T ON T.LOAN_TYPE_ID=L.PRODUCT_TYPE',
'WHERE -- A.COMPANY_ID= :AP_COMPANY_ID AND ',
'A.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.LOAN_STATUS IN (''DISBURSED'' ,''DENIED'' )',
'AND A.STAFF_ID = NVL(:P55_EMPLOYEE,A.STAFF_ID)',
'AND A.LOAN_STATUS = NVL(:P55_STATUS,A.LOAN_STATUS)',
'      AND (',
'    (:P55_START_DATE IS NULL OR TRUNC(A.START_DATE) >= TO_DATE(:P55_START_DATE)) AND',
'    (:P55_END_DATE   IS NULL OR TRUNC(A.END_DATE)   <= TO_DATE(:P55_END_DATE))',
')',
'GROUP BY  B.FULL_NAME,',
' A.LOAN_AMOUNT,',
' L.PRODUCT_TYPE,',
'  L.PRODUCT_NAME,',
' A.LOAN_STATUS,',
' A.LOAN_ID,',
'  A.CREATION_DATE,',
'   T.LOAN_TYPE,',
'    C.COMPANY_NAME',
'',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Loan Status Report'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(161952466748537475)
,p_name=>'Loan Status Report'
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
,p_internal_uid=>161952466748537475
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161953959864537478)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161958628717537482)
,p_db_column_name=>'LOAN_STATUS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Loan Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161985939168549299)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>25
,p_column_identifier=>'S'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161986041951549300)
,p_db_column_name=>'OUTSTANDING_BALANCE'
,p_display_order=>35
,p_column_identifier=>'T'
,p_column_label=>'Outstanding Balance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161986164607549301)
,p_db_column_name=>'PRODUCT_TYPE'
,p_display_order=>45
,p_column_identifier=>'U'
,p_column_label=>'Product Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161986247468549302)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>55
,p_column_identifier=>'V'
,p_column_label=>'Loan Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161986341656549303)
,p_db_column_name=>'LOAN_ID'
,p_display_order=>65
,p_column_identifier=>'W'
,p_column_label=>'Loan Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164475672401421263)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>75
,p_column_identifier=>'X'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84280501103879315)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>85
,p_column_identifier=>'Y'
,p_column_label=>'Company Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84280607263879316)
,p_db_column_name=>'LOAN_TYPE'
,p_display_order=>95
,p_column_identifier=>'Z'
,p_column_label=>'Loan Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(163657190734472745)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'794200'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:COMPANY_NAME:LOAN_TYPE:PRODUCT_NAME:LOAN_AMOUNT:OUTSTANDING_BALANCE:LOAN_STATUS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(84240888613482463)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(161952353762537475)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4072362960822175091)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160871065334766803)
,p_name=>'P55_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(161952353762537475)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160871093682766804)
,p_name=>'P55_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(161952353762537475)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160871285397766805)
,p_name=>'P55_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(161952353762537475)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DISURSED;DISBURSED,DENIED;DENIED'
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
 p_id=>wwv_flow_imp.id(160871310039766806)
,p_name=>'P55_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161952353762537475)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME, PERSON_ID',
'FROM XXHRMS.XXHRMS_PEOPLE p',
'WHERE EXISTS(',
'    SELECT 1 ',
'    FROM XXMRKT.XXMRKT_APPLIED_LOANS ',
'    WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'   -- AND COMPANY_ID = :AP_COMPANY_ID',
'    AND p.PERSON_ID=STAFF_ID',
')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
