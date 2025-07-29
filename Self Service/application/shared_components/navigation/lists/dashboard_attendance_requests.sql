prompt --application/shared_components/navigation/lists/dashboard_attendance_requests
begin
--   Manifest
--     LIST: Dashboard_Attendance_Requests
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
 p_id=>wwv_flow_imp.id(19602350675184482)
,p_name=>'Dashboard_Attendance_Requests'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19602666034184482)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Times Present: &P1_PRESENT_CNT.%'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-apple'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19603095636184483)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Times Absent: &P1_ABSENT_CNT.%'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-cloud'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19603440319184483)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Times Early: &P1_EARLY_CNT.%'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-check'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19604664690184484)
,p_list_item_display_sequence=>45
,p_list_item_link_text=>'View Workshift Activities'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_USER_ID:&P1_STAFF_ID.:'
,p_list_item_icon=>'fa-list'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(305481009949963386)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Web Clock'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
