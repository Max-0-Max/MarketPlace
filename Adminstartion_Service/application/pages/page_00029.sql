prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_name=>'Patch Management'
,p_alias=>'AL201'
,p_step_title=>'Patch Management'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(5413815154166670)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4485523915071807)
,p_plug_name=>'Patch List'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PATCH_ID,',
'       PATCH_NAME,',
'       PATCH_DESC,',
'       CREATED_DATE,',
'        APPLY_FLAG,',
'        DECODE (APPLY_FLAG,''N'',''Not Installed'',''Y'',''Installed'',''P'',''Patching in Progress'',''E'',''Patched with Error'')Status',
'        from XXADM.XXADM_PATCH_INSTALLER',
' order by CREATED_DATE DESC'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP:P29_PATCH_ID_1:&PATCH_ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_EXACT_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Status :  <font color = green><b>&STATUS.</b></font> ',
    'Date :  <font color = green><b>&CREATED_DATE.</b></font> ')),
  'text_formatting', '<font color = blue><h5>&PATCH_NAME.</h5></font>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7124359482889661)
,p_plug_name=>'Patch Management'
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
 p_id=>wwv_flow_imp.id(7189351929889755)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>20
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P29_PATCH_ID_1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28210308666853034)
,p_plug_name=>'Install Patch'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>30
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P29_PATCH_ID_1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24094364412895454)
,p_plug_name=>'Readme'
,p_parent_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5441572872166691)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24095124789966109)
,p_plug_name=>'Patch Installation Log'
,p_parent_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5441572872166691)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where nvl(:P29_APPLY_FLAG,''N'') in(''Y'',''E'',''P'');'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3915366472623067)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_button_name=>'REFRESH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where nvl(:P29_APPLY_FLAG,''N'') in(''P'');'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3915703314623068)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3916171893623069)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Install Patch'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual',
'where nvl(:P29_APPLY_FLAG,''N'') in(''N'',''E'');'))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3879658701540395)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7124359482889661)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.:RESET:&DEBUG.:RP,3::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3879966989540396)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7124359482889661)
,p_button_name=>'UPLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload Patch'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,16::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3659165879340340)
,p_name=>'P29_PATCH_ID_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_use_cache_before_default=>'NO'
,p_source=>'PATCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3916596428623070)
,p_name=>'P29_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3916917521623070)
,p_name=>'P29_PATCH_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Patch ID'
,p_source=>'PATCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3917389874623071)
,p_name=>'P29_PATCH_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Patch Name'
,p_source=>'PATCH_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3917784521623072)
,p_name=>'P29_PATCH_DESC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_prompt=>'Patch Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3918157177623073)
,p_name=>'P29_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_prompt=>'Patch Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3918515982623073)
,p_name=>'P29_P_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_use_cache_before_default=>'NO'
,p_source=>'PATCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3918929267623074)
,p_name=>'P29_JOB_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_use_cache_before_default=>'NO'
,p_source=>'JOB_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3919319368623075)
,p_name=>'P29_APPLY_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(28210308666853034)
,p_use_cache_before_default=>'NO'
,p_source=>'APPLY_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3920059377623076)
,p_name=>'P29_PATCH_README'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(24094364412895454)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(5504365183166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML_UNSAFE',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3920756112623078)
,p_name=>'P29_LOG_FILE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(24095124789966109)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>10
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3906207976540445)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3907286253540446)
,p_event_id=>wwv_flow_imp.id(3906207976540445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3907616354540446)
,p_name=>'New'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_APP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3908193861540447)
,p_event_id=>wwv_flow_imp.id(3907616354540446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P29_APEX_APP_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor cur',
'is',
'select nvl(APEX_APP_ID,NULL) from XXADM_PARTNER_APPS where APPLICATION_ID = :P29_APP;',
'begin',
'open cur;',
'fetch cur into :P29_APEX_APP_ID;',
'return :P29_APEX_APP_ID;',
'end;'))
,p_attribute_07=>'P29_APP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3921366981628494)
,p_name=>'Promtpt'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3916171893623069)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3921720313628495)
,p_event_id=>wwv_flow_imp.id(3921366981628494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to publish this patch : &P28_PATCH_NAME.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3922766979641615)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XXADM_PATCH_INSTALLER'
,p_attribute_01=>'XXADM'
,p_attribute_02=>'XXADM_PATCH_INSTALLER'
,p_attribute_03=>'P29_PATCH_ID_1'
,p_attribute_04=>'PATCH_ID'
,p_internal_uid=>3922766979641615
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3922176197631292)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' xxadm.xxadm_patch_installer_pkg.run_apply_patch(p_patch_id=>:P28_P_ID);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Patch successfully installed'
,p_internal_uid=>3922176197631292
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3922402947639902)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'rec XXADM.XXADM_PATCH_INSTALLER%rowtype;',
'v_apply_flag varchar2(10);',
'v_clob clob;',
'v_patch_path    varchar2(200);',
'v_patch_dir   varchar2(200);',
' ',
'cursor cur',
'is',
'select PATCH_DESC,PATCH_README,PATCH_NAME,log_file',
'from XXADM.XXADM_PATCH_INSTALLER',
'--where patch_id =  (select patch_id from XXADM.XXADM_PATCH_INSTALLER',
'where patch_id = :P29_PATCH_ID_1;',
'CURSOR CUR2',
'IS',
'SELECT DECODE (APPLY_FLAG,''N'',''Not Installed'',''Y'',''Installed'',''P'',''Patching in Progress'',''E'',''Patched with Error'')status, PATCH_ID,APPLY_FLAG',
'from XXADM.XXADM_PATCH_INSTALLER where PATCH_ID = :P29_PATCH_ID_1;',
'begin',
'open cur;',
'fetch cur into :P29_PATCH_DESC, :P29_PATCH_README, :P29_PATCH_NAME,:P29_LOG_FILE;',
'open cur2;',
'fetch cur2 into :P29_STATUS,:P29_P_ID,v_apply_flag;',
'if v_apply_flag=''P'' then',
'    BEGIN',
'            select directory_name,directory_path||''/p''||:P29_P_ID||''_1_GENERIC''',
'            into v_patch_dir,v_patch_path',
'            from dba_directories',
'        where directory_name=''APPLYPATCHDIR'';',
'        ',
'        v_clob:=xxadm.xxadm_patch_installer_pkg.get_file(:P29_P_ID,''p''||:P29_P_ID||''.log'',v_patch_dir);',
'        --xxadm.os_command.exec_clob('' cat ''||v_patch_path||''/''||''p''||:P28_P_ID||''.log'');',
'        :P29_LOG_FILE:= substr(v_clob,1,3100);',
'',
'        EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'           null;',
'        END;',
'',
'end if;',
'',
'END ;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>3922402947639902
);
wwv_flow_imp.component_end;
end;
/
