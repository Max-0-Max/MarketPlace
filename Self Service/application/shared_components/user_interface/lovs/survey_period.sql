prompt --application/shared_components/user_interface/lovs/survey_period
begin
--   Manifest
--     SURVEY_PERIOD
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
 p_id=>wwv_flow_imp.id(66569996602902771)
,p_lov_name=>'SURVEY_PERIOD'
,p_lov_query=>'.'||wwv_flow_imp.id(66569996602902771)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(66570210913902773)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Post Course'
,p_lov_return_value=>'POST'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(66570662667902773)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Pre Course'
,p_lov_return_value=>'PRE'
);
wwv_flow_imp.component_end;
end;
/
