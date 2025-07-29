prompt --application/shared_components/logic/application_processes/perview_document
begin
--   Manifest
--     APPLICATION PROCESS: PERVIEW_DOCUMENT
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
 p_id=>wwv_flow_imp.id(70445957368495274)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PERVIEW_DOCUMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR file IN (',
'        SELECT *',
'        FROM XXHRMS.XXHRMS_DOCUMENTS',
'        WHERE id = :FILE_ID',
'    ) LOOP',
'        sys.htp.init;',
'        sys.owa_util.mime_header(file.mime_type, FALSE);',
'        sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength(file.blob_content));',
'        sys.htp.p(''Content-Disposition: inline; filename="'' || file.filename || ''"'');',
'        --sys.htp.p(''Cache-Control: max-age=3600'');',
'        sys.owa_util.http_header_close;',
'        sys.wpg_docload.download_file(file.blob_content);',
'       -- apex_application.stop_apex_engine;',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>6005779587965
);
wwv_flow_imp.component_end;
end;
/
