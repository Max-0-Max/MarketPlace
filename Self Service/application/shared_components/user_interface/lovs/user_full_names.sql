prompt --application/shared_components/user_interface/lovs/user_full_names
begin
--   Manifest
--     USER FULL NAMES
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
 p_id=>wwv_flow_imp.id(30110881455904351)
,p_lov_name=>'USER FULL NAMES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as d,',
'       LOGNAME as r',
'  from XXADM.XXADM_PASSWORD',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
