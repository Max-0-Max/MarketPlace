prompt --application/shared_components/logic/application_processes/global_user
begin
--   Manifest
--     APPLICATION PROCESS: global_user
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
 p_id=>wwv_flow_imp.id(302768725511149348)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'global_user'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'',
'    l_url varchar2(2000);',
'    l_app number := ''2000100'';',
'    l_session number := v(''APP_SESSION'');',
'begin',
'l_url :=APEX_UTIL.PREPARE_URL(',
'        p_url => ''f?p='' || l_app || '':1:''||l_session||''::::'',',
'     p_checksum_type => ''SESSION'');',
'',
'if UPPER(:APP_USER) =UPPER(''globaluser'')',
'THEN',
'',
'apex_util.redirect_url (',
'    p_url => l_url);',
'    end if;',
'    end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
