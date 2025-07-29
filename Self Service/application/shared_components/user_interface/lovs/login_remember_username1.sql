prompt --application/shared_components/user_interface/lovs/login_remember_username1
begin
--   Manifest
--     LOGIN_REMEMBER_USERNAME1
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
 p_id=>wwv_flow_imp.id(24030442461140955)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME1'
,p_lov_query=>'.'||wwv_flow_imp.id(24030442461140955)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(24030796409140982)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'<p>Remember Username</p>'
,p_lov_return_value=>'Y'
);
wwv_flow_imp.component_end;
end;
/
