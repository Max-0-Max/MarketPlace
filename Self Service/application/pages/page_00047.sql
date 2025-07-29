prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>'Clearance Status'
,p_alias=>'AD5'
,p_step_title=>'Clearance Status'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44139382147869700)
,p_plug_name=>'Clearance Status '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct d.item,',
'a.staff_id,',
'c.fullname,',
'(select fullname from xxhrms_assignments where staff_id = B.APPR_ID) CONFIRMED_BY,',
'(select b.name from xxhrms_assignments a, xxhrms_department b where a.dept_code = b.dept_id  and a.staff_id = B.APPR_ID) DEPARTMENT,',
'case',
'When d.item_id is null then ''Not Cleared''',
'else ''Cleared''',
'end Status',
'from XXHRMS.XXHRMS_RESPONSE_JSON_V a, XXHRMS.xxhrms_delive_exit b,  xxhrms_assignments c, XXHRMS.XXHRMS_DELIVERABLE_ITEMS d',
'where to_char(question (+))= to_char(item_id)',
'and a.staff_id = b.exiting_staff',
'and c.staff_id = b.exiting_staff',
'and b.company_code = :AP_COMPANY_CODE',
'and a.appr_id = b.appr_id',
'AND a.staff_id = :AP_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44139448610869700)
,p_name=>'Clearance Status '
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
,p_owner=>'TADEDAPO'
,p_internal_uid=>44139448610869700
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26205095581141287)
,p_db_column_name=>'ITEM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26205415751141287)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26205869878141288)
,p_db_column_name=>'FULLNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fullname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26206255746141288)
,p_db_column_name=>'CONFIRMED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Confirmed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26206657177141288)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26207093802141288)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44143093562885297)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'262074'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEM:STAFF_ID:FULLNAME:CONFIRMED_BY:DEPARTMENT:STATUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26207809811141293)
,p_name=>'P47_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44139382147869700)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
