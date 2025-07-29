prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 2000007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(5507165490166740)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'1.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(5506336491166739)
,p_default_page_template=>wwv_flow_imp.id(5424985731166679)
,p_default_dialog_template=>wwv_flow_imp.id(5409933091166664)
,p_error_template=>wwv_flow_imp.id(5411443337166666)
,p_printer_friendly_template=>wwv_flow_imp.id(5424985731166679)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(5411443337166666)
,p_default_button_template=>wwv_flow_imp.id(5504984767166738)
,p_default_region_template=>wwv_flow_imp.id(5452712612166699)
,p_default_chart_template=>wwv_flow_imp.id(5452712612166699)
,p_default_form_template=>wwv_flow_imp.id(5452712612166699)
,p_default_reportr_template=>wwv_flow_imp.id(5452712612166699)
,p_default_tabform_template=>wwv_flow_imp.id(5452712612166699)
,p_default_wizard_template=>wwv_flow_imp.id(5452712612166699)
,p_default_menur_template=>wwv_flow_imp.id(5462108380166706)
,p_default_listr_template=>wwv_flow_imp.id(5452712612166699)
,p_default_irr_template=>wwv_flow_imp.id(5451601628166698)
,p_default_report_template=>wwv_flow_imp.id(5475144363166715)
,p_default_label_template=>wwv_flow_imp.id(5504520019166737)
,p_default_menu_template=>wwv_flow_imp.id(5505728306166738)
,p_default_calendar_template=>wwv_flow_imp.id(5505898509166739)
,p_default_list_template=>wwv_flow_imp.id(5502614162166736)
,p_default_nav_list_template=>wwv_flow_imp.id(5494386415166730)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(5494386415166730)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(5494021907166729)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(5432132346166684)
,p_default_dialogr_template=>wwv_flow_imp.id(5431141257166683)
,p_default_option_label=>wwv_flow_imp.id(5504520019166737)
,p_default_required_label=>wwv_flow_imp.id(5504729101166738)
,p_default_navbar_list_template=>wwv_flow_imp.id(5495419423166730)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.2/')
,p_files_version=>69
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
