prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Change Password'
,p_alias=>'CHANGE-PASSWORD'
,p_step_title=>'Change Password'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function validateUser(){',
'   apex.message.alert( msg, function(){',
'    console.log("Dialog Closed!")',
'    }, {',
'        title: `Heads Up!!!`,',
'        style: "information",',
'        dialogClasses: "my-custom-class",',
'        iconClasses: "fa fa-info-circle fa-2x",',
'        okLabel: "Okay!"',
'    } );',
'',
'    return false;',
'}',
'',
'',
'function successfulUser(msg, title){',
' // let msg = $v(''P71_ELIGIBILITY_ERR'');',
'   apex.message.alert( `${msg}`, function(){',
'    console.log("Dialog Closed!")',
'    }, {',
'        title: `${title}`,',
'        style: "success",',
'        dialogClasses: "my-custom-class",',
'        iconClasses: "fa fa-check-circle fa-2x",',
'        okLabel: "Okay!"',
'    } );',
'',
'    return false;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-AlertMessage{',
'    padding: 25px;',
'}',
'',
'.a-AlertMessage-icon{',
'    background-color: #D0E4FB;',
'     padding: 10px;',
'}',
'',
'.a-AlertMessage-title {',
'    font-family: Helvetica;',
'}',
'',
'.a-AlertMessage-details{',
'    font-family: Helvetica;',
'}',
'',
'js-confirmBtn ui-button ui-corner-all ui-widget ui-button--hot{',
'    font-family: Helvetica;',
'}',
'',
'/* Cancel button (optional separate styling) */',
'.ui-dialog.my-custom-class .ui-dialog-buttonpane .ui-button:contains("Cancel") {',
'  background-color: #e0e0e0;',
'  color: #333;',
'}',
'',
'body{',
'    font-family: Helvetica;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67124510217687402)
,p_plug_name=>'Change Password'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67274024977815244)
,p_plug_name=>'Change Password'
,p_icon_css_classes=>'fa-lock-password'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(56394687327590424)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67125534464687412)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(67124510217687402)
,p_button_name=>'Change_Password'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Password'
,p_icon_css_classes=>'fa-exchange'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(67127398013687430)
,p_branch_name=>'Redirect to Login Page'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67124681985687403)
,p_name=>'P3_USER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67124510217687402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67125257681687409)
,p_name=>'P3_OLD_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67124510217687402)
,p_prompt=>'Old Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67125388271687410)
,p_name=>'P3_NEW_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67124510217687402)
,p_prompt=>'New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67125488029687411)
,p_name=>'P3_CONFIRM_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(67124510217687402)
,p_prompt=>'Confirm Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67126369273687420)
,p_name=>'P3_ELIGIBILITY_ERR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(67124510217687402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67126719165687424)
,p_name=>'P3_COMPANY_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(67124510217687402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67126916339687426)
,p_name=>'P3_FORMER_PASSWORD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(67124510217687402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(84627326998110707)
,p_name=>'P3_TOKEN'
,p_item_sequence=>80
,p_use_cache_before_default=>'NO'
,p_source=>':TOKEN'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67126082346687417)
,p_validation_name=>'Confirm Password Check'
,p_validation_sequence=>10
,p_validation=>':P3_NEW_PASSWORD = :P3_CONFIRM_PASSWORD'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'New password and confirm password must match.'
,p_associated_item=>wwv_flow_imp.id(67125488029687411)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67127461990687431)
,p_validation_name=>'Confirm password is not repeated'
,p_validation_sequence=>20
,p_validation=>':P3_OLD_PASSWORD != :P3_NEW_PASSWORD'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'You cannot use the same password '
,p_associated_item=>wwv_flow_imp.id(67125388271687410)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67127053978687427)
,p_validation_name=>'Confirm Old Password'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P3_FORMER_PASSWORD = XXADM.XXADM_SECURITY_PKG.get_hash (p_username => :P3_USER_NAME, ',
'                                    p_password => :P3_OLD_PASSWORD',
'                                    )'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'wrong old password'
,p_associated_item=>wwv_flow_imp.id(67125257681687409)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67126521435687422)
,p_validation_name=>'Validate User'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN XXMRKT.XXMRKT_MARKETPLACE_PKG.validate_user( p_username => nvl(upper(:P3_USER_NAME), upper(:AP_USER_NAME)),',
'                                                    p_password => :P3_NEW_PASSWORD,',
'                                                    p_old_password => :P3_OLD_PASSWORD,',
'                                                    p_company_code => :P3_COMPANY_CODE',
');'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(67125388271687410)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67126677542687423)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_user_name varchar2(300);',
'    v_former_password varchar2(300);',
'BEGIN',
'    SELECT company_code, password',
'    INTO v_user_name, v_former_password',
'    FROM XXMRKT.XXMRKT_MARKETPLACE_USERS',
'    WHERE upper(USER_NAME) = nvl(upper(:P3_USER_NAME), upper(:AP_USER_NAME));',
'',
'    apex_util.set_session_state(p_name => ''P3_COMPANY_CODE'', p_value => v_user_name);',
'    apex_util.set_session_state(p_name => ''P3_FORMER_PASSWORD'', p_value => v_former_password);',
'EXCEPTION',
'    WHEN NO_dATA_FOUND THEN',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67126677542687423
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67127148769687428)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    XXMRKT.XXMRKT_MARKETPLACE_PKG.change_password(  p_username => nvl(upper(:P3_USER_NAME), upper(:AP_USER_NAME)), ',
'                                                    p_new_password => :P3_NEW_PASSWORD',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>67127148769687428
);
wwv_flow_imp.component_end;
end;
/
