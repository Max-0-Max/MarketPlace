prompt --application/shared_components/navigation/lists/other_appraisals
begin
--   Manifest
--     LIST: Other Appraisals
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
 p_id=>wwv_flow_imp.id(95170282540040151)
,p_name=>'Other Appraisals'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(95170440025040158)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Peer to Peer Appraisal'
,p_list_item_link_target=>'f?p=&APP_ID.::&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(95170806810040167)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Non Supervisory Appraisal'
,p_list_item_link_target=>'f?p=&APP_ID.::&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(95171241804040167)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Subordinate Appraisal'
,p_list_item_link_target=>'f?p=&APP_ID.::&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
