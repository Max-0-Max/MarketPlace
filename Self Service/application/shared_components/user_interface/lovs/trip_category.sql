prompt --application/shared_components/user_interface/lovs/trip_category
begin
--   Manifest
--     TRIP CATEGORY
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
 p_id=>wwv_flow_imp.id(27892164151428213)
,p_lov_name=>'TRIP CATEGORY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and lower(lookup_code) = lower(''trip_category'')',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'WHERE lower(lookup_code) = lower(''trip_category'')',
'ORDER BY 1',
' '))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
