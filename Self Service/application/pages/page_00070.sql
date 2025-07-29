prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_name=>'Job Details'
,p_alias=>'DA7'
,p_step_title=>'Job Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(2478885491224046)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(202111306942101427)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>'<b>An applicant profile should be created before applying.</b>'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P70_APPLICANT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(202111437437101428)
,p_name=>'Vacancy Details'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXREC.XXREC_JOB_DETAILS_V',
'          where ID=:P70_JOB_ID  ',
'         -- and COMPANY_CODE= :AP_COMPANY_CODE'))
,p_display_when_condition=>'P70_APPLICANT_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
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
 p_id=>wwv_flow_imp.id(101272560001977348)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101272937192977355)
,p_query_column_id=>2
,p_column_alias=>'DATE_LISTED'
,p_column_display_sequence=>2
,p_column_heading=>'Date Listed'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101273345933977356)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101273736638977357)
,p_query_column_id=>4
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101274162884977357)
,p_query_column_id=>5
,p_column_alias=>'POSITION_NAME'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101274528615977358)
,p_query_column_id=>6
,p_column_alias=>'WF_STATUS'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101274961063977359)
,p_query_column_id=>7
,p_column_alias=>'EXPIRY_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Expiry Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101275383235977359)
,p_query_column_id=>8
,p_column_alias=>'JOB_DESCRIPTION'
,p_column_display_sequence=>8
,p_column_heading=>'Job Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101275781126977363)
,p_query_column_id=>9
,p_column_alias=>'JOB_REQUIREMENTS'
,p_column_display_sequence=>9
,p_column_heading=>'Job Requirements'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101276125486977364)
,p_query_column_id=>10
,p_column_alias=>'REQUIRED_VACANCY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101276527369977364)
,p_query_column_id=>11
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101276947407977365)
,p_query_column_id=>12
,p_column_alias=>'COMPANY_NAME'
,p_column_display_sequence=>12
,p_column_heading=>'Company Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39441888836878215)
,p_query_column_id=>13
,p_column_alias=>'SUB_ORGANIZATION_ID'
,p_column_display_sequence=>23
,p_column_heading=>'Sub Organization Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39441939428878216)
,p_query_column_id=>14
,p_column_alias=>'SUB_ORGANIZATION_NAME'
,p_column_display_sequence=>33
,p_column_heading=>'Sub Organization Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39442029941878217)
,p_query_column_id=>15
,p_column_alias=>'JOB_CODE'
,p_column_display_sequence=>43
,p_column_heading=>'Job Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101277354324977366)
,p_query_column_id=>16
,p_column_alias=>'STATUS'
,p_column_display_sequence=>13
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101271846209977326)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(202111306942101427)
,p_button_name=>'CrtBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Profile'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101277744322977366)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(202111437437101428)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101278168268977367)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(202111437437101428)
,p_button_name=>'APPLY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P70_APPLIED_ID'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(39442192359878218)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(101278168268977367)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101278548289977367)
,p_name=>'P70_JOB_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(202111437437101428)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101278909804977388)
,p_name=>'P70_APPLIED_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(202111437437101428)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101279263429977396)
,p_name=>'P70_APPLICANT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(202111437437101428)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101279630603977396)
,p_name=>'P70_COM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(202111437437101428)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101280820064977452)
,p_name=>'APPLY FOR JOBS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(101278168268977367)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101281347167977454)
,p_event_id=>wwv_flow_imp.id(101280820064977452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you certain of this Job Application? The application is not reversible.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101281841291977455)
,p_event_id=>wwv_flow_imp.id(101280820064977452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CT NUMBER;',
'APPS_ID NUMBER;',
'V_EMAIL VARCHAR2(50);',
'YY NUMBER;',
'BEGIN',
'SELECT COUNT(*) INTO YY FROM XXREC.XXREC_JOB_APPLICANTS WHERE INTERNAL_PERSON_ID =UPPER(:AP_STAFF_ID);',
'IF YY>0',
'THEN ',
'SELECT APP_ID, EMAIL_ADDRESS INTO APPS_ID, V_EMAIL FROM XXREC.XXREC_JOB_APPLICANTS WHERE INTERNAL_PERSON_ID =UPPER(:AP_STAFF_ID);',
'',
'insert into XXREC.XXREC_APPLIED_FOR(APPLICATION_ID,JOB_ID,CREATE_DATE, STAFF_ID)',
'values (APPS_ID,:p70_job_id,SYSDATE,:AP_STAFF_ID);',
'END IF;',
'IF V_EMAIL IS NOT NULL THEN ',
'-- xxrec.applicant_apply(:P89_JOB_ID,V_EMAIL,);',
'NULL;',
'END IF;',
'END;'))
,p_attribute_02=>'P70_JOB_ID,APP_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101282380536977456)
,p_event_id=>wwv_flow_imp.id(101280820064977452)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'You application has been received. Thanks for applying.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101282889012977457)
,p_event_id=>wwv_flow_imp.id(101280820064977452)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101280087793977449)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APPLICATION STATUS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CT NUMBER;',
'ED NUMBER;',
'APPS_ID NUMBER;',
'YY NUMBER;',
'BEGIN',
'SELECT COUNT(*) INTO YY FROM XXREC.XXREC_JOB_APPLICANTS WHERE INTERNAL_PERSON_ID = :AP_STAFF_ID;',
'IF YY>0',
'THEN ',
'	SELECT APP_ID INTO APPS_ID FROM XXREC.XXREC_JOB_APPLICANTS WHERE INTERNAL_PERSON_ID = :AP_STAFF_ID;',
'	:P70_APPLICANT_ID := APPS_ID;',
'',
'	SELECT COUNT(*) INTO CT FROM XXREC.XXREC_APPLIED_FOR',
'	WHERE JOB_ID=:P70_JOB_ID AND APPLICATION_ID=APPS_ID;',
'',
'	SELECT COUNT(*) INTO ED FROM XXREC.XXREC_JOB_DETAILS',
'	WHERE ID=:P70_JOB_ID AND SYSDATE>EXPIRY_DATE;',
'',
'	IF CT>0	THEN ',
'		SELECT ID INTO :P70_APPLIED_ID FROM XXREC.XXREC_APPLIED_FOR',
'		WHERE JOB_ID=:P70_JOB_ID AND APPLICATION_ID=APPS_ID;',
'	ELSIF ED>0 THEN ',
'		:P70_APPLIED_ID :=1;',
'	ELSE',
'		:P70_APPLIED_ID :=0;',
'	END IF;',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>101280087793977449
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101280464412977450)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    XXREC.POPULATE_RECORD(p_job_id =>:P248_JOB_ID, p_staff_id => :AP_STAFF_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(101271846209977326)
,p_internal_uid=>101280464412977450
);
wwv_flow_imp.component_end;
end;
/
