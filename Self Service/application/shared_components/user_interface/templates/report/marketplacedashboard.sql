prompt --application/shared_components/user_interface/templates/report/marketplacedashboard
begin
--   Manifest
--     ROW TEMPLATE: MARKETPLACEDASHBOARD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64153634129320748)
,p_row_template_name=>'MarketPlaceDashboard'
,p_internal_name=>'MARKETPLACEDASHBOARD'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="javainhand #CONTAINER_CLASS#">    ',
'<div class="circle-tile ">',
'        <div class="circle-tile-heading #CLASS1#"><i class="fa #ICON_CLASS#"></i></div>',
'        <div class="circle-tile-content #CLASS2#">',
'          <div class="circle-tile-description text-faded">#TITLE#</div>',
'          <div class="circle-tile-number text-faded ">#DATA#</div>',
'          <a class="circle-tile-footer" onclick="return open_dialog(#LINK#)" id="#LINK#" href="">More Info<i class="fa fa fa-chevron-circle-right"></i></a>',
'        </div>',
'      </div>',
'</div>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_translate_this_template=>'N'
);
wwv_flow_imp.component_end;
end;
/
