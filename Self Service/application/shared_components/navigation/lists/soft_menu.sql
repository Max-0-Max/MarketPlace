prompt --application/shared_components/navigation/lists/soft_menu
begin
--   Manifest
--     LIST: Soft Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2934641535723865)
,p_name=>'Soft Menu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       level, ',
'       name label, ',
'       DECODE(item_type, ''R'',null,''M'',null,''f?p=''||''&''||''APP_ID.:''||link||'':''||''&''||''SESSION.''||'':::''||link||''::'') target,',
'                   --function_code,',
'       DECODE(link,NVL(SUBSTR(:APP_PAGE_ALIAS,3),:APP_PAGE_ID),''YES'',''NO'') is_current_list_entry, ',
'       DECODE(item_type, ''R'',NVL(images,''fa-home''),''M'',NVL(images,''fa-angle-right''), NVL(images,''fa-angle-double-right''))  image,',
'       status, order_no',
' from (',
'    select DISTINCT ''R'' item_type,',
'            ''R''||a.role_code id,',
'           null parent,',
'            a.role_name name,',
'           NULL link,',
'           ff.user_id logname,',
'           --NULL as usernum,',
'           a.order_no order_no,',
'           a.status status,',
'		   null images,',
'           a.effective_start_date effective_start_date,',
'           a.effective_end_date effective_end_date',
'      from xxadm_roles_tab a, xxadm_user_roles_tab ff, XXADM_MENU_TAB x, XXADM_ROLES_MENU_TAB y, XXADM_PARTNER_APPS z',
'      where a.role_code  = ff.role_code',
'      and a.role_code = y.role_code',
'      and y.menu_code = x.menu_code',
'      and x.app_id = z.application_id',
'      --and upper(a.status) = upper(''ACTIVE'')      ',
'      and upper(ff.user_id) = upper(:APP_USER)',
'     and z.apex_app_id  = :APP_ID      ',
'     and a.status = ''ACTIVE''',
'     and sysdate between ff.start_date and NVL(ff.end_date,sysdate)',
'     and x.status = ''ACTIVE''',
'     and z.enabled_flag = ''Y''',
'    union all',
'    select DISTINCT ''M'' item_type,',
'            ''M''||x.menu_code id,',
'            ''R''||a.role_code parent,',
'            x.menu_name name,',
'           NULL link,',
'           ff.user_id logname,',
'           --NULL as usernum,',
'           y.menu_order order_no,',
'           a.status status,',
'		   x.images,',
'           a.effective_start_date effective_start_date,',
'           a.effective_end_date effective_end_date',
'      from xxadm_roles_tab a, xxadm_user_roles_tab ff, XXADM_MENU_TAB x, XXADM_ROLES_MENU_TAB y, XXADM_PARTNER_APPS z',
'      where a.role_code  = ff.role_code',
'      and a.role_code = y.role_code',
'      and y.menu_code = x.menu_code',
'      and x.app_id = z.application_id',
'      --and upper(a.status) = upper(''ACTIVE'')      ',
'      and upper(ff.user_id) = upper(:APP_USER)',
'     and z.apex_app_id  = :APP_ID          ',
'     and a.status = ''ACTIVE''',
'     and sysdate between ff.start_date and NVL(ff.end_date,sysdate)',
'     and x.status = ''ACTIVE''',
'     and z.enabled_flag = ''Y''',
'     union all',
'    select distinct ''F'' item_type,',
'           ''F''||to_char(b.function_code) id,',
'           --to_char(b.function_id) id,',
'            ''M''||b.menu_code parent,',
'           cc.item_prompt name,',
'           to_char(b.apex_page_no) as link,',
'           ff.user_id user_id,',
'           --p.userid as usernum,',
'           cc.item_order order_no,',
'           b.status  status,',
'           cc.images,',
'           b.effective_start_date effective_start_date,',
'           b.effective_end_date effective_end_date',
'      from xxadm_role_functions_v b, xxadm_menu_functions_tab cc, xxadm_user_roles_tab ff,xxadm_password p',
'      where b.function_code = cc.function_code',
'       and   b.menu_code = cc.menu_code',
'      --and upper(ee.status) = upper(''ACTIVE'')',
'      --and upper(ff.status) = upper(''ACTIVE'')',
'      and   b.role_code = ff.role_code',
'      and upper(ff.user_id) = p.LOGNAME',
'      and upper(ff.user_id) = upper(:APP_USER)',
'     and b.apex_app_id  = :APP_ID      ',
'      and p.status = ''ACTIVE''',
'      and cc.status = ''ACTIVE''',
'      and b.status = ''ACTIVE''',
'     and sysdate between ff.start_date and NVL(ff.end_date,sysdate)',
')',
'where trunc(sysdate) >= trunc(NVL(effective_start_date,''01-JAN-2010''))',
'--and trunc(sysdate) <= nvl(effective_end_date,''01-JAN-4712'')',
'--AND (upper(status) = upper(''ACTIVE''))',
'and :AP_CHANGE_PASSWORD = 0',
'start with parent is null',
'connect by prior id = parent',
'order siblings by order_no'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
