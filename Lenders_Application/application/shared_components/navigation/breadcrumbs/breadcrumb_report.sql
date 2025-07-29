prompt --application/shared_components/navigation/breadcrumbs/breadcrumb_report
begin
--   Manifest
--     MENU: Breadcrumb report
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(80619416048252566)
,p_name=>'Breadcrumb report'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80620143261262154)
,p_short_name=>'Report'
,p_long_name=>'Report'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80638252830387864)
,p_parent_id=>wwv_flow_imp.id(80620143261262154)
,p_short_name=>'Repayment Schedule Report'
,p_long_name=>'Repayment Schedule Report'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_imp.component_end;
end;
/
