prompt --application/shared_components/logic/application_processes/set_application_items
begin
--   Manifest
--     APPLICATION PROCESS: Set Application Items
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
 p_id=>wwv_flow_imp.id(67825091070081368)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Application Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_row XXMRKT.XXMRKT_MARKETPLACE_USERS%ROWTYPE;',
'    v_user NUMBER;',
'    v_company_name VARCHAR2(20000);',
'BEGIN',
'    SELECT *',
'    INTO v_row',
'    FROM XXMRKT.XXMRKT_MARKETPLACE_USERS',
'    WHERE UPPER(USER_NAME) = UPPER(v(''APP_USER''));',
'',
'    SELECT COMPANY_NAME ',
'    INTO v_company_name',
'    FROM XXMRKT.XXMRKT_COMPANY_LIST',
'    WHERE COMPANY_ID = v_row.company_id;',
'',
'    ',
'    apex_util.set_session_state(''AP_COMPANY_CODE'', v_row.company_code);',
'    apex_util.set_session_state(''AP_COMPANY_ID'', v_row.company_id);',
'    apex_util.set_session_state(''AP_USER_NAME'', v_row.user_name);',
'    apex_util.set_session_state(''AP_USER_ID'', v_row.user_id);',
'    apex_util.set_session_state(''AP_COMPANY_NAME'', v_company_name);',
'',
'    BEGIN',
'       SELECT s.APPROVAL_LEVEL',
'       INTO v_user',
'       FROM XXMRKT.XXMRKT_APPROVAL_SETUP s',
'       JOIN XXMRKT.XXMRKT_MARKETPLACE_USERS u',
'       ON to_char(s.USERNAME) = to_char(u.USER_ID)',
'       WHERE UPPER(u.USER_NAME) = UPPER(v(''APP_USER''));',
'       ',
'       apex_util.set_session_state(''AP_LEVEL'', v_user);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>6006040371448
);
wwv_flow_imp.component_end;
end;
/
