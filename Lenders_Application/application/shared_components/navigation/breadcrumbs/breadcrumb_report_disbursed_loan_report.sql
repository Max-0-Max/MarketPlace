prompt --application/shared_components/navigation/breadcrumbs/breadcrumb_report_disbursed_loan_report
begin
--   Manifest
--     MENU: Breadcrumb report Disbursed Loan Report
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
 p_id=>wwv_flow_imp.id(80650752683477513)
,p_name=>'Breadcrumb report Disbursed Loan Report'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80650982639479628)
,p_short_name=>'Report'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80651117442483233)
,p_parent_id=>wwv_flow_imp.id(80650982639479628)
,p_short_name=>'Disbursed Loan Report'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_imp.component_end;
end;
/
