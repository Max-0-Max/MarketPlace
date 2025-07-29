prompt --application/shared_components/logic/application_processes/has_access
begin
--   Manifest
--     APPLICATION PROCESS: has_Access
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(9039475612573854)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'has_Access'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_cnt NUMBER;',
'begin',
'      select count(1)',
'      into v_cnt',
'      from xxadm.xxadm_role_functions_v b, xxadm.xxadm_menu_functions_tab cc, xxadm.xxadm_user_roles_tab ff,xxadm.xxadm_password p',
'      where b.function_code = cc.function_code',
'       and   b.menu_code = cc.menu_code',
'      --and upper(ee.status) = upper(''ACTIVE'')',
'      --and upper(ff.status) = upper(''ACTIVE'')',
'      and   b.role_code = ff.role_code',
'      and upper(ff.user_id) = p.LOGNAME',
'      and upper(ff.user_id) = upper(:APP_USER)',
'     and b.apex_app_id  = :APP_ID      ',
'      and p.status = ''ACTIVE''',
'      and cc.status = ''ACTIVE''',
'      and (to_char(b.apex_page_no) = NVL(SUBSTR(:APP_PAGE_ALIAS,3),:APP_PAGE_ID) or NVL(SUBSTR(:APP_PAGE_ALIAS,3),:APP_PAGE_ID) = ''1'' or :APP_PAGE_ID in(''1'',''9999'',''10011'',''10010''));',
'      --',
'      if NVL(v_cnt,0) < 1 THEN',
'         RAISE_APPLICATION_ERROR(-20001,''You do not have permission to access this page'');',
'      END IF;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'You do not have permission to access this page'
,p_process_when_type=>'USER_IS_NOT_PUBLIC_USER'
,p_security_scheme=>'!'||wwv_flow_imp.id(3148311787613203)
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
