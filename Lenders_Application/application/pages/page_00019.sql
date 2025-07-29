prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Repayment Schedule Report'
,p_alias=>'REPAYMENT-SCHEDULE-REPORT'
,p_step_title=>'Repayment Schedule Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77617649309235274)
,p_plug_name=>'Repayment Schedule Report'
,p_title=>'Repayment Schedule Report'
,p_icon_css_classes=>'fa-exchange'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(80619416048252566)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77618327834235281)
,p_plug_name=>'Repayment Schedule Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.STAFF_ID,',
'       B.FULL_NAME,',
'       A.PERIOD, ',
'       A.REPAYMENT_AMOUNT, ',
'       A.REPAYMENT_DATE, ',
'       A.STATUS,',
'       A.START_DATE,',
'       A.END_DATE',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS_VIEW A, XXHRMS.XXHRMS_PEOPLE B',
'WHERE A.COMPANY_ID= :AP_COMPANY_ID',
'AND A.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.STAFF_ID = B.PERSON_ID',
'AND A.STATUS = NVL(:P19_LOAN_STATUS,A.STATUS)',
'AND A.STAFF_ID = NVL(:P19_EMPLOYEE,A.STAFF_ID)',
'AND (',
'        (:P19_START_DATE IS NULL OR (A.START_DATE) >= (:P19_START_DATE)) AND',
'        (:P19_END_DATE   IS NULL OR (A.END_DATE) <= (:P19_END_DATE))',
'      )',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_START_DATE,P19_END_DATE,P19_LOAN_STATUS,P19_EMPLOYEE'
,p_prn_page_header=>'Repayment Schedule Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(77618432591235281)
,p_name=>'Repayment Schedule Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_download_filename=>'Repayment Schedule Report'
,p_enable_mail_download=>'Y'
,p_owner=>'DADEGBITE'
,p_internal_uid=>77618432591235281
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75775823098656730)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77619163467235291)
,p_db_column_name=>'PERIOD'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Period'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77619580131235294)
,p_db_column_name=>'REPAYMENT_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Repayment Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77620723027235295)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77619981209235294)
,p_db_column_name=>'REPAYMENT_DATE'
,p_display_order=>80
,p_column_identifier=>'C'
,p_column_label=>'Repayment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77621169644235295)
,p_db_column_name=>'START_DATE'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77621500273235296)
,p_db_column_name=>'END_DATE'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77620378262235295)
,p_db_column_name=>'STATUS'
,p_display_order=>110
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77624505026251279)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'776246'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STAFF_ID:FULL_NAME:PERIOD:REPAYMENT_AMOUNT:REPAYMENT_DATE:STATUS:START_DATE:END_DATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80238099835938803)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(77618327834235281)
,p_button_name=>'Clear_All'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear All'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(56394089215590417)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76626730685284310)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77618327834235281)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76626372329284306)
,p_name=>'P19_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77618327834235281)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME, PERSON_ID',
'FROM XXHRMS.XXHRMS_PEOPLE p',
'WHERE EXISTS(',
'    SELECT 1 ',
'    FROM XXMRKT.XXMRKT_APPLIED_LOANS_VIEW ',
'    WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'    AND COMPANY_ID = :AP_COMPANY_ID',
'    AND p.PERSON_ID=STAFF_ID',
')'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Employees'
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
 p_id=>wwv_flow_imp.id(76626428795284307)
,p_name=>'P19_LOAN_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77618327834235281)
,p_prompt=>'Loan Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Paid;Paid,Unpaid;Unpaid'
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
 p_id=>wwv_flow_imp.id(76626557191284308)
,p_name=>'P19_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77618327834235281)
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
 p_id=>wwv_flow_imp.id(76626669670284309)
,p_name=>'P19_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77618327834235281)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80238193955938804)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80238099835938803)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(56394089215590417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80238285357938805)
,p_event_id=>wwv_flow_imp.id(80238193955938804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P19_EMPLOYEE := NULL;',
':P19_END_DATE := NULL;',
':P19_LOAN_STATUS := NULL;',
':P19_START_DATE := NULL;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(56394089215590417)
);
wwv_flow_imp.component_end;
end;
/
