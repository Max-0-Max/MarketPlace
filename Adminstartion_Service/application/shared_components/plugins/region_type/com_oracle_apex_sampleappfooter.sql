prompt --application/shared_components/plugins/region_type/com_oracle_apex_sampleappfooter
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.SAMPLEAPPFOOTER
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1680648725233372045)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_display_name=>'SoftSuite Applications Footer'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.SAMPLEAPPFOOTER'),'')
,p_javascript_file_urls=>'<p align=center></p>'
,p_css_file_urls=>'<p align=center></p>'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (   p_region in apex_plugin.t_region,',
'                    p_plugin in apex_plugin.t_plugin,',
'                    p_is_printer_friendly in boolean )',
'        return apex_plugin.t_region_render_result is',
'begin',
'    sys.htp.p(''<div class="t-SocialFooter">'');',
'    sys.htp.p(''    <div class="row">'');',
'    sys.htp.p(''        <div class="col col-2 alpha">'');',
'    sys.htp.p(''            <a href="http://www.softalliance.com" target="_blank"style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none; -webkit-text-fill-color: #0D0D67; -webkit-tap-highlight-color: red;">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-home"></span>'');',
'    sys.htp.p(''                        About Us'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="https://www.linkedin.com/company/soft-alliance-and-resource-ltd" target="_blank"style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none; -webkit-text-fill-color: #0077B5; -webkit-tap-highligh'
||'t-color: red;">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-linkedin-square"></span>'');',
'    sys.htp.p(''                        LinkedIn'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="https://plus.google.com/103428477893389570494" target="_blank"style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none; -webkit-text-fill-color: #d34836; -webkit-tap-highlight-color: red;">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-linkedin-square"></span>'');',
'    sys.htp.p(''                        Google+'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');   ',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="https://twitter.com/softallianceltd" target="_blank"style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none; -webkit-text-fill-color: #1DA1F2; -webkit-tap-highlight-color: red;">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-twitter"></span>'');',
'    sys.htp.p(''                        Twitter'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="https://www.facebook.com/softalliance/" target="_blank"style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none; -webkit-text-fill-color: #4267b2; -webkit-tap-highlight-color: red;">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-facebook"></span>'');',
'    sys.htp.p(''                        Facebook'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="https://www.instagram.com/softalliance/"target="_blank"style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none; -webkit-text-fill-color: #9b6954; -webkit-tap-highlight-color: red;">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-instagram"></span>'');',
'    sys.htp.p(''                        Instagram'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''    </div>'');',
'    sys.htp.p(''</div>'');',
'',
'    return null;',
'end render;'))
,p_api_version=>1
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This region plug-in is used to display a custom footer at the bottom of pages with large icons for navigating to other sites such as twitter and linkedin.</p>',
'<p>Note: This plug-in should be customized to meet your specific requirements, rather than used as is.</p>'))
,p_version_identifier=>'5.0.1'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
