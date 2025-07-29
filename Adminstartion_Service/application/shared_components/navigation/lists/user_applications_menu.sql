prompt --application/shared_components/navigation/lists/user_applications_menu
begin
--   Manifest
--     LIST: User Applications Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5561027026715734)
,p_name=>'User Applications Menu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  LEVEL, label, target, DECODE(apex_app_id,:APP_ID,''YES'',''NO'') conditional, null updated,  null authorization,  parent, application_id',
'',
'from ',
'(',
'select xx.*, null parent',
'  from xxadm_user_apps_vw xx',
'where upper(logname) = upper(:APP_USER)',
'and enabled_flag = ''Y''',
')',
'CONNECT BY prior application_id = parent',
'order by application_id'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
