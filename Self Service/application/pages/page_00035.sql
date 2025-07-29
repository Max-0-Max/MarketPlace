prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'Accept or reject course'
,p_alias=>'BC3'
,p_page_mode=>'MODAL'
,p_step_title=>'Accept or reject course'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(611613216062615049)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading'
,p_plug_template=>wwv_flow_imp.id(2483875202224049)
,p_plug_display_sequence=>10
,p_plug_source=>'<h3><b>Click here to accept or reject this course</b></h3>'
,p_translate_title=>'N'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SELF_ENROLL',
'from xxslm.xxslm_courses ',
'where SELF_ENROLL = ''Y''',
'and course_id = :P35_COURSE_ID',
'and :P35_ID != 2 or :P35_ID is null'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305893699242932304)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(611613216062615049)
,p_button_name=>'Accept_Course'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Accept Course'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-thumbs-o-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305894095444932302)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(611613216062615049)
,p_button_name=>'Reject_Course'
,p_button_static_id=>'btn2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Reject Course'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from xxslm.xxslm_courses',
'where SELF_ENROLL = ''Y''',
'and course_id = :P35_COURSE_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-thumbs-o-down'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305894477999932298)
,p_name=>'P35_SELF_ENROLL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(611613216062615049)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305894811578932296)
,p_name=>'P35_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(611613216062615049)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from xxslm.xxslm_course_status',
'where course_id = :P35_COURSE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
