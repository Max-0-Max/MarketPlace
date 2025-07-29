prompt --application/pages/page_10002
begin
--   Manifest
--     PAGE: 10002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>10002
,p_name=>'Forgot Password'
,p_alias=>'FORGOT-PASSWORD'
,p_step_title=>'Forgot Password'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80176398610797526)
,p_plug_name=>'Reset Password'
,p_title=>'Reset Password'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_plug_display_column=>4
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80176770456797530)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(80176398610797526)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80176413990797527)
,p_name=>'P10002_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(80176398610797526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80176577190797528)
,p_name=>'P10002_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(80176398610797526)
,p_prompt=>'Enter Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>1609122147107268652
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80177220676797535)
,p_name=>'P10002_TOKEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(80176398610797526)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(80177012644797533)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_user_id NUMBER;',
'    v_email   VARCHAR2(300);',
'    v_token   VARCHAR2(50);',
'BEGIN ',
'   -- Validate user and fetch email only if status is ''A''',
'   SELECT USER_ID, EMAIL_ADDRESS INTO v_user_id, v_email',
'   FROM (',
'     SELECT USER_ID, EMAIL_ADDRESS',
'     FROM XXMRKT.XXMRKT_MARKETPLACE_USERS',
'     WHERE USER_NAME = :P10002_USERNAME',
'       AND STATUS = ''A''',
'   )',
'   WHERE ROWNUM = 1;',
'',
'   -- Generate Reset Token',
'   v_token := DBMS_RANDOM.STRING(''X'', 30);',
'',
'   -- Store token and expiry date',
'   UPDATE XXMRKT.XXMRKT_MARKETPLACE_USERS',
'   SET RESET_TOKEN = v_token,',
'       RESET_TOKEN_EXPIRY = SYSDATE + INTERVAL ''3'' MINUTE',
'   WHERE USER_ID = v_user_id;',
'',
'   -- Send Email',
'--    APEX_MAIL.SEND(',
'--        p_to   => v_email,',
'--        p_from => ''noreply@example.com'',',
'--        p_subj => ''Reset Your Password'',',
'--        p_body => ''Click the link to reset your password: '' ||',
'--                  APEX_UTIL.PREPARE_URL(',
'--                     p_url => ''f?p=2000008:10009::NO::P10009_TOKEN:'' || v_token',
'--                  )',
'--    );',
'',
'--    APEX_MAIL.PUSH_QUEUE;',
'',
'--    -- Clear session state and redirect',
'--    APEX_UTIL.SET_SESSION_STATE(''P10002_USERNAME'', NULL);',
'--    APEX_UTIL.REDIRECT_URL(''f?p=2000008:10002'');',
'',
'EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
'       APEX_ERROR.ADD_ERROR(',
'           p_message          => ''Invalid username or inactive account.'',',
'           p_display_location => APEX_ERROR.c_inline_in_notification',
'       );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Username doesnt exist'
,p_process_when_button_id=>wwv_flow_imp.id(80176770456797530)
,p_process_success_message=>'Check Your Email for Reset Link'
,p_internal_uid=>80177012644797533
);
wwv_flow_imp.component_end;
end;
/
