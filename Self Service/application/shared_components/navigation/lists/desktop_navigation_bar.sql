prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
--   Manifest
--     LIST: Desktop Navigation Bar
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
 p_id=>wwv_flow_imp.id(2582942727224125)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>6004303883508
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14349056555675015)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'&AP_COMPANY_NAME.'
,p_list_item_icon=>'fa-building'
,p_list_text_01=>'<b>&AP_INSTANCE_NAME.</b>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Application Modules'
,p_list_item_icon=>'fa-align-center'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxadm.xxadm_password where logname = :AP_USERNAME',
'and PASSWORD_CHANGE = 0'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2893729349626242)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'System Administration'
,p_list_item_link_target=>'f?p=2000007:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000007',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2895666574674839)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Self Service'
,p_list_item_link_target=>'f?p=2000004:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-circle'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000004',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2896024877683202)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Human Resources'
,p_list_item_link_target=>'f?p=2000009:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000009',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'          union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2903200184716773)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Payroll Administration'
,p_list_item_link_target=>'f?p=2000011:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000011',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2904503837734402)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Performance Management'
,p_list_item_link_target=>'f?p=2000010:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-md'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000010',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2904825892741189)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Recruitment'
,p_list_item_link_target=>'f?p=2000017:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wheelchair'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000017',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'            union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2906529861769764)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Learning Management'
,p_list_item_link_target=>'f?p=2000040:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-mobile'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000040',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2906900917783664)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Time and Attendance'
,p_list_item_link_target=>'f?p=2000030:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dial-gauge-chart'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000030',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2903763921727280)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Payment Managememnt'
,p_list_item_link_target=>'f?p=2000025:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-eur'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000025',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'          union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2932135630683998)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Project Budgeting'
,p_list_item_link_target=>'f?p=2000026:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-edit'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000026',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2932404203687314)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Claims Management'
,p_list_item_link_target=>'f?p=2000027:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-badges'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000027',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'            union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2932756160692219)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'General Ledger Interface'
,p_list_item_link_target=>'f?p=2000041:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list-alt'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000041',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(65682449233739872)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Variation Portal'
,p_list_item_link_target=>'f?p=2000099:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list-alt'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000099',
'and enabled_flag = ''Y''',
'and exists (select 1 from XXADM.XXADM_PARTNER_APPS where company_code = :AP_COMPANY_CODE',
'           and APEX_APP_ID = xx.APEX_APP_ID and ENABLED_FLAG = ''Y'' ',
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)'))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74872585248724432)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Global Administration'
,p_list_item_link_target=>'f?p=2000100:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-globe'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and APEX_APP_ID = 2000100',
'and enabled_flag = ''Y'''))
,p_parent_list_item_id=>wwv_flow_imp.id(2606989573319418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2597394756224152)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(2585411175224133)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2597859561224153)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.::P10011_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(2597394756224152)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(2585411175224133)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2598291813224153)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(2597394756224152)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2598624126224154)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'About SoftSuite'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(2597394756224152)
,p_required_patch=>wwv_flow_imp.id(2585411175224133)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2598974571224154)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2599454407224154)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(2598974571224154)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2369251443582637)
,p_list_item_display_sequence=>69
,p_list_item_link_text=>'Change Password'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:::'
,p_list_item_icon=>'fa-key'
,p_parent_list_item_id=>wwv_flow_imp.id(2598974571224154)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2599891275224155)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(2598974571224154)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
