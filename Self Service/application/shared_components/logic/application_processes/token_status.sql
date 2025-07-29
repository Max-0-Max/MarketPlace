prompt --application/shared_components/logic/application_processes/token_status
begin
--   Manifest
--     APPLICATION PROCESS: TOKEN_STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(57400547479603557)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TOKEN_STATUS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_url varchar2(2000);',
'    l_app number := ''2000004'';',
'    l_session number := v(''APP_SESSION'');',
'    v_option varchar2(3);',
'begin',
'',
'    select USE_2FA INTO v_option ',
'    from xxadm.xxadm_password_policy ',
'    where company_code = :AP_COMPANY_CODE;',
'',
'    l_url :=APEX_UTIL.PREPARE_URL(',
'            p_url => ''f?p='' || l_app || '':52:''||l_session||''::::'',',
'         p_checksum_type => ''SESSION'');',
'',
'    if :APP_PAGE_ID != 52 AND :AP_TOKEN_STATUS != ''VALID'' and v_option = ''Y''',
'    THEN',
'        apex_util.redirect_url (',
'            p_url => l_url);',
'    end if;',
'    ',
'exception ',
'when no_data_found then ',
'null;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'USER_IS_NOT_PUBLIC_USER'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
