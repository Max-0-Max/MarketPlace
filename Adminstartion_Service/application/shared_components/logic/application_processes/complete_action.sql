prompt --application/shared_components/logic/application_processes/complete_action
begin
--   Manifest
--     APPLICATION PROCESS: COMPLETE_ACTION
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
 p_id=>wwv_flow_imp.id(99342182367853522)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COMPLETE_ACTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ename number;',
'begin',
'   UPDATE XXMRKT.XXMRKT_COMPANY_LIST',
'   SET COMPANY_STATUS = APEX_APPLICATION.g_x01',
'   WHERE COMPANY_ID = APEX_APPLICATION.g_x02;',
'   ',
'   HTP.P(1);',
'',
'exception when others then ',
'HTP.P(0);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>6005594488396
);
wwv_flow_imp.component_end;
end;
/
