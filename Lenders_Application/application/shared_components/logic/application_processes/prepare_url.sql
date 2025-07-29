prompt --application/shared_components/logic/application_processes/prepare_url
begin
--   Manifest
--     APPLICATION PROCESS: PREPARE_URL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(70433603817994709)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PREPARE_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'result varchar2(32767);',
'',
'begin',
'',
'result:=apex_util.prepare_url(apex_application.g_x01,p_checksum_type => ''SESSION'');',
'',
'apex_json.open_object;',
'',
'apex_json.write(''success'', true);',
'',
'apex_json.write(''url'', result);',
'',
'apex_json.close_object;',
'',
'exception',
'',
'when others then',
'',
'apex_json.open_object;',
'',
'apex_json.write(''success'', false);',
'',
'apex_json.write(''message'', sqlerrm);',
'',
'apex_json.close_object;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>6005777732195
);
wwv_flow_imp.component_end;
end;
/
