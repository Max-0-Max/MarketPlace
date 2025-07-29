prompt --application/shared_components/navigation/lists/job_reporting_1272023352
begin
--   Manifest
--     LIST: Job Reporting-1272023352
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3048541793057736)
,p_name=>'Job Reporting-1272023352'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(3007711534057608)
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3048987082057737)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Job Reporting'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030:::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'View status and run details of jobs supporting this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
