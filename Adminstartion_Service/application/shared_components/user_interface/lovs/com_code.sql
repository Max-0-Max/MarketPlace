prompt --application/shared_components/user_interface/lovs/com_code
begin
--   Manifest
--     COM_CODE
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
 p_id=>wwv_flow_imp.id(52811422599086191)
,p_lov_name=>'COM_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_level PLS_INTEGER;',
'vcompanycode xxhrms.xxhrms_assignments.company_code%type;',
' begin ',
'   select levels,b.company_code ',
'   into v_level,vcompanycode ',
'   from xxadm.xxadm_password a,xxhrms.xxhrms_assignments b',
'   where a.staff_id =b.staff_id',
'   and logname = :app_user;',
'if v_level < 2 then RETURN',
'''select company_name d, company_code r',
'from xxhrms_companyinfo',
'where company_code =''||vcompanycode||',
' ''ORDER BY 1'';',
'else',
' RETURN',
'''select company_name d, company_code r',
'from xxhrms_companyinfo',
' ORDER BY 1'';',
'end if;',
'end;',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
