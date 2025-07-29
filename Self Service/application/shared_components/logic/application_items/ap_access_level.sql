prompt --application/shared_components/logic/application_items/ap_access_level
begin
--   Manifest
--     APPLICATION ITEM: AP_ACCESS_LEVEL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(13837584170658410)
,p_name=>'AP_ACCESS_LEVEL'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
