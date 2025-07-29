prompt --application/shared_components/files/mass_user_creation_csv
begin
--   Manifest
--     APP STATIC FILES: 2000004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '53544146465F49442C555345524E414D452C4E414D452C50415353574F52440D0A30333637362C7465737465722C7465737465722074657374657232322C50617373776F7264403132330D0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(1519950549243155)
,p_file_name=>'Mass_User_Creation.csv'
,p_mime_type=>'text/csv'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
