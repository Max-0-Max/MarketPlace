prompt --workspace/credentials/credentials_for_cohere_api
begin
--   Manifest
--     CREDENTIAL: Credentials for cohere_api
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(7668807203294647)
,p_name=>'Credentials for cohere_api'
,p_static_id=>'credentials_for_cohere_api'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.cohere.ai/v1',
''))
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
