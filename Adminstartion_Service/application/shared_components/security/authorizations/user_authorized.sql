prompt --application/shared_components/security/authorizations/user_authorized
begin
--   Manifest
--     SECURITY SCHEME: user_authorized
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
 p_id=>wwv_flow_imp.id(58850824949833187)
,p_name=>'user_authorized'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return xxhrms.xxhrms_utils_pkg.authorized_user_f;',
'end;'))
,p_error_message=>'You are not authorized to access this application'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
