prompt --application/pages/page_10012
begin
--   Manifest
--     PAGE: 10012
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
 p_id=>10012
,p_name=>'Forgot_password'
,p_step_title=>'Forgot Password'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(2467815303224035)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(373138607792486334)
,p_plug_name=>'Reset Password'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305278552568134953)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(373138607792486334)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(305280245932134936)
,p_branch_name=>'go_to_login'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:9999::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(305278552568134953)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305278913729134949)
,p_name=>'P10012_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(373138607792486334)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305279325216134947)
,p_name=>'P10012_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(373138607792486334)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'onChange="this.value=this.value.toUpperCase();"'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305279732159134938)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_cnt number:=0;',
'   v_passwd varchar2(30);',
'   v_msg varchar2(4000);',
'   ',
'begin',
'    for i in(select *',
'                 from xxadm.xxadm_password pass',
'                 where upper(pass.logname) = upper(:P10012_USERNAME)',
'                 and pass.status = ''ACTIVE''',
'             and rownum=1)',
'    loop',
'        begin',
'            v_cnt := 1;',
'            select xxadm.generate_password(:P10012_USERNAME,sysdate) into v_passwd from dual;',
'            xxadm.xxadm_security_pkg.alter_user (:P10012_USERNAME, v_passwd ,i.staff_id,i.name,i.LEVELS,',
'                            i.status,i.company_code,i.sub_org,i.department,i.unit,i.edate,''1'');',
'            ',
'        exception',
'          when others then',
'            rollback;',
'                    v_msg:=sqlerrm;',
'                    RAISE_APPLICATION_ERROR(-20001,''Your Username is incorrect. Kindly enter your correct Username or Contact the Human Resource Department.''); ',
'        end;',
'     end loop;',
'     ',
'     if v_cnt != 1 then',
'         RAISE_APPLICATION_ERROR(-20001,''Your Username is incorrect. Kindly enter your correct Username or Contact the Human Resource Department.'');',
'     end if;',
'       ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'The username provided does not exist or your account has been locked. Kindly enter a valid username or contact the Human Resource Department.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(305278552568134953)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Password Reset Successful.',
'The new password has been sent to the Work Email associated with the username provided.'))
,p_internal_uid=>305279732159134938
);
wwv_flow_imp.component_end;
end;
/
