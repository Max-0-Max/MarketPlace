prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>'Seeded Lookups'
,p_alias=>'AU201'
,p_page_mode=>'MODAL'
,p_step_title=>'Seeded Lookups'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6970553207579816)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5462108380166706)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13809312874082468)
,p_plug_name=>'Seeded Lookups'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
' from XXSBS_SEEDED_TAB_VALUES',
' where "TAB_ID" = :P25_TAB_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13810012224082469)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5432132346166684)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6969247971579815)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13810012224082469)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6968874758579814)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13810012224082469)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from dual',
'where :P25_TAB_ID is not null',
'and not exists (select 1',
' from XXSBS_SEEDED_TAB_VALUES',
' where "TAB_ID" = :P25_TAB_ID)'))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6969696286579815)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13810012224082469)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from dual',
'where :P25_TAB_ID is not null',
'and not exists (select 1',
' from XXSBS_SEEDED_TAB_VALUES',
' where "TAB_ID" = :P25_TAB_ID)'))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6970008805579815)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13810012224082469)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P25_TAB_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6973706123579823)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP:P15_TAB_ID:&P25_TAB_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(6970008805579815)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6974184113579823)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(6968874758579814)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6957057614579800)
,p_name=>'P25_TAB_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tab Id'
,p_source=>'TAB_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6957359037579802)
,p_name=>'P25_TAB_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Name'
,p_source=>'TAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECT_NAME d, OBJECT_NAME r',
' from dba_objects o',
'where OWNER=:P25_TAB_SCHEMA ',
'and OBJECT_TYPE=''TABLE''',
'and exists(select 1',
'    from dba_tab_columns ',
'    where TABLE_NAME=o.OBJECT_NAME',
'    and OWNER=o.OWNER',
'    and COLUMN_NAME = (''COMPANY_CODE'')',
'           )',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6957769664579802)
,p_name=>'P25_COLUMN_SIZE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_source=>'COLUMN_SIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6958165638579802)
,p_name=>'P25_COLUMN_NAME_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 1'
,p_source=>'COLUMN_NAME_1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6958598272579803)
,p_name=>'P25_COLUMN_NAME_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 2'
,p_source=>'COLUMN_NAME_2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6958916071579803)
,p_name=>'P25_COLUMN_NAME_3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 3'
,p_source=>'COLUMN_NAME_3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6959385542579803)
,p_name=>'P25_COLUMN_NAME_4'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 4'
,p_source=>'COLUMN_NAME_4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6959706523579804)
,p_name=>'P25_COLUMN_NAME_5'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 5'
,p_source=>'COLUMN_NAME_5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6960197549579804)
,p_name=>'P25_COLUMN_NAME_6'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 6'
,p_source=>'COLUMN_NAME_6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6960589440579804)
,p_name=>'P25_COLUMN_NAME_7'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 7'
,p_source=>'COLUMN_NAME_7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6960964120579805)
,p_name=>'P25_COLUMN_NAME_8'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 8'
,p_source=>'COLUMN_NAME_8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6961346301579805)
,p_name=>'P25_COLUMN_NAME_9'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 9'
,p_source=>'COLUMN_NAME_9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6961746502579805)
,p_name=>'P25_COLUMN_NAME_10'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 10'
,p_source=>'COLUMN_NAME_10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6962172418579806)
,p_name=>'P25_COLUMN_NAME_11'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 11'
,p_source=>'COLUMN_NAME_11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6962540389579806)
,p_name=>'P25_COLUMN_NAME_12'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 12'
,p_source=>'COLUMN_NAME_12'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6962967971579806)
,p_name=>'P25_COLUMN_NAME_13'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 13'
,p_source=>'COLUMN_NAME_13'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6963353164579807)
,p_name=>'P25_COLUMN_NAME_14'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 14'
,p_source=>'COLUMN_NAME_14'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6963711663579807)
,p_name=>'P25_COLUMN_NAME_15'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 15'
,p_source=>'COLUMN_NAME_15'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6964116943579807)
,p_name=>'P25_COLUMN_NAME_16'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 16'
,p_source=>'COLUMN_NAME_16'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6964577324579808)
,p_name=>'P25_COLUMN_NAME_17'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 17'
,p_source=>'COLUMN_NAME_17'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6964934745579808)
,p_name=>'P25_COLUMN_NAME_18'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 18'
,p_source=>'COLUMN_NAME_18'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6965306415579808)
,p_name=>'P25_COLUMN_NAME_19'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 19'
,p_source=>'COLUMN_NAME_19'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6965706323579809)
,p_name=>'P25_COLUMN_NAME_20'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column 20'
,p_source=>'COLUMN_NAME_20'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLUMN_NAME d, COLUMN_NAME r',
'    from dba_tab_columns ',
'    where TABLE_NAME=:P25_TAB_NAME ',
'    and OWNER=:P25_TAB_SCHEMA ',
'    and COLUMN_NAME!=''COMPANY_CODE''',
' order by COLUMN_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P25_TAB_SCHEMA,P25_TAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6966190802579809)
,p_name=>'P25_STATUS'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ACTIVE'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(5504729101166738)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'INACTIVE',
  'off_value', 'INACTIVE',
  'on_label', 'ACTIVE',
  'on_value', 'ACTIVE',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6966594595579809)
,p_name=>'P25_CREATED_BY'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6966987131579810)
,p_name=>'P25_CREATION_DATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6967359742579810)
,p_name=>'P25_LAST_UPDATED_BY'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6967788911579810)
,p_name=>'P25_LAST_UPDATE_DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6968165272579811)
,p_name=>'P25_TAB_SCHEMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13809312874082468)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Schema'
,p_source=>'TAB_SCHEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERNAME d, USERNAME r',
'from SYS.ALL_USERS',
'where USERNAME like ''XX%''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6972718238579820)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6969247971579815)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6973274397579822)
,p_event_id=>wwv_flow_imp.id(6972718238579820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6971156454579819)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XXSBS_SEEDED_TAB'
,p_attribute_02=>'XXSBS_SEEDED_TAB'
,p_attribute_03=>'P25_TAB_ID'
,p_attribute_04=>'TAB_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6971156454579819
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6971568574579819)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XXSBS_SEEDED_TAB'
,p_attribute_02=>'XXSBS_SEEDED_TAB'
,p_attribute_03=>'P25_TAB_ID'
,p_attribute_04=>'TAB_ID'
,p_attribute_09=>'P25_TAB_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>6971568574579819
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6971954765579819)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6968874758579814)
,p_internal_uid=>6971954765579819
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6972378359579819)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6969696286579815)
,p_internal_uid=>6972378359579819
);
wwv_flow_imp.component_end;
end;
/
