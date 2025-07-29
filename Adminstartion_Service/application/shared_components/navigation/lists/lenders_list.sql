prompt --application/shared_components/navigation/lists/lenders_list
begin
--   Manifest
--     LIST: Lenders List
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
 p_id=>wwv_flow_imp.id(67041973005845823)
,p_name=>'Lenders List'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMPANY_ID,',
'       COMPANY_NAME',
'FROM XXMRKT.XXMRKT_COMPANY_LIST',
'WHERE COMPANY_CODE = :AP_COMPANY_CODE'))
,p_list_status=>'PUBLIC'
,p_version_scn=>6005726829889
);
wwv_flow_imp.component_end;
end;
/
