prompt --application/shared_components/navigation/lists/dashboard_profile1
begin
--   Manifest
--     LIST: Dashboard_Profile1
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
 p_id=>wwv_flow_imp.id(19923746324886092)
,p_name=>'Dashboard_Profile1'
,p_list_status=>'PUBLIC'
,p_version_scn=>6006068099879
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20368646273196701)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'My Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-smile-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19926730855886104)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'My Payslip'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000011'') = ''Y'';'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19925550038886101)
,p_list_item_display_sequence=>13
,p_list_item_link_text=>'Performance Indicators'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tasks'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''Y'';'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19924739559886099)
,p_list_item_display_sequence=>14
,p_list_item_link_text=>'Appraisal Result'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-child'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000010'') = ''Y'';'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19925938475886102)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Absence Management'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'AP_COMPANY_CODE'
,p_list_item_disp_condition2=>'57:63'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(68707803948097755)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Leave Management'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'AP_COMPANY_CODE'
,p_list_item_disp_condition2=>'57:63'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19926388872886103)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Loan Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21:::'
,p_list_item_icon=>'fa-bank'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66571972741404878)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Corporate Library'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'AP_COMPANY_CODE'
,p_list_item_disp_condition2=>'57'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19927561483886107)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Policy Documents'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_list_item_disp_condition=>'AP_COMPANY_CODE'
,p_list_item_disp_condition2=>'57'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19927940682886108)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Available Courses'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000040'') = ''Y'';'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26236429761389155)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Travel Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plane'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'';'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26761718344100176)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Reimbursement Request'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-donut-chart'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'';'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26762000127104851)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Other Request'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dynamic-content'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'' AND :AP_COMPANY_CODE != 57;'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(68710506120167863)
,p_list_item_display_sequence=>111
,p_list_item_link_text=>unistr('Claim\00A0Management')
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dynamic-content'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'RETURN xxadm.xxadm_func_active_fn(''2000027'') = ''Y'' AND :AP_COMPANY_CODE = 57;'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66774459066198144)
,p_list_item_display_sequence=>115
,p_list_item_link_text=>'Work Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'AP_COMPANY_CODE'
,p_list_item_disp_condition2=>'57'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33285240899316570)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Workflow Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_list_item_disp_condition=>'AP_COMPANY_CODE'
,p_list_item_disp_condition2=>'57'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38797868166558744)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Exit Request'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62:::'
,p_list_item_icon=>'fa-box-arrow-out-east'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_COUNT NUMBER;',
'BEGIN',
'SELECT COUNT(1) INTO V_COUNT FROM XXADM.XXADM_PROFILE_OPTIONS',
'WHERE  PROFILE_CODE= ''EXIT_MGT''',
'AND PROFILE_VAL = ''Y''',
'AND COMPANY_CODE = :AP_COMPANY_CODE',
'AND APPLICATION = ''2000004'';',
'',
'IF V_COUNT > 0 THEN ',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(49626287316689111)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Marketplace'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
