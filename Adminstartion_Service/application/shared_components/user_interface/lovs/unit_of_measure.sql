prompt --application/shared_components/user_interface/lovs/unit_of_measure
begin
--   Manifest
--     UNIT OF MEASURE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(57931902606111164)
,p_lov_name=>'UNIT OF MEASURE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select y.meaning, y.lookup_code',
'  from xxhrms.xxhrms_lookup_values_tab y, xxhrms.xxhrms_lookup_types_tab x',
'  where x.lookup_type_id = y.lookup_type_id',
'  and x.lookup_code = ''UNIT_OF_MEASURE''',
'  and y.enabled_flag = ''Y''',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
