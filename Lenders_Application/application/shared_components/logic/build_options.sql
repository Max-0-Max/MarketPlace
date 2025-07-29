prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 2000008
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(56394089215590417)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>6005641741648
);
wwv_flow_imp.component_end;
end;
/
