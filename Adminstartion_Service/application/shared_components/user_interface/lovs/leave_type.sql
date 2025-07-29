prompt --application/shared_components/user_interface/lovs/leave_type
begin
--   Manifest
--     LEAVE TYPE
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
 p_id=>wwv_flow_imp.id(14644250715304113)
,p_lov_name=>'LEAVE TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.absence_name D, s.LEAVE_PERIOD R',
'FROM xxhrms.XXHRMS_LEAVE_SETUP s, xxhrms.XXHRMS_ABSENCE a ',
'where s.absence_id=a.absence_id and s.STATUS=''ACTIVE'''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
