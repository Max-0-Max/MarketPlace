prompt --application/shared_components/navigation/lists/dashboard_profile
begin
--   Manifest
--     LIST: Dashboard_Profile
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
 p_id=>wwv_flow_imp.id(19597330519184475)
,p_name=>'Dashboard_Profile'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19599671940184478)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Apply For Leave'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19600051822184479)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Apply For Loan'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:56:::'
,p_list_item_icon=>'fa-bank'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19600415754184479)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'My Payslip'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000011'') = ''Y'';'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19601631471184481)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Available Courses'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000040'') = ''Y'';'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
