prompt --application/shared_components/navigation/lists/application_setup
begin
--   Manifest
--     LIST: Application Setup
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
 p_id=>wwv_flow_imp.id(3141157513544434)
,p_name=>'Application Setup'
,p_list_status=>'PUBLIC'
,p_version_scn=>6006068046895
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3142192444544437)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Menu Management'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:::'
,p_list_item_icon=>'fa-align-justify'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3142544827544438)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Role Management'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:::'
,p_list_item_icon=>'fa-user-arrow-down'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3222107147203487)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'System Options'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,19:::'
,p_list_item_icon=>'fa-cart-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3222453617205059)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Password Policy'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(98790282933848572)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Marketplace'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84263690777531673)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Marktetplace Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
