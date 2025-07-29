prompt --application/shared_components/navigation/lists/data_load_wizard_progress_mass_user_creation
begin
--   Manifest
--     LIST: Data Load Wizard Progress - Mass User Creation
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
 p_id=>wwv_flow_imp.id(1398531417233396)
,p_name=>'Data Load Wizard Progress - Mass User Creation'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
