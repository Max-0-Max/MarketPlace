prompt --application/shared_components/logic/application_items/ap_level
begin
--   Manifest
--     APPLICATION ITEM: AP_LEVEL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(74235886249474429)
,p_name=>'AP_LEVEL'
,p_protection_level=>'N'
,p_version_scn=>6005852981047
);
wwv_flow_imp.component_end;
end;
/
