prompt --application/shared_components/plugins/region_type/com_logica_apex_googlevis_orgchart
begin
--   Manifest
--     PLUGIN: COM.LOGICA.APEX.GOOGLEVIS.ORGCHART
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
 p_id=>wwv_flow_imp.id(30014892204688127)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.LOGICA.APEX.GOOGLEVIS.ORGCHART'
,p_display_name=>'Google OrgChart'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.LOGICA.APEX.GOOGLEVIS.ORGCHART'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'c_data_type_varchar2 constant varchar2(10) := apex_plugin_util.c_data_type_varchar2;',
'c_data_type_number   constant varchar2(10) := apex_plugin_util.c_data_type_number;',
'c_data_type_date     constant varchar2(10) := apex_plugin_util.c_data_type_date;',
'',
'FUNCTION render_visualization',
'         ( p_region              in apex_plugin.t_region',
'         , p_plugin              in apex_plugin.t_plugin',
'         , p_is_printer_friendly in boolean ',
'         ) RETURN apex_plugin.t_region_render_result',
'/* ----------------------------------------------------------------------- ',
'   The actual function that does the rendering of a Google Visualization',
'   ----------------------------------------------------------------------- */',
'IS',
'    l_chart_type         varchar2(20) := ''OrgChart'';',
'',
'    l_size               apex_application_page_regions.attribute_01%type := p_region.attribute_01;',
'    l_allowCollapse      boolean := (nvl(p_region.attribute_02,''Y'') = ''Y'');',
'    l_allowHTML          boolean := (nvl(p_region.attribute_03,''Y'') = ''Y'');',
'    l_nodeClass          apex_application_page_regions.attribute_04%type := p_region.attribute_04;',
'    l_selectedNodeClass  apex_application_page_regions.attribute_05%type := p_region.attribute_05;',
'    l_filterfield        varchar2(255) := p_region.attribute_07;',
'    l_filtervalue        varchar2(255) := p_region.attribute_08;',
'    l_parentvalue        varchar2(255) := p_region.attribute_09;',
'',
'begin',
'    -- During plug-in development it''s very helpful to have some debug information',
'    if wwv_flow.g_debug then',
'        apex_plugin_util.debug_region (',
'            p_plugin              => p_plugin,',
'            p_region              => p_region,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'    end if;',
'',
'    -- Render a place holder DIV for the chart',
'    sys.htp.p(''<div id="''||p_region.static_id||''"></div>'');        ',
'    sys.htp.p(''<div id="AjaxLoading" style="position:absolute;left:50%;top:50%">',
'               <img src=''||p_plugin.file_prefix||''loading_animation.gif /></div>',
'             '');    ',
'',
'',
'    -- Include trhe Google JSAPI library',
'    apex_javascript.add_library (',
'        p_name           => ''jsapi'',',
'        p_directory      => ''http://www.google.com/'',',
'        p_version        => null,',
'        p_skip_extension => true );',
'',
'    -- Load the visualization API',
'    -- p_key is used to load the API just once per chart type',
'    apex_javascript.add_inline_code (',
'        p_code => ''google.load("visualization", "1", {packages :["''||l_chart_type||''"]});'',',
'        p_key  => ''visualization_''||l_chart_type ); ',
'    ',
'    -- Register the javascript library the plug-in uses.',
'    -- The add_library call will make sure that just one instance of the',
'    -- library is loaded when the plug-in is used multiple times on the page.',
'    -- If the developer stores the javascript file on the web-server, the',
'    -- p_plugin.file_prefix will contain the web-server URL. If the variable',
'    -- contains #PLUGIN_PREFIX#, the file will be read from the database.',
'    apex_javascript.add_library (',
'        p_name      => ''com_logica_apex_googlevis_chart'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => ''-1.3'' );',
'',
'    -- Initialize the Chart when the page has been rendered.',
'    -- apex_javascript.add_attribute are used to make sure that',
'    -- the values are properly escaped.   ',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_logica_apex_googlevis_chart(''||',
'                      apex_javascript.add_value(p_region.static_id)||',
'                      apex_javascript.add_value(l_chart_type)||',
'                      ''{''||',
'                          apex_javascript.add_attribute(''filePrefix''        , p_plugin.file_prefix)||',
'                          apex_javascript.add_attribute(''ajaxIdentifier''    , apex_plugin.get_ajax_identifier)||',
'                          apex_javascript.add_attribute(''filterField''       , l_filterfield       )||',
'                          apex_javascript.add_attribute(''filterValue''       , l_filtervalue       )||',
'                          apex_javascript.add_attribute(''parentValue''       , l_parentvalue       )||',
'                          apex_javascript.add_attribute(''size''              , l_size              )||',
'                          apex_javascript.add_attribute(''allowCollapse''     , l_allowCollapse     )||',
'                          apex_javascript.add_attribute(''allowHtml''         , l_allowHTML         )||',
'                          apex_javascript.add_attribute(''nodeClass''         , l_nodeClass         )||',
'                          apex_javascript.add_attribute(''selectedNodeClass'' , l_selectedNodeClass, false, false )||',
'                      ''});'' );',
'',
'  return null;',
'EXCEPTION when others then',
'    sys.htp.p(''<error>''||SQLERRM||''</error>'');',
'    return null;',
'end render_visualization;',
'',
'/* ----------------------------------------------------------------------------- ',
'   AJAX callback which returns the Chart XML structure with the chart data.',
'   ----------------------------------------------------------------------------- */',
'FUNCTION ajax_visualization',
'        ( p_region in apex_plugin.t_region',
'        , p_plugin in apex_plugin.t_plugin ',
'        ) RETURN apex_plugin.t_region_ajax_result',
'IS',
'    l_chart_type         constant varchar2(30) := ''OrgChart'';',
'    l_max_rows           number        := to_number(p_region.attribute_06);',
'    l_data_type_list     wwv_flow_global.vc_arr2;',
'    l_column_value_list  apex_plugin_util.t_column_value_list2;',
'    l_data               varchar2(32767);',
'    l_format_value       boolean;',
'BEGIN',
'    -- All Columns are strings',
'',
'    -- Column 1 and 2 are the primary_key and parent_key id''s, so numbers',
'    -- The rest of the columns should be varchar2.',
'',
'    --l_data_type_list(1) := c_data_type_number;',
'    --l_data_type_list(2) := c_data_type_number;',
'--    for i in 3 .. 10 loop',
'    for i in 1 .. 10 loop',
'        l_data_type_list(i) := c_data_type_varchar2;',
'    end loop;',
'',
'    -- get the chart data',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                              p_sql_statement  => p_region.source,',
'                              p_min_columns    => 4,',
'                              p_max_columns    => 10, ',
'                              p_data_type_list => l_data_type_list,',
'                              p_component_name => p_region.static_id,',
'                              p_max_rows       => l_max_rows); ',
'',
'',
'    -- generate a JavaScript object for the chart data which contains information about',
'    -- the columns and rows. See http://code.google.com/apis/visualization/documentation/reference.html#dataparam',
'    l_data := ''{"cols":['';',
'    for l_column in 1 .. l_column_value_list.count',
'    loop',
'',
'      l_data := l_data||',
'                case when l_column > 1 then '','' end||',
'                ''{''||',
'                apex_javascript.add_attribute(''id''   , ''col''||l_column)||',
'                apex_javascript.add_attribute(''label'', l_column_value_list(l_column).name)|| ',
'                apex_javascript.add_attribute(''type'' ,  case l_column_value_list(l_column).data_type',
'                                                           when c_data_type_varchar2 then ''string''',
'                                                           when c_data_type_number   then ''number''',
'                                                           when c_data_type_date     then ''date''',
'                                                         end',
'                                                     , false',
'                                                     , false )||',
'                  ''}'';',
'    end loop;',
'    l_data := l_data||''],'';',
'    sys.htp.p(l_data);    ',
'',
'    -- add rows to the output',
'    l_data := ''"rows":['';',
'    for l_row in 1 .. l_column_value_list(1).value_list.count /* let''s use the first column for the number of rows */',
'    loop',
'      l_data := l_data||',
'                case when l_row > 1 then '','' end||',
'                ''{"c":['';',
'      -- add the value of each column and the current row to our data object',
'      for l_column in 1 .. l_column_value_list.count',
'      loop',
'        -- CONTINUE WHEN (l_column = 3); -- Column3 contains the display value (only works in 11g)',
'',
'       if l_column < 3 -- Added for pre 11g',
'       then            -- Added for pre 11g',
'',
'        l_format_value := (l_column = 1); -- Formatting (column 3) should be added to column 1',
'',
'        l_data := l_data||',
'                  case when l_column > 1 then '','' end||',
'                  ''{''||',
'                  case l_column_value_list(l_column).data_type',
'                    when c_data_type_varchar2 then apex_javascript.add_attribute(''v''',
'                                                         , l_column_value_list(l_column).value_list(l_row).varchar2_value',
'                                                         , false,  l_format_value)',
'                    when c_data_type_number   then apex_javascript.add_attribute(''v''',
'                                                         , l_column_value_list(l_column).value_list(l_row).number_value',
'                                                         , false,  l_format_value)',
'                    when c_data_type_date     then apex_javascript.add_attribute(''v''',
'                                                         , l_column_value_list(l_column).value_list(l_row).date_value',
'                                                         , false,  l_format_value)',
'                  end||',
'                  case -- Add display value / formattting',
'                  when l_format_value then apex_javascript.add_attribute(''f''',
'                                                         , l_column_value_list(3).value_list(l_row).varchar2_value',
'                                                         , false, false)',
'                  end||',
'                  ''}'';',
'       end if;      -- Added for pre 11g',
'      end loop;',
'      l_data := l_data||'']}'';',
'      sys.htp.p(l_data);',
'      l_data := '''';',
'    end loop;',
'    sys.htp.p('']}'');',
'    return null;',
'EXCEPTION',
'when others then',
'    sys.htp.p(''<error>''||SQLERRM||''</error>'');',
'    return null;',
'END ajax_visualization;'))
,p_api_version=>1
,p_render_function=>'render_visualization'
,p_ajax_function=>'ajax_visualization'
,p_standard_attributes=>'SOURCE_SQL'
,p_substitute_attributes=>true
,p_reference_id=>16230368613355638746
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	<img alt="" src="http://code.google.com/apis/visualization/documentation/gallery/images/icon-orgchart.png" style="float: left;" />An organizational chart that supports selection.</p>',
'<p>',
'	By: Google</p>',
'<p>',
'	<a href="http://code.google.com/intl/nl/apis/visualization/documentation/gallery/orgchart.html" onclick="window.open(this.href, '''', ''resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no''); return false;">'
||'http://code.google.com/intl/nl/apis/visualization/documentation/gallery/orgchart.html</a></p>',
'<p>',
'	First column should contain the ID, second the parent ID.</p>',
''))
,p_version_identifier=>'1.3'
,p_about_url=>'http://roelhartman.blogspot.com'
,p_files_version=>3
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30015178265688145)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'medium'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	Specify the size of the Organizational Chart: Small, Medium or Large</p>',
''))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(30015595733688146)
,p_plugin_attribute_id=>wwv_flow_imp.id(30015178265688145)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'small'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(30016014434688147)
,p_plugin_attribute_id=>wwv_flow_imp.id(30015178265688145)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'medium'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(30016599724688149)
,p_plugin_attribute_id=>wwv_flow_imp.id(30015178265688145)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'large'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30017024645688153)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Allow Collapse'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	Determines if double click will collapse a node.</p>',
''))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30017428729688153)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Allow HTML'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	If set to &quot;Yes&quot;, names that includes HTML tags will be rendered as HTML.</p>',
''))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30017896486688154)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Node Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>25
,p_max_length=>50
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	A class name to assign to node elements. Apply CSS to this class name to specify colors or styles for the chart elements.</p>',
''))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30018286278688155)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'Selected Node Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>25
,p_max_length=>50
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	A class name to assign to selected node elements. Apply CSS to this class name to specify colors or styles for selected chart elements.</p>',
''))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30018631757688156)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'attribute_06'
,p_prompt=>'Max Rows'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>8
,p_is_translatable=>false
,p_help_text=>'Set the maximum number of rows to query (leave blank for all).'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30019023747688157)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'attribute_07'
,p_prompt=>'Filter On Field'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'The field to filter on. Should return the index of the column.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30019486365688159)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'attribute_08'
,p_prompt=>'Filter On Value Field'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(30019023747688157)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>'The value that containts the actual filter values.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(30019832395688160)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'attribute_09'
,p_prompt=>'Parent Value Field'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Field that contains the parent value that is changeable (for updateable OrgChart).'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(30020538346688167)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>4
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img alt="" src="http://code.google.com/apis/visualization/documentation/gallery/images/icon-orgchart.png" style="float: left;" />A <u><a href="http://code.google.com/intl/nl/apis/visualization/documentation/gallery/orgchart.html" onclick="window.ope'
||'n(this.href, '''', ''resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no''); return false;">Google Organizational Chart</a></u> has a minimum of two columns (id, parentid). <br/>',
'The third, optional, column is a tooltip that is shown when you hover over a node. <br/>',
'A simple select statement can be something like:',
'<pre>',
'SELECT  empno        primary_key',
',       mgr          parent_key',
',       ename        display_value',
',       job          tooltip',
'FROM    emp',
'</pre>',
'',
'You can also use more sophisticated results by adding some formatting to the first column - using the "f:" notation for a formatted value. You can add extra columns e.g. for filtering purposes (like job, department and location in the example below):'
||' ',
'<pre>',
'select emp.empno          as primary_key',
',      emp.mgr            as parent_key',
',      emp.ename',
'              ||''&lt;div style=''''font-size:75%''''>''',
'                 ||emp.empno',
'              ||''&lt;/div>''',
'              ||''&lt;div style=''''color:red; font-style:italic''''>''',
'                 ||initcap(job)',
'              ||''&lt;/div>''                              as display_value',
',      initcap(dept.dname)||'' (''||initcap(dept.loc)||'')'' as tooltip',
',      job',
',      dept.dname as department',
',      dept.loc   as location',
'from   emp',
',      dept',
'WHERE  emp.deptno = dept.deptno',
'</pre>'))
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(30020926557688169)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_name=>'selecthandler'
,p_display_name=>'selectNode'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E20636F6D5F6C6F676963615F617065785F676F6F676C657669735F63686172742870526567696F6E49642C2070547970652C20704F7074696F6E7329207B0D0A0D0A20202F2F20526561647320746865206368617274206461746120';
wwv_flow_imp.g_varchar2_table(2) := '7769746820616E20414A41582063616C6C20616E642063616C6C73207468652073686F7756697375616C697A6174696F6E2066756E6374696F6E207768656E20646F6E650D0A202066756E6374696F6E2072657472696576654461746128705375636365';
wwv_flow_imp.g_varchar2_table(3) := '737343616C6C6261636B29207B0D0A20202020617065782E6A51756572792E616A6178287B0D0A20202020202064617461547970653A20226A736F6E222C0D0A202020202020747970653A2022706F7374222C0D0A20202020202075726C3A2022777776';
wwv_flow_imp.g_varchar2_table(4) := '5F666C6F772E73686F77222C0D0A202020202020747261646974696F6E616C3A20747275652C0D0A202020202020646174613A207B0D0A2020202020202020705F726571756573743A20224E41544956453D222B704F7074696F6E732E616A6178496465';
wwv_flow_imp.g_varchar2_table(5) := '6E7469666965722C0D0A2020202020202020705F666C6F775F69643A202476282770466C6F77496427292C0D0A2020202020202020705F666C6F775F737465705F69643A202476282770466C6F7753746570496427292C0D0A2020202020202020705F69';
wwv_flow_imp.g_varchar2_table(6) := '6E7374616E63653A202476282770496E7374616E63652729207D2C0D0A2020202020206572726F723A2066756E6374696F6E287265712C20737461742C206572726F72297B0D0A20202020202009202020202020636F6E736F6C652E6C6F672820726571';
wwv_flow_imp.g_varchar2_table(7) := '2E726573706F6E73655465787420293B0D0A20202020202009766172206D794F626A656374203D206576616C28272827202B207265712E726573706F6E736554657874202B20272927293B0D0A2020202020200973686F7756697375616C697A6174696F';
wwv_flow_imp.g_varchar2_table(8) := '6E286D794F626A656374293B0D0A2020202020207D2C0D0A202020202020737563636573733A20705375636365737343616C6C6261636B207D293B0D0A20207D3B202F2F207265747269657665446174610D0A20200D0A2020766172206C436861727444';
wwv_flow_imp.g_varchar2_table(9) := '69764964203D2070526567696F6E49642C20202F2F20766172206C43686172744469764964203D2070526567696F6E49643B200D0A2020202020206C526567696F6E2C2020202020202020202020202020202020202F2F2054686520526567696F6E2074';
wwv_flow_imp.g_varchar2_table(10) := '68617420636F6E7461696E73207468652076697375616C697A6174696F6E20200D0A2020202020206C446174615461626C652C2020202020202020202020202020202F2F2054686520446174615461626C65207468617420636F6E7461696E7320746865';
wwv_flow_imp.g_varchar2_table(11) := '206461746120666F72207468652076697375616C697A6174696F6E0D0A2020202020206C4F7074696F6E732C20202020202020202020202020202020202F2F20546865204F7074696F6E7320666F722074686520446174615461626C65200D0A20202020';
wwv_flow_imp.g_varchar2_table(12) := '20206C526F772C0D0A2020202020206C44617461566965773B202020202020202020202020202020202F2F20546865204461746156696577207468617420636F6E7461696E73207468652064617461206F662074686520446174615461626C6520666F72';
wwv_flow_imp.g_varchar2_table(13) := '207468652076697375616C697A6174696F6E0D0A0D0A202066756E6374696F6E2073686F7756697375616C697A6174696F6E2820704461746120297B202F2F2043726561746520616E642044726177207468652076697375616C697A6174696F6E0D0A20';
wwv_flow_imp.g_varchar2_table(14) := '2020202F2F20496E697469616C697A6520746865206368617274200D0A202020206C4F7074696F6E73203D20704F7074696F6E733B0D0A202020206C446174615461626C65203D206E657720676F6F676C652E76697375616C697A6174696F6E2E446174';
wwv_flow_imp.g_varchar2_table(15) := '615461626C652870446174612C20302E36293B20200D0A202020202F2F2043726561746520612056696577206F6E2074686520446174615461626C650D0A202020206C4461746156696577203D206E657720676F6F676C652E76697375616C697A617469';
wwv_flow_imp.g_varchar2_table(16) := '6F6E2E4461746156696577286C446174615461626C65293B0D0A202020202F2F2052656E646572207468652063686172740D0A202020206C526567696F6E203D206E657720676F6F676C652E76697375616C697A6174696F6E5B70547970655D28247828';
wwv_flow_imp.g_varchar2_table(17) := '6C4368617274446976496429293B0D0A202020206C526567696F6E2E64726177286C44617461566965772C20704F7074696F6E73293B0D0A202020202F2F204164642073656C65637448616E646C657220746F207468652073656C656374206576656E74';
wwv_flow_imp.g_varchar2_table(18) := '0D0A20202020676F6F676C652E76697375616C697A6174696F6E2E6576656E74732E6164644C697374656E6572286C526567696F6E2C202773656C656374272C2073656C65637448616E646C657220293B0D0A2020200924785F486964652827416A6178';
wwv_flow_imp.g_varchar2_table(19) := '4C6F6164696E6727293B0D0A20207D0D0A0D0A202066756E6374696F6E2073656C65637448616E646C657228297B202F2F54726967676572207468652073656C65637468616E646C6572206576656E7420666F722074686520506C75672D696E0D0A2020';
wwv_flow_imp.g_varchar2_table(20) := '20206C526F77203D206C526567696F6E2E67657453656C656374696F6E28295B305D3B0D0A20202020696620286C526F773D3D756E646566696E6564297B0D0A2020202020202F2F20436C656172207468652076616C7565206F66207468652073656C65';
wwv_flow_imp.g_varchar2_table(21) := '6374656420726F770D0A202020202020617065782E6A5175657279282223222B6C43686172744469764964292E74726967676572282273656C65637468616E646C657222293B0D0A2020202020207D0D0A20202020656C7365207B0D0A2020202020202F';
wwv_flow_imp.g_varchar2_table(22) := '2F20417373756D696E67206B657976616C756520697320696E2074686520666972737420636F6C756D6E0D0A202020202020766172206B657956616C7565203D206C44617461566965772E67657456616C7565286C526F772E726F772C2030292E746F53';
wwv_flow_imp.g_varchar2_table(23) := '7472696E6728293B0D0A202020202020636F6E736F6C652E6C6F67286B657956616C7565293B0D0A202020202020636F6E736F6C652E6C6F67286C4461746156696577293B0D0A202020202020617065782E6A5175657279282223222B6C436861727444';
wwv_flow_imp.g_varchar2_table(24) := '69764964292E74726967676572282273656C65637468616E646C6572222C205B6B657956616C75655D293B0D0A2020202020207D0D0A20207D0D0A20200D0A202066756E6374696F6E2072656472617728297B202F2F2046696C7465722C205570646174';
wwv_flow_imp.g_varchar2_table(25) := '652026205265647261772074686520476F6F676C652056697375616C697A6174696F6E0D0A0920202F2F20704F7074696F6E732E66696C7465724669656C6420636F6E7461696E7320746865206669656C642077686572652074686520436F6C756D6E20';
wwv_flow_imp.g_varchar2_table(26) := '496E6465782069732073746F7265640D0A20202020766172206C436F6C756D6E20203D207061727365496E74282024762820704F7074696F6E732E66696C7465724669656C64202920293B0D0A0920202F2F20704F7074696F6E732E66696C7465725661';
wwv_flow_imp.g_varchar2_table(27) := '6C756520636F6E7461696E7320746865206669656C64207768657265207468652046696C7465722056616C75652069732073746F7265640D0A20202020766172206C56616C75652020203D2024762820704F7074696F6E732E66696C74657256616C7565';
wwv_flow_imp.g_varchar2_table(28) := '20293B0D0A2020202069662028206C436F6C756D6E203D3D20226E6F6E6522207C7C206C56616C7565203D3D20226E6F6E652220297B0D0A20200920202F2F20436C656172207468652066696C7465722062792073686F77696E6720616C6C20726F7773';
wwv_flow_imp.g_varchar2_table(29) := '0D0A2020202020206C44617461566965772E736574526F77732820302C6C446174615461626C652E6765744E756D6265724F66526F77732829202D203120293B0D0A202020207D0D0A20202020656C7365207B202F2F204170706C79207468652066696C';
wwv_flow_imp.g_varchar2_table(30) := '7465720D0A2020202020206C44617461566965772E736574526F777328206C446174615461626C652E67657446696C7465726564526F7773285B7B20636F6C756D6E203A206C436F6C756D6E2C2076616C7565203A206C56616C7565207D5D29293B0D0A';
wwv_flow_imp.g_varchar2_table(31) := '202020207D0D0A2020202F2F204368616E6765207468652076616C7565206F662074686520706172656E742063656C6C20666F7220746865202263757272656E7420726F772220616E6420526564726177207468652056697375616C697A6174696F6E0D';
wwv_flow_imp.g_varchar2_table(32) := '0A20202020696620286C526F77213D756E646566696E6564297B0D0A202F2F20202020206C446174615461626C652E73657443656C6C28206C526F772E726F772C20312C207061727365496E7428247628704F7074696F6E732E706172656E7456616C75';
wwv_flow_imp.g_varchar2_table(33) := '65292920293B202020200D0A2020202020206C446174615461626C652E73657443656C6C28206C526F772E726F772C20312C20247628704F7074696F6E732E706172656E7456616C75652920293B202020200D0A20202020202064656C657465206C526F';
wwv_flow_imp.g_varchar2_table(34) := '773B0D0A202020207D0D0A202020206C526567696F6E2E6472617728206C44617461566965772C206C4F7074696F6E7320293B0D0A20207D0D0A0D0A20202F2F2041637475616C20636F6465203A207265747269657665446174612028414A4158204361';
wwv_flow_imp.g_varchar2_table(35) := '6C6C6261636B2920616E642063616C6C2073686F7756697375616C697A6174696F6E207768656E20646F6E652E0D0A202072657472696576654461746120282066756E6374696F6E287044617461297B73686F7756697375616C697A6174696F6E282070';
wwv_flow_imp.g_varchar2_table(36) := '4461746120293B207D293B0D0A0D0A20202F2F205265676973746572207468652063616C6C6261636B20666F7220726567696F6E2072656672657368203A205573656420666F722066696C746572696E670D0A2020617065782E6A517565727928222322';
wwv_flow_imp.g_varchar2_table(37) := '2B6C43686172744469764964292E62696E64202820226170657872656672657368222C2072656472617720293B0D0A20200D0A7D0D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(30021373782688170)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_file_name=>'com_logica_apex_googlevis_chart-1.3.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '47494638396164006400B30B00F8CB94F6B363FDF8F11B1B1CFADFBF7B7D7EF39B31FAEEDEC2C5C7FFFFFFF5F9FCFFFFFF00000000000000000000000021FF0B4E45545343415045322E30030100000021F904050A000B002C00000000640064000004FF';
wwv_flow_imp.g_varchar2_table(2) := '50C949ABBD38EBCDBBFF60288E64699E686A1EC4A1BE7046004160DC78A2EF7AEC8F331B6E8813F08EBD9FF27200109F43A474B7541284D0EC61CAADBE08D9708E4BF69AC0E2F4965C36830ED874984D4FB83B4E79B816302AEA6D7716707A383504041F';
wwv_flow_imp.g_varchar2_table(3) := '803C8215687A01002E258B768D0A4E71509102308B82719A3701894A806E36A98686A55E755502AA9B0097744BAAB8A393B56C3F99AB38B49714B630BF35A306A4C317BD2A57CAD142CBCCCD5D2907D2DA01BBD51681267CDB06DDDEDFD72534D2AAE5E6';
wwv_flow_imp.g_varchar2_table(4) := 'E75325707CB8ADEE19E822C8A9A9C2F61AE01FAECCDBE7AF03BE0FFAF6712B68101E0881030DD463F84F4A88887C287A38A801E2C0891AFFEF59F4406360A4901B1D6E906712244A0C2A35941CD8EFE5068E164C1EB29912C94A9D0178F63CB2C1239F9A';
wwv_flow_imp.g_varchar2_table(5) := '42458EC430735EBBA4D67C66383A0F6A43A94C22D1B4CA21A623AA345C72ADB0D4C295A60BC756C45A61260D1A6A6F96A5F056EBC9B84A895EB0FB16295E62732768ADEBF7AF04AF129A0C8E24B6C280C7032820808C404281C705244C865CA0B282CB94';
wwv_flow_imp.g_varchar2_table(6) := '2F57069D19F463CF6BF5568043981A870299271C189079B2E7CD13602B407099C200D48F5D4CFEFC7B77F1AE6C65B706D0B882EEDCB18D5B861DFBB982E3D7813F963E605781A764032B68D237AC07EBD97D4B1FFE393A76EC9D690F8FBC1B81FDAB8C06';
wwv_flow_imp.g_varchar2_table(7) := '4522DC9CC273EAD10D671AFF6DED4D001F709561769D650ACA955C62E599D7C17FF15576006CEC49F71F7D12BC67E176D66197577E150800C08983F5D721640A9A161F81D7B188D92403F2A6206FC67186DA88545C10E18927DCB7C4014222F7A00427A2';
wwv_flow_imp.g_varchar2_table(8) := '98A46151A9D656925076C22460472A3003942782871762125C89A58A5C89072196CC4D39019712984866615B8A89E49A5A8E8566976B8229144ECAAD69E69C137809659C50F14927738422C2249E14A84926A03C09DA67A185FE85E86A5F32C7284A8E52';
wwv_flow_imp.g_varchar2_table(9) := '30032285DA49D1A4835CB969966A65DA16A79B222265A0A652D0C4A8A95A05AA0CA9A27AA93B007DC002AC88B47067AB17F49A2A73BEBE946B08B50A4BC0AA9FCECA81D100BD122B2CB3FE1C3BC2AECAF64AAD39D69290ADB2DB32E3CC17DFF67AAB29E3';
wwv_flow_imp.g_varchar2_table(10) := 'C250EEAEE7C650CC0FCA62CBC201EDA6F0AE12D822C26E0B0784EBC32B5E08B06F0B04CFDBEF12A7DC216FC1FCD27BB027090B02EDBEF416ECB000FE2AF24935F35AECF0C7F4621C42254978D371C520A72C30C62C77E2720246184172410E379C72BF38';
wwv_flow_imp.g_varchar2_table(11) := 'B7AC73CC3057A2D1CD40AFDCEFCE18F76C74B7F6001D72CE4417EDF4BD36292DF4CA44F7CCB39B2F617C31D34DB37CB4937F099C33D73B5BAD831F6626DA75CB3DA72D42C66EC72DF7DC8D44000021F904050A000B002C0300030050005E000004FF70C9';
wwv_flow_imp.g_varchar2_table(12) := '49ABBD389F757AFE60288A0400040B8A1A2C1B04004108636D7F5BAAEA696A04BF961046B8196B849772D953055DC2282077AC524ECB9DB6070546BF306B354B7EF19CDE56FAEB02886B65B3FCDCECB2EF86E23B838D939B5C6B787701547B12497E4C2A';
wwv_flow_imp.g_varchar2_table(13) := '4A268E8E2F837828870B27587D71311C21020726925F8655999959310A5625A12D6E554996309A7A9527AC943726B23AA5A3950B49A1B8232696B16EB253BF1904C234210AC597B261B4CB180200A122D3D3C7D723CD78C4909727D6E021822C07CFCC8E';
wwv_flow_imp.g_varchar2_table(14) := 'C7279CE936DA42EE1AD2E5CAF437E279F8303C4A16A6DF116D0105EA7A54CCA09584164A3074E3CA61BF89977C59FC257122BA8DBFFF3E61AC08F2DA4800104BBE1139512538011D19BABCC69261CA99AF4C9490F811A798181335FA3CC272E7A6A1878C';
wwv_flow_imp.g_varchar2_table(15) := '3E128A3497D19D4DF77C7A7A34AA2AAA3DADDA806A54EBCF9D60BD563920A3880C7E628D980D9B566D596025DAAA8D5156865C7F75CDDEAD01332F01A67B2BF4CD1B18895FC085250CAE8B3831DCBC8D0B2F2E1B39B002BF7F1D7FB87C58F307CA7F337B';
wwv_flow_imp.g_varchar2_table(16) := 'C640962CE5D1A4659496910A7585D5AB6F6AEE10BA74E5BD30617B704DE1326CD1BC277418FEF7F65EDDC5834FF034BCB972E1C58BB77BCEA1B973EAD687CB769C7D3875E6D95B2BEF3EFD39F80ECCB727CEEE498078DEEDDBA12FAF3CBDFCF6E6E3B717';
wwv_flow_imp.g_varchar2_table(17) := 'E0DEFC7DFE00AA17D8997EFFF5179C02FCB513207FEFA1B6E0830D8EF6E082117A366180156A366102027098407D177A986162017A686202098CB817821CF267628728A6E81A8B30C218638C2ACAA5808736DEE8638E69BDE8E390280249C1873EED48E4';
wwv_flow_imp.g_varchar2_table(18) := '923F1689E2021F46191593543209E595512959E5964F228964535A72492494528A15A698375E59A65767A2B966055F66E9A6945E5A9662956A3E67A41511000021F904050A000B002C030004005E0055000004FF70C949ABBD789D4316F8E0170023201D';
wwv_flow_imp.g_varchar2_table(19) := '4AA6AE6CEB2E041182634DDE753012C7EBFFBEC36C18B2E58EBA0E70C9D4C888459C5447D259AD0065739BE1809ED0A1C7B6A05EAF30AE7AE2CDBAC3D39BA78C3CA3D74D816C1F02873D265375763A784B42316E7C7059311D318066849326862C7A8E8A';
wwv_flow_imp.g_varchar2_table(20) := '6F9B1D3D2C291D8385A385965D897C8B4F3C6A936849A6178EA8A9592886327665746595B14EB48F8ABF1324BB56C71E02B1B38E308F5AC427C801BCD5D5A6CDCD309ED2140A04AFC9D86B1CCD8D31CBDE1707D7E3BC6AE6DA90EB2BC6EE65060600EA4C';
wwv_flow_imp.g_varchar2_table(21) := 'F2F3F55A843BA62F803E5F4BE6390BE8E29A0183050D447B218083C566FD18AE6807F1A13E7DDDFF5EFCC3A85164C493E45C6CE0719143C6922CC29DFC887005B88B3CD2C1FC41C0E3CC902A5AE664B5F307808F481FB6A8B8B265D1251D934E6467B165';
wwv_flow_imp.g_varchar2_table(22) := '8AA73F0EF84CBAA222CBAF2FB1BA389A54DFD4090A36546529964954A41998AA9DDB366159B318E6EAADEBF66E4AB47A2D86E52BF0AE44AA8109F72D5B5343E0038315C7345C21ED63C94B04188E26776E64CC2BDE1EA450B13364D0407A964DE979C367';
wwv_flow_imp.g_varchar2_table(23) := 'D42A0C7B12501AB26DD840364BA8CD1BB7D1BB9568F3BEE5FB85EAA4D878972E1E84F202E1B421BF666EC17974E8D3A95390AD00BB74ED0DEFA2C02E1C7C0BD112BB93CF6E1E3D01F5E4CDB3209B14007CE857E5C735BDEC3E74FD2AE467C1B57AEC0138';
wwv_flow_imp.g_varchar2_table(24) := '2076091468200509362840820BFEF0206D093E18A10F133A98C0852F28A0E18302729881870F26606202218A788187269668A18A2B3478A28930C638E38929D688D68D27EA88018B3CFA88018F26E6E82391340A59199246EA88E4864A7E836494153C49';
wwv_flow_imp.g_varchar2_table(25) := 'E58E443659A395572E0064905D3E0925955FDED8E502626AA9A29867B2796599665E29E69851CE49A79044A2A9A79C53DE89678F50FAA9E486804A20E891841A7A66957B2ECAA0A28E421A61040021F904050A000B002C040003005D0050000004FF70C9';
wwv_flow_imp.g_varchar2_table(26) := '49ABBDF88ACDB3FF60287EC2729C44AAAEE939BE704C09E741D82ACEAE80BA94B2A070A130D56E48DD2ED5232C08BDDE6F4805D16AB66376B96B46A1ADAA78862D275BC8E513FC05B8DD8731F55ADEDAB9AA26931DEDC7E5300A74757567787B6C507D6F';
wwv_flow_imp.g_varchar2_table(27) := '4E80225783667759656B7B6D8B6F8C8E1E821B279184071B2236988A9A9A409C1482A3AFA084A441389AA8A9007FAC3F1C34BE75AB62A6B8B88D9C1CAFBFC9C180C3C4000BD04580BDBDC9A3BB15B7CFD362D5BEBFCCD9139A016ED1D1D0DEDFE002DDE3';
wwv_flow_imp.g_varchar2_table(28) := '15029AE96EE6EA43ECD5F01FB7D1F60104DE054A906FD6BE0F00EC258496D058A082060F7A38708EA13974311410DC584DA0440F16FF2D5E84C191602F8F1F4186F4772F4449011C51A604793161809B0E3F24D8F952E6CC0C07CCDD149A50044F983037';
wwv_flow_imp.g_varchar2_table(29) := 'FE8C4180E8D0919D781E25B85486CD9B574148DD5A3588C8A751B7EEF4D9D543D3A7363D88E559D6EB53B01734AE25DB16E8DBA118D6EEACEBF66ECB097AE9F2C510F46E005D12F42618DCF7AD85C08C83180E50416F64190A26EB527CD9AA610A903BC7';
wwv_flow_imp.g_varchar2_table(30) := '007B13F45AD1324AE30D5044AE58D4A35797263217368CA60B563BB16C1B866C74BC7B3FCA9D9B72E9E0C243AC2EBE0079F20FAA890748FAFA790868C689373F6D1D0476E9266A7747089EF201E7E32F64277EBE7AFA0C000CC80F309F00FAF7E4E8D337';
wwv_flow_imp.g_varchar2_table(31) := '40BFBD7BFC15C4271FAF7FF2F9C7D662005A701381F3C5B1D883CD25A8E0800C46B8D75E1256B0DF7EFC59E86186131C40E1809441082188121030DF8AF7208822052A8E68C05F08BA982187141A63E38B0BC8281F8F18C43822658901498E8F7F19D9A3';
wwv_flow_imp.g_varchar2_table(32) := '8F391929E4884A6A886494133C99239512E04822964FF83823975A0EC8A5803226C9A3885E72E9E59754922923966E8E881890565248A4927552A8A6974DF248C3945CFEF066A044087927A1821A3067A09F8410010021F904050A000B002C0C00030055';
wwv_flow_imp.g_varchar2_table(33) := '005E000004FF70C949ABBD57E98DBBFF60D86D89500A68AAA28AE8BEAF92CCB3699F2B7A08FBDEC2C0206D582AE6523B9EF2C014FC82508C8C58ABDA8E3A1E73BB1544BF92299578C5667B5AEE0E0C148F6926234E95ECA9EF5E76E8CDBF99D176770704';
wwv_flow_imp.g_varchar2_table(34) := '4C4F7A167C7D460A4E4781825C840787888954321A217490849284867A964499503A5C0B5B9D8304796CA234A060694CAAB59360AF09B1875A9EABAB845FAFBB94123CB6049DC14296C4C514C7C0C0C940A2CF2EB4D3C9D42ED6D7D8DBE1DBB720090B7C';
wwv_flow_imp.g_varchar2_table(35) := 'CEDF1802CAE2CB1F89E9EAEBEEE1E41DE6F943F3A5F5DBAD17F29DDBC70F8A827A0BB8053CC75060C128D3128E83D7F0211B710933627068CEE2450200FFB6852440B1A3C72FE14686BC77721EC8972143B67C38282649902C673E6397CCA64C9DFC00F8';
wwv_flow_imp.g_varchar2_table(36) := 'FC09541DCC98448B5E038914A452A34C99267D7AE880D0AB31A95E132A55A8D6675DAFE6FC1A450056AC64299DBD9AF65058A163DB02590B402E1BAB6B49DA8DA2806EDDBD51FC020EEC55680000F20677607B15A062114E193F06227501DBC92F48D62D';
wwv_flow_imp.g_varchar2_table(37) := '8C39B36100875175866CD9F2E1BFA34110381C1A74EA109F590370FCDA02E8DBA66B7F00CD3AB4EE0E0202F4C6FDFBC281D0C8F516B7209CB770E5CB2738971DF77773E1D869173F8E1D3BEAE813BA63870E5E3CF6EABACD0B074F61FA78F6E1D5A37FED';
wwv_flow_imp.g_varchar2_table(38) := 'BE397C09EA03908F9EFFFEEA000B00F81EA67CEB99A75D7A017617E07EC515186080DF2DB75A8202AE47E083159606DE71186208E086027628DC7C98AD668001226A24E189011810228011EA06808B27D2F8608CAF1D57238D360690986204ECD8228FC2';
wwv_flow_imp.g_varchar2_table(39) := 'FD0898893B2629DC819321A9248B2EFEE6649235B688E36353529924837BD534A496548EA858736096B9E36C8F99A9A68B246A25C09A6572B9179C54CAD9259D2CDA39189D01B479A799FA8117265CFEBDD352040021F904050A000B002C120004004F00';
wwv_flow_imp.g_varchar2_table(40) := '5D000004FF70C949AB9D69E5C4BBE7CA258E6469569BA67D2C78BE709CB6F417DFB894A95BED27A19CF0D4FB1983C324653733FE904A65D3698C4A792B0588DA825A5FBB9742EB1474BE6812F9671678D370C99AD67EC7E1734E3BD116DCFF13797B7D80';
wwv_flow_imp.g_varchar2_table(41) := '855A667C7C028B8B8580647D8A8C8E80838C97947F0A979C8D99719B9D989F78A28C76A44AA2079EA968A18BACB17EAEAFB302ACACA8B53997B9B8B4BC56C0B907C6C1C2490ABFCCC9C3B8C6D1ACCE4ACBD0D0C6D4D5D2D2C8DA38D8DCDF43E1DDE342DC';
wwv_flow_imp.g_varchar2_table(42) := 'D2E7BDE9D9EB38EDD3EF31D104C6F6F3F0F7EAF93007F6FF02F6F3173020016F0345ECB30730A109010C0D1E70684262438A24186A248091C43F8DFFFF3A8EB847A064C95D183F6E444951A5C983222FB8348930E6CC923545DE8419B3C2CE9C1D5FBEEC';
wwv_flow_imp.g_varchar2_table(43) := '6941A849A2158E0E453A810000A51C994A30F9B4A45409FFAA3AC52775ABD705402942E4B8F5294B874FD36EBD5A52EDD38952D3BABD7A0080DBA76CE5A6858BB4AEDDB200F2DA1D8C97A9DFC14E01F0254A3871E1BE84092F8E292032E1B3FD2C0F9E2C';
wwv_flow_imp.g_varchar2_table(44) := 'D271E4A84835DB352CFA714F000150AB1ECCB474E017064053F39B7A41E0DB300CE87EEDEC40EDDB8D4F08D04D9C372F02A993ABB69D9BB873CE942A0750FE7BF443E7D80D18CF345D75F7DF2F0264CF2EFB4FDDEFDF57635E70607CF600E5D19C9F4E3F';
wwv_flow_imp.g_varchar2_table(45) := '70751CE2DD3B871F16076AFAE8D5C65F8A0EF9E9E79C69F0FC07E082FF6D870301068E979A3B24E062DB821802C85C14BE45A85F6A962D409F88D39198E17704AC7702841E7A18808830967822837F00D02271F989275E8C318E78A2837054D6628EBAE9';
wwv_flow_imp.g_varchar2_table(46) := 'D8E38B489E988A8D3716C86392190299495D061628638F4FD6A68D53051A6025714F9A38613E6DE958A4974756D5DF3C0045A3621A11000021F904050A000B002C03000B005E0056000004FF70C949ABBD38EB6D13FF60288E94479E682A7AA6EABE29DB';
wwv_flow_imp.g_varchar2_table(47) := 'C274DD2D2C3EDB3C9DCBBDA0CB244B1877C2640878342A9FA05FF308AD6EA658ABF6826D2AB6E049971A0E8F9D65F019997E9EDBDB355C7BFECEABEF3B5431B6EB95797F805D7E824181863D7C848942888D358B59903D7D943C969791639A369C9D3E53';
wwv_flow_imp.g_varchar2_table(48) := '020985A0298BA347A5A6270AA909A3A3AC2F46B1B06CB32BB6B1B92ABBB7BD31B1C3C12802C7C8C7C5ADC7B0C8ABCB1BC9C9D0D119AED3020A0406DDDE0601D616D9C7DBDFDEE1E214E4DA07E7DDE9EA12EC0AEEEFF1F2EC12EFDDF213C707002A5BC0CF';
wwv_flow_imp.g_varchar2_table(49) := 'C0017FF504229310801F018402024A1C08801F007F11334E94C08D1FC60313FF034EB0F74E5E4290120F4E28F8505C3D9011615268784F5D4C983227742C290EA5CF03A5585ABBF9D302CD73F882FD4429C0C2CE732D8311F5D9D428BFA4B396A2C450D1';
wwv_flow_imp.g_varchar2_table(50) := 'A1D403049656BD50102B289F0BD066E8FAEEE22C0161C3820C3B1643410375356D033B97E986A7DFCC42EA1B176C5E0C47CFB9D504B6B05C951C48A2EB161512DCB88E0FAF9D8CAEB2A1CB8DF9861D91181C3CC882B61158BD3A340977346383F33CE732';
wwv_flow_imp.g_varchar2_table(51) := 'EBC6744F70938D4E906DD6AD47A3606B3A5C38DA65802B179EA262EC05C6056BC1BD9C790A010D1B42DF0E3D806628D5818B8411C0F8F6F2DD912769BCE061751B55CD47EF8E3A090100EEC32BBA283F7A7900F5D970DFBC6AF8E5D79E753CF0D7DD82E8';
wwv_flow_imp.g_varchar2_table(52) := '05705135278085DF8404AE76E00210C2404083FE95E76138018E701F00249238207E072228C4011E76D7E1870E3EF49D53239A48218515CED8830000B408E38F1F92D85E8A049668E491134ED85E8850B008E4933DFEE7A0830B5C84E49127E2A823784F';
wwv_flow_imp.g_varchar2_table(53) := '06E9618F5656E9E0956452C864181B76F91F74568E29A495659E78661B697619659B549689E59C7AD439E59D62C2F92699AB6D6988845FB2F9679E575A688D4A6F8E59E5A00FF1F9A81E11000021F904050A000B002C030011005D0050000004FF70C949';
wwv_flow_imp.g_varchar2_table(54) := 'A75035EBCDBBFF20270446689E68DA918621A8702C576C5BCE780E1276FFEAC0E082D7EB098FB86291806CA66A4AA6730A3A286D00AAD6736D05B6600DF17A089B2582AEA17C3603BADFB6592D378F97F5303C0FB65EB37C5A6F4A7181545D80864E7746';
wwv_flow_imp.g_varchar2_table(55) := '8A538345858E400913503652934769579A4D8C5E9E9413903D89A2309515A5366CA829AA0B95AA242C2CAEAFB0B2BB0B970692B927B3BB955EC6C0C120C3C30B3635A7C921B3D3563524D0D11E09DBDCDB04B658D9C2D3DB7EE0D8E21BDDDDD5C7E8E91A';
wwv_flow_imp.g_varchar2_table(56) := 'EBE5BDF4BDEFF014F2F35FFC0BF7F812F455EAD70F60078123E81534A84E9F4285C818067418A062AF8512F33904C0AF63C60C02FF875C1C99E9A3027D18465A0CF00F9E400C1856568C6830A4849933EB7D94E55002C78B335B661318EB004E9C3B6D5A';
wwv_flow_imp.g_varchar2_table(57) := '926931E3C99EA48E56141A8C6805A35203E082F7545E4A1A52A9A2B29AE15BD6ADD9BAAEFB0A362C40B262B20628194D6D37B619E406C05B358100AF1DB0B29CCA529C5F941F38069D4917D5C9BF87B9811831D82247B49A14FCDDBCED2FDF0D66072B06';
wwv_flow_imp.g_varchar2_table(58) := '80599166CE9C637D10004071618E62DB08984DBBB3EA10A2FD892E5DE734EACD9F3D18D5AD1B36EF33BE69D70EFEE11B6C7FAD5B9B564EDDEF8C2CB04503686C86BAF71F3114481F1F5D7A1BDF07BE5FC0C11A76EBD7E6C3CC4E9FFE3B10F1EFCBEBDFA2';
wwv_flow_imp.g_varchar2_table(59) := 'E0007D01F5518744B57EFA45C79D0EFDD1F7DF7FB37D52E083041C970280FE55482180CA5181DD83FA1D6802851586E81F86F56DC1A181DBA518E102CC4DA09988308E28E37AFC11006179361290A38E2BC6A8E301110619A385E9C9C1618E2AAAC8E392';
wwv_flow_imp.g_varchar2_table(60) := '3C02E9648443CAD82215071CD91A133C0EC1E496423E19237879F487A48DDBEDA825973F0AD9258C602A02E49570EE2827975ED659E42B00AAA8659968A6A96688E9BCA0239F7CA269679B812E00649F6BA637A5442FD0264704003B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(30021788191688171)
,p_plugin_id=>wwv_flow_imp.id(30014892204688127)
,p_file_name=>'loading_animation.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
