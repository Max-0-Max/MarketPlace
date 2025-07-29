prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 2000004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(26050205901015004)
);
wwv_flow_imp.component_end;
end;
/
