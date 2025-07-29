prompt --application/shared_components/user_interface/lovs/status
begin
--   Manifest
--     STATUS
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
 p_id=>wwv_flow_imp.id(3974823347855533)
,p_lov_name=>'STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(3974823347855533)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3975297101855536)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ACTIVE'
,p_lov_return_value=>'ACTIVE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3975671675855536)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'INACTIVE'
,p_lov_return_value=>'INACTIVE'
);
wwv_flow_imp.component_end;
end;
/
