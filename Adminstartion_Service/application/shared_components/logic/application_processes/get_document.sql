prompt --application/shared_components/logic/application_processes/get_document
begin
--   Manifest
--     APPLICATION PROCESS: GET_DOCUMENT
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
 p_id=>wwv_flow_imp.id(4826057942829361)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DOCUMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select *',
'                 from XXHRMS.XXHRMS_DOCUMENTS',
'                where id = :FILE_ID) loop',
'        --',
'        sys.htp.init;',
'        sys.owa_util.mime_header( c1.mime_type, FALSE );',
'        sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( c1.blob_content));',
'        sys.htp.p(''Content-Disposition: attachment; filename="'' || c1.filename || ''"'' );',
'        sys.htp.p(''Cache-Control: max-age=3600'');  -- tell the browser to cache for one hour, adjust as necessary',
'        sys.owa_util.http_header_close;',
'        sys.wpg_docload.download_file( c1.blob_content );',
'     ',
'        apex_application.stop_apex_engine;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
