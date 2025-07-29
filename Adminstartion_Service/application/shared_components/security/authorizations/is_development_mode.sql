prompt --application/shared_components/security/authorizations/is_development_mode
begin
--   Manifest
--     SECURITY SCHEME: Is Development Mode
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3148311787613203)
,p_name=>'Is Development Mode'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'RETURN (APEX_APPLICATION.g_edit_cookie_session_id IS NOT NULL);'
,p_error_message=>'Not in Development Mode (Developer not logged on)!'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_SESSION'
,p_comments=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This Authorization Scheme is used by FOEX and may not be changed or deleted!',
'All it does is determining if a Developer is currently logged on.'))
);
wwv_flow_imp.component_end;
end;
/
