prompt --application/shared_components/navigation/lists/profile_list
begin
--   Manifest
--     LIST: Profile List
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
 p_id=>wwv_flow_imp.id(15601607506496084)
,p_name=>'Profile List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15601805108496089)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Employment Details'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.:E:&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15602098981496100)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Bank & PFA Details'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.:B:&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15602407289496100)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Contact Details'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.:C:&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15602703560496100)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Payment History'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.:H:&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15609103025980776)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Show All'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.:A:&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
