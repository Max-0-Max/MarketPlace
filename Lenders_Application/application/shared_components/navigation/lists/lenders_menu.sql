prompt --application/shared_components/navigation/lists/lenders_menu
begin
--   Manifest
--     LIST: lenders Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(81003035511738090)
,p_name=>'lenders Menu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT',
'    REGEXP_SUBSTR(row_value, ''[^:]+'', 1, 1) label,',
'  --  ''f?p=&APP_ID.:''||REGEXP_SUBSTR(row_value, ''[^:]+'', 1, 2)||'':''||:APP_SESSION||'':::'' target,',
'  --  REGEXP_SUBSTR(row_value, ''[^:]+'', 1, 3) image,',
'    null is_current_list_entry',
'FROM',
'(SELECT REGEXP_SUBSTR(MENUS, ''[^,]+'', 1, LEVEL) row_value',
'     FROM XXMRKT.XXMRKT_MARKETPLACE_USERS',
'    WHERE MENUS IS NOT NULL',
'    CONNECT BY LEVEL <= REGEXP_COUNT(MENUS, '','') + 1',
')',
''))
,p_list_status=>'PUBLIC'
,p_version_scn=>6005981085196
);
wwv_flow_imp.component_end;
end;
/
