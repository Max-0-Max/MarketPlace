prompt --application/shared_components/legacy_data_loads/xxadm_mass_users
begin
--   Manifest
--     XXADM_MASS_USERS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(4341108252176012)
,p_name=>'Mass User Creation'
,p_owner=>'XXADM'
,p_table_name=>'XXADM_MASS_USERS'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_unique_column_2=>'STAFF_ID'
,p_is_uk2_case_sensitive=>'N'
,p_unique_column_3=>'USERNAME'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/
