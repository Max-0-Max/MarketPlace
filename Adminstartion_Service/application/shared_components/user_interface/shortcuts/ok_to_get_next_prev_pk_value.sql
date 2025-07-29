prompt --application/shared_components/user_interface/shortcuts/ok_to_get_next_prev_pk_value
begin
--   Manifest
--     SHORTCUT: OK_TO_GET_NEXT_PREV_PK_VALUE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(6471338362690866)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
wwv_flow_imp.component_end;
end;
/
