prompt --application/shared_components/navigation/breadcrumbs/breadcrumb_report_borrower_profile_report
begin
--   Manifest
--     MENU: Breadcrumb report Borrower Profile Report
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
 p_id=>wwv_flow_imp.id(80651713538494369)
,p_name=>'Breadcrumb report Borrower Profile Report'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80651924472496084)
,p_short_name=>'Report'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80652104274498268)
,p_parent_id=>wwv_flow_imp.id(80651924472496084)
,p_short_name=>'Borrower Profile Report'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp.component_end;
end;
/
