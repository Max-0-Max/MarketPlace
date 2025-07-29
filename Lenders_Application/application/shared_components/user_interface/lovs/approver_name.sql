prompt --application/shared_components/user_interface/lovs/approver_name
begin
--   Manifest
--     APPROVER-NAME
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
 p_id=>wwv_flow_imp.id(79390035867504817)
,p_lov_name=>'APPROVER-NAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME AS DISPLAY_VALUE,',
'       USERNAME AS RETURN_VALUE',
'        FROM XXMRKT.XXMRKT_APPROVAL_SETUP ',
'        WHERE COMPANY_ID =:AP_COMPANY_ID',
'        AND COMPANY_CODE= :AP_COMPANY_CODE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'XXMRKT'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>6005943095031
);
wwv_flow_imp.component_end;
end;
/
