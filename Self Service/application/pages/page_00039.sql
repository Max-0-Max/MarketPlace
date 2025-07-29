prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_name=>'KPI Details'
,p_alias=>'EX1'
,p_page_mode=>'MODAL'
,p_step_title=>'KPI Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(307655595023587981)
,p_plug_name=>'KPI Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  a.PERFORMANCE_ID,',
'b.staff_id,',
'b.FULLNAME full_name,',
' a.TASK_ID,                ',
'  a.EMPLOYEE,               ',
'   a.CLASSIFICATION,',
'  a.DESCRIPTION,',
'  a.WEIGHT,',
'  a.WEIGHING_TYPE,',
'   a.UNIT_OF_MEASURE,',
'  a.TARGET,',
'  a.APPRAISAL_ID,',
'  a.INS_BY,',
'  a.INS_TIME,',
'  a.UPDATED_BY,',
'  a.UPDATED_TIME,',
'  a.SUPERVISOR,',
'  a.INDICATOR_TYPE,',
'  a.PERFORMANCE_INDICATOR',
'from xxpermgt_emp_task_setup a, xxhrms.xxhrms_assignments_f  b, xxpermgt.xxpermgt_mass_val c',
'where  b.staff_id = :P39_STAFF',
'and a.appraisal_id = :P39_APPRAISAL',
'and  (b.dept_code = c.dept_id  or  upper(b.JOB_ID) = upper(c.dept_id) or b.SUB_ORGANIZATION_CODE = c.dept_id)',
'            AND',
'            sysdate between b.effective_start_date and b.EFFECTIVE_END_DATE',
'            and b.company_Code = :AP_cOMPANY_cODE',
'            and a.employee = c.app_user',
'and b.staff_id in (select staff_id from xxslm.xxslm_exam_summary where COURSE_ID  = :P39_COURSE)  '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(307655605062587981)
,p_name=>'KPI Details'
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
,p_internal_uid=>307655605062587981
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307656092161587983)
,p_db_column_name=>'PERFORMANCE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Performance Id'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(55222857995620352)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307656473606587983)
,p_db_column_name=>'TASK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Task Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307656862666587984)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Supervisor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307657269598587984)
,p_db_column_name=>'CLASSIFICATION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Classification'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(30160726453091453)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307657677675587984)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307658077175587984)
,p_db_column_name=>'WEIGHT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Weight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307658497332587984)
,p_db_column_name=>'WEIGHING_TYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Weighing Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307658807557587985)
,p_db_column_name=>'UNIT_OF_MEASURE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Unit Of Measure'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307659286887587985)
,p_db_column_name=>'TARGET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Target'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307659624125587985)
,p_db_column_name=>'APPRAISAL_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Appraisal Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307660014285587985)
,p_db_column_name=>'INS_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307660421899587985)
,p_db_column_name=>'INS_TIME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ins Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307660855648587986)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307661241845587986)
,p_db_column_name=>'UPDATED_TIME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Updated Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307661644083587986)
,p_db_column_name=>'SUPERVISOR'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Supervisor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307662009244587986)
,p_db_column_name=>'INDICATOR_TYPE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Indicator Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307662402394587986)
,p_db_column_name=>'PERFORMANCE_INDICATOR'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Performance Indicator'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(55222857995620352)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8221690870681301)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>27
,p_column_identifier=>'R'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8221732456681302)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>37
,p_column_identifier=>'S'
,p_column_label=>'Approve'
,p_column_link=>'javascript:void(null)'
,p_column_linktext=>'Approve '
,p_column_link_attr=>'class="appr"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(307664089876601724)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3076641'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:CLASSIFICATION:DESCRIPTION:WEIGHT:WEIGHING_TYPE:UNIT_OF_MEASURE:TARGET:INDICATOR_TYPE:PERFORMANCE_INDICATOR:EMPLOYEE:'
,p_break_on=>'EMPLOYEE:0:0:0:0:0'
,p_break_enabled_on=>'EMPLOYEE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(307619341954063733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(307655595023587981)
,p_button_name=>'Approve'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Approve'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307619092439063730)
,p_name=>'P39_COURSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(307655595023587981)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307619166979063731)
,p_name=>'P39_STAFF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(307655595023587981)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307619290330063732)
,p_name=>'P39_APPRAISAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(307655595023587981)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8516438782500210)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.appr'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8516523902500211)
,p_event_id=>wwv_flow_imp.id(8516438782500210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    XXPERMGT.XXPERMGT_NOTIF_AUTO_SCORE(:P39_STAFF,:P39_APPRAISAL,:P39_COURSE);',
'    COMMIT;',
'END;'))
,p_attribute_02=>'P39_STAFF,P39_APPRAISAL,P39_COURSE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307619435311063734)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    XXPERMGT.XXPERMGT_NOTIF_AUTO_SCORE(:P39_STAFF,:P39_APPRAISAL,:P39_COURSE);',
'    COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(307619341954063733)
,p_process_success_message=>'Successfully Approved'
,p_internal_uid=>307619435311063734
);
wwv_flow_imp.component_end;
end;
/
