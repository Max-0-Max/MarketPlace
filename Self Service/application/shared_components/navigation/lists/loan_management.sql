prompt --application/shared_components/navigation/lists/loan_management
begin
--   Manifest
--     LIST: Loan Management
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(274207835601569819)
,p_name=>'Loan Management'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(274208014805569826)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Loan Requests Details'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(274208494843569902)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Company Loan'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(274208873058569954)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Page Financials'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
