prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_name=>'Employee Attendance Summary'
,p_step_title=>'Employee Attendance Summary'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(325074908799029058)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2518480346224075)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(325075490652029059)
,p_plug_name=>'Employee Attendance Summary'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.person_id, a.Full_name,',
'       xxta.GET_DAYS_EXPECTED (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code) DAYS_EXPECTED,  ',
'       xxta.GET_DAYS_PRESENT (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code) DAYS_PRESENT, ',
'       xxta.GET_DAYS_EXPECTED (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code) -   xxta.GET_DAYS_PRESENT (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code) DAYS_ABSENT, ',
'       xxta.GET_HOURS_EXPECTED (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code) HOURS_EXPECTED,',
'       xxta.GET_WORK_HOURS (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code) ACTUAL_HOURS,',
'       case WHEN',
'           xxta.GET_DAYS_EXPECTED (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code) = 0 then 0',
'       else',
'        (xxta.GET_DAYS_PRESENT (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code)/xxta.GET_DAYS_EXPECTED (a.person_id, :P43_START_DATE, :P43_END_DATE, a.company_code)) *100',
'       end PERCENT',
'from xxhrms.xxhrms_people a',
'where company_code = :AP_COMPANY_CODE',
'and :AP_STAFF_ID in (SELECT column_value',
'     FROM TABLE(apex_string.split(xxhrms.supervsor_func(a.person_id),'':'')))',
'and Employment_Status = ''Active Employee'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P43_START_DATE,P43_END_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(325075609298029059)
,p_name=>'All Employee Attendance Summary'
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
,p_internal_uid=>325075609298029059
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11813171088720610)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11813525139720610)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11815190443720611)
,p_db_column_name=>'HOURS_EXPECTED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hours Expected'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11815515037720611)
,p_db_column_name=>'ACTUAL_HOURS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Actual Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11197914766966418)
,p_db_column_name=>'PERCENT'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'% Attendance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11198047398966419)
,p_db_column_name=>'DAYS_EXPECTED'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Days Expected'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11198165843966420)
,p_db_column_name=>'DAYS_PRESENT'
,p_display_order=>37
,p_column_identifier=>'J'
,p_column_label=>'Days Present'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11198235985966421)
,p_db_column_name=>'DAYS_ABSENT'
,p_display_order=>47
,p_column_identifier=>'K'
,p_column_label=>'Days Absent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(325078871941031116)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118159'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PERSON_ID:FULL_NAME:DAYS_EXPECTED:DAYS_PRESENT:DAYS_ABSENT:HOURS_EXPECTED:ACTUAL_HOURS:PERCENT:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11816758121720615)
,p_name=>'P43_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(325075490652029059)
,p_item_default=>'last_day(ADD_MONTHS(trunc(sysdate),-1))+1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date From'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11817167141720616)
,p_name=>'P43_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(325075490652029059)
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
 p_id=>wwv_flow_imp.id(11818140705720620)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_START_DATE,P43_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11818642940720621)
,p_event_id=>wwv_flow_imp.id(11818140705720620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(325075490652029059)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
