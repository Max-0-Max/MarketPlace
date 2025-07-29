prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>'Attendance by Employee'
,p_alias=>'JY1'
,p_step_title=>'Attendance by Employee'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(313172953350428324)
,p_plug_name=>'Attendance Report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(626404746606454084)
,p_name=>'Attendance Summary'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--circular:t-BadgeList--fixed:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select xxta.GET_DAYS_EXPECTED (:AP_STAFF_ID, :P45_START_DATE, :P45_END_DATE, :AP_COMPANY_CODE) DAYS_EXPECTED,  ',
'       xxta.GET_DAYS_PRESENT (:AP_STAFF_ID, :P45_START_DATE, :P45_END_DATE, :AP_COMPANY_CODE) DAYS_PRESENT, ',
'       xxta.GET_DAYS_EXPECTED (:AP_STAFF_ID, :P45_START_DATE, :P45_END_DATE, :AP_COMPANY_CODE) -   xxta.GET_DAYS_PRESENT (:AP_STAFF_ID, :P45_START_DATE, :P45_END_DATE, :AP_COMPANY_CODE) DAYS_ABSENT, ',
'       xxta.GET_HOURS_EXPECTED (:AP_STAFF_ID, :P45_START_DATE, :P45_END_DATE, :AP_COMPANY_CODE) HOURS_EXPECTED,',
'       xxta.GET_WORK_HOURS (:AP_STAFF_ID, :P45_START_DATE, :P45_END_DATE, :AP_COMPANY_CODE) ACTUAL_HOURS',
'       from dual'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P45_START_DATE,P45_END_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2527917967224082)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313233969359025785)
,p_query_column_id=>1
,p_column_alias=>'DAYS_EXPECTED'
,p_column_display_sequence=>1
,p_column_heading=>'Days Expected'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313234366520025786)
,p_query_column_id=>2
,p_column_alias=>'DAYS_PRESENT'
,p_column_display_sequence=>2
,p_column_heading=>'Days Present'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313234757299025786)
,p_query_column_id=>3
,p_column_alias=>'DAYS_ABSENT'
,p_column_display_sequence=>3
,p_column_heading=>'Days Absent'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313235121337025787)
,p_query_column_id=>4
,p_column_alias=>'HOURS_EXPECTED'
,p_column_display_sequence=>4
,p_column_heading=>'Hours Expected'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(313235534196025787)
,p_query_column_id=>5
,p_column_alias=>'ACTUAL_HOURS'
,p_column_display_sequence=>5
,p_column_heading=>'Actual Hours'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(939438747722050564)
,p_plug_name=>'Attendance Reports'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(939332966673622373)
,p_plug_name=>'Days Present'
,p_parent_plug_id=>wwv_flow_imp.id(939438747722050564)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from xxta.xxta_attendace_status ',
'where company_code = :AP_COMPANY_CODE',
'and EMPLOYEE_ID = :AP_STAFF_ID',
'and ATTENDANCE_DAY between :P45_START_DATE and nvl(:P45_END_DATE,SYSDATE)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P45_START_DATE,P45_END_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
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
 p_id=>wwv_flow_imp.id(939333011275622374)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ODAWODU'
,p_internal_uid=>939333011275622374
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313238067426025802)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Staff ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313238447608025804)
,p_db_column_name=>'WORKSHIFT_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Work Shift'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(25554563319512370)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313238850682025804)
,p_db_column_name=>'COMPANY_CODE'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313240072898025806)
,p_db_column_name=>'CLOCK_IN'
,p_display_order=>210
,p_column_identifier=>'AD'
,p_column_label=>'Expected Clock In'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313239271716025805)
,p_db_column_name=>'CLOCK_IN_TIME'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Actual Clock In'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313240466770025806)
,p_db_column_name=>'CLOCK_OUT'
,p_display_order=>230
,p_column_identifier=>'AE'
,p_column_label=>'Expected Clock Out'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313239692471025805)
,p_db_column_name=>'CLOCK_OUT_TIME'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Actual Clock Out'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313240824542025807)
,p_db_column_name=>'WORK_HOURS'
,p_display_order=>250
,p_column_identifier=>'AF'
,p_column_label=>'Work Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313241243091025807)
,p_db_column_name=>'CLOCKIN_STATUS'
,p_display_order=>260
,p_column_identifier=>'AG'
,p_column_label=>'Clockin Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313241667867025807)
,p_db_column_name=>'CLOCKOUT_STATUS'
,p_display_order=>270
,p_column_identifier=>'AH'
,p_column_label=>'Clockout Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313242003935025808)
,p_db_column_name=>'ATTENDANCE_DAY'
,p_display_order=>280
,p_column_identifier=>'AI'
,p_column_label=>'Attendance Day'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(939448662174079803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'3132424'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_ID:ATTENDANCE_DAY:WORKSHIFT_ID:CLOCK_IN:CLOCK_IN_TIME:CLOCKIN_STATUS:CLOCK_OUT:CLOCK_OUT_TIME:CLOCKOUT_STATUS:WORK_HOURS:'
,p_sort_column_1=>'ATTENDANCE_DAY'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(939438876183050565)
,p_plug_name=>'Days Absent'
,p_parent_plug_id=>wwv_flow_imp.id(939438747722050564)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from',
'(select u.DAY,t.PERSON_ID, t.FULL_NAME,  t.EMAIL, t.TELEPHONE1, xxta.GET_ABSENCE_REASON (u.DAY, t.PERSON_ID) Reason',
'from xxhrms.xxhrms_people t, xxta.xxta_alldays u',
'where t.company_code = :AP_COMPANY_CODE',
'and t.EMPLOYMENT_STATUS = ''Active Employee''',
'and not exists (select 1 from xxta.xxta_attendace_status a',
'where a.EMPLOYEE_ID = PERSON_ID',
'and a.company_code = company_code',
'and ATTENDANCE_DAY = u.DAY)',
')',
'where PERSON_ID = :AP_STAFF_ID',
'AND DAY BETWEEN :P45_START_DATE AND NVL(:P45_END_DATE,SYSDATE)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P45_START_DATE,P45_END_DATE'
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
 p_id=>wwv_flow_imp.id(939438928215050566)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ODAWODU'
,p_internal_uid=>939438928215050566
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313243195787025815)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313243564739025816)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313243930302025816)
,p_db_column_name=>'EMAIL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313244384999025817)
,p_db_column_name=>'TELEPHONE1'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313244723653025817)
,p_db_column_name=>'REASON'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(313245159529025818)
,p_db_column_name=>'DAY'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Day'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(939517371116777781)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3132455'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PERSON_ID:FULL_NAME:EMAIL:TELEPHONE1:REASON:DAY'
,p_sort_column_1=>'DAY'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313236399303025792)
,p_name=>'P45_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(626404746606454084)
,p_prompt=>'Date From'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313236778661025793)
,p_name=>'P45_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(626404746606454084)
,p_prompt=>'Date To'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(313246297618025831)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_START_DATE,P45_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(313247220581025834)
,p_event_id=>wwv_flow_imp.id(313246297618025831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(939332966673622373)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(313247758031025834)
,p_event_id=>wwv_flow_imp.id(313246297618025831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(939438876183050565)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(313246774800025833)
,p_event_id=>wwv_flow_imp.id(313246297618025831)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(626404746606454084)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
