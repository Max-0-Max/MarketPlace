prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'AHOME'
,p_step_title=>'SoftSuite2.0 System Administration'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5538162091166778)
,p_plug_name=>'System Administration'
,p_icon_css_classes=>'fa-gears'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5841740730652737)
,p_plug_name=>'Menu'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_06'
,p_list_id=>wwv_flow_imp.id(5878269569666496)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(5502614162166736)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(303515636493927110)
,p_plug_name=>'User License Percentage Utilization'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(303515743050927111)
,p_region_id=>wwv_flow_imp.id(303515636493927110)
,p_chart_type=>'bar'
,p_title=>'User License Percentage Utilization'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToLeft'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(303515872127927112)
,p_chart_id=>wwv_flow_imp.id(303515743050927111)
,p_seq=>10
,p_name=>'User License Percentage Utilization'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(B.COMPANY_NAME,''GLOBAL'') COMPANY,',
'(SELECT ((TOTAL_NO_OF_EMPLOYEE_USED/TOTAL_NO_OF_EMPLOYEE_LICENSE)) FROM XXSBS.XXSBS_SOFTSUITE_LICENSE_DETAILS B WHERE A.ID = B.ID) PERCENTAGE_USE',
'FROM XXSBS.XXSBS_SOFTSUITE_LICENSE_DETAILS A, XXHRMS.XXHRMS_COMPANYINFO B',
'WHERE A.COMPANY_CODE = B.COMPANY_CODE(+)',
'and (A.COMPANY_CODE = :AP_COMPANY_CODE OR A.COMPANY_CODE IS NULL)',
'ORDER BY 1 ASC'))
,p_items_value_column_name=>'PERCENTAGE_USE'
,p_items_label_column_name=>'COMPANY'
,p_color=>'#4CD964'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(303515983512927113)
,p_chart_id=>wwv_flow_imp.id(303515743050927111)
,p_axis=>'x'
,p_is_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(303516063433927114)
,p_chart_id=>wwv_flow_imp.id(303515743050927111)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'percent'
,p_decimal_places=>2
,p_format_scaling=>'auto'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(303516106736927115)
,p_plug_name=>'User License Allocation vs Usage'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(303516293864927116)
,p_region_id=>wwv_flow_imp.id(303516106736927115)
,p_chart_type=>'bar'
,p_title=>'User License Allocation vs Usage'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToLeft'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(303516308992927117)
,p_chart_id=>wwv_flow_imp.id(303516293864927116)
,p_seq=>10
,p_name=>'User License Allocation vs Usage'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMPANY, LICENSE_TYPE, LICENSE_VALUE',
'FROM',
'(SELECT NVL(B.COMPANY_NAME,''GLOBAL'') COMPANY, ''USED LICENSE'' LICENSE_TYPE, ''1'' SORT,',
'(SELECT TOTAL_NO_OF_EMPLOYEE_USED FROM XXSBS_SOFTSUITE_LICENSE_DETAILS B WHERE A.ID = B.ID) LICENSE_VALUE',
'FROM XXSBS.XXSBS_SOFTSUITE_LICENSE_DETAILS A, XXHRMS.XXHRMS_COMPANYINFO B',
'WHERE A.COMPANY_CODE = B.COMPANY_CODE(+)',
'and (A.COMPANY_CODE = :AP_COMPANY_CODE OR A.COMPANY_CODE IS NULL)',
'UNION',
'SELECT NVL(B.COMPANY_NAME,''GLOBAL'') COMPANY, ''AVAILABLE LICENSE'' LICENSE_TYPE, ''2'' SORT,',
'(SELECT (TOTAL_NO_OF_EMPLOYEE_LICENSE -TOTAL_NO_OF_EMPLOYEE_USED) FROM XXSBS_SOFTSUITE_LICENSE_DETAILS B WHERE A.ID = B.ID) LICENSE_VALUE',
'FROM XXSBS.XXSBS_SOFTSUITE_LICENSE_DETAILS A, XXHRMS.XXHRMS_COMPANYINFO B',
'WHERE A.COMPANY_CODE = B.COMPANY_CODE(+)',
'and (A.COMPANY_CODE = :AP_COMPANY_CODE OR A.COMPANY_CODE IS NULL))',
'ORDER BY COMPANY,SORT ASC'))
,p_series_name_column_name=>'LICENSE_TYPE'
,p_items_value_column_name=>'LICENSE_VALUE'
,p_items_label_column_name=>'COMPANY'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(303516561905927119)
,p_chart_id=>wwv_flow_imp.id(303516293864927116)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
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
 p_id=>wwv_flow_imp.id(303516406430927118)
,p_chart_id=>wwv_flow_imp.id(303516293864927116)
,p_axis=>'x'
,p_is_rendered=>'off'
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
wwv_flow_imp.component_end;
end;
/
