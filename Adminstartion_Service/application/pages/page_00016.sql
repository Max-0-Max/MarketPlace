prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>'Upload Patch'
,p_alias=>'AJ201'
,p_page_mode=>'MODAL'
,p_step_title=>'Upload Patch'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3843222534985906)
,p_plug_name=>'Upload Patch'
,p_icon_css_classes=>'fa-bolt'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7660036972951067)
,p_plug_name=>'Upload Patch File'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--pill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5459483568166704)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7661902723285835)
,p_plug_name=>'action_btn'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5459483568166704)
,p_plug_display_sequence=>20
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3842389378985903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7661902723285835)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Close'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3842780455985904)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7661902723285835)
,p_button_name=>'UPLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3844389109985909)
,p_branch_name=>'branch'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3842780455985904)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3841204915985898)
,p_name=>'P16_PATCH_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7660036972951067)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Patch File:'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'NATIVE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3841688744985902)
,p_name=>'P16_PATCH_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7660036972951067)
,p_prompt=>'Patch Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3843811253985907)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upload_patch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_blob blob;',
'v_file_name varchar2(200);',
'v_patch_id varchar2(50);',
'begin',
'',
'select blob_content,filename',
'into v_blob,v_file_name',
'from APEX_APPLICATION_TEMP_FILES ',
'where name=:P16_PATCH_FILE',
'and rownum=1',
'order by id desc;',
'',
'xxadm.xxadm_patch_installer_pkg.upload_patch',
'    (p_file_name=>v_file_name,',
'     p_patch_file=>v_blob,',
'    p_patch_id=>v_patch_id);',
':P16_PATCH_ID:=v_patch_id;',
'',
'exception ',
'  when others then',
'  raise_application_error(-20000,SQLERRM);',
'  null;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3842780455985904)
,p_process_success_message=>'Patch Id:&P16_PATCH_ID. Uploaded Successfully'
,p_internal_uid=>3843811253985907
);
wwv_flow_imp.component_end;
end;
/
