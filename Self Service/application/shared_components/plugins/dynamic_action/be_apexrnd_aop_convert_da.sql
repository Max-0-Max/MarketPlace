prompt --application/shared_components/plugins/dynamic_action/be_apexrnd_aop_convert_da
begin
--   Manifest
--     PLUGIN: BE.APEXRND.AOP_CONVERT_DA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(2224268139897071770)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'BE.APEXRND.AOP_CONVERT_DA'
,p_display_name=>'APEX Office Print (AOP) - Convert DA'
,p_category=>'EXECUTE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','BE.APEXRND.AOP_CONVERT_DA'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#js/es6-promise.min.js',
'#PLUGIN_FILES#js/aop_da.min.js'))
,p_api_version=>1
,p_render_function=>'aop_convert_pkg.f_render_aop'
,p_ajax_function=>'aop_convert_pkg.f_ajax_aop'
,p_standard_attributes=>'ITEM:STOP_EXECUTION_ON_ERROR:WAIT_FOR_RESULT:INIT_JAVASCRIPT_CODE'
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX Office Print (AOP) was created by APEX R&D to facilitate exporting data and printing documents in Oracle Application Express (APEX) based on an Office document (Word, Excel, Powerpoint) or HTML, Markdown, CSV or Text. This plugin can only be use'
||'d to print to AOP and is copyrighted by APEX R&D. If you have any questions please contact support@apexofficeprint.com.',
'We hope you enjoy AOP!'))
,p_version_identifier=>'20.2'
,p_about_url=>'https://www.apexofficeprint.com'
,p_files_version=>231
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2224284648142417666)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>1000
,p_prompt=>'AOP URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'http://api.apexofficeprint.com/'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'URL to APEX Office Print server. <br/>',
'When installed on the same server as the database using the default port you can use http://localhost:8010/ <br/>',
'To use AOP as a service, you can use http(s)://api.apexofficeprint.com/ <br/>',
'When using HTTPS, make sure to add the certificate to the wallet of your database. Alternatively you can setup a proxy rule in your webserver to do the HTTPS handshaking so the AOP plugin can call a local url. Instructions how to setup both options c'
||'an be found in the documentation.<br/>',
'When running AOP on the Oracle Cloud you are obliged to use HTTPS, so the url should be https://api.apexofficeprint.com/ or https://www.cloudofficeprint.com/aop/<br/>',
'You can also dynamically specify a url by an Application Item e.g. &AI_AOP_URL.'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2111101431580452959)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>2000
,p_prompt=>'API key'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>50
,p_max_length=>50
,p_is_translatable=>false
,p_help_text=>'Enter your API key found on your account when you login at https://www.apexofficeprint.com.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1810915364989931119)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>3000
,p_prompt=>'Debug'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'No'
,p_help_text=>'By default debug is turned off.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1810922831662932509)
,p_plugin_attribute_id=>wwv_flow_imp.id(1810915364989931119)
,p_display_sequence=>10
,p_display_value=>'Remote'
,p_return_value=>'Yes'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enabling remote debug will capture the JSON and is made available in your dashboard at https://www.apexofficeprint.com.',
'This makes it easier to debug your JSON, check if it''s valid and contact us in case you need support.',
'This option only works when you use http(s)://www.apexofficeprint.com/api in your AOP settings.'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1557164010693957692)
,p_plugin_attribute_id=>wwv_flow_imp.id(1810915364989931119)
,p_display_sequence=>20
,p_display_value=>'Local'
,p_return_value=>'Local'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enabling local debug will download the JSON that is sent to the AOP server component. ',
'This makes it easier to debug your JSON, check if it''s valid and contact us in case you need support.',
'Note that the output file will not be produced and the server will never be called.'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(169085313495202462)
,p_plugin_attribute_id=>wwv_flow_imp.id(1810915364989931119)
,p_display_sequence=>30
,p_display_value=>'Derived from Application Item'
,p_return_value=>'APEX_ITEM'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This option is useful when you want to dynamically set AOP debugging.<br/>',
'The application item needs to be called AOP_DEBUG and can have values: No, Yes (=Remote) or Local.'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1813802751355114926)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>4000
,p_prompt=>'Converter'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2224284648142417666)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'http://apexofficeprint.com/api/,http://www.apexofficeprint.com/api/,https://www.apexofficeprint.com/api/'
,p_lov_type=>'STATIC'
,p_null_text=>'LibreOffice'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'To transform an Office document to PDF, APEX Office Print is using an external converter.',
'By default LibreOffice is used, but you can select another converter on request.'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1813825185021141974)
,p_plugin_attribute_id=>wwv_flow_imp.id(1813802751355114926)
,p_display_sequence=>10
,p_display_value=>'MS Office (Windows only)'
,p_return_value=>'officetopdf'
,p_help_text=>'Uses Microsoft Office to do the conversion and following module http://officetopdf.codeplex.com'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1813825634182145153)
,p_plugin_attribute_id=>wwv_flow_imp.id(1813802751355114926)
,p_display_sequence=>20
,p_display_value=>'Custom'
,p_return_value=>'custom'
,p_help_text=>'Specify the name of the custom converter defined at the AOP Server.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1003391440213910079)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>5000
,p_prompt=>'Settings package'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_show_in_wizard=>false
,p_display_length=>80
,p_max_length=>300
,p_is_translatable=>false
,p_examples=>'aop_settings_pkg'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'When you use a different AOP server in DEV, TEST, PROD it might be easier to define the package where the settings (e.g. AOP server) is defined.<br/>',
'This makes deployments seamless and you don''t need to update the plug-in component settings manually afterwards.<br/>',
'When a package is defined, we will always read those settings, regardless what is filled in above.'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1052628603203527790)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>1500
,p_prompt=>'AOP Failover URL'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Failover URL to APEX Office Print server incase the AOP URL fails. <br/>',
'When installed on the same server as the database using the default port you can use http://localhost:8010/ <br/>',
'To use AOP as a service, you can use http(s)://www.apexofficeprint.com/failover-api/ <br/>',
'When using HTTPS, make sure to add the certificate to the wallet of your database. Alternatively you can setup a proxy rule in your webserver to do the HTTPS handshaking so the AOP plugin can call a local url. Instructions how to setup both options c'
||'an be found in the documentation.<br/>',
'When running AOP on the Oracle Cloud you are obliged to use HTTPS, so the url should be https://www.apexofficeprint.com/failover-api/'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1078886203680553436)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>7
,p_display_sequence=>9000
,p_prompt=>'Failover procedure'
,p_attribute_type=>'PLSQL'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1052628603203527790)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_examples=>'aop_sample_pkg.failover_procedure;'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Specify the procedure that should be called when the failover url is used.',
'The procedure can for example send an email to notify the primary AOP url is not used, but the fallback url.'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(918059617690001213)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>8
,p_display_sequence=>8000
,p_prompt=>'Logging package'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>'see aop_log_pkg that comes with the AOP Sample app.'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If you want every request to aop_api_pkg.plsql_call_to_aop to be logged, you can specify a logging package here.<br/>',
'The logging package needs at least a function and a procedure with following definition:',
'<pre>',
'function start_request (',
'  p_data_type             in varchar2,',
'  p_data_source           in clob,',
'  p_template_type         in varchar2,',
'  p_template_source       in clob,',
'  p_output_type           in varchar2,',
'  p_output_filename       in varchar2,',
'  p_output_type_item_name in varchar2,',
'  p_output_to             in varchar2,',
'  p_procedure             in varchar2,',
'  p_binds                 in varchar2,',
'  p_special               in varchar2,',
'  p_aop_remote_debug      in varchar2,',
'  p_output_converter      in varchar2,',
'  p_aop_url               in varchar2,',
'  p_api_key               in varchar2,',
'  p_app_id                in number,',
'  p_page_id               in number,',
'  p_user_name             in varchar2,',
'  p_init_code             in clob,',
'  p_output_encoding       in varchar2,',
'  p_failover_aop_url      in varchar2,',
'  p_failover_procedure    in varchar2',
') return number;',
'',
'',
'procedure end_request (',
'  p_aop_log_id            in number,  ',
'  p_status                in varchar2, ',
'  p_aop_json              in clob,',
'  p_aop_error             in varchar2, ',
'  p_ora_sqlcode           in number, ',
'  p_ora_sqlerrm           in varchar2',
')',
'</pre>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(477189760122068594)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>9
,p_display_sequence=>4050
,p_prompt=>'Custom Converter'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(1813802751355114926)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'custom'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'AOP Server config looks like this:',
'<br/>',
'<pre><code>',
'{',
'    "converters": {',
'        "abiword":{',
'            "command": "abiword --to={outputFormat} --to-name={outputFile} {inputFile}"',
'        },',
'        "other":{',
'            "command":""',
'        }',
'    }',
'}',
'</code></pre>',
'</p>',
'<p>',
'This means you can use abiword or other as the name of the custom converter.',
'</p>'))
,p_help_text=>'Specify the name of the custom converter as specified at the AOP Server e.g. abiword'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(366734046159552821)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>10
,p_display_sequence=>2500
,p_prompt=>'AOP Mode'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Production'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Production (=null)',
'  Credits will be used.'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(366734491190553619)
,p_plugin_attribute_id=>wwv_flow_imp.id(366734046159552821)
,p_display_sequence=>10
,p_display_value=>'Development'
,p_return_value=>'development'
,p_help_text=>'In development mode no credits are used.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(366734941292555182)
,p_plugin_attribute_id=>wwv_flow_imp.id(366734046159552821)
,p_display_sequence=>20
,p_display_value=>'Derived from Application Item'
,p_return_value=>'APEX_ITEM'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This option is useful when you want to dynamically set the AOP mode.<br/>',
'The application item needs to be called AOP_MODE and can have values: development, production  or null (=production).'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1553797079634232320)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Init PL/SQL Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'aop_api_pkg.g_output_filename      := ''output'';',
'aop_api_pkg.g_output_filename      := v(''P1_FILENAME'');',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'You can define global variables of the aop_api_pkg in this area.<br/>',
'</p>',
'Available variables:',
'<pre>',
'-- Global variables',
'g_output_filename         varchar2(100) := null;',
'g_language                varchar2(2)   := ''en'';  -- Language can be: en, fr, nl, de',
'</pre>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2224309854765407338)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>31
,p_prompt=>'Output Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'pdf'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2224312042688413011)
,p_plugin_attribute_id=>wwv_flow_imp.id(2224309854765407338)
,p_display_sequence=>40
,p_display_value=>'PDF (pdf)'
,p_return_value=>'pdf'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2224440857506341070)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>32
,p_prompt=>'Output Type APEX Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2224309854765407338)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'apex_item'
,p_help_text=>'APEX item that contains the output type. See Output Type help text for valid list of output types.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2052449290886564278)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>12
,p_prompt=>'SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_sql_min_column_count=>3
,p_sql_max_column_count=>7
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server]',
'  from my_table',
' where instr()',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Enter the SQL statement in following format. At least 3 columns are necessary up to a maximum of 7.',
'<br/>The columns between [] are optional.',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2018968562386886202)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Output To'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Browser (file)'
,p_help_text=>'By default the file that''s generated by AOP, will be downloaded by the Browser and saved on your harddrive.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2018973685486887626)
,p_plugin_attribute_id=>wwv_flow_imp.id(2018968562386886202)
,p_display_sequence=>10
,p_display_value=>'Procedure'
,p_return_value=>'PROCEDURE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This option will call a procedure in a specific format. This option is useful in case you don''t need the file on your own harddrive, but for example you want to mail the document automatically.',
'In that case you can create a procedure that adds the generated document as an attachment to your apex_mail.send.'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2018974048676889176)
,p_plugin_attribute_id=>wwv_flow_imp.id(2018968562386886202)
,p_display_sequence=>20
,p_display_value=>'Procedure and Browser (file)'
,p_return_value=>'PROCEDURE_BROWSER'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This option allows you to call a procedure first and next download the file to your harddrive.',
'An example is when you first want to store the generated document in a table before letting the browser to download it.'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1218364238561429144)
,p_plugin_attribute_id=>wwv_flow_imp.id(2018968562386886202)
,p_display_sequence=>30
,p_display_value=>'Inline Region (pdf/html/md/txt only)'
,p_return_value=>'BROWSER_INLINE'
,p_help_text=>'add data-aop-inline-pdf="Name of Dynamic Action" or data-aop-inline-txt="Name of Dynamic Action" to a region, div, textarea of other.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1080285608971551722)
,p_plugin_attribute_id=>wwv_flow_imp.id(2018968562386886202)
,p_display_sequence=>40
,p_display_value=>'Directory (on AOP Server)'
,p_return_value=>'DIRECTORY'
,p_help_text=>'Save the file to a directory specified with g_output_directory. The default directory on the AOP Server is outputfiles.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(373100587048534091)
,p_plugin_attribute_id=>wwv_flow_imp.id(2018968562386886202)
,p_display_sequence=>50
,p_display_value=>'Directory (on Database Server)'
,p_return_value=>'DB_DIRECTORY'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Save the file to a database directory specified with g_output_directory. ',
'<br/>',
'Example how to create Database directory: <br/>',
'CREATE DIRECTORY AOP_TEMPLATE AS ''/home/oracle/aop_output'';'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2018974443197920507)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Procedure Name'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2018968562386886202)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'PROCEDURE,PROCEDURE_BROWSER'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Create following procedure in the database:',
'</p>',
'<pre>',
'create procedure send_email_prc(',
'    p_output_blob      in blob,',
'    p_output_filename  in varchar2,',
'    p_output_mime_type in varchar2)',
'is',
'  l_id number;',
'begin',
'  l_id := apex_mail.send( ',
'            p_to => ''support@apexofficeprint.com'', ',
'            p_from => ''support@apexofficeprint.com'', ',
'            p_subj => ''Mail from APEX with attachment'', ',
'            p_body => ''Please review the attachment.'', ',
'            p_body_html => ''<b>Please</b> review the attachment.'') ;',
'  apex_mail.add_attachment( ',
'      p_mail_id    => l_id, ',
'      p_attachment => p_output_blob, ',
'      p_filename   => p_output_filename, ',
'      p_mime_type  => p_output_mime_type) ;',
'  commit;    ',
'end send_email_prc;',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter only the procedure name in this field (so without parameters) for example "download_prc".',
'The procedure in the database needs to be structured with the parameters as in the example. ',
'The procedure name can be any name, but the parameters need to match exactly as in the example.',
'You can add other parameters with a default value.'))
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(1081779810906876993)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_name=>'INIT_JAVASCRIPT_CODE'
,p_is_required=>false
,p_depending_on_has_to_exist=>true
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'AOP.gAOPOptions.waitSpinner = ''three-bounce'';<br>',
'AOP.gAOPOptions.showNotification = false;<br>',
'AOP.gAOPOptions.notificatonMessage = ''An AOP error occurred'';'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Options</strong><br>',
'<strong>AOP.gAOPOptions.waitSpinner - Waiting Spinner</strong><br>',
'Available waiting spinners:<br>',
'apex (default), double-bounce, three-bounce, rotating-plane, fading-circle, folding-cube, wave, wandering-cubes, pulse, chasing-dots, circle, cube-grid<br><br>',
'<strong>AOP.gAOPOptions.showNotification - Show Notification if something went wrong</strong><br>',
'Values: true (default) / false<br><br>',
'<strong>AOP.gAOPOptions.notificatonMessage - Overrides Server-side Notification Message</strong><br>'))
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(1356264417068614484)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_name=>'aop-file-error'
,p_display_name=>'AOP Print File Error'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(1356264887553614484)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_name=>'aop-file-progress'
,p_display_name=>'AOP Print File Progress'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(1356265262134614484)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_name=>'aop-file-success'
,p_display_name=>'AOP Print File Success'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2866756E6374696F6E28742C65297B226F626A656374223D3D747970656F66206578706F727473262622756E646566696E656422213D747970656F66206D6F64756C653F6D6F64756C652E6578706F7274733D6528293A2266756E6374696F6E223D3D74';
wwv_flow_imp.g_varchar2_table(2) := '7970656F6620646566696E652626646566696E652E616D643F646566696E652865293A742E45533650726F6D6973653D6528297D2928746869732C66756E6374696F6E28297B2275736520737472696374223B66756E6374696F6E20742874297B766172';
wwv_flow_imp.g_varchar2_table(3) := '20653D747970656F6620743B72657475726E206E756C6C213D3D74262628226F626A656374223D3D3D657C7C2266756E6374696F6E223D3D3D65297D66756E6374696F6E20652874297B72657475726E2266756E6374696F6E223D3D747970656F662074';
wwv_flow_imp.g_varchar2_table(4) := '7D66756E6374696F6E206E2874297B423D747D66756E6374696F6E20722874297B473D747D66756E6374696F6E206F28297B72657475726E2066756E6374696F6E28297B72657475726E2070726F636573732E6E6578745469636B2861297D7D66756E63';
wwv_flow_imp.g_varchar2_table(5) := '74696F6E206928297B72657475726E22756E646566696E656422213D747970656F66207A3F66756E6374696F6E28297B7A2861297D3A6328297D66756E6374696F6E207328297B76617220743D302C653D6E6577204A2861292C6E3D646F63756D656E74';
wwv_flow_imp.g_varchar2_table(6) := '2E637265617465546578744E6F6465282222293B72657475726E20652E6F627365727665286E2C7B636861726163746572446174613A21307D292C66756E6374696F6E28297B6E2E646174613D743D2B2B7425327D7D66756E6374696F6E207528297B76';
wwv_flow_imp.g_varchar2_table(7) := '617220743D6E6577204D6573736167654368616E6E656C3B72657475726E20742E706F7274312E6F6E6D6573736167653D612C66756E6374696F6E28297B72657475726E20742E706F7274322E706F73744D6573736167652830297D7D66756E6374696F';
wwv_flow_imp.g_varchar2_table(8) := '6E206328297B76617220743D73657454696D656F75743B72657475726E2066756E6374696F6E28297B72657475726E207428612C31297D7D66756E6374696F6E206128297B666F722876617220743D303B743C573B742B3D32297B76617220653D565B74';
wwv_flow_imp.g_varchar2_table(9) := '5D2C6E3D565B742B315D3B65286E292C565B745D3D766F696420302C565B742B315D3D766F696420307D573D307D66756E6374696F6E206628297B7472797B76617220743D46756E6374696F6E282272657475726E2074686973222928292E7265717569';
wwv_flow_imp.g_varchar2_table(10) := '72652822766572747822293B72657475726E207A3D742E72756E4F6E4C6F6F707C7C742E72756E4F6E436F6E746578742C6928297D63617463682874297B72657475726E206328297D7D66756E6374696F6E206C28742C65297B766172206E3D74686973';
wwv_flow_imp.g_varchar2_table(11) := '2C723D6E657720746869732E636F6E7374727563746F722870293B766F696420303D3D3D725B5A5D26264F2872293B766172206F3D6E2E5F73746174653B6966286F297B76617220693D617267756D656E74735B6F2D315D3B472866756E6374696F6E28';
wwv_flow_imp.g_varchar2_table(12) := '297B72657475726E2050286F2C722C692C6E2E5F726573756C74297D297D656C73652045286E2C722C742C65293B72657475726E20727D66756E6374696F6E20682874297B76617220653D746869733B696628742626226F626A656374223D3D74797065';
wwv_flow_imp.g_varchar2_table(13) := '6F6620742626742E636F6E7374727563746F723D3D3D652972657475726E20743B766172206E3D6E657720652870293B72657475726E2067286E2C74292C6E7D66756E6374696F6E207028297B7D66756E6374696F6E207628297B72657475726E206E65';
wwv_flow_imp.g_varchar2_table(14) := '7720547970654572726F722822596F752063616E6E6F74207265736F6C766520612070726F6D697365207769746820697473656C6622297D66756E6374696F6E206428297B72657475726E206E657720547970654572726F722822412070726F6D697365';
wwv_flow_imp.g_varchar2_table(15) := '732063616C6C6261636B2063616E6E6F742072657475726E20746861742073616D652070726F6D6973652E22297D66756E6374696F6E205F2874297B7472797B72657475726E20742E7468656E7D63617463682874297B72657475726E206E742E657272';
wwv_flow_imp.g_varchar2_table(16) := '6F723D742C6E747D7D66756E6374696F6E207928742C652C6E2C72297B7472797B742E63616C6C28652C6E2C72297D63617463682874297B72657475726E20747D7D66756E6374696F6E206D28742C652C6E297B472866756E6374696F6E2874297B7661';
wwv_flow_imp.g_varchar2_table(17) := '7220723D21312C6F3D79286E2C652C66756E6374696F6E286E297B727C7C28723D21302C65213D3D6E3F6728742C6E293A5328742C6E29297D2C66756E6374696F6E2865297B727C7C28723D21302C6A28742C6529297D2C22536574746C653A20222B28';
wwv_flow_imp.g_varchar2_table(18) := '742E5F6C6162656C7C7C2220756E6B6E6F776E2070726F6D6973652229293B217226266F262628723D21302C6A28742C6F29297D2C74297D66756E6374696F6E206228742C65297B652E5F73746174653D3D3D74743F5328742C652E5F726573756C7429';
wwv_flow_imp.g_varchar2_table(19) := '3A652E5F73746174653D3D3D65743F6A28742C652E5F726573756C74293A4528652C766F696420302C66756E6374696F6E2865297B72657475726E206728742C65297D2C66756E6374696F6E2865297B72657475726E206A28742C65297D297D66756E63';
wwv_flow_imp.g_varchar2_table(20) := '74696F6E207728742C6E2C72297B6E2E636F6E7374727563746F723D3D3D742E636F6E7374727563746F722626723D3D3D6C26266E2E636F6E7374727563746F722E7265736F6C76653D3D3D683F6228742C6E293A723D3D3D6E743F286A28742C6E742E';
wwv_flow_imp.g_varchar2_table(21) := '6572726F72292C6E742E6572726F723D6E756C6C293A766F696420303D3D3D723F5328742C6E293A652872293F6D28742C6E2C72293A5328742C6E297D66756E6374696F6E206728652C6E297B653D3D3D6E3F6A28652C762829293A74286E293F772865';
wwv_flow_imp.g_varchar2_table(22) := '2C6E2C5F286E29293A5328652C6E297D66756E6374696F6E20412874297B742E5F6F6E6572726F722626742E5F6F6E6572726F7228742E5F726573756C74292C542874297D66756E6374696F6E205328742C65297B742E5F73746174653D3D3D24262628';
wwv_flow_imp.g_varchar2_table(23) := '742E5F726573756C743D652C742E5F73746174653D74742C30213D3D742E5F73756273637269626572732E6C656E67746826264728542C7429297D66756E6374696F6E206A28742C65297B742E5F73746174653D3D3D24262628742E5F73746174653D65';
wwv_flow_imp.g_varchar2_table(24) := '742C742E5F726573756C743D652C4728412C7429297D66756E6374696F6E204528742C652C6E2C72297B766172206F3D742E5F73756273637269626572732C693D6F2E6C656E6774683B742E5F6F6E6572726F723D6E756C6C2C6F5B695D3D652C6F5B69';
wwv_flow_imp.g_varchar2_table(25) := '2B74745D3D6E2C6F5B692B65745D3D722C303D3D3D692626742E5F737461746526264728542C74297D66756E6374696F6E20542874297B76617220653D742E5F73756273637269626572732C6E3D742E5F73746174653B69662830213D3D652E6C656E67';
wwv_flow_imp.g_varchar2_table(26) := '7468297B666F722876617220723D766F696420302C6F3D766F696420302C693D742E5F726573756C742C733D303B733C652E6C656E6774683B732B3D3329723D655B735D2C6F3D655B732B6E5D2C723F50286E2C722C6F2C69293A6F2869293B742E5F73';
wwv_flow_imp.g_varchar2_table(27) := '756273637269626572732E6C656E6774683D307D7D66756E6374696F6E204D28742C65297B7472797B72657475726E20742865297D63617463682874297B72657475726E206E742E6572726F723D742C6E747D7D66756E6374696F6E205028742C6E2C72';
wwv_flow_imp.g_varchar2_table(28) := '2C6F297B76617220693D652872292C733D766F696420302C753D766F696420302C633D766F696420302C613D766F696420303B69662869297B696628733D4D28722C6F292C733D3D3D6E743F28613D21302C753D732E6572726F722C732E6572726F723D';
wwv_flow_imp.g_varchar2_table(29) := '6E756C6C293A633D21302C6E3D3D3D732972657475726E20766F6964206A286E2C642829297D656C736520733D6F2C633D21303B6E2E5F7374617465213D3D247C7C28692626633F67286E2C73293A613F6A286E2C75293A743D3D3D74743F53286E2C73';
wwv_flow_imp.g_varchar2_table(30) := '293A743D3D3D657426266A286E2C7329297D66756E6374696F6E207828742C65297B7472797B652866756E6374696F6E2865297B6728742C65297D2C66756E6374696F6E2865297B6A28742C65297D297D63617463682865297B6A28742C65297D7D6675';
wwv_flow_imp.g_varchar2_table(31) := '6E6374696F6E204328297B72657475726E2072742B2B7D66756E6374696F6E204F2874297B745B5A5D3D72742B2B2C742E5F73746174653D766F696420302C742E5F726573756C743D766F696420302C742E5F73756273637269626572733D5B5D7D6675';
wwv_flow_imp.g_varchar2_table(32) := '6E6374696F6E206B28297B72657475726E206E6577204572726F7228224172726179204D6574686F6473206D7573742062652070726F766964656420616E20417272617922297D66756E6374696F6E20462874297B72657475726E206E6577206F742874';
wwv_flow_imp.g_varchar2_table(33) := '6869732C74292E70726F6D6973657D66756E6374696F6E20592874297B76617220653D746869733B72657475726E206E6577206528552874293F66756E6374696F6E286E2C72297B666F7228766172206F3D742E6C656E6774682C693D303B693C6F3B69';
wwv_flow_imp.g_varchar2_table(34) := '2B2B29652E7265736F6C766528745B695D292E7468656E286E2C72297D3A66756E6374696F6E28742C65297B72657475726E2065286E657720547970654572726F722822596F75206D757374207061737320616E20617272617920746F20726163652E22';
wwv_flow_imp.g_varchar2_table(35) := '29297D297D66756E6374696F6E20712874297B76617220653D746869732C6E3D6E657720652870293B72657475726E206A286E2C74292C6E7D66756E6374696F6E204428297B7468726F77206E657720547970654572726F722822596F75206D75737420';
wwv_flow_imp.g_varchar2_table(36) := '706173732061207265736F6C7665722066756E6374696F6E2061732074686520666972737420617267756D656E7420746F207468652070726F6D69736520636F6E7374727563746F7222297D66756E6374696F6E204B28297B7468726F77206E65772054';
wwv_flow_imp.g_varchar2_table(37) := '7970654572726F7228224661696C656420746F20636F6E737472756374202750726F6D697365273A20506C65617365207573652074686520276E657727206F70657261746F722C2074686973206F626A65637420636F6E7374727563746F722063616E6E';
wwv_flow_imp.g_varchar2_table(38) := '6F742062652063616C6C656420617320612066756E6374696F6E2E22297D66756E6374696F6E204C28297B76617220743D766F696420303B69662822756E646566696E656422213D747970656F6620676C6F62616C29743D676C6F62616C3B656C736520';
wwv_flow_imp.g_varchar2_table(39) := '69662822756E646566696E656422213D747970656F662073656C6629743D73656C663B656C7365207472797B743D46756E6374696F6E282272657475726E2074686973222928297D63617463682874297B7468726F77206E6577204572726F722822706F';
wwv_flow_imp.g_varchar2_table(40) := '6C7966696C6C206661696C6564206265636175736520676C6F62616C206F626A65637420697320756E617661696C61626C6520696E207468697320656E7669726F6E6D656E7422297D76617220653D742E50726F6D6973653B69662865297B766172206E';
wwv_flow_imp.g_varchar2_table(41) := '3D6E756C6C3B7472797B6E3D4F626A6563742E70726F746F747970652E746F537472696E672E63616C6C28652E7265736F6C76652829297D63617463682874297B7D696628225B6F626A6563742050726F6D6973655D223D3D3D6E262621652E63617374';
wwv_flow_imp.g_varchar2_table(42) := '2972657475726E7D742E50726F6D6973653D69747D766172204E3D766F696420303B4E3D41727261792E697341727261793F41727261792E697341727261793A66756E6374696F6E2874297B72657475726E225B6F626A6563742041727261795D223D3D';
wwv_flow_imp.g_varchar2_table(43) := '3D4F626A6563742E70726F746F747970652E746F537472696E672E63616C6C2874297D3B76617220553D4E2C573D302C7A3D766F696420302C423D766F696420302C473D66756E6374696F6E28742C65297B565B575D3D742C565B572B315D3D652C572B';
wwv_flow_imp.g_varchar2_table(44) := '3D322C323D3D3D57262628423F422861293A582829297D2C483D22756E646566696E656422213D747970656F662077696E646F773F77696E646F773A766F696420302C493D487C7C7B7D2C4A3D492E4D75746174696F6E4F627365727665727C7C492E57';
wwv_flow_imp.g_varchar2_table(45) := '65624B69744D75746174696F6E4F627365727665722C513D22756E646566696E6564223D3D747970656F662073656C66262622756E646566696E656422213D747970656F662070726F636573732626225B6F626A6563742070726F636573735D223D3D3D';
wwv_flow_imp.g_varchar2_table(46) := '7B7D2E746F537472696E672E63616C6C2870726F63657373292C523D22756E646566696E656422213D747970656F662055696E7438436C616D7065644172726179262622756E646566696E656422213D747970656F6620696D706F727453637269707473';
wwv_flow_imp.g_varchar2_table(47) := '262622756E646566696E656422213D747970656F66204D6573736167654368616E6E656C2C563D6E657720417272617928316533292C583D766F696420303B583D513F6F28293A4A3F7328293A523F7528293A766F696420303D3D3D4826262266756E63';
wwv_flow_imp.g_varchar2_table(48) := '74696F6E223D3D747970656F6620726571756972653F6628293A6328293B766172205A3D4D6174682E72616E646F6D28292E746F537472696E67283336292E737562737472696E672832292C243D766F696420302C74743D312C65743D322C6E743D7B65';
wwv_flow_imp.g_varchar2_table(49) := '72726F723A6E756C6C7D2C72743D302C6F743D66756E6374696F6E28297B66756E6374696F6E207428742C65297B746869732E5F696E7374616E6365436F6E7374727563746F723D742C746869732E70726F6D6973653D6E657720742870292C74686973';
wwv_flow_imp.g_varchar2_table(50) := '2E70726F6D6973655B5A5D7C7C4F28746869732E70726F6D697365292C552865293F28746869732E6C656E6774683D652E6C656E6774682C746869732E5F72656D61696E696E673D652E6C656E6774682C746869732E5F726573756C743D6E6577204172';
wwv_flow_imp.g_varchar2_table(51) := '72617928746869732E6C656E677468292C303D3D3D746869732E6C656E6774683F5328746869732E70726F6D6973652C746869732E5F726573756C74293A28746869732E6C656E6774683D746869732E6C656E6774687C7C302C746869732E5F656E756D';
wwv_flow_imp.g_varchar2_table(52) := '65726174652865292C303D3D3D746869732E5F72656D61696E696E6726265328746869732E70726F6D6973652C746869732E5F726573756C742929293A6A28746869732E70726F6D6973652C6B2829297D72657475726E20742E70726F746F747970652E';
wwv_flow_imp.g_varchar2_table(53) := '5F656E756D65726174653D66756E6374696F6E2874297B666F722876617220653D303B746869732E5F73746174653D3D3D242626653C742E6C656E6774683B652B2B29746869732E5F65616368456E74727928745B655D2C65297D2C742E70726F746F74';
wwv_flow_imp.g_varchar2_table(54) := '7970652E5F65616368456E7472793D66756E6374696F6E28742C65297B766172206E3D746869732E5F696E7374616E6365436F6E7374727563746F722C723D6E2E7265736F6C76653B696628723D3D3D68297B766172206F3D5F2874293B6966286F3D3D';
wwv_flow_imp.g_varchar2_table(55) := '3D6C2626742E5F7374617465213D3D2429746869732E5F736574746C6564417428742E5F73746174652C652C742E5F726573756C74293B656C7365206966282266756E6374696F6E22213D747970656F66206F29746869732E5F72656D61696E696E672D';
wwv_flow_imp.g_varchar2_table(56) := '2D2C746869732E5F726573756C745B655D3D743B656C7365206966286E3D3D3D6974297B76617220693D6E6577206E2870293B7728692C742C6F292C746869732E5F77696C6C536574746C65417428692C65297D656C736520746869732E5F77696C6C53';
wwv_flow_imp.g_varchar2_table(57) := '6574746C654174286E6577206E2866756E6374696F6E2865297B72657475726E20652874297D292C65297D656C736520746869732E5F77696C6C536574746C65417428722874292C65297D2C742E70726F746F747970652E5F736574746C656441743D66';
wwv_flow_imp.g_varchar2_table(58) := '756E6374696F6E28742C652C6E297B76617220723D746869732E70726F6D6973653B722E5F73746174653D3D3D24262628746869732E5F72656D61696E696E672D2D2C743D3D3D65743F6A28722C6E293A746869732E5F726573756C745B655D3D6E292C';
wwv_flow_imp.g_varchar2_table(59) := '303D3D3D746869732E5F72656D61696E696E6726265328722C746869732E5F726573756C74297D2C742E70726F746F747970652E5F77696C6C536574746C6541743D66756E6374696F6E28742C65297B766172206E3D746869733B4528742C766F696420';
wwv_flow_imp.g_varchar2_table(60) := '302C66756E6374696F6E2874297B72657475726E206E2E5F736574746C656441742874742C652C74297D2C66756E6374696F6E2874297B72657475726E206E2E5F736574746C656441742865742C652C74297D297D2C747D28292C69743D66756E637469';
wwv_flow_imp.g_varchar2_table(61) := '6F6E28297B66756E6374696F6E20742865297B746869735B5A5D3D4328292C746869732E5F726573756C743D746869732E5F73746174653D766F696420302C746869732E5F73756273637269626572733D5B5D2C70213D3D652626282266756E6374696F';
wwv_flow_imp.g_varchar2_table(62) := '6E22213D747970656F66206526264428292C7468697320696E7374616E63656F6620743F7828746869732C65293A4B2829297D72657475726E20742E70726F746F747970652E63617463683D66756E6374696F6E2874297B72657475726E20746869732E';
wwv_flow_imp.g_varchar2_table(63) := '7468656E286E756C6C2C74297D2C742E70726F746F747970652E66696E616C6C793D66756E6374696F6E2874297B76617220653D746869732C6E3D652E636F6E7374727563746F723B72657475726E20652E7468656E2866756E6374696F6E2865297B72';
wwv_flow_imp.g_varchar2_table(64) := '657475726E206E2E7265736F6C766528742829292E7468656E2866756E6374696F6E28297B72657475726E20657D297D2C66756E6374696F6E2865297B72657475726E206E2E7265736F6C766528742829292E7468656E2866756E6374696F6E28297B74';
wwv_flow_imp.g_varchar2_table(65) := '68726F7720657D297D297D2C747D28293B72657475726E2069742E70726F746F747970652E7468656E3D6C2C69742E616C6C3D462C69742E726163653D592C69742E7265736F6C76653D682C69742E72656A6563743D712C69742E5F7365745363686564';
wwv_flow_imp.g_varchar2_table(66) := '756C65723D6E2C69742E5F736574417361703D722C69742E5F617361703D472C69742E706F6C7966696C6C3D4C2C69742E50726F6D6973653D69742C69747D293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(366525035375208643)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_file_name=>'js/es6-promise.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '76617220414F503D7B67414F504F7074696F6E733A7B616A61784964656E7469666965723A22222C74726967676572456C656D49643A22222C737461746963526567696F6E4964733A22222C6F7574707574546F3A22222C64614E616D653A22222C7761';
wwv_flow_imp.g_varchar2_table(2) := '69745370696E6E65723A2261706578222C73686F774E6F74696669636174696F6E3A21302C6E6F746966696361746F6E4D6573736167653A22222C7375626D69744974656D7341727261793A5B5D2C7375626D697456616C75657341727261793A5B5D2C';
wwv_flow_imp.g_varchar2_table(3) := '4947526567696F6E496473416E6453656C6563746564504B3A7B7D2C6630313A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6630323A7B6461746141727261';
wwv_flow_imp.g_varchar2_table(4) := '793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6630333A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768';
wwv_flow_imp.g_varchar2_table(5) := '743A307D2C6630343A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6630353A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D';
wwv_flow_imp.g_varchar2_table(6) := '617857696474683A302C6D61784865696768743A307D2C6630363A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6630373A7B6461746141727261793A5B5D2C';
wwv_flow_imp.g_varchar2_table(7) := '77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6630383A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C';
wwv_flow_imp.g_varchar2_table(8) := '6630393A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6631303A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D6178576964';
wwv_flow_imp.g_varchar2_table(9) := '74683A302C6D61784865696768743A307D2C6631313A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6631323A7B6461746141727261793A5B5D2C7769647468';
wwv_flow_imp.g_varchar2_table(10) := '3A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6631333A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6631343A7B';
wwv_flow_imp.g_varchar2_table(11) := '6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C6D61784865696768743A307D2C6631353A7B6461746141727261793A5B5D2C77696474683A302C6865696768743A302C6D617857696474683A302C';
wwv_flow_imp.g_varchar2_table(12) := '6D61784865696768743A307D7D2C67657442726F777365724E616D653A66756E6374696F6E28297B76617220652C692C613D6E6176696761746F722E757365724167656E742C743D6E6176696761746F722E6170704E616D653B72657475726E2D31213D';
wwv_flow_imp.g_varchar2_table(13) := '28693D612E696E6465784F6628224F706572612229293F743D226F70657261223A2D31213D28693D612E696E6465784F6628224D5349452229293F743D226965223A2D31213D28693D612E696E6465784F66282254726964656E742229293F743D226965';
wwv_flow_imp.g_varchar2_table(14) := '223A2D31213D28693D612E696E6465784F662822456467652229293F743D2265646765223A2D31213D28693D612E696E6465784F6628224368726F6D652229293F743D226368726F6D65223A2D31213D28693D612E696E6465784F662822536166617269';
wwv_flow_imp.g_varchar2_table(15) := '2229293F743D22736166617269223A2D31213D28693D612E696E6465784F66282246697265666F782229293F743D2266697265666F78223A28653D612E6C617374496E6465784F6628222022292B31293C28693D612E6C617374496E6465784F6628222F';
wwv_flow_imp.g_varchar2_table(16) := '222929262628743D612E737562737472696E6728652C69292C742E746F4C6F7765724361736528293D3D742E746F5570706572436173652829262628743D6E6176696761746F722E6170704E616D6529292C747D2C73686F774572726F724D6573736167';
wwv_flow_imp.g_varchar2_table(17) := '653A66756E6374696F6E2865297B7472797B617065782E6D6573736167652E636C6561724572726F727328292C617065782E6D6573736167652E73686F774572726F7273285B7B747970653A226572726F72222C6C6F636174696F6E3A2270616765222C';
wwv_flow_imp.g_varchar2_table(18) := '6D6573736167653A652C756E736166653A21317D5D297D63617463682865297B617065782E64656275672E696E666F2822414F502073686F774572726F724D657373616765222C65297D7D2C73686F77537563636573734D6573736167653A66756E6374';
wwv_flow_imp.g_varchar2_table(19) := '696F6E2865297B7472797B617065782E6D6573736167652E73686F7750616765537563636573732865297D63617463682865297B617065782E64656275672E696E666F2822414F502073686F77537563636573734D657373616765222C65297D7D2C7368';
wwv_flow_imp.g_varchar2_table(20) := '6F774E6F74696669636174696F6E3A66756E6374696F6E28652C69297B696628414F502E67414F504F7074696F6E732E73686F774E6F74696669636174696F6E297B76617220613D414F502E67414F504F7074696F6E732E6E6F746966696361746F6E4D';
wwv_flow_imp.g_varchar2_table(21) := '6573736167657C7C693B2273756363657373223D3D653F414F502E73686F77537563636573734D6573736167652861293A226572726F72223D3D652626414F502E73686F774572726F724D6573736167652861297D7D2C73686F775370696E6E65723A66';
wwv_flow_imp.g_varchar2_table(22) := '756E6374696F6E28652C69297B76617220612C742C732C6E2C722C6F3D414F502E67414F504F7074696F6E732E776169745370696E6E65722C643D617065782E7574696C2E68746D6C4275696C64657228292C633D653F242865293A242822626F647922';
wwv_flow_imp.g_varchar2_table(23) := '292C6C3D242877696E646F77292C673D632E6F666673657428292C703D242E657874656E64287B616C6572743A617065782E6C616E672E6765744D6573736167652822415045582E50524F43455353494E4722292C7370696E6E6572436C6173733A2222';
wwv_flow_imp.g_varchar2_table(24) := '7D2C69292C753D7B746F703A6C2E7363726F6C6C546F7028292C6C6566743A6C2E7363726F6C6C4C65667428297D3B72657475726E20752E626F74746F6D3D752E746F702B6C2E68656967687428292C752E72696768743D752E6C6566742B6C2E776964';
wwv_flow_imp.g_varchar2_table(25) := '746828292C672E626F74746F6D3D672E746F702B632E6F7574657248656967687428292C672E72696768743D672E6C6566742B632E6F75746572576964746828292C743D672E746F703E752E746F703F672E746F703A752E746F702C733D672E626F7474';
wwv_flow_imp.g_varchar2_table(26) := '6F6D3C752E626F74746F6D3F672E626F74746F6D3A752E626F74746F6D2C6E3D28732D74292F322C723D752E746F702D672E746F702C723E302626286E2B3D72292C2261706578223D3D3D6F3F642E6D61726B757028223C7370616E22292E6174747228';
wwv_flow_imp.g_varchar2_table(27) := '22636C617373222C22752D50726F63657373696E67222B28702E7370696E6E6572436C6173733F2220222B702E7370696E6E6572436C6173733A222229292E617474722822726F6C65222C22616C65727422292E6D61726B757028223E22292E6D61726B';
wwv_flow_imp.g_varchar2_table(28) := '757028223C7370616E22292E617474722822636C617373222C22752D50726F63657373696E672D7370696E6E657222292E6D61726B757028223E22292E6D61726B757028223C2F7370616E3E22292E6D61726B757028223C7370616E22292E6174747228';
wwv_flow_imp.g_varchar2_table(29) := '22636C617373222C22752D56697375616C6C7948696464656E22292E6D61726B757028223E22292E636F6E74656E7428702E616C657274292E6D61726B757028223C2F7370616E3E22292E6D61726B757028223C2F7370616E3E22293A2274687265652D';
wwv_flow_imp.g_varchar2_table(30) := '626F756E6365223D3D3D6F3F642E6D61726B757028273C64697620636C6173733D22736B2D74687265652D626F756E636522207374796C653D227A2D696E6465783A2039393939393939393939223E3C64697620636C6173733D22736B2D6368696C6420';
wwv_flow_imp.g_varchar2_table(31) := '736B2D626F756E636531223E3C2F6469763E3C64697620636C6173733D22736B2D6368696C6420736B2D626F756E636532223E3C2F6469763E3C64697620636C6173733D22736B2D6368696C6420736B2D626F756E636533223E3C2F6469763E3C2F6469';
wwv_flow_imp.g_varchar2_table(32) := '763E27293A22726F746174696E672D706C616E65223D3D3D6F3F642E6D61726B757028273C64697620636C6173733D22736B2D726F746174696E672D706C616E65223E3C2F6469763E27293A22666164696E672D636972636C65223D3D3D6F3F642E6D61';
wwv_flow_imp.g_varchar2_table(33) := '726B757028273C64697620636C6173733D22736B2D666164696E672D636972636C6522207374796C653D227A2D696E6465783A2039393939393939393939223E3C64697620636C6173733D22736B2D636972636C653120736B2D636972636C65223E3C2F';
wwv_flow_imp.g_varchar2_table(34) := '6469763E3C64697620636C6173733D22736B2D636972636C653220736B2D636972636C65223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653320736B2D636972636C65223E3C2F6469763E3C64697620636C6173733D22736B2D63';
wwv_flow_imp.g_varchar2_table(35) := '6972636C653420736B2D636972636C65223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653520736B2D636972636C65223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653620736B2D636972636C65223E3C2F';
wwv_flow_imp.g_varchar2_table(36) := '6469763E3C64697620636C6173733D22736B2D636972636C653720736B2D636972636C65223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653820736B2D636972636C65223E3C2F6469763E3C64697620636C6173733D22736B2D63';
wwv_flow_imp.g_varchar2_table(37) := '6972636C653920736B2D636972636C65223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C65313020736B2D636972636C65223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C65313120736B2D636972636C65223E';
wwv_flow_imp.g_varchar2_table(38) := '3C2F6469763E3C64697620636C6173733D22736B2D636972636C65313220736B2D636972636C65223E3C2F6469763E3C2F6469763E27293A22666F6C64696E672D63756265223D3D3D6F3F642E6D61726B757028273C64697620636C6173733D22736B2D';
wwv_flow_imp.g_varchar2_table(39) := '666F6C64696E672D6375626522207374796C653D227A2D696E6465783A2039393939393939393939223E3C64697620636C6173733D22736B2D637562653120736B2D63756265223E3C2F6469763E3C64697620636C6173733D22736B2D63756265322073';
wwv_flow_imp.g_varchar2_table(40) := '6B2D63756265223E3C2F6469763E3C64697620636C6173733D22736B2D637562653420736B2D63756265223E3C2F6469763E3C64697620636C6173733D22736B2D637562653320736B2D63756265223E3C2F6469763E3C2F6469763E27293A22646F7562';
wwv_flow_imp.g_varchar2_table(41) := '6C652D626F756E6365223D3D3D6F3F642E6D61726B757028273C64697620636C6173733D22736B2D646F75626C652D626F756E636522207374796C653D227A2D696E6465783A2039393939393939393939223E3C64697620636C6173733D22736B2D6368';
wwv_flow_imp.g_varchar2_table(42) := '696C6420736B2D646F75626C652D626F756E636531223E3C2F6469763E3C64697620636C6173733D22736B2D6368696C6420736B2D646F75626C652D626F756E636532223E3C2F6469763E3C2F6469763E27293A2277617665223D3D3D6F3F642E6D6172';
wwv_flow_imp.g_varchar2_table(43) := '6B757028273C64697620636C6173733D22736B2D7761766522207374796C653D227A2D696E6465783A2039393939393939393939223E3C64697620636C6173733D22736B2D7265637420736B2D7265637431223E3C2F6469763E3C64697620636C617373';
wwv_flow_imp.g_varchar2_table(44) := '3D22736B2D7265637420736B2D7265637432223E3C2F6469763E3C64697620636C6173733D22736B2D7265637420736B2D7265637433223E3C2F6469763E3C64697620636C6173733D22736B2D7265637420736B2D7265637434223E3C2F6469763E3C64';
wwv_flow_imp.g_varchar2_table(45) := '697620636C6173733D22736B2D7265637420736B2D7265637435223E3C2F6469763E3C2F6469763E27293A2277616E646572696E672D6375626573223D3D3D6F3F642E6D61726B757028273C64697620636C6173733D22736B2D77616E646572696E672D';
wwv_flow_imp.g_varchar2_table(46) := '637562657322207374796C653D227A2D696E6465783A2039393939393939393939223E3C64697620636C6173733D22736B2D6375626520736B2D6375626531223E3C2F6469763E3C64697620636C6173733D22736B2D6375626520736B2D637562653222';
wwv_flow_imp.g_varchar2_table(47) := '3E3C2F6469763E3C2F6469763E27293A2270756C7365223D3D3D6F3F642E6D61726B757028273C64697620636C6173733D22736B2D7370696E6E657220736B2D7370696E6E65722D70756C736522207374796C653D227A2D696E6465783A203939393939';
wwv_flow_imp.g_varchar2_table(48) := '3939393939223E3C2F6469763E27293A2263686173696E672D646F7473223D3D3D6F3F642E6D61726B757028273C64697620636C6173733D22736B2D63686173696E672D646F747322207374796C653D227A2D696E6465783A2039393939393939393939';
wwv_flow_imp.g_varchar2_table(49) := '223E3C64697620636C6173733D22736B2D6368696C6420736B2D646F7431223E3C2F6469763E3C64697620636C6173733D22736B2D6368696C6420736B2D646F7432223E3C2F6469763E3C2F6469763E27293A22636972636C65223D3D3D6F3F642E6D61';
wwv_flow_imp.g_varchar2_table(50) := '726B757028273C64697620636C6173733D22736B2D636972636C6522207374796C653D227A2D696E6465783A2039393939393939393939223E3C64697620636C6173733D22736B2D636972636C653120736B2D6368696C64223E3C2F6469763E3C646976';
wwv_flow_imp.g_varchar2_table(51) := '20636C6173733D22736B2D636972636C653220736B2D6368696C64223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653320736B2D6368696C64223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653420736B2D';
wwv_flow_imp.g_varchar2_table(52) := '6368696C64223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653520736B2D6368696C64223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653620736B2D6368696C64223E3C2F6469763E3C64697620636C6173';
wwv_flow_imp.g_varchar2_table(53) := '733D22736B2D636972636C653720736B2D6368696C64223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653820736B2D6368696C64223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C653920736B2D6368696C64';
wwv_flow_imp.g_varchar2_table(54) := '223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C65313020736B2D6368696C64223E3C2F6469763E3C64697620636C6173733D22736B2D636972636C65313120736B2D6368696C64223E3C2F6469763E3C64697620636C6173733D22';
wwv_flow_imp.g_varchar2_table(55) := '736B2D636972636C65313220736B2D6368696C64223E3C2F6469763E3C2F6469763E27293A22637562652D67726964223D3D3D6F2626642E6D61726B757028273C64697620636C6173733D22736B2D637562652D6772696422207374796C653D227A2D69';
wwv_flow_imp.g_varchar2_table(56) := '6E6465783A2039393939393939393939223E3C64697620636C6173733D22736B2D6375626520736B2D6375626531223E3C2F6469763E3C64697620636C6173733D22736B2D6375626520736B2D6375626532223E3C2F6469763E3C64697620636C617373';
wwv_flow_imp.g_varchar2_table(57) := '3D22736B2D6375626520736B2D6375626533223E3C2F6469763E3C64697620636C6173733D22736B2D6375626520736B2D6375626534223E3C2F6469763E3C64697620636C6173733D22736B2D6375626520736B2D6375626535223E3C2F6469763E3C64';
wwv_flow_imp.g_varchar2_table(58) := '697620636C6173733D22736B2D6375626520736B2D6375626536223E3C2F6469763E3C64697620636C6173733D22736B2D6375626520736B2D6375626537223E3C2F6469763E3C64697620636C6173733D22736B2D6375626520736B2D6375626538223E';
wwv_flow_imp.g_varchar2_table(59) := '3C2F6469763E3C64697620636C6173733D22736B2D6375626520736B2D6375626539223E3C2F6469763E3C2F6469763E27292C613D2428642E746F537472696E672829292C612E617070656E64546F2863292C612E706F736974696F6E287B6D793A2263';
wwv_flow_imp.g_varchar2_table(60) := '656E746572222C61743A226C6566742B35302520746F702B222B6E2B227078222C6F663A632C636F6C6C6973696F6E3A22666974227D292C617D2C6173796E634C6F6F703A66756E6374696F6E28652C692C61297B76617220743D302C733D21312C6E3D';
wwv_flow_imp.g_varchar2_table(61) := '7B6E6578743A66756E6374696F6E28297B737C7C28743C3D653F28742B2B2C69286E29293A28733D21302C61282929297D2C697465726174696F6E3A66756E6374696F6E28297B72657475726E20742D317D2C627265616B3A66756E6374696F6E28297B';
wwv_flow_imp.g_varchar2_table(62) := '733D21302C6128297D7D3B72657475726E206E2E6E65787428292C6E7D2C6275696C6441666665637465644974656D41727261793A66756E6374696F6E2865297B617065782E64656275672E696E666F2822414F5020704166666563746564456C656D65';
wwv_flow_imp.g_varchar2_table(63) := '6E7473222C65293B76617220693D5B5D3B72657475726E2065262628693D652E7265706C616365282F5C732F672C2222292E73706C697428222C2229292C697D2C6275696C6441666665637465644974656D56616C756541727261793A66756E6374696F';
wwv_flow_imp.g_varchar2_table(64) := '6E2865297B617065782E64656275672E696E666F2822414F50206275696C6441666665637465644974656D56616C75654172726179222C65293B76617220693D5B5D2C613D5B5D3B69662865297B693D652E7265706C616365282F5C732F672C2222292E';
wwv_flow_imp.g_varchar2_table(65) := '73706C697428222C22293B666F722876617220743D303B743C692E6C656E6774683B742B2B29612E7075736828247628695B745D29297D72657475726E20617D2C737667456E68616E63653A66756E6374696F6E28652C69297B7472797B617065782E64';
wwv_flow_imp.g_varchar2_table(66) := '656275672E696E666F2822414F5020737667456E68616E6365222C65293B76617220613D242865292E66696E64282273766722292C743D303B617065782E64656275672E696E666F2822414F5020737667456E68616E6365222C742C612E6C656E677468';
wwv_flow_imp.g_varchar2_table(67) := '293B76617220733D66756E6374696F6E28297B742B2B2C617065782E64656275672E696E666F2822414F5020737667456E68616E636520737667446F6E65222C742C612E6C656E677468292C743D3D612E6C656E677468262628617065782E6465627567';
wwv_flow_imp.g_varchar2_table(68) := '2E696E666F2822414F5020737667456E68616E636520737667446F6E652063616C6C6261636B22292C692829297D3B612E656163682866756E6374696F6E28297B617065782E64656275672E696E666F2822414F5020737667456E68616E636520222C74';
wwv_flow_imp.g_varchar2_table(69) := '686973293B76617220653D746869732C693D242865292E696E6E6572576964746828292C613D242865292E696E6E657248656967687428293B242865292E6174747228227769647468222C69292C242865292E617474722822686569676874222C61292C';
wwv_flow_imp.g_varchar2_table(70) := '242865292E617474722822786D6C6E73222C22687474703A2F2F7777772E77332E6F72672F323030302F73766722292C242865292E617474722822786D6C6E733A786C696E6B222C22687474703A2F2F7777772E77332E6F72672F313939392F786C696E';
wwv_flow_imp.g_varchar2_table(71) := '6B22293B666F722876617220743D652E676574456C656D656E747342795461674E616D652822696D61676522292C6E3D302C723D66756E6374696F6E28297B617065782E64656275672E696E666F2822414F5020737667456E68616E636520696D616765';
wwv_flow_imp.g_varchar2_table(72) := '446F6E65222C6E2C742E6C656E677468292C6E2B2B2C6E3E3D742E6C656E677468262628617065782E64656275672E696E666F2822414F5020737667456E68616E636520696D616765446F6E652063616C6C696E6720737667446F6E65222C6E2C742E6C';
wwv_flow_imp.g_varchar2_table(73) := '656E677468292C732829297D2C6F3D303B6F3C742E6C656E6774683B6F2B2B292866756E6374696F6E28297B76617220653D745B6F5D3B414F502E67657442617365363446726F6D55524C28414F502E6765744162736F6C75746555726C28652E676574';
wwv_flow_imp.g_varchar2_table(74) := '41747472696275746528226872656622297C7C652E6765744174747269627574652822786C696E6B3A687265662229292C66756E6374696F6E2869297B652E7365744174747269627574652822786C696E6B3A68726566222C69292C652E736574417474';
wwv_flow_imp.g_varchar2_table(75) := '726962757465282268726566222C69292C617065782E64656275672E696E666F2822414F5020446174612052657475726E65643A222C69292C7228297D297D2928293B303D3D3D742E6C656E67746826267328297D292C303D3D3D612E6C656E67746826';
wwv_flow_imp.g_varchar2_table(76) := '266928297D63617463682865297B617065782E64656275672E696E666F2822414F5020737667456E68616E636520636175676874206572726F72222C65292C6928297D7D2C63616E76617332446174615552493A66756E6374696F6E28652C69297B7661';
wwv_flow_imp.g_varchar2_table(77) := '7220613D652E746F4461746155524C2869293B72657475726E20617D2C64617461555249326261736536343A66756E6374696F6E2865297B76617220693D652E73756273747228652E696E6465784F6628222C22292B31293B72657475726E20697D2C63';
wwv_flow_imp.g_varchar2_table(78) := '6C6F623241727261793A66756E6374696F6E28652C692C61297B6C6F6F70436F756E743D4D6174682E666C6F6F7228652E6C656E6774682F69292B313B666F722876617220743D303B743C6C6F6F70436F756E743B742B2B29612E7075736828652E736C';
wwv_flow_imp.g_varchar2_table(79) := '69636528692A742C692A28742B312929293B72657475726E20617D2C676574496D6167654261736536343A66756E6374696F6E28652C69297B76617220612C743D242865293B6966286C57696474683D742E696E6E6572576964746828292C6C48656967';
wwv_flow_imp.g_varchar2_table(80) := '68743D742E696E6E657248656967687428292C613D617065782E64656275672E6765744C6576656C28293E302C22636C69656E745F63616E766173223D3D3D745B305D2E6765744174747269627574652822616F702D726567696F6E2D61732229296170';
wwv_flow_imp.g_varchar2_table(81) := '65782E64656275672E696E666F2822414F5020676574496D6167654261736536342063616C6C696E67207468652063616E7661732067657420696D616765206F7074696F6E20776974682073656C6563746F72222B652B222063616E766173222C242865';
wwv_flow_imp.g_varchar2_table(82) := '2B222063616E76617322295B305D2E746F4461746155524C2829292C69282428652B222063616E76617322295B305D2E746F4461746155524C28292E73706C697428223B6261736536342C22295B315D293B656C73657B617065782E64656275672E696E';
wwv_flow_imp.g_varchar2_table(83) := '666F2822414F5020676574496D6167654261736536342068746D6C3263616E76617320776974682073656C6563746F72222B652B222022293B76617220733D6E657720446174653B414F502E737667456E68616E636528652C66756E6374696F6E28297B';
wwv_flow_imp.g_varchar2_table(84) := '68746D6C3263616E76617328745B305D2C7B6261636B67726F756E64436F6C6F723A2223666666222C77696474683A6C57696474682C6865696768743A6C4865696768742C616C6C6F775461696E743A21312C6C6F6767696E673A612C757365434F5253';
wwv_flow_imp.g_varchar2_table(85) := '3A21307D292E7468656E2866756E6374696F6E2861297B76617220743D414F502E63616E766173324461746155524928612C22696D6167652F706E6722292C6E3D414F502E64617461555249326261736536342874293B617065782E64656275672E696E';
wwv_flow_imp.g_varchar2_table(86) := '666F2822414F5020676574496D6167654261736536342068746D6C3263616E76617320776974682073656C6563746F72222B652B2220746F6F6B20222B286E657720446174652D73292F3165332B22207322292C69286E297D297D297D7D2C676574496D';
wwv_flow_imp.g_varchar2_table(87) := '61676542617365363441727261793A66756E6374696F6E28652C692C61297B414F502E676574496D61676542617365363428652C66756E6374696F6E2865297B693D414F502E636C6F6232417272617928652C3365342C69292C612869297D297D2C6261';
wwv_flow_imp.g_varchar2_table(88) := '73653634746F426C6F623A66756E6374696F6E28652C69297B666F722876617220613D61746F622865292C743D692C733D6E657720417272617942756666657228612E6C656E677468292C6E3D6E65772055696E743841727261792873292C723D303B72';
wwv_flow_imp.g_varchar2_table(89) := '3C612E6C656E6774683B722B2B296E5B725D3D612E63686172436F646541742872293B7472797B72657475726E206E657720426C6F62285B735D2C7B747970653A747D297D63617463682865297B766172206F3D77696E646F772E5765624B6974426C6F';
wwv_flow_imp.g_varchar2_table(90) := '624275696C6465727C7C77696E646F772E4D6F7A426C6F624275696C6465727C7C77696E646F772E4D53426C6F624275696C6465722C643D6E6577206F3B72657475726E20642E617070656E642873292C642E676574426C6F622874297D7D2C646F776E';
wwv_flow_imp.g_varchar2_table(91) := '6C6F61644261736536343A66756E6374696F6E28652C692C61297B617065782E64656275672E696E666F2822414F5020646F776E6C6F61644261736536342064617461222C65293B76617220743D414F502E67657442726F777365724E616D6528293B69';
wwv_flow_imp.g_varchar2_table(92) := '6628226965223D3D747C7C2265646765223D3D74297B76617220733D414F502E626173653634746F426C6F6228652C69293B77696E646F772E6E6176696761746F722E6D7353617665426C6F6228732C61297D656C73657B766172206E3D22646174613A';
wwv_flow_imp.g_varchar2_table(93) := '222B692B223B6261736536342C222B653B617065782E64656275672E696E666F2822414F50204D696D6554797065222C69293B76617220723D646F63756D656E742E637265617465456C656D656E7428226122293B646F63756D656E742E626F64792E61';
wwv_flow_imp.g_varchar2_table(94) := '7070656E644368696C642872292C722E7374796C653D22646973706C61793A206E6F6E65222C722E636C6173734E616D653D22616F705F6C696E6B222C722E687265663D6E2C226368726F6D65223D3D74262628722E687265663D55524C2E6372656174';
wwv_flow_imp.g_varchar2_table(95) := '654F626A65637455524C28414F502E626173653634746F426C6F6228652C692929292C722E646F776E6C6F61643D612C722E636C69636B28292C242822612E616F705F6C696E6B22292E72656D6F766528297D7D2C6765744162736F6C75746555726C3A';
wwv_flow_imp.g_varchar2_table(96) := '66756E6374696F6E28297B76617220653B72657475726E2066756E6374696F6E2869297B72657475726E20653D657C7C646F63756D656E742E637265617465456C656D656E7428226122292C652E687265663D692C652E636C6F6E654E6F646528213129';
wwv_flow_imp.g_varchar2_table(97) := '2E687265667D7D28292C67657442617365363446726F6D55524C3A66756E6374696F6E28652C69297B617065782E64656275672E696E666F2822414F502067657442617365363446726F6D55524C222C65293B76617220613D6E657720584D4C48747470';
wwv_flow_imp.g_varchar2_table(98) := '526571756573743B612E6F70656E2822474554222C652C2130292C612E726573706F6E7365547970653D226172726179627566666572222C612E6F6E6C6F61643D66756E6374696F6E2865297B76617220613D6E65772055696E74384172726179287468';
wwv_flow_imp.g_varchar2_table(99) := '69732E726573706F6E7365292C743D537472696E672E66726F6D43686172436F64652E6170706C79286E756C6C2C61292C733D62746F612874292C6E3D22646174613A696D6167652F706E673B6261736536342C222B733B69286E297D2C612E73656E64';
wwv_flow_imp.g_varchar2_table(100) := '28297D2C696E6C696E654261736536343A66756E6374696F6E28652C692C61297B6C44614E616D653D414F502E67414F504F7074696F6E732E64614E616D653B76617220743D2428275B646174612D616F702D696E6C696E652D7064663D22272B6C4461';
wwv_flow_imp.g_varchar2_table(101) := '4E616D652B27225D27292C733D742E617474722822696422297C7C22616F70223B696628226965223D3D3D414F502E67657442726F777365724E616D6528292972657475726E20414F502E646F776E6C6F616442617365363428652C692C61293B766172';
wwv_flow_imp.g_varchar2_table(102) := '206E3D414F502E626173653634746F426C6F6228652C226170706C69636174696F6E2F70646622293B6E2E6E616D653D613B76617220723D55524C2E6372656174654F626A65637455524C286E292C6F3D2428273C696672616D652069643D22696E6C69';
wwv_flow_imp.g_varchar2_table(103) := '6E655F7064665F6F626A6563745F272B732B2722207372633D2222207469746C653D22272B612B27222077696474683D223130302522206865696768743D22313030252220747970653D22272B692B27223E3C2F6F626A6563743E27293B742E68746D6C';
wwv_flow_imp.g_varchar2_table(104) := '286F292C6F2E617474722822737263222C72297D2C696E6C696E65546578743A66756E6374696F6E28652C692C61297B76617220743D414F502E6236344465636F6465556E69636F64652865293B6C44614E616D653D414F502E67414F504F7074696F6E';
wwv_flow_imp.g_varchar2_table(105) := '732E64614E616D653B76617220733D2428275B646174612D616F702D696E6C696E652D7478743D22272B6C44614E616D652B27225D27293B732E76616C2874297D2C6236344465636F6465556E69636F64653A66756E6374696F6E2865297B7265747572';
wwv_flow_imp.g_varchar2_table(106) := '6E206465636F6465555249436F6D706F6E656E742841727261792E70726F746F747970652E6D61702E63616C6C2861746F622865292C66756E6374696F6E2865297B72657475726E2225222B28223030222B652E63686172436F646541742830292E746F';
wwv_flow_imp.g_varchar2_table(107) := '537472696E6728313629292E736C696365282D32297D292E6A6F696E28222229297D2C676574496E646976696475616C496D61676555706C6F61644172726179733A66756E6374696F6E28652C692C61297B7472797B76617220743D652B312C733D2266';
wwv_flow_imp.g_varchar2_table(108) := '222B28743E3D31303F742E746F537472696E6728293A2230222B742E746F537472696E672829293B696628617065782E64656275672E696E666F2822414F5020676574496E646976696475616C496D61676555706C6F616441727261797320636865636B';
wwv_flow_imp.g_varchar2_table(109) := '696E6720666F722074797065206F6620726567696F6E20776974682073656C6563746F7220222B69292C766F696420303D3D3D242869295B305D2972657475726E20617065782E64656275672E696E666F2822414F5020676574496E646976696475616C';
wwv_flow_imp.g_varchar2_table(110) := '496D61676555706C6F616441727261797320726567696F6E206E6F7420666F756E642069676E6F72696E672C20222B69292C766F6964206128293B73776974636828617065782E64656275672E696E666F2822414F5020676574496E646976696475616C';
wwv_flow_imp.g_varchar2_table(111) := '496D61676555706C6F61644172726179732020222B242869295B305D2E6765744174747269627574652822616F702D726567696F6E2D617322292C242869295B305D292C242869295B305D2E6765744174747269627574652822616F702D726567696F6E';
wwv_flow_imp.g_varchar2_table(112) := '2D61732229297B63617365227365727665725F68746D6C223A6361736522636C69656E745F68746D6C223A617065782E64656275672E696E666F2822414F5020676574496E646976696475616C496D61676555706C6F61644172726179732068746D6C20';
wwv_flow_imp.g_varchar2_table(113) := '666F756E642070617373696E672069742061732069742069732E222C69292C617065782E64656275672E696E666F2822414F5020676574496E646976696475616C496D61676555706C6F61644172726179732068746D6C2069733A222C2428692B22202E';
wwv_flow_imp.g_varchar2_table(114) := '742D526567696F6E2D626F647922295B305D2E696E6E657248544D4C292C414F502E636C6F62324172726179282428692B22202E742D526567696F6E2D626F647922295B305D2E696E6E657248544D4C2C3365332C414F502E67414F504F7074696F6E73';
wwv_flow_imp.g_varchar2_table(115) := '5B735D2E646174614172726179292C6128293B627265616B3B6361736522636C69656E745F737667223A414F502E737667456E68616E636528692C66756E6374696F6E28297B617065782E64656275672E696E666F2822414F5020676574496E64697669';
wwv_flow_imp.g_varchar2_table(116) := '6475616C496D61676555706C6F616441727261797320737667206265696E672073656E74222C286E657720584D4C53657269616C697A6572292E73657269616C697A65546F537472696E67282428692B222073766722295B305D29292C414F502E636C6F';
wwv_flow_imp.g_varchar2_table(117) := '6232417272617928286E657720584D4C53657269616C697A6572292E73657269616C697A65546F537472696E67282428692B222073766722295B305D292C3365332C414F502E67414F504F7074696F6E735B735D2E646174614172726179292C414F502E';
wwv_flow_imp.g_varchar2_table(118) := '67414F504F7074696F6E735B735D2E77696474683D242869292E646174612822616F702D776964746822297C7C242869292E696E6E6572576964746828292C414F502E67414F504F7074696F6E735B735D2E6865696768743D242869292E646174612822';
wwv_flow_imp.g_varchar2_table(119) := '616F702D68656967687422297C7C242869292E696E6E657248656967687428292C414F502E67414F504F7074696F6E735B735D2E6D617857696474683D242869292E646174612822616F702D6D61782D776964746822292C414F502E67414F504F707469';
wwv_flow_imp.g_varchar2_table(120) := '6F6E735B735D2E6D61784865696768743D242869292E646174612822616F702D6D61782D68656967687422292C6128297D293B627265616B3B64656661756C743A414F502E676574496D616765426173653634417272617928692C414F502E67414F504F';
wwv_flow_imp.g_varchar2_table(121) := '7074696F6E735B735D2E6461746141727261792C66756E6374696F6E2865297B617065782E64656275672E696E666F2822414F5020676574496E646976696475616C496D61676555706C6F61644172726179732073657474696E67206461746141727261';
wwv_flow_imp.g_varchar2_table(122) := '79222C65292C414F502E67414F504F7074696F6E735B735D2E6461746141727261793D652C414F502E67414F504F7074696F6E735B735D2E77696474683D242869292E646174612822616F702D776964746822297C7C242869292E696E6E657257696474';
wwv_flow_imp.g_varchar2_table(123) := '6828292C414F502E67414F504F7074696F6E735B735D2E6865696768743D242869292E646174612822616F702D68656967687422297C7C242869292E696E6E657248656967687428292C414F502E67414F504F7074696F6E735B735D2E6D617857696474';
wwv_flow_imp.g_varchar2_table(124) := '683D242869292E646174612822616F702D6D61782D776964746822292C414F502E67414F504F7074696F6E735B735D2E6D61784865696768743D242869292E646174612822616F702D6D61782D68656967687422292C617065782E64656275672E696E66';
wwv_flow_imp.g_varchar2_table(125) := '6F2822414F5020676574496E646976696475616C496D61676555706C6F61644172726179732063616C6C696E67206E65787420737465702061667465722067657474696E6720696D616765206461746122292C6128297D297D7D63617463682865297B61';
wwv_flow_imp.g_varchar2_table(126) := '7065782E64656275672E696E666F2822414F5020457863657074696F6E3A222C65292C6128297D7D2C676574416C6C496D61676555706C6F61644172726179733A66756E6374696F6E28652C69297B617065782E64656275672E696E666F2822414F5020';
wwv_flow_imp.g_varchar2_table(127) := '676574416C6C496D61676555706C6F6164417261797320526567696F6E204944204172726179222C65293B76617220613B613D652E6C656E6774683E31303F31303A652E6C656E6774682C617065782E64656275672E696E666F2822414F502067657441';
wwv_flow_imp.g_varchar2_table(128) := '6C6C496D61676555706C6F616441727261797320526567696F6E204172726179204C656E677468222C61293B666F722876617220743D302C733D66756E6374696F6E28297B742B2B2C743D3D6126266928297D2C6E3D303B6E3C613B6E2B2B2961706578';
wwv_flow_imp.g_varchar2_table(129) := '2E64656275672E696E666F2822414F5020676574416C6C496D61676555706C6F616441727261797320526567696F6E204172726179204C6F6F7020697465726174696F6E222C6E292C655B6E5D2626414F502E676574496E646976696475616C496D6167';
wwv_flow_imp.g_varchar2_table(130) := '6555706C6F6164417272617973286E2C2223222B655B6E5D2C73297D2C646F776E6C6F6164414F5046696C653A66756E6374696F6E2865297B617065782E64656275672E696E666F2822414F5020646F776E6C6F6164414F5046696C6520414F502E6741';
wwv_flow_imp.g_varchar2_table(131) := '4F504F7074696F6E73222C414F502E67414F504F7074696F6E73293B666F722876617220693D5B5D2C613D5B5D2C743D5B5D2C733D5B5D2C6E3D7B705F7769646765745F616374696F6E3A22414F50222C705F726571756573743A22504C5547494E3D22';
wwv_flow_imp.g_varchar2_table(132) := '2B414F502E67414F504F7074696F6E732E616A61784964656E7469666965722C705F666C6F775F69643A2476282270466C6F77496422292C705F666C6F775F737465705F69643A2476282270466C6F7753746570496422292C705F696E7374616E63653A';
wwv_flow_imp.g_varchar2_table(133) := '2476282270496E7374616E636522292C705F64656275673A2476282270646562756722292C705F6172675F6E616D65733A414F502E67414F504F7074696F6E732E7375626D69744974656D7341727261792C705F6172675F76616C7565733A414F502E67';
wwv_flow_imp.g_varchar2_table(134) := '414F504F7074696F6E732E7375626D697456616C75657341727261792C7830313A414F502E67414F504F7074696F6E732E737461746963526567696F6E4964732C7830323A414F502E67414F504F7074696F6E732E4947526567696F6E496473416E6453';
wwv_flow_imp.g_varchar2_table(135) := '656C6563746564504B7D2C723D313B723C3D31353B722B2B297B766172206F3D2266222B28723E3D31303F722E746F537472696E6728293A2230222B722E746F537472696E672829293B692E7075736828414F502E67414F504F7074696F6E735B6F5D2E';
wwv_flow_imp.g_varchar2_table(136) := '7769647468292C612E7075736828414F502E67414F504F7074696F6E735B6F5D2E686569676874292C742E7075736828414F502E67414F504F7074696F6E735B6F5D2E6D61785769647468292C732E7075736828414F502E67414F504F7074696F6E735B';
wwv_flow_imp.g_varchar2_table(137) := '6F5D2E6D6178486569676874292C6E5B6F5D3D414F502E67414F504F7074696F6E735B6F5D2E6461746141727261797D6E2E6631363D692C6E2E6631373D612C6E2E6631383D742C6E2E6631393D732C617065782E6A51756572792E616A6178287B6461';
wwv_flow_imp.g_varchar2_table(138) := '7461547970653A2274657874222C747970653A22504F5354222C75726C3A77696E646F772E6C6F636174696F6E2E687265662E73756273747228302C77696E646F772E6C6F636174696F6E2E687265662E696E6465784F6628222F663F703D22292B3129';
wwv_flow_imp.g_varchar2_table(139) := '2B227777765F666C6F772E73686F77222C6173796E633A21302C747261646974696F6E616C3A21302C646174613A6E2C737563636573733A66756E6374696F6E2869297B76617220613B7472797B613D6A51756572792E70617273654A534F4E2869297D';
wwv_flow_imp.g_varchar2_table(140) := '63617463682865297B617065782E64656275672E6C6F672822414F5020646F776E6C6F6164414F5046696C6520526573706F6E73652050617273654572726F72222C65293B76617220743D2428223C6469763E3C2F6469763E22293B742E68746D6C2869';
wwv_flow_imp.g_varchar2_table(141) := '293B76617220733D2428222E742D416C6572742D626F6479206833222C74292E7465787428293B733D732E7265706C616365282F222F672C222022292C22223D3D73262628733D22414F5020414A41582043616C6C6261636B2069737375652E22292C61';
wwv_flow_imp.g_varchar2_table(142) := '3D6A51756572792E70617273654A534F4E28277B2022737461747573223A20226572726F72222C20226D657373616765223A2022526573706F6E73652050617273654572726F72222C2022636F6465223A2022414A41582043616C6C6261636B20287044';
wwv_flow_imp.g_varchar2_table(143) := '617461292050617273654572726F72222C20226E6F74696669636174696F6E223A22272B732B2722207D27297D226572726F72223D3D612E7374617475733F28617065782E64656275672E6C6F672822414F5020646F776E6C6F6164414F5046696C6520';
wwv_flow_imp.g_varchar2_table(144) := '4572726F72222C612E6D6573736167652C612E636F6465292C617065782E6576656E742E7472696767657228414F502E67414F504F7074696F6E732E74726967676572456C656D49642C22616F702D66696C652D6572726F72222C61292C414F502E7368';
wwv_flow_imp.g_varchar2_table(145) := '6F774E6F74696669636174696F6E28226572726F72222C612E6E6F74696669636174696F6E292C652829293A2273756363657373223D3D612E737461747573262628617065782E64656275672E6C6F672822414F5020646F776E6C6F6164414F5046696C';
wwv_flow_imp.g_varchar2_table(146) := '65205375636365737322292C617065782E6576656E742E7472696767657228414F502E67414F504F7074696F6E732E74726967676572456C656D49642C22616F702D66696C652D73756363657373222C61292C617065782E64656275672E6C6F67282241';
wwv_flow_imp.g_varchar2_table(147) := '4F5020646F776E6C6F6164414F5046696C6520446F776E6C6F6164696E672066696C6522292C224449524543544F5259223D3D414F502E67414F504F7074696F6E732E6F7574707574546F262622746578742F706C61696E223D3D612E6D696D65747970';
wwv_flow_imp.g_varchar2_table(148) := '653F28617065782E64656275672E6C6F672822414F503A204F757470757420746F206469726563746F727922292C414F502E73686F774E6F74696669636174696F6E282273756363657373222C612E6461746129293A2242524F57534552223D3D414F50';
wwv_flow_imp.g_varchar2_table(149) := '2E67414F504F7074696F6E732E6F7574707574546F7C7C2250524F4345445552455F42524F57534552223D3D414F502E67414F504F7074696F6E732E6F7574707574546F7C7C224449524543544F5259223D3D414F502E67414F504F7074696F6E732E6F';
wwv_flow_imp.g_varchar2_table(150) := '7574707574546F3F28617065782E64656275672E6C6F672822414F5020646F776E6C6F6164414F5046696C6520646F776E6C6F616442617365363422292C414F502E646F776E6C6F616442617365363428612E646174612C612E6D696D65747970652C61';
wwv_flow_imp.g_varchar2_table(151) := '2E66696C656E616D6529293A2242524F575345525F494E4C494E4522213D414F502E67414F504F7074696F6E732E6F7574707574546F7C7C226170706C69636174696F6E2F70646622213D612E6D696D6574797065262622746578742F68746D6C22213D';
wwv_flow_imp.g_varchar2_table(152) := '612E6D696D65747970653F2242524F575345525F494E4C494E4522213D414F502E67414F504F7074696F6E732E6F7574707574546F7C7C22746578742F6D61726B646F776E22213D612E6D696D6574797065262622746578742F706C61696E22213D612E';
wwv_flow_imp.g_varchar2_table(153) := '6D696D6574797065262622746578742F63737622213D612E6D696D65747970653F22434C4F5544223D3D414F502E67414F504F7074696F6E732E6F7574707574546F3F28617065782E64656275672E6C6F672822414F503A204F757470757420746F2063';
wwv_flow_imp.g_varchar2_table(154) := '6C6F756422292C414F502E73686F774E6F74696669636174696F6E282273756363657373222C22446F63756D656E7420736176656420746F20636C6F75642E2229293A617065782E64656275672E6C6F672822414F503A204E6F20737570706F72746564';
wwv_flow_imp.g_varchar2_table(155) := '206F7574707574206D6574686F6422293A28617065782E64656275672E6C6F672822414F5020646F776E6C6F6164414F5046696C6520696E6C696E655465787422292C414F502E696E6C696E655465787428612E646174612C612E6D696D65747970652C';
wwv_flow_imp.g_varchar2_table(156) := '612E66696C656E616D6529293A28617065782E64656275672E6C6F672822414F5020646F776E6C6F6164414F5046696C6520696E6C696E6542617365363422292C414F502E696E6C696E6542617365363428612E646174612C612E6D696D65747970652C';
wwv_flow_imp.g_varchar2_table(157) := '612E66696C656E616D6529292C65286129297D2C6572726F723A66756E6374696F6E28692C61297B617065782E64656275672E6C6F672822414F5020646F776E6C6F6164414F5046696C65204572726F72222C61292C617065782E6576656E742E747269';
wwv_flow_imp.g_varchar2_table(158) := '6767657228414F502E67414F504F7074696F6E732E74726967676572456C656D49642C22616F702D66696C652D6572726F72222C61292C414F502E73686F774E6F74696669636174696F6E28226572726F72222C61292C6528297D2C7868723A66756E63';
wwv_flow_imp.g_varchar2_table(159) := '74696F6E28297B72657475726E205868724F626A3D242E616A617853657474696E67732E78687228292C5868724F626A2E75706C6F61643F5868724F626A2E75706C6F61642E6164644576656E744C697374656E6572282270726F6772657373222C6675';
wwv_flow_imp.g_varchar2_table(160) := '6E6374696F6E2865297B696628652E6C656E677468436F6D70757461626C65297B76617220693D652E6C6F616465642F652E746F74616C2A3130303B617065782E6576656E742E7472696767657228414F502E67414F504F7074696F6E732E7472696767';
wwv_flow_imp.g_varchar2_table(161) := '6572456C656D49642C22616F702D66696C652D70726F6772657373222C69297D7D2C2131293A617065782E64656275672E6C6F672822414F5020646F776E6C6F6164414F5046696C6520584852222C2250726F6772657373206973206E6F742073757070';
wwv_flow_imp.g_varchar2_table(162) := '6F727465642062792042726F777365722E22292C5868724F626A7D7D297D2C63616C6C414F503A66756E6374696F6E28297B7472797B50726F6D6973657C7C2850726F6D6973653D45533650726F6D697365297D63617463682865297B50726F6D697365';
wwv_flow_imp.g_varchar2_table(163) := '3D45533650726F6D6973657D76617220652C693D746869732C613D692E616374696F6E2E616A61784964656E7469666965722C743D692E616374696F6E2E61747472696275746530312C733D692E616374696F6E2E61747472696275746530352C6E3D69';
wwv_flow_imp.g_varchar2_table(164) := '2E616374696F6E2E61747472696275746531322C723D692E616374696F6E2E61747472696275746531332C6F3D692E616374696F6E2E61747472696275746531342C643D746869732E74726967676572696E67456C656D656E743B653D242864292E6973';
wwv_flow_imp.g_varchar2_table(165) := '28225B69645D22293F2223222B242864292E617474722822696422293A22626F6479223B76617220633D5B5D3B72262628633D722E73706C697428222C2229293B766172206C3D5B5D3B6E2626286C3D6E2E73706C697428222C2229292C414F502E6741';
wwv_flow_imp.g_varchar2_table(166) := '4F504F7074696F6E732E616A61784964656E7469666965723D612C414F502E67414F504F7074696F6E732E74726967676572456C656D49643D652C414F502E67414F504F7074696F6E732E737461746963526567696F6E4964733D722C414F502E67414F';
wwv_flow_imp.g_varchar2_table(167) := '504F7074696F6E732E64614E616D653D742C414F502E67414F504F7074696F6E732E6F7574707574546F3D6F2C224954454D223D3D692E616374696F6E2E6166666563746564456C656D656E747354797065262628414F502E67414F504F7074696F6E73';
wwv_flow_imp.g_varchar2_table(168) := '2E7375626D69744974656D7341727261793D414F502E6275696C6441666665637465644974656D417272617928692E616374696F6E2E6166666563746564456C656D656E7473292C414F502E67414F504F7074696F6E732E7375626D697456616C756573';
wwv_flow_imp.g_varchar2_table(169) := '41727261793D414F502E6275696C6441666665637465644974656D56616C7565417272617928692E616374696F6E2E6166666563746564456C656D656E747329293B666F722876617220673D313B673C3D31353B672B2B297B76617220703D2266222B28';
wwv_flow_imp.g_varchar2_table(170) := '673E3D31303F672E746F537472696E6728293A2230222B672E746F537472696E672829293B414F502E67414F504F7074696F6E735B705D2E6461746141727261793D5B5D2C414F502E67414F504F7074696F6E735B705D2E77696474683D302C414F502E';
wwv_flow_imp.g_varchar2_table(171) := '67414F504F7074696F6E735B705D2E6865696768743D302C414F502E67414F504F7074696F6E735B705D2E6D617857696474683D302C414F502E67414F504F7074696F6E735B705D2E6D61784865696768743D307D617065782E64656275672E696E666F';
wwv_flow_imp.g_varchar2_table(172) := '2822414F502076416A61784964656E746966696572222C61292C617065782E64656275672E696E666F2822414F50207654726967676572456C656D4964222C65292C617065782E64656275672E696E666F2822414F50207644614E616D65222C74292C61';
wwv_flow_imp.g_varchar2_table(173) := '7065782E64656275672E696E666F2822414F5020764461746154797065222C73292C617065782E64656275672E696E666F2822414F502076526567696F6E496473222C72292C617065782E64656275672E696E666F2822414F5020764F7574707574546F';
wwv_flow_imp.g_varchar2_table(174) := '222C6F292C617065782E64656275672E696E666F2822414F5020414F502E67414F504F7074696F6E73222C414F502E67414F504F7074696F6E73293B76617220753D414F502E73686F775370696E6E657228242822626F64792229293B752E6174747228';
wwv_flow_imp.g_varchar2_table(175) := '22646174612D68746D6C3263616E7661732D69676E6F7265222C227472756522293B7472797B617065782E64656275672E696E666F2822414F50206C4947526567696F6E4964733A222C6C292C414F502E67414F504F7074696F6E732E4947526567696F';
wwv_flow_imp.g_varchar2_table(176) := '6E496473416E6453656C6563746564504B3D7B7D2C6C2E666F72456163682866756E6374696F6E2865297B7472797B76617220693D652C613D617065782E726567696F6E2869292E77696467657428292C743D612E696E74657261637469766547726964';
wwv_flow_imp.g_varchar2_table(177) := '28226765745669657773222C226772696422292C733D612E696E7465726163746976654772696428226765745669657773222C226772696422292E6D6F64656C2C6E3D5B5D3B742E67657453656C65637465645265636F72647328292E666F7245616368';
wwv_flow_imp.g_varchar2_table(178) := '2866756E6374696F6E2865297B6E2E7075736828732E5F6765745072696D6172794B65792865295B305D297D292C414F502E67414F504F7074696F6E732E4947526567696F6E496473416E6453656C6563746564504B5B655D3D6E2C617065782E646562';
wwv_flow_imp.g_varchar2_table(179) := '75672E696E666F2822414F5020494720526567696F6E2053656C656374696F6E3A222C652C6E297D63617463682865297B7D7D292C414F502E67414F504F7074696F6E732E4947526567696F6E496473416E6453656C6563746564504B3D4A534F4E2E73';
wwv_flow_imp.g_varchar2_table(180) := '7472696E6769667928414F502E67414F504F7074696F6E732E4947526567696F6E496473416E6453656C6563746564504B292C617065782E64656275672E696E666F2822414F50204947526567696F6E496473416E6453656C6563746564504B3A222C41';
wwv_flow_imp.g_varchar2_table(181) := '4F502E67414F504F7074696F6E732E4947526567696F6E496473416E6453656C6563746564504B292C224952223D3D732626723F28617065782E64656275672E696E666F2822414F502047657474696E6720746865206461746120666F72207652656769';
wwv_flow_imp.g_varchar2_table(182) := '6F6E496473222C72292C414F502E676574416C6C496D61676555706C6F616441727261797328632C66756E6374696F6E28297B414F502E646F776E6C6F6164414F5046696C652866756E6374696F6E28297B752E72656D6F766528292C617065782E6461';
wwv_flow_imp.g_varchar2_table(183) := '2E726573756D6528692E726573756D6543616C6C6261636B2C2131297D297D29293A414F502E646F776E6C6F6164414F5046696C652866756E6374696F6E28297B752E72656D6F766528292C617065782E64612E726573756D6528692E726573756D6543';
wwv_flow_imp.g_varchar2_table(184) := '616C6C6261636B2C2131297D297D63617463682865297B617065782E6576656E742E7472696767657228414F502E67414F504F7074696F6E732E74726967676572456C656D49642C22616F702D66696C652D6572726F7222292C752E72656D6F76652829';
wwv_flow_imp.g_varchar2_table(185) := '2C617065782E64612E726573756D6528692E726573756D6543616C6C6261636B2C2131297D7D7D3B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(484337553423099369)
,p_plugin_id=>wwv_flow_imp.id(2224268139897071770)
,p_file_name=>'js/aop_da.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
