prompt --application/pages/page_09994
begin
--   Manifest
--     PAGE: 09994
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
 p_id=>9994
,p_name=>'NELMCO'
,p_alias=>'NELMCO'
,p_step_title=>'NELMCO'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' .t-PageBody--login .t-Body{',
'    background-repeat: no-repeat;',
'    background-color: rgba(0, 0, 0, 0);',
'    background-image: url(#APP_IMAGES#NELMC3.png);',
'    background-size: cover;',
'}',
'',
'.t-Login-region {',
'   background-color:rgba(255, 255, 255, 0.5);',
'   border-radius: 15px; ',
'}',
'',
'.t-Form-checkboxLabel{',
'    background-color:rgba(255, 0, 0, 1);',
'}',
'',
'.t-Login-logo {',
'   height: 0;',
'}'))
,p_step_template=>wwv_flow_imp.id(2467815303224035)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107211629024460829)
,p_plug_name=>'<img src="#APP_IMAGES#NELMCLOGO.png" width="250px" ></img>'
,p_icon_css_classes=>' #WORKSPACE_IMAGES#Picture1.png'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2508545743224068)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107216348897460835)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(107211629024460829)
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
 p_id=>wwv_flow_imp.id(382937748639208175)
,p_plug_name=>'forgot_password'
,p_parent_plug_id=>wwv_flow_imp.id(107211629024460829)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align=center ><a href="f?p=2000004:10012">Forgot Password?</a></p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77656098341153188)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107211629024460829)
,p_button_name=>'Job_Portal'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Job Portal'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=205:LOGIN'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77656301257153196)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(107211629024460829)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77656775893153201)
,p_name=>'P9994_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107211629024460829)
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
 p_id=>wwv_flow_imp.id(77657120620153209)
,p_name=>'P9994_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107211629024460829)
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
 p_id=>wwv_flow_imp.id(77657525877153210)
,p_name=>'P9994_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(107211629024460829)
,p_prompt=>'<i>Remember Username</i>'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME1'
,p_lov=>'.'||wwv_flow_imp.id(24030442461140955)||'.'
,p_field_template=>wwv_flow_imp.id(2560559984224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77658476145153223)
,p_name=>'P9994_DOMAIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(107211629024460829)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77659481259153236)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'validate_pwd_policy'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
'BEGIN',
'  :AP_PWD_POLICY:= xxadm_security_pkg.validate_password_policy(UPPER(:P9994_USERNAME),2,null);',
'  if :AP_PWD_POLICY=1 then',
'       update xxadm.xxadm_password',
'           set password_change=1',
'              where UPPER(logname) = UPPER(:P9994_USERNAME);',
'  end if;',
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>77659481259153236
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77660284300153243)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'Begin',
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9994_USERNAME) );',
'    ',
'    exception',
'when others then',
'    null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>77660284300153243
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77659827153153242)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   ',
'Begin',
'apex_authentication.login(',
'    p_username => :P9994_USERNAME,',
'    p_password => :P9994_PASSWORD );',
'exception',
'when others then',
'    null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>77659827153153242
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77661001539153244)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>77661001539153244
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77660627332153243)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Begin',
'',
'    :P9994_USERNAME := apex_authentication.get_login_username_cookie;',
'    :P9994_REMEMBER := case when :P9994_USERNAME is not null then ''Y'' end;',
'',
'    select OWA_UTIL.get_cgi_env (''REQUEST_PROTOCOL'') || ''://'' || OWA_UTIL.get_cgi_env (''HTTP_HOST'')',
'    into :P9994_DOMAIN',
'    from dual;',
'',
'    if INSTR(:P9994_DOMAIN,''primerabank.softsuite.com'')>0  then',
'        apex_util.redirect_url(p_url => ''f?p=2000004:PRIMERA:0:::::&tz=1%3A00'');',
'    end if;',
'    ',
'    if INSTR(:P9994_DOMAIN,''primeragroup.softsuite.com'')>0  then',
'        apex_util.redirect_url(p_url => ''f?p=2000004:PRIMERAGROUP:0:::::&tz=1%3A00'');',
'    end if;',
'    ',
'    ',
'exception',
'    when others then',
'    null;',
'End;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>77660627332153243
);
wwv_flow_imp.component_end;
end;
/
