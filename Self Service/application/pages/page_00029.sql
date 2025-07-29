prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_name=>'Workshift Acitivies'
,p_alias=>'BC1'
,p_page_mode=>'MODAL'
,p_step_title=>'Workshift Acitivies'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(299940551087325235)
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
 p_id=>wwv_flow_imp.id(299941069135325241)
,p_plug_name=>'Workshift Acitivies'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT workshift_name,',
'       start_date,',
'       end_date,',
'       clock_in,',
'       clock_out,',
'       holiday_flag,',
'       weekend_flag,',
'       leave_flag,',
'       description,',
'       prj_loc_id,',
'       hr_loc_id,',
'      xxta.XXTA_WORKSHIFT_UTIL_PKG.workshift_task_list (workshift_id)Task',
'  FROM xxta.XXTA_WORKSHIFT_MGT a',
' WHERE EXISTS',
'         (SELECT 1',
'             FROM xxta.XXTA_WORKSHIFT_EMP_ASSIGN b',
'            WHERE     b.person_id = :AP_STAFF_ID',
'                  AND b.workshift_id = a.workshift_id)',
'/*and (NVL(:P23_WORKSHIFT_ID,''0'') = ''0'' ',
'        OR a.WORKSHIFT_ID = :P23_WORKSHIFT_ID)*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(299941115337325241)
,p_name=>'Workshift Acitivies'
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
,p_owner=>'HTEMITAYO'
,p_internal_uid=>299941115337325241
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299941530698325247)
,p_db_column_name=>'WORKSHIFT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Workshift Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299941991588325254)
,p_db_column_name=>'START_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299942359160325254)
,p_db_column_name=>'END_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299942795952325255)
,p_db_column_name=>'CLOCK_IN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Clock In'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299943101096325255)
,p_db_column_name=>'CLOCK_OUT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Clock Out'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299943546869325256)
,p_db_column_name=>'HOLIDAY_FLAG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Holiday Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299943958064325256)
,p_db_column_name=>'WEEKEND_FLAG'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Weekend Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299944336527325256)
,p_db_column_name=>'LEAVE_FLAG'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Leave Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299944740076325257)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299945120657325258)
,p_db_column_name=>'PRJ_LOC_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Prj Loc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299945576000325258)
,p_db_column_name=>'HR_LOC_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'HR Location'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(299945926192325259)
,p_db_column_name=>'TASK'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Task'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(299948079318376972)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2999481'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORKSHIFT_NAME:START_DATE:END_DATE:CLOCK_IN:CLOCK_OUT:HOLIDAY_FLAG:WEEKEND_FLAG:LEAVE_FLAG:DESCRIPTION:PRJ_LOC_ID:HR_LOC_ID:TASK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(299199804731253514)
,p_name=>'P29_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(299941069135325241)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(299199977328253515)
,p_name=>'P29_WORKSHIFT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(299941069135325241)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
