prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
--   Manifest
--     LIST: Desktop Navigation Bar
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
 p_id=>wwv_flow_imp.id(5526570761166756)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>6004303891710
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39088139679082657)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'&AP_COMPANY_NAME.'
,p_list_item_icon=>'fa-building'
,p_list_text_01=>'<b>&AP_INSTANCE_NAME.</b>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14428329242046205)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Switch Organization'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_CUR_PAGE:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-mail-forward'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':AP_ACCESS_LEVEL = 1 or (:AP_ACCESS_LEVEL != 1 and :AP_UORG like ''%:%'')'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Application Modules'
,p_list_item_icon=>'fa-align-center'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5837357383568873)
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
'          union select 1 from dual where :AP_ACCESS_LEVEL = 1)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5839294608617470)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5839652911625833)
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
'            union select 1 from dual where :AP_ACCESS_LEVEL = 1)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5846828218659404)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5848131871677033)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5848453926683820)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 1)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5850157895712395)
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
'          union select 1 from dual where :AP_ACCESS_LEVEL = 1)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5850528951726295)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 2)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5847391955669911)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 2)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5875763664626629)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 2)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5876032237629945)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 2)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5876384194634850)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 2)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(65683260146748936)
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
'           union select 1 from dual where :AP_ACCESS_LEVEL = 2)',
''))
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74873315819738408)
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
,p_parent_list_item_id=>wwv_flow_imp.id(5550617607262049)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5541022790166783)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5529039209166764)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5541487595166784)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.::P10011_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(5541022790166783)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5529039209166764)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5541919847166784)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(5541022790166783)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5542252160166785)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'About SoftSuite'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(5541022790166783)
,p_required_patch=>wwv_flow_imp.id(5529039209166764)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5542602605166785)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5543082441166785)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(5542602605166785)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5543519309166786)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(5542602605166785)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
