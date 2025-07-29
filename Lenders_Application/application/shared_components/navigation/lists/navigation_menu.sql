prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(56395107177590430)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>6006013130005
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56406806266590574)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-stock-chart'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'xxmrkt.XXMRKT_MARKETPLACE_PKG.user_has_access_to_page(1)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70366258909679299)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Company Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-modal-rows'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'xxmrkt.XXMRKT_MARKETPLACE_PKG.user_has_access_to_page(2)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(73365882848305033)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Approvals'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-circle-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'xxmrkt.XXMRKT_MARKETPLACE_PKG.user_has_access_to_page(9)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80265096735671319)
,p_list_item_display_sequence=>31
,p_list_item_link_text=>'Transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrow-right'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'xxmrkt.XXMRKT_MARKETPLACE_PKG.user_has_access_to_page(14)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77592834829117498)
,p_list_item_display_sequence=>32
,p_list_item_link_text=>'Report'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'xxmrkt.XXMRKT_MARKETPLACE_PKG.user_has_access_to_page(15)'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(67273604939815228)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Change Password'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-exchange'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxmrkt.xxmrkt_marketplace_users',
'where upper(user_name) = upper(v(''APP_USER''))',
'and login_cnt > 0'))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(76611846297610191)
,p_list_item_display_sequence=>45
,p_list_item_link_text=>'company setup 2'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
