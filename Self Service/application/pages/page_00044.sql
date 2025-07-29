prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_name=>'Leave Report'
,p_step_title=>'Leave Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24445477777297142)
,p_plug_name=>'Employee Leave Report'
,p_icon_css_classes=>'fa-plane'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79115700886095996)
,p_plug_name=>'Leave Report'
,p_region_name=>'A'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT x.ID,',
'    x.staff_id,',
'    x.leave_type_code,',
'    x.leave_type_name,',
'    x.start_date,',
'    x.end_date,',
'    x.pending_leave_days,',
'    x.replacement,',
'    y.full_name replacement_name,',
'    z.full_name staff_name,',
'    x.contact_address,',
'    x.contact_number,',
'    x.created_date,',
'    y.sub_organization_name,',
'    NVL(x.workflow_status,''PENDING'') workflow_status,',
'    x.leave_days  leave_days ',
' FROM xxhrms.xxhrms_ss_leave x, xxhrms.xxhrms_assignment_details_V y, xxhrms.xxhrms_people Z, xxhrms_assignments r',
' WHERE x.replacement = y.person_id(+)',
' AND z.COMPANY_CODE = :AP_COMPANY_CODE',
' AND x.staff_id = z.person_id ',
' AND x.staff_id = NVL(:P44_EMPLOYEE,x.staff_id)',
' and created_date between :P44_START and :P44_END',
' AND x.WORKFLOW_STATUS = NVL(:P44_LEAVE_STATUS, workflow_status)',
'and x.LEAVE_TYPE_CODE = NVL(:P44_LEAVE_TYPE, leave_type_code) ',
'and  x.staff_id = r.person_id',
'and :AP_STAFF_ID in (SELECT column_value',
'     FROM TABLE(apex_string.split(xxhrms.supervsor_func(x.staff_id),'':'')))'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_output_show_link=>'Y'
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
 p_id=>wwv_flow_imp.id(79116050870095997)
,p_name=>'Leave Pending Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'HTML:CSV:XLSX'
,p_enable_mail_download=>'Y'
,p_owner=>'AAJANI'
,p_internal_uid=>79116050870095997
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15172071140630879)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15172435264630879)
,p_db_column_name=>'LEAVE_TYPE_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'LEAVE_TYPE_CODE'
,p_rpt_named_lov=>wwv_flow_imp.id(12007299656279076)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15172827198630879)
,p_db_column_name=>'LEAVE_TYPE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'LEAVE_TYPE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15173260868630879)
,p_db_column_name=>'START_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Start Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15173641576630880)
,p_db_column_name=>'END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'End Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15174042788630880)
,p_db_column_name=>'PENDING_LEAVE_DAYS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Available Days'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PENDING_LEAVE_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15174402350630880)
,p_db_column_name=>'REPLACEMENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Replacement'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'REPLACEMENT'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fullname d, staff_id r',
'from bsys_assignments ',
'where dept_code = (select dept_code from bsys_assignments where staff_id = (select staff_id from password where upper(logname) = :APP_USER))',
'order by fullname'))
,p_rpt_show_filter_lov=>'S'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15174849557630880)
,p_db_column_name=>'CONTACT_ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Contact Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'CONTACT_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15175288158630881)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Phone Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'CONTACT_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15175644412630881)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15176065601630881)
,p_db_column_name=>'WORKFLOW_STATUS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'WORKFLOW_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15176492754630881)
,p_db_column_name=>'LEAVE_DAYS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Leave Days'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_static_id=>'LEAVE_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15176815524630881)
,p_db_column_name=>'REPLACEMENT_NAME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Reliever'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'REPLACEMENT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15177291890630881)
,p_db_column_name=>'STAFF_NAME'
,p_display_order=>27
,p_column_identifier=>'R'
,p_column_label=>'&AP_FULLNAME_LABEL.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15177691409630882)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>28
,p_column_identifier=>'S'
,p_column_label=>'&AP_STAFF_ID_LABEL.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15171631113630878)
,p_db_column_name=>'SUB_ORGANIZATION_NAME'
,p_display_order=>38
,p_column_identifier=>'T'
,p_column_label=>'&AP_SUBORG_LABEL.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79122969813096004)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'151780'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'STAFF_ID:STAFF_NAME:LEAVE_TYPE_CODE:START_DATE:END_DATE:LEAVE_DAYS:REPLACEMENT_NAME:WORKFLOW_STATUS:SUB_ORGANIZATION_NAME:CREATED_DATE:'
,p_sort_column_1=>'CREATED_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15178406911630884)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(79115700886095996)
,p_button_name=>'Go'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Get Report'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15178864360630885)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(79115700886095996)
,p_button_name=>'Download'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15179237634630885)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(79115700886095996)
,p_button_name=>'Download_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Export'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-excel-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15180090972630886)
,p_name=>'P44_START'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79115700886095996)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'button',
  'show_other_months', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15180401780630887)
,p_name=>'P44_END'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79115700886095996)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'button',
  'show_other_months', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15180818731630887)
,p_name=>'P44_LEAVE_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79115700886095996)
,p_prompt=>'Leave Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT se.leave_name D, se.absence_id R',
'FROM xxhrms.xxhrms_leave_setup se',
'WHERE se.status=''ACTIVE''',
'and se.company_code = :AP_COMPANY_CODE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Leave Types'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15181251940630887)
,p_name=>'P44_LEAVE_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79115700886095996)
,p_prompt=>'Leave Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select distinct workflow_status d,  workflow_status r from xxhrms_ss_leave'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Statuses'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15181672785630888)
,p_name=>'P44_COMPANY_DESC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(79115700886095996)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_vAL VARCHAR2(200);',
'begin',
'  select company_name ',
'    into v_val',
'    from xxhrms.xxhrms_companyinfo',
'   where company_code = :AP_COMPANY_CODE;',
'   return v_val;',
'exception',
'  when others then',
'    return null;',
'end;',
'    '))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15183002456630892)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15183595761630894)
,p_event_id=>wwv_flow_imp.id(15183002456630892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15183942958630894)
,p_name=>'get_desc'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_ORG_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15184495933630895)
,p_event_id=>wwv_flow_imp.id(15183942958630894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  select company_name',
'  into :P44_COMPANY_DESC',
'  FROM xxhrms.xxhrms_companyinfo',
'  where company_code = :P44_ORG_ID;',
'end;'))
,p_attribute_02=>'P44_ORG_ID'
,p_attribute_03=>'P44_COMPANY_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15184809827630895)
,p_name=>'AOP'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15179237634630885)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15185343446630895)
,p_event_id=>wwv_flow_imp.id(15184809827630895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.APEXRND.AOP_DA'
,p_attribute_02=>'NUMBER_TO_STRING:REPORT_AS_LABELS:FILTERS_ON_TOP:HIGHLIGHTS_ON_TOP:repeat_header'
,p_attribute_04=>'xlsx'
,p_attribute_05=>'IR'
,p_attribute_06=>'WORKSPACE'
,p_attribute_07=>'SoftSuite_Excel.xlsx'
,p_attribute_13=>'A'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15182624666630891)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'download'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_sql varchar2(32000);',
'v_blob  blob;',
'  v_cmp_fnt pls_integer := xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_fontsize=> 12, p_bold=> true);',
'  v_cent_align xxadm.xxadm_xlsx.tp_alignment :=  xxadm.xxadm_xlsx.get_Alignment (p_horizontal => ''center'');',
'  v_cmpfill  pls_integer := xxadm.xxadm_xlsx.get_fill(''solid'',''BDD6EE'');',
'  v_hdrfill  pls_integer;-- := xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6'');',
'  v_bld_fnt number := xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true);',
'  --v_dt_fmt pls_integer :=  xxadm.xxadm_xlsx.get_numFmt( ''dd/mon/yyyy'' );',
'  v_dt_fmt pls_integer; --:=  xxadm.xxadm_xlsx.get_numFmt( xxadm.xxadm_xlsx.orafmt2excel( ''dd/mon/yyyy'' ));',
'begin',
'v_dt_fmt := xxadm.xxadm_xlsx.get_numFmt( xxadm.xxadm_xlsx.orafmt2excel( ''dd/mon/yyyy'' ));',
'dbms_lob.createtemporary(v_blob, TRUE);',
'xxadm.xxadm_xlsx.clear_workbook;',
'xxadm.xxadm_xlsx.new_sheet;',
'xxadm.xxadm_xlsx.mergecells(1,1,9,1);',
'xxadm.xxadm_xlsx.mergecells(1,2,9,2);',
'/*xxadm.xxadm_xlsx.mergecells(1,3,5,3);',
'xxadm.xxadm_xlsx.mergecells(6,3,10,3);*/',
'xxadm.xxadm_xlsx.mergecells(1,3,9,3);',
'--xxadm.xxadm_xlsx.mergecells(3,3,5,3);',
'--xxadm.xxadm_xlsx.mergecells(6,3,8,3);           ',
'--xxadm.xxadm_xlsx.mergecells(9,3,10,3);',
'xxadm.xxadm_xlsx.cell( p_col => 1, p_row => 1, p_value=> :P44_COMPANY_DESC ,',
'                       p_alignment =>   xxadm.xxadm_xlsx.get_Alignment (p_horizontal => ''center''), ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_fontsize=> 12, p_bold=> true), ',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''BDD6EE''));',
'xxadm.xxadm_xlsx.cell( p_col => 1, p_row => 2, p_value=> ''Leave Report'' , ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_alignment =>  xxadm.xxadm_xlsx.get_Alignment (p_horizontal => ''center''),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 1, p_row => 3, p_value => ''Print date: ''||to_char(sysdate,''dd-mon-yyyy hh:mi''), ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_fontsize=> 10, p_bold=> false),',
'                       p_alignment =>  xxadm.xxadm_xlsx.get_Alignment (p_horizontal => ''center''),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'/*xxadm.xxadm_xlsx.cell( p_col => 3, p_row => 3, p_value => sysdate, ',
'                       p_numFmtId => xxadm.xxadm_xlsx.get_numFmt( xxadm.xxadm_xlsx.orafmt2excel( ''dd-mon-yyyy hh:mi'' )),',
'                       p_alignment =>  xxadm.xxadm_xlsx.get_Alignment (p_horizontal => ''left''),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));*/',
'xxadm.xxadm_xlsx.cell( p_col => 1, p_row => 4, p_value => ''Staff Id'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 2, p_row => 4, p_value => ''Employee Name'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 3, p_row => 4, p_value => ''Leave Type'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 4, p_row => 4, p_value => ''Start Date'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_numFmtId => xxadm.xxadm_xlsx.get_numFmt( xxadm.xxadm_xlsx.orafmt2excel( ''dd-mon-yyyy'' )),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 5, p_row => 4, p_value => ''End Date'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_numFmtId => xxadm.xxadm_xlsx.get_numFmt( xxadm.xxadm_xlsx.orafmt2excel( ''dd-mon-yyyy'' )),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 6, p_row => 4, p_value => ''Leave Days'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_numFmtId => xxadm.xxadm_xlsx.get_numFmt( xxadm.xxadm_xlsx.orafmt2excel( ''dd-mon-yyyy'' )),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 7, p_row => 4, p_value => ''&AP_SUBORG_LABEL.'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 8, p_row => 4, p_value => ''Status'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'xxadm.xxadm_xlsx.cell( p_col => 9, p_row => 4, p_value => ''Created Date'', ',
'                       p_fontId => xxadm.xxadm_xlsx.get_font(p_name => ''Calibri'', p_bold=> true),',
'                       p_numFmtId => xxadm.xxadm_xlsx.get_numFmt( xxadm.xxadm_xlsx.orafmt2excel( ''dd-mon-yyyy'' )),',
'                       p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'--raise_Application_error(-20001,''error'');',
'FOR c0 IN (SELECT rownum rnum, x.ID,',
'    x.staff_id,',
'    x.leave_type_code,',
'    x.leave_type_name,',
'    x.start_date,',
'    x.end_date,',
'    x.pending_leave_days,',
'    x.replacement,',
'    y.full_name replacement_name,',
'    z.full_name staff_name,',
'    x.contact_address,',
'    x.contact_number,',
'    x.created_date,',
'    y.sub_organization_name,',
'    NVL(x.workflow_status,''PENDING'') workflow_status,',
'    x.leave_days  leave_days ',
' FROM xxhrms.xxhrms_ss_leave x, xxhrms.xxhrms_assignment_details_V y, xxhrms.xxhrms_people Z',
' WHERE x.replacement = y.person_id(+)',
'AND x.staff_id = NVL(:P44_EMPLOYEE,x.staff_id)',
'AND x.staff_id = z.person_id ',
'AND z.COMPANY_CODE = :AP_COMPANY_CODE',
'AND sub_organization_code = NVL(:P44_SUB_ORGANIZATION,sub_organization_Code)',
'and created_date between :P44_START and :P44_END',
'and leave_type_code = NVL(:P44_LEAVE_TYPE, leave_type_code)',
'AND workflow_status = NVL(:P44_LEAVE_STATUS, workflow_status))',
'LOOP',
'  xxadm.xxadm_xlsx.cell( p_col => 1, p_row => 4+c0.rnum, p_value => c0.staff_id, p_fillid => xxadm.xxadm_xlsx.get_fill(''solid'',''DEEAF6''));',
'  xxadm.xxadm_xlsx.cell( p_col => 2, p_row => 4+c0.rnum, p_value => c0.staff_name);',
'  xxadm.xxadm_xlsx.cell( p_col => 3, p_row => 4+c0.rnum, p_value => c0.leave_type_name);',
'  xxadm.xxadm_xlsx.cell( p_col => 4, p_row => 4+c0.rnum, p_value => c0.start_date);',
'  xxadm.xxadm_xlsx.cell( p_col => 5, p_row => 4+c0.rnum, p_value => c0.end_date);',
'  xxadm.xxadm_xlsx.cell( p_col => 6, p_row => 4+c0.rnum, p_value => c0.leave_days);',
'  xxadm.xxadm_xlsx.cell( p_col => 7, p_row => 4+c0.rnum, p_value => c0.sub_organization_name);',
'  xxadm.xxadm_xlsx.cell( p_col => 8, p_row => 4+c0.rnum, p_value => c0.workflow_status);',
'  xxadm.xxadm_xlsx.cell( p_col => 9, p_row => 4+c0.rnum, p_value => to_char(c0.created_date,''dd-Mon-YYYY''));',
'END LOOP;',
'--raise_Application_error(-20001,v_sql);',
'  --xxadm.xxadm_xlsx.query2sheet(v_sql);',
' v_blob := xxadm.xxadm_xlsx.finish;',
'  OWA_UTIL.mime_header (''application/xls'', FALSE);',
'  HTP.p (''Content-Length: '' || DBMS_LOB.GETLENGTH(v_blob));',
'  HTP.p (''Content-Disposition: attachment; filename="Leave_Report.xls"'');',
'  OWA_UTIL.http_header_close;',
'  WPG_DOCLOAD.download_file(v_blob);  ',
'  apex_application.g_unrecoverable_error := true;  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15178864360630885)
,p_internal_uid=>15182624666630891
);
wwv_flow_imp.component_end;
end;
/
