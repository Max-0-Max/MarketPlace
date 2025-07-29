prompt --workspace/remote_servers/cohere_api
begin
--   Manifest
--     REMOTE SERVER: cohere_api
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(7669116971294648)
,p_name=>'cohere_api'
,p_static_id=>'cohere_api'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('cohere_api'),'https://api.cohere.ai/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('cohere_api'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('cohere_api'),'')
,p_credential_id=>wwv_flow_imp.id(7668807203294647)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('cohere_api'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('cohere_api'),'')
,p_prompt_on_install=>true
,p_ai_provider_type=>'COHERE'
,p_ai_is_builder_service=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('cohere_api'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('cohere_api'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('cohere_api'),'')
);
wwv_flow_imp.component_end;
end;
/
