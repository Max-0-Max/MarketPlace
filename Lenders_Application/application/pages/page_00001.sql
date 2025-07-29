prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'SoftSuite 2.0: Marketplace'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56407702721590584)
,p_plug_name=>'Dashboard'
,p_icon_css_classes=>'fa-dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67796514320363213)
,p_plug_name=>'Total Loans '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(67796614502363214)
,p_region_id=>wwv_flow_imp.id(67796514320363213)
,p_chart_type=>'pie'
,p_height=>'300'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToRight'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_legend_font_family=>'Helvetica'
,p_legend_font_style=>'normal'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(67796714012363215)
,p_chart_id=>wwv_flow_imp.id(67796614502363214)
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
 p_id=>wwv_flow_imp.id(67797417861363222)
,p_plug_name=>'Total Applied Loans By Loan Types'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
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
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(67797683572363224)
,p_region_id=>wwv_flow_imp.id(67797417861363222)
,p_chart_type=>'bar'
,p_height=>'300'
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
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(67797705625363225)
,p_chart_id=>wwv_flow_imp.id(67797683572363224)
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
 p_id=>wwv_flow_imp.id(67797871228363226)
,p_chart_id=>wwv_flow_imp.id(67797683572363224)
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(67797920935363227)
,p_chart_id=>wwv_flow_imp.id(67797683572363224)
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(67798072709363228)
,p_chart_id=>wwv_flow_imp.id(67797683572363224)
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67798243131363230)
,p_plug_name=>'Loans by Status and Types'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(67798727380363235)
,p_region_id=>wwv_flow_imp.id(67798243131363230)
,p_chart_type=>'donut'
,p_height=>'300'
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'slideToLeft'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withoutRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>.06
,p_pie_selection_effect=>'highlightAndExplode'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(67798813368363236)
,p_chart_id=>wwv_flow_imp.id(67798727380363235)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80239127172938814)
,p_plug_name=>'Total Loans Disbursed'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(80239281703938815)
,p_region_id=>wwv_flow_imp.id(80239127172938814)
,p_chart_type=>'pie'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(80239323763938816)
,p_chart_id=>wwv_flow_imp.id(80239281703938815)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  COUNT(*) AS TOTAL_COUNT,',
'  T.LOAN_TYPE AS LOAN_TYPE',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS A, XXMRKT.XXMRKT_PRODUCT_LIST B, XXMRKT.XXMRKT_LOAN_TYPES T',
'WHERE A.PRODUCT_ID = B.PRODUCT_ID',
'AND A.COMPANY_CODE = :aP_COMPANY_CODE',
'AND A.COMPANY_ID = :AP_COMPANY_ID',
'AND A.LOAN_STATUS = ''DISBURSED''',
'AND T.LOAN_TYPE_ID=B.PRODUCT_TYPE',
'GROUP BY B.PRODUCT_NAME,  T.LOAN_TYPE'))
,p_items_value_column_name=>'TOTAL_COUNT'
,p_items_label_column_name=>'LOAN_TYPE'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'ALL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80239723715938820)
,p_plug_name=>'Delinquency Rate'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(80239826000938821)
,p_region_id=>wwv_flow_imp.id(80239723715938820)
,p_chart_type=>'pie'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'percent'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(80239993133938822)
,p_chart_id=>wwv_flow_imp.id(80239826000938821)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    B.PRODUCT_NAME AS PRODUCT_TYPE,',
'    ',
'    -- Overdue loan count',
'    COUNT(CASE ',
'              WHEN A.END_DATE < SYSDATE AND A.STATUS = ''Unpaid'' ',
'              THEN 1 ',
'         END) AS OVERDUE_COUNT,',
'',
'    -- Total loan count',
'    COUNT(*) AS TOTAL_COUNT,',
'',
'    -- Delinquency Rate = (Overdue Count / Total Count) * 100',
'    ROUND(',
'        COUNT(CASE ',
'                  WHEN A.END_DATE < SYSDATE AND A.STATUS = ''Unpaid'' ',
'                  THEN 1 ',
'             END)  / NULLIF(COUNT(*), 0),',
'        2',
'    ) AS DELINQUENCY_RATE_PERCENT',
'',
'FROM ',
'    XXMRKT.XXMRKT_APPLIED_LOANS_VIEW A',
'JOIN ',
'    XXMRKT.XXMRKT_PRODUCT_LIST B ',
'    ON A.PRODUCT_ID = B.PRODUCT_ID  ',
'WHERE  ',
'    A.COMPANY_CODE = :AP_COMPANY_CODE',
'    AND A.COMPANY_ID = :AP_COMPANY_ID',
'GROUP BY ',
'    B.PRODUCT_NAME;',
''))
,p_items_value_column_name=>'DELINQUENCY_RATE_PERCENT'
,p_items_label_column_name=>'PRODUCT_TYPE'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80240242810938825)
,p_plug_name=>'Repayment Progress'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) AS REPAID_AMOUNT,',
'    NVL(SUM(LV.REPAYMENT_AMOUNT), 0) AS TOTAL_AMOUNT_TO_PAY,',
'    ROUND(',
'        NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) / ',
'        NULLIF(SUM(LV.REPAYMENT_AMOUNT), 0) * 100,',
'        2',
'    ) AS REPAYMENT_PERCENTAGE',
'FROM ',
'    XXMRKT.XXMRKT_APPLIED_LOANS AL',
'JOIN ',
'    XXMRKT.XXMRKT_APPLIED_LOANS_VIEW LV ',
'    ON AL.LOAN_ID = LV.LOAN_ID',
'WHERE ',
'    AL.COMPANY_ID = :AP_COMPANY_ID',
'    AND AL.COMPANY_CODE = :AP_COMPANY_CODE',
'GROUP BY ',
'    AL.LOAN_ID;',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(80240366989938826)
,p_region_id=>wwv_flow_imp.id(80240242810938825)
,p_chart_type=>'bar'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(80240492261938827)
,p_chart_id=>wwv_flow_imp.id(80240366989938826)
,p_seq=>10
,p_name=>'Repaid Amount'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''Amount Repaid'' AS LABEL,',
'    NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) AS REPAID_AMOUNT,',
'    NVL(SUM(LV.REPAYMENT_AMOUNT), 0) AS TOTAL_AMOUNT_TO_PAY,',
'    ROUND(',
'        NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) /',
'        NULLIF(SUM(LV.REPAYMENT_AMOUNT), 0) * 100,',
'        2',
'    ) AS RAW_REPAYMENT_PERCENTAGE, -- keep raw for sorting',
'    CASE ',
'        WHEN ROUND(',
'            NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) /',
'            NULLIF(SUM(LV.REPAYMENT_AMOUNT), 0) * 100, 2) >= 90 THEN ',
'            ''<span style="color:green;font-weight:bold;">'' ||',
'            ROUND(',
'                NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) /',
'                NULLIF(SUM(LV.REPAYMENT_AMOUNT), 0) * 100, 2) || ''%</span>''',
'        WHEN ROUND(',
'            NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) /',
'            NULLIF(SUM(LV.REPAYMENT_AMOUNT), 0) * 100, 2) >= 50 THEN ',
'            ''<span style="color:orange;">'' ||',
'            ROUND(',
'                NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) /',
'                NULLIF(SUM(LV.REPAYMENT_AMOUNT), 0) * 100, 2) || ''%</span>''',
'        ELSE ',
'            ''<span style="color:red;">'' ||',
'            ROUND(',
'                NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) /',
'                NULLIF(SUM(LV.REPAYMENT_AMOUNT), 0) * 100, 2) || ''%</span>''',
'    END AS COLORED_REPAYMENT_PERCENTAGE',
'FROM ',
'    XXMRKT.XXMRKT_APPLIED_LOANS AL',
'JOIN ',
'    XXMRKT.XXMRKT_APPLIED_LOANS_VIEW LV ',
'    ON AL.LOAN_ID = LV.LOAN_ID',
'WHERE ',
'    AL.COMPANY_ID = :AP_COMPANY_ID',
'    AND AL.COMPANY_CODE = :AP_COMPANY_CODE;',
''))
,p_items_value_column_name=>'REPAID_AMOUNT'
,p_items_label_column_name=>'LABEL'
,p_color=>'#000000'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(80240950870938832)
,p_chart_id=>wwv_flow_imp.id(80240366989938826)
,p_seq=>20
,p_name=>'Total Amount'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'     ''Amount To Be Paid'' AS LABEL,',
'    NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) AS REPAID_AMOUNT,',
'    NVL(SUM(LV.REPAYMENT_AMOUNT), 0) AS TOTAL_AMOUNT_TO_PAY,',
'    ROUND(',
'        NVL(SUM(CASE WHEN LV.STATUS = ''Paid'' THEN LV.REPAYMENT_AMOUNT END), 0) /',
'        NULLIF(SUM(LV.REPAYMENT_AMOUNT), 0) * 100,',
'        2',
'    ) AS REPAYMENT_PERCENTAGE',
'FROM ',
'    XXMRKT.XXMRKT_APPLIED_LOANS AL',
'JOIN ',
'    XXMRKT.XXMRKT_APPLIED_LOANS_VIEW LV ',
'    ON AL.LOAN_ID = LV.LOAN_ID',
'WHERE ',
'    AL.COMPANY_ID = :AP_COMPANY_ID',
'    AND AL.COMPANY_CODE = :AP_COMPANY_CODE;',
''))
,p_items_value_column_name=>'TOTAL_AMOUNT_TO_PAY'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(80240815944938831)
,p_chart_id=>wwv_flow_imp.id(80240366989938826)
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(80240767500938830)
,p_chart_id=>wwv_flow_imp.id(80240366989938826)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80241092869938833)
,p_plug_name=>'Overdue Loans'
,p_title=>'Overdue Loans'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) AS TOTAL_COUNT,',
'B.PRODUCT_NAME AS PRODUCT_TYPE',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS_VIEW A',
'JOIN XXMRKT.XXMRKT_PRODUCT_LIST B ON  A.PRODUCT_ID = B.PRODUCT_ID  ',
'WHERE  A.COMPANY_CODE = :aP_COMPANY_CODE',
'AND A.COMPANY_ID = :AP_COMPANY_ID',
'AND A.END_DATE < SYSDATE',
'AND A.STATUS =''Unpaid''',
'GROUP BY B.PRODUCT_NAME',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(80241712999938840)
,p_region_id=>wwv_flow_imp.id(80241092869938833)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(80241874507938841)
,p_chart_id=>wwv_flow_imp.id(80241712999938840)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) AS TOTAL_COUNT,',
'B.PRODUCT_NAME AS PRODUCT_TYPE',
'FROM XXMRKT.XXMRKT_APPLIED_LOANS_VIEW A',
'JOIN XXMRKT.XXMRKT_PRODUCT_LIST B ON  A.PRODUCT_ID = B.PRODUCT_ID  ',
'WHERE  A.COMPANY_CODE = :aP_COMPANY_CODE',
'AND A.COMPANY_ID = :AP_COMPANY_ID',
'AND A.END_DATE < SYSDATE',
'AND A.STATUS =''Unpaid''',
'GROUP BY B.PRODUCT_NAME',
''))
,p_items_value_column_name=>'TOTAL_COUNT'
,p_items_label_column_name=>'PRODUCT_TYPE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'VALUE'
);
wwv_flow_imp.component_end;
end;
/
