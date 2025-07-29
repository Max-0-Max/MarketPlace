prompt --application/shared_components/navigation/lists/reports_list
begin
--   Manifest
--     LIST: Reports List
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
 p_id=>wwv_flow_imp.id(84264690909573509)
,p_name=>'Reports List'
,p_list_status=>'PUBLIC'
,p_version_scn=>6006034198711
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84264848039573517)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Loan Repayment Report'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-exchange'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84265256862573521)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Loan Application Report'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-angle-double-right'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84265634966573522)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Approved Loan Report'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-square'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84266061971573522)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Rejectied Loan Report'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-times-square'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84266316130573522)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>' Disbursed Loan Report'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-credit-card-alt'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84266868263577884)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Loan Status Report'
,p_list_item_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84267259557582549)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Borrower Profile Report'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(84268682101586469)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'User Creation Report'
,p_list_item_link_target=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-clock'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
