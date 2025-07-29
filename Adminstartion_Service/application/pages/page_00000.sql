prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5841300110652732)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_column_width=>' style="display:none;"'
,p_plug_read_only_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_read_only_when=>'9999'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5841672351652736)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38391704862743501)
,p_plug_name=>'No Organization Alert'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading'
,p_plug_template=>wwv_flow_imp.id(5427503236166680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Default Organization not set. Use the <Strong>Switch Organization</strong> button on the Top Navigation Bar to select your desired Organization.'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APP_PAGE_ID != 17 and :AP_COMPANY_CODE is NULL',
'and :APP_PAGE_ID != 9999'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5841375492652733)
,p_name=>'P0_MENU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5841300110652732)
,p_display_as=>'PLUGIN_SI.ABAKUS.SEARCHNAVIGATIONMENU'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'S',
  'attribute_02', 'fa-search',
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{"MenuOpen":false,',
    ' "MenuClickOpenClose":true,',
    ' "SaveSS":true,',
    ' "ShortcutSaveSS":false,',
    ' "ShrtCaseSensitive":true,',
    ' "OnSearchShowChildren":true,',
    ' "UseFocus":true,',
    ' "Shortcuts" : []',
    '}')),
  'attribute_04', wwv_flow_string.join(wwv_flow_t_varchar2(
    '/* ',
    '** STYLE Settings for search navigation menu and menu icons',
    '*/',
    '/* FIX If you use FONT awesome enable this .srch_nav span */',
    '/*',
    '.srch_nav span { ',
    '   top:2px;',
    '}',
    '*/',
    '/* FIX If you use FONT awesome disable  this .t-TreeNav */',
    '.t-TreeNav .a-TreeView-node--topLevel ul .a-TreeView-content .fa {',
    '   vertical-align: top;',
    '   width: 32px; /* This can be decrease to have smaller spacing */',
    '   height: 32px;',
    '   line-height: 32px;',
    '   text-align: center;',
    '   transition: width .2s ease;',
    '}',
    '/* Search resault setting */',
    '.a-TreeView-label strong {',
    '    font-weight:bold; ',
    '    color:black;',
    '    background-color:#ffef9a;',
    '}',
    '/* Input field style setting */',
    '.srch_nav input {',
    '    color:black;',
    '    background-color:#f1f6fa;',
    '    border-color:#ededed;',
    '}',
    '/* Input field on hover setting */',
    '.srch_nav input:focus {',
    '    border-color:#ff7052;',
    '}')))).to_clob
);
wwv_flow_imp.component_end;
end;
/
