prompt --application/shared_components/user_interface/lovs/replacement_list1
begin
--   Manifest
--     REPLACEMENT LIST1
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
 p_id=>wwv_flow_imp.id(14951250822221714)
,p_lov_name=>'REPLACEMENT LIST1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.xxhrms_master_all ',
'where dept_code = (select dept_code from xxhrms_assignments where staff_id = (select staff_id from xxadm_password where upper(logname) = :APP_USER))',
'  and person_id <> :AP_STAFF_ID',
'  and assignment_status <> ''INACTIVE''',
'order by full_name'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
