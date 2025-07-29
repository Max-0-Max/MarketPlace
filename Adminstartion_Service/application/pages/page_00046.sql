prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_name=>'Repayment Schedule Report'
,p_alias=>'REPAYMENT-SCHEDULE-REPORT'
,p_step_title=>'Repayment Schedule Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80242306910938846)
,p_plug_name=>'Loan Repayment Report'
,p_icon_css_classes=>'fa-exchange'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161810724785694675)
,p_plug_name=>'Repayment Schedule Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
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
'       A.END_DATE,',
'       C.COMPANY_NAME',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS_VIEW A, XXHRMS.XXHRMS_PEOPLE B, XXMRKT.XXMRKT_COMPANY_LIST C',
'WHERE --A.COMPANY_ID= :AP_COMPANY_ID AND',
' A.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.STAFF_ID = B.PERSON_ID',
'AND C.COMPANY_ID = A.COMPANY_ID',
'AND A.STATUS = NVL(:P46_LOAN_STATUS,A.STATUS)',
'AND A.STAFF_ID = NVL(:P46_EMPLOYEE,A.STAFF_ID)',
'AND (',
'        (:P46_START_DATE IS NULL OR (A.START_DATE) >= (:P46_START_DATE)) AND',
'        (:P46_END_DATE   IS NULL OR (A.END_DATE) <= (:P46_END_DATE))',
'      )',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P46_START_DATE,P46_END_DATE,P46_LOAN_STATUS,P46_EMPLOYEE'
,p_prn_page_header=>'Repayment Schedule Report'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(161810829542694675)
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
,p_enable_mail_download=>'Y'
,p_owner=>'DADEGBITE'
,p_internal_uid=>161810829542694675
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159968220050116124)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161811560418694685)
,p_db_column_name=>'PERIOD'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Period'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161811977082694688)
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
 p_id=>wwv_flow_imp.id(161813119978694689)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161812378160694688)
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
 p_id=>wwv_flow_imp.id(161813566595694689)
,p_db_column_name=>'START_DATE'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161813897224694690)
,p_db_column_name=>'END_DATE'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161812775213694689)
,p_db_column_name=>'STATUS'
,p_display_order=>110
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84279814570879308)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Company Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(161816901977710673)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'776246'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:PERIOD:COMPANY_NAME:REPAYMENT_AMOUNT:REPAYMENT_DATE:STATUS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(84195995668459417)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(161810724785694675)
,p_button_name=>'Clear_All'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4072362960822175091)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear All'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(84196301994459421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(161810724785694675)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4072362960822175091)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160823150057743727)
,p_name=>'P46_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161810724785694675)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME, PERSON_ID',
'FROM XXHRMS.XXHRMS_PEOPLE p',
'WHERE EXISTS(',
'    SELECT 1 ',
'    FROM XXMRKT.XXMRKT_APPLIED_LOANS_VIEW',
'    WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'    --AND COMPANY_ID = :AP_COMPANY_ID',
'    AND p.PERSON_ID=STAFF_ID',
')'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Employees'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160823206523743728)
,p_name=>'P46_LOAN_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161810724785694675)
,p_prompt=>'Loan Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Paid;Paid,Unpaid;Unpaid'
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
 p_id=>wwv_flow_imp.id(160823334919743729)
,p_name=>'P46_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(161810724785694675)
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
 p_id=>wwv_flow_imp.id(160823447398743730)
,p_name=>'P46_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(161810724785694675)
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
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(84198789978459428)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(84195995668459417)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(84199265043459429)
,p_event_id=>wwv_flow_imp.id(84198789978459428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P46_EMPLOYEE := NULL;',
':P46_END_DATE := NULL;',
':P46_LOAN_STATUS := NULL;',
':P46_START_DATE := NULL;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
