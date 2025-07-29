prompt --application/shared_components/files/arrow_left_02_sharp_1_png
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773DF8000000097048597300000B1300000B1301009A9C18000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000B5494441547801ED94410AC23010';
wwv_flow_imp.g_varchar2_table(2) := '45679A9D5110AC208DB7B082B7F1081E418FA037F0085EC1A5B8F11475E1A6A014578E9D45A4A26D21994D210FC26448980F33F90108047C516D17C6D3F94A6BB3281ED9091C889A0EE3245D13D1969086200D178F4D4A1C419A4E15C76A329ACC96A870';
wwv_flow_imp.g_varchar2_table(3) := '5F6EF3725DC0017CE1E1763DEF6CFE35E4487D1E95FC502DD22DFAF14171CF8EBD41C2CDDB70E41C3CF86B3449915A27574574DFE4AE4E6EFC2AAC08023E5D0502017FDEA7DF4168C5AE76000000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(101113987331016210)
,p_file_name=>'arrow-left-02-sharp (1).png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
