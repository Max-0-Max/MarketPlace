prompt --application/shared_components/user_interface/lovs/access_level
begin
--   Manifest
--     ACCESS LEVEL
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
 p_id=>wwv_flow_imp.id(4454145869322656)
,p_lov_name=>'ACCESS LEVEL'
,p_lov_query=>'.'||wwv_flow_imp.id(4454145869322656)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4454470359322657)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Global Access'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4454802179322658)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Company Structure'
,p_lov_return_value=>'2'
);
wwv_flow_imp.component_end;
end;
/
