prompt --application/shared_components/user_interface/lovs/loan_types
begin
--   Manifest
--     LOAN_TYPES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(75818641691632716)
,p_lov_name=>'LOAN_TYPES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_owner=>'XXMRKT'
,p_query_table=>'XXMRKT_LOAN_TYPES'
,p_return_column_name=>'LOAN_TYPE_ID'
,p_display_column_name=>'LOAN_TYPE'
,p_default_sort_column_name=>'LOAN_TYPE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>6005880204062
);
wwv_flow_imp.component_end;
end;
/
