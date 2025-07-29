prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Dashboard Test'
,p_alias=>'DASHBOARD-TEST'
,p_step_title=>'Dashboard Test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140171989620634274)
,p_plug_name=>'Dashboard'
,p_icon_css_classes=>'fa-dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(151560801219406903)
,p_plug_name=>'Total Loans Issued'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(83768889767043760)
,p_region_id=>wwv_flow_imp.id(151560801219406903)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToRight'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_legend_font_family=>'Helvetica'
,p_legend_font_style=>'normal'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(83769392716043761)
,p_chart_id=>wwv_flow_imp.id(83768889767043760)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) TOTAL_LOANS',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS',
'WHERE COMPANY_ID = :AP_COMPANY_ID',
'AND COMPANY_CODE = :AP_COMPANY_CODE',
'--AND Upper(LOAN_STATUS) = ''DISBURSED'''))
,p_items_value_column_name=>'TOTAL_LOANS'
,p_items_label_column_name=>'TOTAL_LOANS'
,p_items_short_desc_column_name=>'TOTAL_LOANS'
,p_custom_column_name=>'TOTAL_LOANS'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(151562459631406919)
,p_plug_name=>'Total Applied Loans By Loan Types'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(151561704760406912)
,p_plug_name=>'Total Applied Loans By Loan Types'
,p_parent_plug_id=>wwv_flow_imp.id(151562459631406919)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) TOTAL_LOANS, B.PRODUCT_NAME',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS A, XXMRKT.XXMRKT_PRODUCT_LIST B',
'WHERE A.PRODUCT_ID = B.PRODUCT_ID',
'AND A.COMPANY_CODE = :aP_COMPANY_CODE',
'AND A.COMPANY_ID = :AP_COMPANY_ID',
'GROUP BY PRODUCT_NAME',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(83765110528043744)
,p_region_id=>wwv_flow_imp.id(151561704760406912)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToLeft'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'snap'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(83767494224043755)
,p_chart_id=>wwv_flow_imp.id(83765110528043744)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) TOTAL_LOANS, B.PRODUCT_NAME',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS A, XXMRKT.XXMRKT_PRODUCT_LIST B',
'WHERE A.PRODUCT_ID = B.PRODUCT_ID',
'AND A.COMPANY_CODE = :aP_COMPANY_CODE',
'AND A.COMPANY_ID = :AP_COMPANY_ID',
'GROUP BY PRODUCT_NAME',
''))
,p_series_name_column_name=>'PRODUCT_NAME'
,p_items_value_column_name=>'TOTAL_LOANS'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_font_family=>'Helvetica'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(83765612131043751)
,p_chart_id=>wwv_flow_imp.id(83765110528043744)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title_font_family=>'Helvetica'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(83766206016043753)
,p_chart_id=>wwv_flow_imp.id(83765110528043744)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(83766886748043754)
,p_chart_id=>wwv_flow_imp.id(83765110528043744)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(151562530030406920)
,p_plug_name=>'Loans by Status and Types'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(83770342336043762)
,p_region_id=>wwv_flow_imp.id(151562530030406920)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'slideToLeft'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withoutRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>.06
,p_pie_selection_effect=>'highlightAndExplode'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(83770848683043762)
,p_chart_id=>wwv_flow_imp.id(83770342336043762)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  COUNT(*) AS TOTAL_COUNT,',
'  LOAN_STATUS AS STATUS',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS A, XXMRKT.XXMRKT_PRODUCT_LIST B',
'WHERE A.PRODUCT_ID = B.PRODUCT_ID',
'AND A.COMPANY_CODE = :aP_COMPANY_CODE',
'AND A.COMPANY_ID = :AP_COMPANY_ID',
'GROUP BY PRODUCT_NAME,  LOAN_STATUS'))
,p_items_value_column_name=>'TOTAL_COUNT'
,p_items_label_column_name=>'STATUS'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
);
wwv_flow_imp.component_end;
end;
/
