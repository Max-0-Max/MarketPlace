prompt --application/shared_components/user_interface/lovs/bank
begin
--   Manifest
--     BANK
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(44010716025918931)
,p_lov_name=>'BANK'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BANK_NAME as display_value, BANK_CODE as return_value ',
'  from XXHRMS.XXHRMS_BANKS',
'  where company_code = :AP_COMPANY_CODE',
'  and STATUS = ''ACTIVE''',
'  --and (CBN_CODE is NOT NULL or CRSPND_BANK_CODE is not null)',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
