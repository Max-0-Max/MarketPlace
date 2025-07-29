prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>'Leave Roster'
,p_step_title=>'Leave Roster'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(75141990372376506)
,p_name=>'Leave Roster'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_grid_column_css_classes=>'.ui-dialog {     z-index: 9999 !important; }'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.STAFF_ID,',
'       a.FULL_NAME,',
'       a.LEAVE_START_DATE,',
'       a.LEAVE_END_DATE,',
'       LEAVE_END_DATE - LEAVE_START_DATE - 2*(trunc(next_day(LEAVE_END_DATE-1,''FRI'')) -',
'        trunc(next_day(LEAVE_START_DATE-1,''FRI'')))/7 + 1 Days,',
'     to_char(a.LEAVE_END_DATE, ''YYYY'') Year,',
'       b.supervisor, ',
'       DEPT_LOCATION , ',
'       DEPT_CODE,  ',
'       a.STATUS',
'  from XXHRMS.XXHRMS_LEAVE_ROSTER a, xxhrms_assignments b',
'where a.staff_id = b.person_id',
'and to_char(a.LEAVE_END_DATE, ''YYYY'') = nvl(:P24_YEAR, to_char(a.LEAVE_END_DATE, ''YYYY''))',
'and b.company_code= :SS_COMPANY_CODE',
'AND DEPT_CODE = :AP_DEP_CODE',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P24_YEAR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_exp_filename=>'Leave Roster '
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142009408376507)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142176872376508)
,p_query_column_id=>2
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Staff Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142205605376509)
,p_query_column_id=>3
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142350491376510)
,p_query_column_id=>4
,p_column_alias=>'LEAVE_START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Leave Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142460491376511)
,p_query_column_id=>5
,p_column_alias=>'LEAVE_END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Leave End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142598299376512)
,p_query_column_id=>6
,p_column_alias=>'DAYS'
,p_column_display_sequence=>6
,p_column_heading=>'Days'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142680549376513)
,p_query_column_id=>7
,p_column_alias=>'YEAR'
,p_column_display_sequence=>7
,p_column_heading=>'Year'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142773373376514)
,p_query_column_id=>8
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>8
,p_column_heading=>'Supervisor'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142868059376515)
,p_query_column_id=>9
,p_column_alias=>'DEPT_LOCATION'
,p_column_display_sequence=>9
,p_column_heading=>'Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75142943895376516)
,p_query_column_id=>10
,p_column_alias=>'DEPT_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Department'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME, DEPT_ID',
'from xxhrms.xxhrms_department'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75143029609376517)
,p_query_column_id=>11
,p_column_alias=>'STATUS'
,p_column_display_sequence=>11
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75159263334490028)
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
 p_id=>wwv_flow_imp.id(75159896527490029)
,p_plug_name=>'Leave Roster'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.STAFF_ID,',
'       a.LEAVE_TYPE,',
'       a.LEAVE_START_DATE,',
'       a.LEAVE_END_DATE,',
'       a.STATUS,',
'       a.INS_DATE,',
'       a.INS_BY,',
'       a.UPD_DATE,',
'       a.UPD_BY,',
'       a.FULL_NAME',
'  from XXHRMS.XXHRMS_LEAVE_ROSTER  a, xxhrms.XXHRMS_ASSIGNMENTS b',
'where a.staff_id = b.person_id',
'and b.COMPANY_CODE= :SS_COMPANY_CODE',
'and DEPT_CODE = :AP_DEP_CODE',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'create_link', 'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_STAFF_ID,P33_FULL_NAME:&AP_STAFF_ID.,&AP_FULL_NAME.',
  'display_column', 'FULL_NAME',
  'end_date_column', 'LEAVE_END_DATE',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'LEAVE_START_DATE',
  'view_edit_link', 'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP:P33_ID:&ID.')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75143163501376518)
,p_name=>'P24_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75141990372376506)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  to_Char(LEAVE_END_DATE, ''YYYY'') d,  to_Char(LEAVE_END_DATE, ''YYYY'') r ',
'from XXHRMS.XXHRMS_LEAVE_ROSTER order by to_char(LEAVE_END_DATE, ''YYYY'') desc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10454721350658108)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10454884075658109)
,p_event_id=>wwv_flow_imp.id(10454721350658108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75141990372376506)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
