prompt --application/shared_components/security/authorizations/ihrms_loader_authorization
begin
--   Manifest
--     SECURITY SCHEME: iHRMS Loader Authorization
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
 p_id=>wwv_flow_imp.id(5561530064715737)
,p_name=>'iHRMS Loader Authorization'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_setup_id number := null;',
'  l_mode     varchar2(50) := null;',
'  l_priv     varchar2(50) := null;',
'begin',
'',
'      if apex_application.is_custom_auth_page then',
'        return true;',
'      end if;',
'',
'      for c1 in (',
'                    select distinct upper(logname) logname',
'                    from xxadm_password',
'                    where upper(logname) = upper(:app_user)',
'                )',
'      loop',
'         l_priv := c1.logname;',
'      end loop;',
'      ',
'        if l_priv = :app_user then',
'          return true;',
'            else',
'              return false;',
'        end if;',
'end;'))
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>SoftAlliance SOFTSUITE is a best-practices based, quick to deploy and easy to use Human Resources and Payroll solution',
'</p><p>',
'Built on ORACLE, an industry-leading internet architecture, SoftAlliance SOFTSUITE provides a robust foundation for strategic work force, and thus, supporting business growth and automating manual business processes and routine employee activities th'
||'at will enable businesses improve on their workforce management.',
'</p><p>',
'You have just tried to access SoftSuite Forms directly from a URL.',
'</p><p>',
'You do no have access to this page. This is an unauthorized access by-pass. Your user activity has been logged. Please contact your system administrator for more information.',
'</p><p>',
'Copyright @2012. Soft Alliance & Resources Limited. All Rights Reserved.</p>'))
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
