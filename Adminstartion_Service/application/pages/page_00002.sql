prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Password Policy'
,p_alias=>'AH201'
,p_page_mode=>'MODAL'
,p_step_title=>'Password Policy'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3743233411059720)
,p_plug_name=>'Password Policy'
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3744082451059721)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5432132346166684)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3754091333059742)
,p_plug_name=>'Password Policy'
,p_icon_css_classes=>'fa-key'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3743612545059720)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3744082451059721)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3743778334059720)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3744082451059721)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3743907588059720)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3744082451059721)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3743819648059720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3744082451059721)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P2_PASSWORD_POLICY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3746752307059729)
,p_name=>'P2_PASSWORD_POLICY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3747132564059731)
,p_name=>'P2_MINIMUM_PASSWORD_LENGHT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Minimum Password Length'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3747540091059732)
,p_name=>'P2_MUST_CONTAIN_ALPHABET'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Must Contain Alphabet'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3747955015059733)
,p_name=>'P2_MUST_CONTAIN_NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Must Contain Number'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3748350383059733)
,p_name=>'P2_MUST_CONTAIN_CHARACTER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Must Contain Character'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3748772997059734)
,p_name=>'P2_MUST_CONTAIN_UPPERCASE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Must Contain Upper Case'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3749156365059735)
,p_name=>'P2_MUST_NOT_CONTAIN_USERNAME'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Must Not Cotain Username'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3749562782059735)
,p_name=>'P2_MUST_NOT_CONTAIN_KEYWORD'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Must Not Contain Keyword'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>15
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3749963517059736)
,p_name=>'P2_ALLOWED_CHARACTER_LIST'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Allowed Character List'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Special characters such as !@#$%^&*()_+'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750367330059737)
,p_name=>'P2_MAX_INVALID_LOGON_ATTEMPT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Max Invalid Logon Attempt'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3750729992059737)
,p_name=>'P2_MAX_PASSWORD_LIFE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Max Password Life (Days)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751156666059738)
,p_name=>'P2_ENFORCE_CHANGE_ON_LOGON'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Enforce Change On Logon'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751527549059739)
,p_name=>'P2_CREATED_BY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751987888059739)
,p_name=>'P2_DATE_CREATED'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3752347722059740)
,p_name=>'P2_UPDATED_BY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3752783625059740)
,p_name=>'P2_DATE_UPDATED'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3753101104059741)
,p_name=>'P2_CAN_REUSE_PASSWORD'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Can Reuse Password'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38085670757357827)
,p_name=>'P2_COMPANY_CODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55656005341708424)
,p_name=>'P2_USE_2FA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Use 2FA'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55656167149708425)
,p_name=>'P2_TOKEN_EXP_TIME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3743233411059720)
,p_prompt=>'Token Expiry Time (Minute)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3658637052340335)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P2_MINIMUM_PASSWORD_LENGHT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Item must be numeric'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(3747132564059731)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3658791664340336)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'P2_MAX_INVALID_LOGON_ATTEMPT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Item must be numeric'
,p_associated_item=>wwv_flow_imp.id(3750367330059737)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3744711998059723)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3743612545059720)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3745240906059724)
,p_event_id=>wwv_flow_imp.id(3744711998059723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3713199504441935)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update  xxadm.XXADM_PASSWORD_POLICY',
'set     PASSWORD_POLICY_ID = :P2_PASSWORD_POLICY_ID,',
'        MINIMUM_PASSWORD_LENGHT =  :P2_MINIMUM_PASSWORD_LENGHT,',
'        MUST_CONTAIN_ALPHABET =   :P2_MUST_CONTAIN_ALPHABET,',
'        MUST_CONTAIN_NUMBER =     :P2_MUST_CONTAIN_NUMBER,',
'        MUST_CONTAIN_CHARACTER  =  :P2_MUST_CONTAIN_CHARACTER,',
'        MUST_CONTAIN_UPPERCASE =     :P2_MUST_CONTAIN_UPPERCASE,',
'        MUST_NOT_CONTAIN_USERNAME =  :P2_MUST_NOT_CONTAIN_USERNAME,',
'        MUST_NOT_CONTAIN_KEYWORD =  :P2_MUST_NOT_CONTAIN_KEYWORD,',
'        ALLOWED_CHARACTER_LIST =   :P2_ALLOWED_CHARACTER_LIST,',
'        MAX_INVALID_LOGON_ATTEMPT =   :P2_MAX_INVALID_LOGON_ATTEMPT,',
'        MAX_PASSWORD_LIFE  =     :P2_MAX_PASSWORD_LIFE,',
'        ENFORCE_CHANGE_ON_LOGON  =   :P2_ENFORCE_CHANGE_ON_LOGON,',
'        CAN_REUSE_PASSWORD   =   :P2_CAN_REUSE_PASSWORD,',
'        TOKEN_EXP_TIME        =  :P2_TOKEN_EXP_TIME,',
'        USE_2FA                = :P2_USE_2FA',
'where PASSWORD_POLICY_ID = :P2_PASSWORD_POLICY_ID;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3743819648059720)
,p_process_success_message=>'Action Processed'
,p_internal_uid=>3713199504441935
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3753689403059741)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>3753689403059741
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3658582631340334)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  PASSWORD_POLICY_ID,',
'        MINIMUM_PASSWORD_LENGHT,',
'        MUST_CONTAIN_ALPHABET,',
'        MUST_CONTAIN_NUMBER,',
'        MUST_CONTAIN_CHARACTER,',
'        MUST_CONTAIN_UPPERCASE,',
'        MUST_NOT_CONTAIN_USERNAME,',
'        MUST_NOT_CONTAIN_KEYWORD,',
'        ALLOWED_CHARACTER_LIST,',
'        MAX_INVALID_LOGON_ATTEMPT,',
'        MAX_PASSWORD_LIFE,',
'        ENFORCE_CHANGE_ON_LOGON,',
'        CAN_REUSE_PASSWORD,',
'        COMPANY_CODE,',
'        USE_2FA,',
'        TOKEN_EXP_TIME',
'into    :P2_PASSWORD_POLICY_ID,',
'        :P2_MINIMUM_PASSWORD_LENGHT,',
'        :P2_MUST_CONTAIN_ALPHABET,',
'        :P2_MUST_CONTAIN_NUMBER,',
'        :P2_MUST_CONTAIN_CHARACTER,',
'        :P2_MUST_CONTAIN_UPPERCASE,',
'        :P2_MUST_NOT_CONTAIN_USERNAME,',
'        :P2_MUST_NOT_CONTAIN_KEYWORD,',
'        :P2_ALLOWED_CHARACTER_LIST,',
'        :P2_MAX_INVALID_LOGON_ATTEMPT,',
'        :P2_MAX_PASSWORD_LIFE,',
'        :P2_ENFORCE_CHANGE_ON_LOGON,',
'        :P2_CAN_REUSE_PASSWORD,',
'        :P2_COMPANY_CODE,',
'        :P2_USE_2FA,',
'        :P2_TOKEN_EXP_TIME',
'from xxadm.XXADM_PASSWORD_POLICY',
'where company_code = :AP_COMPANY_CODE;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3658582631340334
);
wwv_flow_imp.component_end;
end;
/
