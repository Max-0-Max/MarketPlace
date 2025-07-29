prompt --application/shared_components/plugins/item_type/com_foex_plugin_form_field_htmleditor
begin
--   Manifest
--     PLUGIN: COM.FOEX.PLUGIN.FORM.FIELD.HTMLEDITOR
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
 p_id=>wwv_flow_imp.id(23698333200321321)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.FOEX.PLUGIN.FORM.FIELD.HTMLEDITOR'
,p_display_name=>'FOEX HTML Editor'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.FOEX.PLUGIN.FORM.FIELD.HTMLEDITOR'),'&FOEX_SOURCE_DIR.')
,p_api_version=>1
,p_render_function=>'fx_p_form.htmleditor_render'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:SOURCE:ELEMENT:WIDTH:HEIGHT'
,p_substitute_attributes=>true
,p_reference_id=>110634928798523065
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	Provides a lightweight HTML Editor component. Some toolbar features are not supported by Safari and will be automatically hidden when needed. There are a number of options to hide/show which buttons are available to the end user.</p>',
'<p>',
'	<img alt="" src="http://tryfoexnow.com/c/foex-site/images/doc/foex-html-editor.png" style="display:block;align:center;margin:auto;" title="FOEX HTML Editor Plugin" /></p>',
'<p>',
'	&nbsp;</p>',
''))
,p_version_identifier=>'V2.0.1'
,p_about_url=>'http://tryfoexnow.com'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23698654020321342)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Custom Config (Application Level)'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This is an application level setting which allows you to define custom config for every HTML Editor plugin used within your application. The config defined here can be overridden within the "Custom Config (Component Level)" plugin parameter. The conf'
||'ig can be found here: <a href="http://docs.sencha.com/extjs/4.2.3/#!/api/Ext.form.field.HtmlEditor" target="_blank">Ext.form.field.HtmlEditor</a>',
'</p>',
'<p>Please enter comma separated JSON "key":"value" pairs e.g. to set the margin or padding use the following (top right bottom left)</p>',
'<pre>',
'"margin": "0 5 3 0", "padding": "20 0 0 0"',
'</pre>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23699067955321348)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Resizeable'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'<p>Yes/No to add resizing handles on the textarea<br></p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23699475532321349)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Show Colours'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'<p>Enable font colour and background buttons<br></p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23699843749321350)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Show Source Edit'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'<p>Enable the source edit button</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23700215331321352)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Show Format'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'<p>Enable the bold/italic/underline buttons</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23700674036321352)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'Show Lists'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'<p>Enable number and bullet list buttons</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23701015573321354)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'attribute_06'
,p_prompt=>'Show Font'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'<p>Enable font selection</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23701459208321355)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'attribute_07'
,p_prompt=>'Show Alignments'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'<p>Enable the left/center/right indenting buttons</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23701899984321355)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'attribute_08'
,p_prompt=>'Allow Hyper Links'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'<p>Enable the hyperlink button</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(23702230580321357)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'attribute_09'
,p_prompt=>'Custom Config (Component Level)'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This is a component level setting which allows you to define custom config for the HTML Editor plugin. The config defined here will override any config with the same names within the "Custom Config (Application Level)" plugin parameter. The config ca'
||'n be found here: <a href="http://docs.sencha.com/extjs/4.2.3/#!/api/Ext.form.field.HtmlEditor" target="_blank">Ext.form.field.HtmlEditor</a>',
'</p>',
'<p>Please enter comma separated JSON "key":"value" pairs e.g. to set the margin or padding use the following (top right bottom left)</p>',
'<pre>',
'"margin": "0 5 3 0", "padding": "20 0 0 0"',
'</pre>'))
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(23703379823321377)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_name=>'invalid'
,p_display_name=>'FOEX HTML Editor - When Invalid'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(23703790441321378)
,p_plugin_id=>wwv_flow_imp.id(23698333200321321)
,p_name=>'valid'
,p_display_name=>'FOEX HTML Editor - When Valid'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
