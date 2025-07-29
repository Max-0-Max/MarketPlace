prompt --application/shared_components/user_interface/lovs/document_type
begin
--   Manifest
--     DOCUMENT_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(33213490600629216)
,p_lov_name=>'DOCUMENT_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(33213490600629216)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(33213644843629218)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Resume'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(33214064770629220)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Cover Letter'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(33214431795629220)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Other Document Type'
,p_lov_return_value=>'3'
);
wwv_flow_imp.component_end;
end;
/
