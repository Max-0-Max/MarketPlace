prompt --application/shared_components/user_interface/lovs/unit
begin
--   Manifest
--     UNIT
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
 p_id=>wwv_flow_imp.id(44010148227918931)
,p_lov_name=>'UNIT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UNIT_NAME, UNIT_ID from xxhrms.XXHRMS_UNITS',
'where ORGANIZATION_CODE = :AP_COMPANY_CODE',
'and exists (select c001 UNIT_ID from apex_collections where collection_name=''PX_ACCESS_LEVEL'' and c002=''UNIT'' and c001 = UNIT_ID',
'                              union all',
'                              select UNIT_ID from xxhrms.XXHRMS_UNITS where :AP_UUNIT =''0''and ORGANIZATION_CODE=:AP_COMPANY_CODE)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
