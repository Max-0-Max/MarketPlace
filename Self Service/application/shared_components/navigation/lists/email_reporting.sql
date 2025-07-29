prompt --application/shared_components/navigation/lists/email_reporting
begin
--   Manifest
--     LIST: Email Reporting
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(173376837347565)
,p_name=>'Email Reporting'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(162247500347534)
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
