prompt --application/shared_components/user_interface/lovs/lenders_nav_list
begin
--   Manifest
--     LENDERS NAV LIST
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
 p_id=>wwv_flow_imp.id(81001076372633980)
,p_lov_name=>'LENDERS NAV LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISPLAY, RETURN /* This is the order for return values: label, target, image, level*/',
'FROM XXMRKT.XXMRKT_LENDERS_MENU'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'XXADM'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>6005980963868
);
wwv_flow_imp.component_end;
end;
/
