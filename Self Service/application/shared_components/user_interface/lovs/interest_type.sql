prompt --application/shared_components/user_interface/lovs/interest_type
begin
--   Manifest
--     INTEREST_TYPE
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
 p_id=>wwv_flow_imp.id(15033618109405764)
,p_lov_name=>'INTEREST_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(15033618109405764)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15033928426405793)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Simple Interest'
,p_lov_return_value=>'SMP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15034220367405794)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Amortised Interest'
,p_lov_return_value=>'AMO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15034510549405794)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Reducing Balance'
,p_lov_return_value=>'RED'
);
wwv_flow_imp.component_end;
end;
/
