prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
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
 p_id=>201
,p_name=>'Application Setup'
,p_step_title=>'Application Setup'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2898818726710113)
,p_plug_name=>'Patch Update'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2898987656710114)
,p_region_id=>wwv_flow_imp.id(2898818726710113)
,p_chart_type=>'pie'
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'slideToLeft'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_no_data_found_message=>'There are no patches available'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2899083253710115)
,p_chart_id=>wwv_flow_imp.id(2898987656710114)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(PATCH_ID),',
'       decode (NVL(APPLY_FLAG,''N''), ''N'',''Not Installed'', ''Y'', ''Installed'', ''P'', ''Patching in Progress'', ''E'', ''Patched with Errors'') Status',
'      from XXADM.XXADM_PATCH_INSTALLER',
'      group by APPLY_FLAG'))
,p_items_value_column_name=>'COUNT(PATCH_ID)'
,p_items_label_column_name=>'STATUS'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6252173883973355)
,p_plug_name=>'Application Setup'
,p_icon_css_classes=>'fa-gears'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9255045117955152)
,p_plug_name=>'Application Setup'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(3141157513544434)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(5491615999166728)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(2947897831981690)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12091897893626067)
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
wwv_flow_imp.component_end;
end;
/
