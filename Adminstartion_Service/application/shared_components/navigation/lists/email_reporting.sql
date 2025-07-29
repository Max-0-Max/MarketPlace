prompt --application/shared_components/navigation/lists/email_reporting
begin
--   Manifest
--     LIST: Email Reporting
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
 p_id=>wwv_flow_imp.id(3117004871290196)
,p_name=>'Email Reporting'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(3105875534290165)
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3117453606290196)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Email Reporting'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&SESSION.::&DEBUG.:10060:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'Report of all email queued to be sent and those already sent'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
