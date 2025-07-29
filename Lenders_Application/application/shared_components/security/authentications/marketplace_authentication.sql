prompt --application/shared_components/security/authentications/marketplace_authentication
begin
--   Manifest
--     AUTHENTICATION: MarketPlace Authentication
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(67113500950400183)
,p_name=>'MarketPlace Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'xxmrkt.xxmrkt_marketplace_pkg.user_authentication'
,p_attribute_04=>'wwv_flow_custom_auth_std.remove_session'
,p_attribute_05=>'N'
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=2000008:LOGIN:0:::::&tz=1:00'
,p_logout_url=>'f?p=2000008:LOGIN:0:::::&tz=1:00'
,p_cookie_name=>'IHRMS_COOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>6005729350137
);
wwv_flow_imp.component_end;
end;
/
