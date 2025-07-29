prompt --application/shared_components/navigation/lists/test
begin
--   Manifest
--     LIST: test
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(77596896769189531)
,p_name=>'test'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  ''Approval Level '' || approval_level AS label,',
'  ''fullname:'' || name AS target',
'FROM XXMRKT.XXMRKT_APPROVAL_SETUP',
'WHERE COMPANY_ID = :AP_COMPANY_ID',
'  AND COMPANY_CODE = :AP_COMPANY_CODE;'))
,p_list_status=>'PUBLIC'
,p_version_scn=>6005914896301
);
wwv_flow_imp.component_end;
end;
/
