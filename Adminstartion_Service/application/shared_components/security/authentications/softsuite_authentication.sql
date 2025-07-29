prompt --application/shared_components/security/authentications/softsuite_authentication
begin
--   Manifest
--     AUTHENTICATION: Softsuite Authentication
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(5866925397023773)
,p_name=>'Softsuite Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'xxadm.xxadm_security_pkg.xxadm_variation_auth'
,p_attribute_04=>'wwv_flow_custom_auth_std.remove_session'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure post_auth',
'is',
'',
'    l_url varchar2(2000);',
'    l_app number := ''2000100'';',
'    l_session number := v(''APP_SESSION'');',
'begin',
'l_url :=APEX_UTIL.PREPARE_URL(',
'        p_url => ''f?p='' || l_app || '':1:''||l_session||''::::'',',
'     p_checksum_type => ''SESSION'');',
'',
'if UPPER(:APP_USER) =UPPER(''globaluser'')',
'THEN',
'',
'apex_util.redirect_url (',
'    p_url => l_url);',
'    end if;',
'    end;'))
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=2000004:LOGIN:0:::::&tz=1:00'
,p_logout_url=>'f?p=2000004:LOGIN:0:::::&tz=1:00'
,p_post_auth_process=>'post_auth'
,p_cookie_name=>'IHRMS_COOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
