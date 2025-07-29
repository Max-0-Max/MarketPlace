prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 2000004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(2000004)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=2000004:9999:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(2934641535723865)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(2550393873224098)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#app-icon.css?version=#APP_VERSION#',
'#WORKSPACE_IMAGES#Company_logo.css',
'https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.css'))
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.js',
'#WORKSPACE_IMAGES#cookies.js'))
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(2582942727224125)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(2551791389224099)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/
