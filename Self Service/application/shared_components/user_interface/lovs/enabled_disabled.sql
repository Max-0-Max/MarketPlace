prompt --application/shared_components/user_interface/lovs/enabled_disabled
begin
--   Manifest
--     ENABLED/DISABLED
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(281690107597657325)
,p_lov_name=>'ENABLED/DISABLED'
,p_lov_query=>'.'||wwv_flow_imp.id(281690107597657325)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(281690414627657331)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ENABLED'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(281690815220657335)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'DISABLED'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
