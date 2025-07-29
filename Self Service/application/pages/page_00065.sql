prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_name=>'Performance Improvement Plan'
,p_alias=>'331'
,p_page_mode=>'MODAL'
,p_step_title=>'Performance Improvement Plan'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(195039565133850656)
,p_plug_name=>'Performance Improvement Plan'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(195040216434850656)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2488504312224053)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97623640730316107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(195040216434850656)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97624094940316108)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(195040216434850656)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97624479471316108)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(195040216434850656)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(97624873303316109)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(195040216434850656)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(97630426682316118)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP:P64_ID:&P65_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(97624873303316109)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(97630811388316119)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(97624094940316108)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97615326133316085)
,p_name=>'P65_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97615759908316086)
,p_name=>'P65_SETUP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97616170647316087)
,p_name=>'P65_PLAN_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97616546524316087)
,p_name=>'P65_STAFF_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_source=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.full_name,x.person_id',
'  from xxhrms.xxhrms_people x, xxhrms.XXHRMS_assignments y',
'where x.person_id = y.person_id(+)',
'--and y.supervisor = (select staff_id from xxadm_password where logname = :app_user)',
'and x.employment_status = ''Active Employee''',
'and X.company_code = :AP_COMPANY_CODE',
'AND X.COMPANY_CODE = Y.COMPANY_CODE',
'and SUPERVISOR=:AP_STAFF_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>50
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'NOT_ENTERABLE',
  'initial_fetch', 'FIRST_ROWSET',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97616977461316092)
,p_name=>'P65_SUPERVISOR_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'SUPERVISOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97617369738316093)
,p_name=>'P65_EMPLOYEE_SIGNATURE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Signature'
,p_source=>'EMPLOYEE_SIGNATURE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NOT SIGNED',
  'off_value', 'N',
  'on_label', 'SIGNED',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97617740444316094)
,p_name=>'P65_EMP_DATE_SUBMITTED'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'EMP_DATE_SUBMITTED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97618162095316094)
,p_name=>'P65_SUPERVISOR_COMMENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Supervisor Comment'
,p_source=>'SUPERVISOR_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97618544725316095)
,p_name=>'P65_SUPERVISOR_SIGN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Supervisor Sign'
,p_source=>'SUPERVISOR_SIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NOT SIGNED',
  'off_value', 'N',
  'on_label', 'SIGNED',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97618959884316100)
,p_name=>'P65_SUPERVISOR_DATE_SIGNED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'SUPERVISOR_DATE_SIGNED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97619348086316101)
,p_name=>'P65_HR_DATE_RECEIVED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'HR_DATE_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97619745492316101)
,p_name=>'P65_RECEIVING_OFFICER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'RECEIVING_OFFICER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97620177637316102)
,p_name=>'P65_RECEIVING_OFFICER_SIGN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'RECEIVING_OFFICER_SIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97620511468316102)
,p_name=>'P65_REVIEWING_OFFICER_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'REVIEWING_OFFICER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97620980199316103)
,p_name=>'P65_REVIEWING_OFFICER_SIGN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'REVIEWING_OFFICER_SIGN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97621392411316104)
,p_name=>'P65_REVIEWING_OFFICER_COMMENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'REVIEWING_OFFICER_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97621753100316104)
,p_name=>'P65_COMPANY_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97622167892316105)
,p_name=>'P65_EMPLOYEE_COMMENT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Comment'
,p_source=>'EMPLOYEE_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97622588929316105)
,p_name=>'P65_START_DATE'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97622967252316106)
,p_name=>'P65_END_DATE'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(195039565133850656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_date', '&P65_START_DATE.',
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(97625301409316111)
,p_validation_name=>'P65_EMP_DATE_SUBMITTED must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P65_EMP_DATE_SUBMITTED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(97617740444316094)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(97625793705316111)
,p_validation_name=>'P65_SUPERVISOR_DATE_SIGNED must be timestamp'
,p_validation_sequence=>100
,p_validation=>'P65_SUPERVISOR_DATE_SIGNED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(97618959884316100)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(97626119855316112)
,p_validation_name=>'P65_HR_DATE_RECEIVED must be timestamp'
,p_validation_sequence=>110
,p_validation=>'P65_HR_DATE_RECEIVED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(97619348086316101)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97628099712316114)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(97623640730316107)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97628536060316115)
,p_event_id=>wwv_flow_imp.id(97628099712316114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(97628961856316116)
,p_name=>'sign'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_EMPLOYEE_SIGNATURE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97629420579316116)
,p_event_id=>wwv_flow_imp.id(97628961856316116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_EMP_DATE_SUBMITTED'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P65_EMPLOYEE_SIGNATURE = ''Y'' THEN',
'	return sysdate;',
'ELSE',
'	RETURN NULL;',
'END IF;'))
,p_attribute_07=>'P65_EMPLOYEE_SIGNATURE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(97629928423316117)
,p_event_id=>wwv_flow_imp.id(97628961856316116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_SUPERVISOR_DATE_SIGNED'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97626466033316112)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XXPERMGT_PERFORMANCE_IMPROVEMENT_PLAN'
,p_attribute_01=>'XXPERMGT'
,p_attribute_02=>'XXPERMGT_PERFORMANCE_IMPROVEMENT_PLAN'
,p_attribute_03=>'P65_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>97626466033316112
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97626898067316113)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XXPERMGT_PERFORMANCE_IMPROVEMENT_PLAN'
,p_attribute_01=>'XXPERMGT'
,p_attribute_02=>'XXPERMGT_PERFORMANCE_IMPROVEMENT_PLAN'
,p_attribute_03=>'P65_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P65_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>97626898067316113
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97627225105316113)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(97624094940316108)
,p_internal_uid=>97627225105316113
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97627610172316114)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(97624479471316108)
,p_internal_uid=>97627610172316114
);
wwv_flow_imp.component_end;
end;
/
