prompt --application/shared_components/logic/application_items/ap_company_code
begin
--   Manifest
--     APPLICATION ITEM: AP_COMPANY_CODE
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
 p_id=>wwv_flow_imp.id(67824192797044184)
,p_name=>'AP_COMPANY_CODE'
,p_protection_level=>'N'
,p_version_scn=>6005737036406
);
wwv_flow_imp.component_end;
end;
/
