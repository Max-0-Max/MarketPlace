prompt --application/shared_components/user_interface/lovs/offence_type
begin
--   Manifest
--     OFFENCE TYPE
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
 p_id=>wwv_flow_imp.id(6227692556922855)
,p_lov_name=>'OFFENCE TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.meaning d, a.lookup_code r',
'from xxhrms.XXHRMS_LOOKUP_VALUES_TAB a, xxhrms.XXHRMS_LOOKUP_TYPES_TAB b',
'where a.lookup_type_id = b.lookup_type_id',
'and b.lookup_code = ''DISC_OFF'''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
