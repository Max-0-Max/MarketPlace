prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Page Functions'
,p_alias=>'AB201'
,p_step_title=>'Page Functions'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-HeroRegion-icon{',
'        background-color: #0572CE;',
'}',
'',
'.t-Region-title{',
'    background-color: #0572CE;',
'}',
'.t-Region-header',
'{',
'     background-color: #0572CE;',
'    color : #fff;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(5413815154166670)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2112460216755124)
,p_name=>'Page Functions'
,p_template=>wwv_flow_imp.id(5452712612166699)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FUNCTION_CODE,',
'       FUNCTION_NAME,',
'       DESCRIPTION,',
'       APEX_APP_ID,',
'       APEX_PAGE_NO,',
'       IMAGES',
'     from XXADM_FORM_FUNCTIONS_TAB',
' where APEX_APP_ID = :P8_APP_ID',
' and FUNCTION_CODE = :P8_FUNCTION_CODE '))
,p_required_role=>'!'||wwv_flow_imp.id(3148311787613203)
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(5469766923166712)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36851163145425916)
,p_query_column_id=>1
,p_column_alias=>'FUNCTION_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Function Code'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36851236734425917)
,p_query_column_id=>2
,p_column_alias=>'FUNCTION_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Function Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36851366085425918)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36852478562425929)
,p_query_column_id=>4
,p_column_alias=>'APEX_APP_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Application Module'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3170362140788438)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36852581574425930)
,p_query_column_id=>5
,p_column_alias=>'APEX_PAGE_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Page No.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36852683583425931)
,p_query_column_id=>6
,p_column_alias=>'IMAGES'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2112597364755125)
,p_plug_name=>'Function List'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FUNCTION_CODE,',
'       FUNCTION_NAME,',
'       DESCRIPTION,',
'       APEX_APP_ID,',
'       APEX_PAGE_NO,',
'       IMAGES,',
'       FUNCTION_CODE||FUNCTION_NAME||DESCRIPTION||APEX_APP_ID||APEX_PAGE_NO Search',
'  from XXADM_FORM_FUNCTIONS_TAB',
' where APEX_APP_ID = :P8_APP_ID'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_no_data_found=>'No module selected'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8:P8_FUNCTION_CODE,P8_APP_ID:&FUNCTION_CODE.,&APEX_APP_ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH:INSET',
  'search_column', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', 'Page No. :  <font color = green><b>&APEX_PAGE_NO.</b></font> ',
  'text_formatting', '<font color = blue><h5>&FUNCTION_NAME.</h5></font>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3152912665726106)
,p_plug_name=>'Manage Functions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>20
,p_plug_required_role=>wwv_flow_imp.id(3148311787613203)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3153663347726106)
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
 p_id=>wwv_flow_imp.id(3162755970726137)
,p_plug_name=>'Page Functions'
,p_icon_css_classes=>'fa-gear'
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
 p_id=>wwv_flow_imp.id(2113160497755131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_button_name=>'Reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Reset'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8:P8_APP_ID:&P8_APP_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3154053906726107)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3153539523726106)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P8_FUNCTION_CODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3148311787613203)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3153435793726106)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P8_FUNCTION_CODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3148311787613203)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3153380833726106)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P8_FUNCTION_CODE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3148311787613203)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2112673997755126)
,p_name=>'P8_APP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2112597364755125)
,p_prompt=>'Module'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APEX APPLICATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT application_name, apex_App_id',
'from xxadm_partner_Apps',
'where ENABLED_FLAG = ''Y'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Module--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3156415159726114)
,p_name=>'P8_ROWID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3156883517726129)
,p_name=>'P8_FUNCTION_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Function Code'
,p_source=>'FUNCTION_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_read_only_when=>'P8_FUNCTION_CODE'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3157258359726131)
,p_name=>'P8_FUNCTION_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Function Name'
,p_source=>'FUNCTION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3157684243726131)
,p_name=>'P8_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3158073156726132)
,p_name=>'P8_FORM_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_use_cache_before_default=>'NO'
,p_source=>'FORM_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3158496247726132)
,p_name=>'P8_APEX_APP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application Module'
,p_source=>'APEX_APP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APEX APPLICATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT application_name, apex_App_id',
'from xxadm_partner_Apps',
'where ENABLED_FLAG = ''Y'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3158856536726132)
,p_name=>'P8_APEX_PAGE_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page No.'
,p_source=>'APEX_PAGE_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3710312139441907)
,p_name=>'P8_REQ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3152912665726106)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3712755421441931)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P8_FUNCTION_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item must have some value'
,p_when_button_pressed=>wwv_flow_imp.id(3153380833726106)
,p_associated_item=>wwv_flow_imp.id(3157258359726131)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3712867036441932)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'P8_APEX_APP_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item must have some value'
,p_when_button_pressed=>wwv_flow_imp.id(3153380833726106)
,p_associated_item=>wwv_flow_imp.id(3158496247726132)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3712991355441933)
,p_validation_name=>'New_2'
,p_validation_sequence=>30
,p_validation=>'P8_APEX_PAGE_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item must have some value'
,p_when_button_pressed=>wwv_flow_imp.id(3153380833726106)
,p_associated_item=>wwv_flow_imp.id(3158856536726132)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2112737144755127)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2112891977755128)
,p_event_id=>wwv_flow_imp.id(2112737144755127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_FUNCTION_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3712332854441927)
,p_name=>'New_1'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3153435793726106)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3712482914441928)
,p_event_id=>wwv_flow_imp.id(3712332854441927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
' if :P8_FUNCTION_NAME IS NULL or :P8_APEX_APP_ID IS NULL or :P8_APEX_PAGE_NO IS NULL',
' THEN',
' raise_application_error(-20000,''item must have some value'');',
' end if;',
'End;',
'',
''))
,p_attribute_02=>'P8_FUNCTION_NAME,P8_APEX_PAGE_NO,P8_APEX_APP_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713340107441937)
,p_event_id=>wwv_flow_imp.id(3712332854441927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3161126846726135)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XXADM_FORM_FUNCTIONS_TAB'
,p_attribute_01=>'XXADM'
,p_attribute_02=>'XXADM_FORM_FUNCTIONS_TAB'
,p_attribute_03=>'P8_FUNCTION_CODE'
,p_attribute_04=>'FUNCTION_CODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3161126846726135
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3712066130441924)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
' if :P8_FUNCTION_NAME IS NULL AND :P8_APEX_APP_ID IS NULL AND :P8_APEX_PAGE_NO IS NULL',
' THEN',
' raise_application_error(-20000,''item must have some value'');',
' end if;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>3712066130441924
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3161523080726135)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XXADM_FORM_FUNCTIONS_TAB'
,p_attribute_01=>'XXADM'
,p_attribute_02=>'XXADM_FORM_FUNCTIONS_TAB'
,p_attribute_03=>'P8_FUNCTION_CODE'
,p_attribute_04=>'FUNCTION_CODE'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3161523080726135
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3161931768726136)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3153539523726106)
,p_internal_uid=>3161931768726136
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3162368326726136)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>3162368326726136
);
wwv_flow_imp.component_end;
end;
/
