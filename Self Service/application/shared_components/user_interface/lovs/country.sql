prompt --application/shared_components/user_interface/lovs/country
begin
--   Manifest
--     COUNTRY
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
 p_id=>wwv_flow_imp.id(20159862443080922)
,p_lov_name=>'COUNTRY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select counry_name as d,',
'       country_code as r',
'  from xxhrms.XXHRMS_COUNTRIES',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
