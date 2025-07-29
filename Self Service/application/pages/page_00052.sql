prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_name=>'Validate Token'
,p_step_title=>'Validate Token'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(2467815303224035)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55656228848708426)
,p_plug_name=>'Validate Login'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55656409958708428)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(55656228848708426)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'AP_TOKEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(55656359316708427)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(55656228848708426)
,p_button_name=>'generate_token'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Generate Token'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(55657559039708439)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(55656409958708428)
,p_button_name=>'validate_login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Validate Login'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(55657962282708443)
,p_branch_name=>'go to home page'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(55657559039708439)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55656525101708429)
,p_name=>'P52_TOKEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(55656409958708428)
,p_prompt=>'Token'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(55657446778708438)
,p_validation_name=>'validate token'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF dbms_crypto.hash(utl_raw.cast_to_raw(:P52_TOKEN || :AP_STAFF_ID), 4 /* DBMS_CRYPTO.HASH_SH256 */) != :AP_TOKEN THEN',
'    return ''Invalid Token.'';',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(55657559039708439)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(55657668156708440)
,p_validation_name=>'not null'
,p_validation_sequence=>20
,p_validation=>'P52_TOKEN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# cannot be null.'
,p_when_button_pressed=>wwv_flow_imp.id(55657559039708439)
,p_associated_item=>wwv_flow_imp.id(55656525101708429)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(55657702056708441)
,p_validation_name=>'token expiry'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_expiry_time date;',
'BEGIN',
'select TOKEN_EXP into v_expiry_time',
'from xxadm.xxadm_token',
'where staff_id = :AP_STAFF_ID',
'AND COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'IF sysdate > v_expiry_time then ',
'    return ''Token has expired, generate a new token.'';',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(55657559039708439)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55656735239708431)
,p_name=>'GENERATE TOKEN'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(55656359316708427)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55656847646708432)
,p_event_id=>wwv_flow_imp.id(55656735239708431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_token number;',
'v_email varchar2(100);',
'v_token_expiry number;',
'v_check number;',
'l_body varchar2(1000);',
'l_body_html varchar2(1000);',
'v_hashedToken varchar2(2000);',
'l_id  number;',
'BEGIN',
'-- GENERATE TOKEN',
'v_token := round(dbms_random.value(100000,999999));',
'',
'v_hashedToken :=dbms_crypto.hash(utl_raw.cast_to_raw(v_token || :AP_STAFF_ID), 4 /* DBMS_CRYPTO.HASH_SH256 */);',
'',
'select nvl(TOKEN_EXP_TIME, 15) into v_token_expiry ',
'from xxadm.xxadm_password_policy ',
'where company_code = :AP_COMPANY_CODE;',
'',
'',
'-- GET EMAIL',
'select email into v_email',
'from xxhrms_people',
'where person_id = :AP_STAFF_ID',
'AND COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'select count(1) INTO v_check from xxadm.xxadm_token',
'where STAFF_ID = :AP_STAFF_ID',
'AND COMPANY_CODE = :AP_COMPANY_CODE ;',
'',
'IF v_check > 0 THEN',
'    UPDATE XXADM.XXADM_TOKEN',
'    SET HASHED_TOKEN = v_hashedToken,',
'        TOKEN_GEN = SYSDATE,',
'        TOKEN_EXP = SYSDATE + ((1/1440) * v_token_expiry)',
'        WHERE STAFF_ID = :AP_STAFF_ID',
'    AND COMPANY_CODE = :AP_COMPANY_CODE;',
'ELSE',
'    insert into xxadm.xxadm_token(STAFF_ID, USERNAME, EMAIL,  HASHED_TOKEN, TOKEN_GEN, TOKEN_EXP,COMPANY_CODE)',
'    VALUES (:AP_STAFF_ID,:AP_USERNAME, v_email,  v_hashedToken, SYSDATE, SYSDATE + ((1/1440) * v_token_expiry), :AP_COMPANY_CODE);',
'END IF;',
'',
'APEX_UTIL.SET_SESSION_STATE (',
'    p_name     => ''AP_TOKEN'',',
'    p_value    => v_hashedToken);',
'    ',
'APEX_UTIL.SET_SESSION_STATE (',
'    p_name     => ''AP_TOKEN_STATUS'',',
'    p_value    => ''INVALID'');',
'    ',
'--SEND MAIL',
'xxadm.send_token_email(p_token_expiry => v_token_expiry',
'                     , p_token        => v_token',
'                     , p_email        => v_email',
'                      );',
'					      ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55657222831708436)
,p_name=>'submit'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(55656359316708427)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55657386517708437)
,p_event_id=>wwv_flow_imp.id(55657222831708436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55657810367708442)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete token'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_SESSION_STATE (',
'    p_name     => ''AP_TOKEN_STATUS'',',
'    p_value    => ''VALID'');',
'    ',
'DELETE XXADM.XXADM_TOKEN',
'WHERE STAFF_ID = :AP_STAFF_ID',
'AND COMPANY_CODE = :AP_COMPANY_CODE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(55657559039708439)
,p_process_success_message=>'Token validated.'
,p_internal_uid=>55657810367708442
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72254622194353607)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'AP_TOKEN'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Token has been sent to your mail'
,p_internal_uid=>72254622194353607
);
wwv_flow_imp.component_end;
end;
/
