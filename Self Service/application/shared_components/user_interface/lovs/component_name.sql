prompt --application/shared_components/user_interface/lovs/component_name
begin
--   Manifest
--     COMPONENT NAME
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
 p_id=>wwv_flow_imp.id(36931704350168111)
,p_lov_name=>'COMPONENT NAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct case',
'  when patch_component= ''pages'' then',
'  decode(instr(COMPONENT_NAME,''0'') , 0, COMPONENT_NAME,(select page_name from apex_Application_pages where  substr(COMPONENT_NAME,6) = lpad(page_id,5,''0'') and application_id = substr(:P21_MODULE,2)))',
'else COMPONENT_NAME end as d,  component_name as r',
'from ',
'(select id, module_name,patch_component,bundle,date_created, component_name,',
'           case   when patch_component = ''pages'' and component_name <> ''page_groups''',
'then   to_char(to_number(substr (component_name,6)))',
'else null end as Page_ID from xxadm.XXADM_PATCH_BUNDLE)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
