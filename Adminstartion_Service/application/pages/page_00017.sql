prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'Switch &AP_ORGANIZATION_LABEL.'
,p_alias=>'BA1'
,p_page_mode=>'MODAL'
,p_step_title=>'Switch &AP_ORGANIZATION_LABEL.'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'350'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20194625466885025)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14424158758029419)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20194625466885025)
,p_button_name=>'Switch'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Switch'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14425800449029446)
,p_branch_name=>'Go To Page &P17_CUR_PAGE.'
,p_branch_action=>'f?p=&APP_ID.:&P17_CUR_PAGE.:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14424593023029424)
,p_name=>'P17_CUR_PAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20194625466885025)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14424913851029426)
,p_name=>'P17_COMPANY_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20194625466885025)
,p_item_default=>':AP_COMPANY_CODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Switch &AP_ORGANIZATION_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Company_name d, company_code r',
'from xxhrms.xxhrms_companyinfo',
'where :AP_ACCESS_LEVEL = 1',
'UNION ALL',
'select Company_name d, company_code r',
'from xxhrms.xxhrms_companyinfo',
'where :AP_ACCESS_LEVEL != 1',
'and company_code in (',
'                       (select COLUMN_VALUE from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':''))',
'                      where upper(a.LOGNAME )= upper(:AP_USERNAME))',
'                      )'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14425355862029444)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Switch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' cursor c_instance is ',
' select  PROFILE_VAL',
'  from XXADM.XXADM_PROFILE_OPTIONS',
'  where PROFILE_CODE = ''INSTANCE_NAME''',
'  and COMPANY_CODE = :P17_COMPANY_CODE;',
'  ',
'  cursor c_companyname is',
'  select COMPANY_NAME ',
'  from xxhrms.XXHRMS_COMPANYINFO',
'  where company_code = :P17_COMPANY_CODE;',
'Begin',
'    :AP_COMPANY_CODE := :P17_COMPANY_CODE;',
'    :AP_INSTANCE_NAME:= null;',
'  OPEN c_instance;',
'  FETCH c_instance INTO :AP_INSTANCE_NAME;',
'  CLOSE c_instance;',
'  ',
'  OPEN c_companyname;',
'  FETCH c_companyname INTO :AP_COMPANY_NAME;',
'  CLOSE c_companyname;',
'  ',
'End;',
'',
' ',
'',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed!'
,p_internal_uid=>14425355862029444
);
wwv_flow_imp.component_end;
end;
/
