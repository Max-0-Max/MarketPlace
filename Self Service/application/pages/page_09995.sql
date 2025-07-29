prompt --application/pages/page_09995
begin
--   Manifest
--     PAGE: 09995
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
 p_id=>9995
,p_name=>'HARTLEYS'
,p_alias=>'HARTLEYS'
,p_step_title=>'HARTLEYS'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' .t-PageBody--login .t-Body{',
'     background-repeat: no-repeat;',
'     background-color: rgba(0, 0, 0, 0);',
'     background-image: url(#WORKSPACE_IMAGES#hartleys-banner.png);',
'     background-size: cover;',
'}',
'',
'.t-Login-region {',
'   background-color:rgba(255, 255, 255, 1);',
'   border-radius: 15px; ',
'    ',
'}',
'.t-Form-checkboxLabel{',
'    background-color:rgba(255, 0, 0, 1);',
'}'))
,p_step_template=>wwv_flow_imp.id(2467815303224035)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(235635358775425110)
,p_plug_name=>'<img src="#WORKSPACE_IMAGES#hartleys-logo.png" width="400px" ></img>'
,p_icon_css_classes=>' #WORKSPACE_IMAGES#Picture1.png'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2508545743224068)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(235640078648425116)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(235635358775425110)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(511361478390172456)
,p_plug_name=>'forgot_password'
,p_parent_plug_id=>wwv_flow_imp.id(235635358775425110)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align=center ><a style="color:#083061" href="f?p=2000004:10012">Forgot Password?</a></p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(55460890396817694)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(235635358775425110)
,p_button_name=>'Job_Portal'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Job Portal'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=205:LOGIN'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(55461216053817694)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(235635358775425110)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<p style="color:White; ">Sign In</>'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55461666458817694)
,p_name=>'P9995_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(235635358775425110)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55462096320817693)
,p_name=>'P9995_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(235635358775425110)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55462492612817693)
,p_name=>'P9995_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(235635358775425110)
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME1'
,p_lov=>'.'||wwv_flow_imp.id(24030442461140955)||'.'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55463967147817692)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'validate_pwd_policy'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
'BEGIN',
'  :AP_PWD_POLICY:= xxadm_security_pkg.validate_password_policy(UPPER(:P9995_USERNAME),2,null);',
'  if :AP_PWD_POLICY=1 then',
'       update xxadm.xxadm_password',
'           set password_change=1',
'              where UPPER(logname) = UPPER(:P9995_USERNAME);',
'  end if;',
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55463967147817692
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55464761149817691)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9995_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55464761149817691
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55464398091817692)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'apex_authentication.login(',
'    p_username => :P9995_USERNAME,',
'    p_password => :P9995_PASSWORD );',
'exception',
'when others then',
'    null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55464398091817692
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55465512645817691)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55465512645817691
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55465176406817691)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9995_USERNAME := apex_authentication.get_login_username_cookie;',
':P9995_REMEMBER := case when :P9995_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>55465176406817691
);
wwv_flow_imp.component_end;
end;
/
