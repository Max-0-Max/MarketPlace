prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'My Team'
,p_alias=>'AA1'
,p_step_title=>'My Team'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'button#B33164968000207743{',
'    background-color: lightgrey;',
'    font-weight: bold;        ',
'}',
'',
'',
'img {',
'        border-radius: 15px;',
'}'))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8577094159881013)
,p_plug_name=>'My Team'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43223307495535205)
,p_plug_name=>'All Regions'
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P41_STAFF_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40967914323131053)
,p_plug_name=>'<strong>Assignment Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223307495535205)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43225051771535223)
,p_plug_name=>'<strong>Work Related Details</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(40967914323131053)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85683840996414400)
,p_plug_name=>'<strong>Employment Details</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43225051771535223)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85691445603414408)
,p_plug_name=>'<strong>Assignment Record History</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43225051771535223)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(71748842983555292)
,p_name=>'Assignment Date Track History'
,p_parent_plug_id=>wwv_flow_imp.id(85691445603414408)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select effective_start_date,effective_end_date,updated_columns,updated_by,UPDATED_TIME, attribute2',
'from xxhrms.xxhrms_assignments_f ',
'where person_id = :P41_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10274339411962113)
,p_query_column_id=>1
,p_column_alias=>'EFFECTIVE_START_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10274722142962114)
,p_query_column_id=>2
,p_column_alias=>'EFFECTIVE_END_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10275100759962114)
,p_query_column_id=>3
,p_column_alias=>'UPDATED_COLUMNS'
,p_column_display_sequence=>3
,p_column_heading=>'Updated Columns'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10275546565962114)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Updated By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10275910921962114)
,p_query_column_id=>5
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Date/Time Updated'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10276355883962115)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>6
,p_column_heading=>'Reason for Update'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''UPD_REASON''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''UPD_REASON''',
'order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85753948966414467)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(85691445603414408)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(85755190845414468)
,p_name=>'Change History'
,p_parent_plug_id=>wwv_flow_imp.id(85691445603414408)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPDATED_TIME, effective_start_date start_date, effective_end_date end_date, ins_by UPDATED_BY, UPDATED_COLUMNS,attribute2',
'from xxhrms.xxhrms_assignments_archive where :P41_STAFF_ID = PERSON_ID',
'ORDER BY UPDATED_TIME'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10278166663962116)
,p_query_column_id=>1
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Date/Time Updated'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10278585367962116)
,p_query_column_id=>2
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Start Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10278914571962117)
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'End Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10279392726962117)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Updated By'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10279764075962117)
,p_query_column_id=>5
,p_column_alias=>'UPDATED_COLUMNS'
,p_column_display_sequence=>3
,p_column_heading=>'Updated Columns'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10280124290962117)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>6
,p_column_heading=>'Reason for Update'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''UPD_REASON''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''UPD_REASON''',
'order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85742723736414456)
,p_plug_name=>'<strong>Salary Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43225051771535223)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(130181012604088215)
,p_plug_name=>'<strong>Additional Assignment Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43225051771535223)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.xxhrms_flexfield_def',
'where SOURCE_TABLE = ''XXHRMS_ASSIGNMENTS_F''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'and ACTIVE = ''S'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85657877076414373)
,p_plug_name=>'<strong>Payslip</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(40967914323131053)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14683015561122516)
,p_name=>'Summary'
,p_parent_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  replace(to_char(SUM(NVL(TOTAL_DEDUCTION,0)),''999G999G999G999G990D00''),'' '','''') TOTAL_DEDUCTION, ',
'        replace(to_char(SUM(NVL(NETPAY,0)),''999G999G999G999G990D00''),'' '','''') NETPAY, ',
'        replace(to_char(SUM(NVL(GROSSPAY,0)),''999G999G999G999G990D00''),'' '','''') GROSSPAY,   ',
'        replace(to_char(SUM(NVL(INCOME_TAX,0)),''999G999G999G999G990D00''),'' '','''') INCOME_TAX',
'from xxpay.XXPAY_ARCHIVE_PAY_PROCESSING a',
'where a.COMPANY_CODE = :AP_COMPANY_CODE',
'and PAYMONTH_CODE = :P41_PAYMONTH',
'and PAYRUN = nvl(:P41_PAY_RUN,PAYRUN)',
'and STAFF_ID = :P41_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P41_PAY_RUN,P41_PAYMONTH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10318209850962141)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_DEDUCTION'
,p_column_display_sequence=>3
,p_column_heading=>'Total Deduction'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10318628742962141)
,p_query_column_id=>2
,p_column_alias=>'NETPAY'
,p_column_display_sequence=>4
,p_column_heading=>'Netpay'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10319053457962141)
,p_query_column_id=>3
,p_column_alias=>'GROSSPAY'
,p_column_display_sequence=>1
,p_column_heading=>'Grosspay'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10319499573962141)
,p_query_column_id=>4
,p_column_alias=>'INCOME_TAX'
,p_column_display_sequence=>2
,p_column_heading=>'Income Tax'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14683189788122517)
,p_name=>'Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms_deductions',
'    where COMPANY_CODE = :AP_COMPANY_CODE',
'    and PAYMONTH_CODE = :P41_PAYMONTH',
'	and PAYRUN = nvl(:P41_PAY_RUN,PAYRUN)',
'	and STAFF_ID = :P41_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P41_PAY_RUN,P41_PAYMONTH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10317197448962140)
,p_query_column_id=>1
,p_column_alias=>'AMT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10317594268962140)
,p_query_column_id=>2
,p_column_alias=>'ELEMENT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Element Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14683208037122518)
,p_name=>'Earnings'
,p_parent_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms_benefits',
'    where COMPANY_CODE = :AP_COMPANY_CODE',
'    and PAYMONTH_CODE = :P41_PAYMONTH',
'	and PAYRUN = nvl(:P41_PAY_RUN,PAYRUN)',
'	and STAFF_ID = :P41_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P41_PAY_RUN,P41_PAYMONTH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10316084579962139)
,p_query_column_id=>1
,p_column_alias=>'AMT'
,p_column_display_sequence=>2
,p_column_heading=>'Amount'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10316473388962139)
,p_query_column_id=>2
,p_column_alias=>'ELEMENT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Element Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85665818080414381)
,p_plug_name=>'dleft'
,p_parent_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85757363006414470)
,p_plug_name=>'<strong>Benefits and Deductions</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(40967914323131053)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76969747274095813)
,p_plug_name=>'Non-Gross Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(85757363006414470)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'       AMOUNT,',
'       EFFECTIVE_START_DATE,',
'       EFFECTIVE_END_DATE,',
'       ELEMENT_ID',
'  from XXHRMS.XXHRMS_OTHER_ELT_LOV_AUTO_VIEW',
'where staff_id = :P41_STAFF_ID',
'and AMOUNT > 0',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(effective_start_date) AND NVL(effective_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.g'
||'lobals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(elt_start_date) AND NVL(elt_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_m'
||'ax_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(ass_start_date) AND NVL(ass_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_m'
||'ax_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'order by name,amount;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(76969806948095814)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ODAWODU'
,p_internal_uid=>76969806948095814
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10232090023962084)
,p_db_column_name=>'NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Element Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10232411522962085)
,p_db_column_name=>'AMOUNT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10232831197962085)
,p_db_column_name=>'EFFECTIVE_START_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10233204290962085)
,p_db_column_name=>'EFFECTIVE_END_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10233600985962085)
,p_db_column_name=>'ELEMENT_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Element Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(87511087450479032)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102340'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:AMOUNT:EFFECTIVE_START_DATE:EFFECTIVE_END_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85758151882414471)
,p_plug_name=>'Grade Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(85757363006414470)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'       AMOUNT,',
'       ass_start_date, ',
'       ass_end_date,',
'       ELEMENT_ID,',
'       STATUS',
'  from XXHRMS.XXHRMS_BENEFITS_LOV_AUTO_VIEW',
'where staff_id = :P41_STAFF_ID',
'and AMOUNT > 0',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(effective_start_date) AND NVL(effective_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.g'
||'lobals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(elt_start_date) AND NVL(elt_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_m'
||'ax_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(ass_start_date) AND NVL(ass_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_m'
||'ax_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'order by name,amount;',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(85758578603414472)
,p_name=>'Grade benefit'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'AAJANI'
,p_internal_uid=>85758578603414472
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10234781025962086)
,p_db_column_name=>'NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Element Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10235198737962087)
,p_db_column_name=>'AMOUNT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10235596158962087)
,p_db_column_name=>'ELEMENT_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Element Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10236779985962088)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10235977299962087)
,p_db_column_name=>'ASS_START_DATE'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Effective Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10236342283962087)
,p_db_column_name=>'ASS_END_DATE'
,p_display_order=>26
,p_column_identifier=>'J'
,p_column_label=>'Effective End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(85760606610414474)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102371'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NAME:AMOUNT:STATUS:ASS_START_DATE:ASS_END_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85761514331414475)
,p_plug_name=>'Grade Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(85757363006414470)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>14
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'       AMOUNT,',
'       ass_start_date,',
'       ass_end_date,',
'       ELEMENT_ID,',
'       STATUS',
'  from XXHRMS.XXHRMS_DEDUCT_LOV_AUTO_VIEW',
'where staff_id = :P41_STAFF_ID',
'and AMOUNT > 0',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(effective_start_date) AND NVL(effective_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.g'
||'lobals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(elt_start_date) AND NVL(elt_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_m'
||'ax_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'AND GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_max_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))) between TRUNC(ass_start_date) AND NVL(ass_end_date, GREATEST(TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''),xxpay.globals.get_m'
||'ax_assignments(staff_id ,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))))',
'order by name,amount;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(85761934395414475)
,p_name=>'Grade Deductions'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'AAJANI'
,p_internal_uid=>85761934395414475
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10237818626962089)
,p_db_column_name=>'NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Element Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10238262837962089)
,p_db_column_name=>'AMOUNT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10238687669962089)
,p_db_column_name=>'ELEMENT_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Element Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10239838031962090)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10239053413962089)
,p_db_column_name=>'ASS_START_DATE'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10239411334962090)
,p_db_column_name=>'ASS_END_DATE'
,p_display_order=>26
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(85764020162414476)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102402'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NAME:AMOUNT:STATUS:ASS_START_DATE:ASS_END_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85764905835414477)
,p_plug_name=>'Other Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(85757363006414470)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>12
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from XXHRMS.XXHRMS_emp_benefits',
'  where staff_id = :P41_STAFF_ID',
'  and element_code <> (select basic_salary_code from xxhrms_company_settings where company_code = :AP_COMPANY_CODE)',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8577170534881014)
,p_name=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43777269323852246)
,p_name=>'TRANS_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANS_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43777368401852247)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43777488256852248)
,p_name=>'ELEMENT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ELEMENT_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Element'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       element_id as r',
'  from xxhrms.xxhrms_elements',
'where effective_end_date is null',
'and upper(proccessing_type) = ''OPEN''',
'and upper(classification) = ''EARNING''',
'and element_id <> (select basic_salary_code from xxhrms_company_settings where company_code = :AP_cOMPANY_CODE)',
' order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43777525902852249)
,p_name=>'PRINCIPAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRINCIPAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43777625640852250)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43777713064852251)
,p_name=>'EFFECTIVE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Effective Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH',
  'show', 'button',
  'show_other_months', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43777862001852252)
,p_name=>'EFFECTIVE_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Effective End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43777998995852253)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Inactive',
  'off_value', 'INACTIVE',
  'on_label', 'Active',
  'on_value', 'ACTIVE',
  'use_defaults', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43853251939448904)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43853364965448905)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43853424990448906)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43853516668448907)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43853625725448908)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43853787142448909)
,p_name=>'BATCH_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43853880222448910)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43853942419448911)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43777203823852245)
,p_internal_uid=>43777203823852245
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(43859161036450077)
,p_interactive_grid_id=>wwv_flow_imp.id(43777203823852245)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43859283007450077)
,p_report_id=>wwv_flow_imp.id(43859161036450077)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10417886938156061)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(8577170534881014)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43859733925450081)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43777269323852246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43860245541450085)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43777368401852247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43860712975450087)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43777488256852248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43861280774450089)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43777525902852249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43861748515450091)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43777625640852250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43862217397450094)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43777713064852251)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43862784130450096)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43777862001852252)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43863256455450098)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(43777998995852253)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43863654887450100)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(43853251939448904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43864159036450102)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(43853364965448905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43864648529450104)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(43853424990448906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43865155336450107)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(43853516668448907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43865689369450109)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(43853625725448908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43866131133450111)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(43853787142448909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43879608252534734)
,p_view_id=>wwv_flow_imp.id(43859283007450077)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43853880222448910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85774322972414488)
,p_plug_name=>'Other Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(85757363006414470)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>18
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from XXHRMS.XXHRMS_EMP_DEDUCTIONS',
'  where staff_id = :P41_STAFF_ID',
'  and element_code <> (select basic_salary_code from xxhrms_company_settings where company_code = :AP_COMPANY_CODE)',
'AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8577239404881015)
,p_name=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43855267596448924)
,p_name=>'TRANS_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANS_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43855320773448925)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43855429701448926)
,p_name=>'ELEMENT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ELEMENT_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Element'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       element_id as r',
'  from xxhrms.xxhrms_elements',
'where effective_end_date is null',
'and upper(proccessing_type) = ''OPEN''',
'and upper(classification) LIKE ''%DED%''',
' order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43855556016448927)
,p_name=>'PRINCIPAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRINCIPAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43855709832448928)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43855810108448929)
,p_name=>'EFFECTIVE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Effective Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43855876557448930)
,p_name=>'EFFECTIVE_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Effective End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43855946589448931)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Inactive',
  'off_value', 'INACTIVE',
  'on_label', 'Active',
  'on_value', 'ACTIVE',
  'use_defaults', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43856021593448932)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43856124688448933)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43856212065448934)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43856376740448935)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43856448210448936)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43856525798448937)
,p_name=>'BATCH_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43856874816448940)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43856979522448941)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43855122912448923)
,p_internal_uid=>43855122912448923
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(43938241597225770)
,p_interactive_grid_id=>wwv_flow_imp.id(43855122912448923)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43938351759225770)
,p_report_id=>wwv_flow_imp.id(43938241597225770)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10418342906156065)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(8577239404881015)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43938876588225772)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43855267596448924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43939317346225775)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43855320773448925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43939904016225777)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43855429701448926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43940394834225780)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43855556016448927)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43940869194225782)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43855709832448928)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43941352543225784)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43855810108448929)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43941877542225787)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43855876557448930)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43942361557225789)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(43855946589448931)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43942849964225792)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(43856021593448932)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43943352025225794)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(43856124688448933)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43943824783225796)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(43856212065448934)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43944236828225799)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(43856376740448935)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43944713091225801)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(43856448210448936)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43945223164225803)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(43856525798448937)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43959527631322347)
,p_view_id=>wwv_flow_imp.id(43938351759225770)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43856874816448940)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85783358240414497)
,p_plug_name=>'Available Retro-pay Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(85757363006414470)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>13
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select staff_id,',
'batch_id,',
' amount_old,',
'amount_current,',
'retropay,retro_element_id,element_id,PAYMONTH_CODE',
'from xxhrms.xxhrms_retropay_current_v',
'where run_status=''N''',
'and staff_id= :P41_STAFF_ID',
'order by PAYMONTH_CODE,element_id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(85783737025414498)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'AOTUNLA'
,p_internal_uid=>85783737025414498
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10260348199962104)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&AP_STAFF_ID_LABEL.'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10263127456962106)
,p_db_column_name=>'ELEMENT_ID'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Element Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(20162880087080928)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10261127539962105)
,p_db_column_name=>'AMOUNT_OLD'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10262745724962106)
,p_db_column_name=>'RETRO_ELEMENT_ID'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Retro Element Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(20162880087080928)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10261593619962105)
,p_db_column_name=>'AMOUNT_CURRENT'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'New Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10261946597962105)
,p_db_column_name=>'RETROPAY'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Retropay Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10260791045962105)
,p_db_column_name=>'BATCH_ID'
,p_display_order=>80
,p_column_identifier=>'B'
,p_column_label=>'Batch id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10262330311962106)
,p_db_column_name=>'PAYMONTH_CODE'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Paymonth code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(20164086390080931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(85785901177414499)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102635'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ELEMENT_ID:AMOUNT_OLD:RETRO_ELEMENT_ID:AMOUNT_CURRENT:RETROPAY::PAYMONTH_CODE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43223138740535204)
,p_plug_name=>'<strong>Employee Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223307495535205)
,p_icon_css_classes=>'fa-info-circle-o'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43223931729535212)
,p_plug_name=>'<strong>Personal Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223138740535204)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85708559783414424)
,p_plug_name=>'<strong>Standard Personal Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223931729535212)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85719748994414434)
,p_plug_name=>'<strong>Person Record History</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223931729535212)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(71716968104408794)
,p_name=>'People Date Track History'
,p_parent_plug_id=>wwv_flow_imp.id(85719748994414434)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select effective_start_date,effective_end_date,updated_columns,updated_by,ins_time UPDATED_TIME,attribute2',
'from xxhrms.xxhrms_people_f  ',
'where person_id = :P41_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No History Found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10135196821962005)
,p_query_column_id=>1
,p_column_alias=>'EFFECTIVE_START_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10135587666962006)
,p_query_column_id=>2
,p_column_alias=>'EFFECTIVE_END_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10135946380962006)
,p_query_column_id=>3
,p_column_alias=>'UPDATED_COLUMNS'
,p_column_display_sequence=>3
,p_column_heading=>'Updated Columns'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10136348976962006)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Updated By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10136788571962006)
,p_query_column_id=>5
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Date/Time Updated'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10137107326962007)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>6
,p_column_heading=>'Reason for Update'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''UPD_REASON''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''UPD_REASON''',
'order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(85721335421414436)
,p_name=>'Change History'
,p_parent_plug_id=>wwv_flow_imp.id(85719748994414434)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ins_time UPDATED_TIME, effective_start_date start_date, effective_end_date end_date, ins_by UPDATED_BY, UPDATED_COLUMNS, attribute2',
'from xxhrms.xxhrms_people_archive where :P41_STAFF_ID = PERSON_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No History Found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10137809841962008)
,p_query_column_id=>1
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Date/Time Updated'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138269880962008)
,p_query_column_id=>2
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10138602409962008)
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10139042286962008)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Updated By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10139485550962008)
,p_query_column_id=>5
,p_column_alias=>'UPDATED_COLUMNS'
,p_column_display_sequence=>3
,p_column_heading=>'Updated Columns'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10139891463962009)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>6
,p_column_heading=>'Reason for Update'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''UPD_REASON''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''UPD_REASON''',
'order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(130040331866995556)
,p_plug_name=>'<strong>Additional Personal Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223931729535212)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from xxhrms.xxhrms_flexfield_def',
'where SOURCE_TABLE = ''XXHRMS_PEOPLE_F''',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'and ACTIVE = ''S'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85650465646414365)
,p_plug_name=>'<strong>Work Equipment</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223138740535204)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM XXHRMS.XXHRMS_WORK_EQUIPMENTS ',
'where staff_id = :P41_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43718409696672826)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43718418149672827)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43718525272672828)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''EQUIPMENT_TYPE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EQUIPMENT_TYPE'' ',
'ORDER BY 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43718627073672829)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43718783819672830)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Serial No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43718855334672831)
,p_name=>'DATE_ISSUED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_ISSUED'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Date Issued'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43718958894672832)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''USAGE_STATUS''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''USAGE_STATUS'' ',
'ORDER BY 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43719099939672833)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43719371475672836)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43719474066672837)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43718287150672825)
,p_internal_uid=>43718287150672825
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(43745503406788035)
,p_interactive_grid_id=>wwv_flow_imp.id(43718287150672825)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43745583663788035)
,p_report_id=>wwv_flow_imp.id(43745503406788035)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43746043472788037)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43718409696672826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43746552710788041)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43718418149672827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43747074198788045)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43718525272672828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43747515686788048)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43718627073672829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43748067042788051)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43718783819672830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43748599161788053)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43718855334672831)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43749048111788055)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43718958894672832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43749581364788058)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(43719099939672833)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43754764798801236)
,p_view_id=>wwv_flow_imp.id(43745583663788035)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43719371475672836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85667842855414382)
,p_plug_name=>'<strong>Disciplinary Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223138740535204)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'info_id , person_id , offense_type , offense_description, offence_date, ACTION_TYPE',
'FROM xxhrms.xxhrms_disciplinary_info',
'WHERE PERSON_ID = :P41_STAFF_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43717353494672816)
,p_name=>'INFO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INFO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43717424873672817)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43717600040672818)
,p_name=>'OFFENSE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OFFENSE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Offense Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3284064522980224)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43717675276672819)
,p_name=>'OFFENSE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OFFENSE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Offense Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43717774320672820)
,p_name=>'OFFENCE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OFFENCE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Offence Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43717893689672821)
,p_name=>'ACTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Action Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3281134852980222)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43717985863672822)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43718031741672823)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43717293613672815)
,p_internal_uid=>43717293613672815
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(43735629931716670)
,p_interactive_grid_id=>wwv_flow_imp.id(43717293613672815)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43735719033716670)
,p_report_id=>wwv_flow_imp.id(43735629931716670)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43736214962716671)
,p_view_id=>wwv_flow_imp.id(43735719033716670)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43717353494672816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43736803981716674)
,p_view_id=>wwv_flow_imp.id(43735719033716670)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43717424873672817)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43737291294716676)
,p_view_id=>wwv_flow_imp.id(43735719033716670)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43717600040672818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43737787939716678)
,p_view_id=>wwv_flow_imp.id(43735719033716670)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43717675276672819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43738255945716681)
,p_view_id=>wwv_flow_imp.id(43735719033716670)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43717774320672820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43738778917716683)
,p_view_id=>wwv_flow_imp.id(43735719033716670)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43717893689672821)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43739235746716685)
,p_view_id=>wwv_flow_imp.id(43735719033716670)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43717985863672822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85680004864414397)
,p_plug_name=>'<strong>Dependants</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223138740535204)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'DEPENDANT_NAME, BIRTH_DATE, SEX, RELATION, PHONE_NO, ID,PERSON_ID',
'FROM XXHRMS_DEPENDANTS',
'WHERE PERSON_ID = :P41_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43716257963672805)
,p_name=>'DEPENDANT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPENDANT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dependant Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43716410725672806)
,p_name=>'BIRTH_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BIRTH_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Birth Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43716467221672807)
,p_name=>'SEX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Sex'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48582905201701709)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43716598601672808)
,p_name=>'RELATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RELATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Relation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(20160768244080924)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43716643145672809)
,p_name=>'PHONE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43716768179672810)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43716816358672811)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43716947880672812)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43717126438672814)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43716136108672804)
,p_internal_uid=>43716136108672804
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(43722382458677014)
,p_interactive_grid_id=>wwv_flow_imp.id(43716136108672804)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43722459505677015)
,p_report_id=>wwv_flow_imp.id(43722382458677014)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43722954298677016)
,p_view_id=>wwv_flow_imp.id(43722459505677015)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43716257963672805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43723484781677031)
,p_view_id=>wwv_flow_imp.id(43722459505677015)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43716410725672806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43723989785677034)
,p_view_id=>wwv_flow_imp.id(43722459505677015)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43716467221672807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43724480886677036)
,p_view_id=>wwv_flow_imp.id(43722459505677015)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43716598601672808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43724990596677039)
,p_view_id=>wwv_flow_imp.id(43722459505677015)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43716643145672809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43725470221677041)
,p_view_id=>wwv_flow_imp.id(43722459505677015)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43716768179672810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43728633441679263)
,p_view_id=>wwv_flow_imp.id(43722459505677015)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43716816358672811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43733720415705960)
,p_view_id=>wwv_flow_imp.id(43722459505677015)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43717126438672814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85726928237414441)
,p_plug_name=>'<strong>Contact Information</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223138740535204)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87178037716700239)
,p_plug_name=>'<strong>Suspensions</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223138740535204)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    person_id,',
'    start_date,',
'    end_date,',
'    reason,',
'    number_of_days,',
'    create_date,',
'    created_by,',
'    last_updated_date,',
'    last_updated_by',
'from xxhrms.xxhrms_suspension_mgr',
'where PERSON_ID = :P41_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43719969187672842)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720074374672843)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720115476672844)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720237948672845)
,p_name=>'REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720402842672846)
,p_name=>'NUMBER_OF_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NUMBER_OF_DAYS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Number Of Days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720452195672847)
,p_name=>'CREATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720559957672848)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720677782672849)
,p_name=>'LAST_UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720755886672850)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720844454672851)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43720953801672852)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43721102339672853)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43719753601672840)
,p_internal_uid=>43719753601672840
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(43762643157840122)
,p_interactive_grid_id=>wwv_flow_imp.id(43719753601672840)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43762779059840122)
,p_report_id=>wwv_flow_imp.id(43762643157840122)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43763765094840129)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43719969187672842)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43764291965840131)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43720074374672843)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43764735006840134)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43720115476672844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43765246672840136)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43720237948672845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43765727846840139)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43720402842672846)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43766225705840142)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43720452195672847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43766769923840144)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(43720559957672848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43767254707840147)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(43720677782672849)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43767784253840149)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(43720755886672850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43772458867849012)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(43720844454672851)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43779089231852540)
,p_view_id=>wwv_flow_imp.id(43762779059840122)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43720953801672852)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85655097704414370)
,p_plug_name=>'<strong>Qualifications</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223307495535205)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85677032054414393)
,p_plug_name=>'<strong>Skills</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(85655097704414370)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM XXHRMS.xxhrms_skills',
'WHERE person_id  = :P41_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43988100699644452)
,p_name=>'SKILL_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKILL_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43988190514644453)
,p_name=>'SKILL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKILL_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Skill Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035069659765804)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035152874765805)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035257755765806)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035312982765807)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035481147765808)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035607101765809)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035653599765810)
,p_name=>'YEARS_OF_EXPERIENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'YEARS_OF_EXPERIENCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035712366765811)
,p_name=>'COMPETENCY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPETENCY_LEVEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Competency Level'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''SKILL_LEVEL''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''SKILL_LEVEL''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035842709765812)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44035945227765813)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44036071438765814)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44036206798765815)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43987926955644451)
,p_internal_uid=>43987926955644451
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(44041286380766009)
,p_interactive_grid_id=>wwv_flow_imp.id(43987926955644451)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(44041398963766009)
,p_report_id=>wwv_flow_imp.id(44041286380766009)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44041890403766011)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43988100699644452)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44042371498766015)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43988190514644453)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44042910914766017)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(44035069659765804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44043353736766019)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(44035152874765805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44043838634766022)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(44035257755765806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44044357544766024)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(44035312982765807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44044906215766026)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(44035481147765808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44045406691766028)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(44035607101765809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44045869708766030)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(44035653599765810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44046387650766033)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(44035712366765811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44046831383766035)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(44035842709765812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44047354352766037)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(44035945227765813)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44062233007891534)
,p_view_id=>wwv_flow_imp.id(44041398963766009)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(44036071438765814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85698833424414415)
,p_plug_name=>'<strong>Certifications</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(85655097704414370)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>140
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM xxhrms_qualifications',
' WHERE person_id = :P41_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037142523765825)
,p_name=>'QUALIFICATION_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037238287765826)
,p_name=>'QUALIFICATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qualification Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037326082765827)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037418205765828)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037537864765829)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037706068765830)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037722588765831)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037824019765832)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44037953783765833)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44038074172765834)
,p_name=>'QUALIFICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Qualification Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44038147844765835)
,p_name=>'INSTITUTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTITUTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Institution'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44038295575765836)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44038320636765837)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(44037063169765824)
,p_internal_uid=>44037063169765824
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(44068738406906414)
,p_interactive_grid_id=>wwv_flow_imp.id(44037063169765824)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(44068902311906414)
,p_report_id=>wwv_flow_imp.id(44068738406906414)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44069318027906416)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(44037142523765825)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44069877291906420)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(44037238287765826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44070314810906422)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(44037326082765827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44070820549906424)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(44037418205765828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44071385063906426)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(44037537864765829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44071885644906429)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(44037706068765830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44072388867906431)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(44037722588765831)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44072882356906433)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(44037824019765832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44073394820906436)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(44037953783765833)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44073880840906438)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(44038074172765834)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44074390639906440)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(44038147844765835)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44080097787922322)
,p_view_id=>wwv_flow_imp.id(44068902311906414)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(44038295575765836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85723534207414438)
,p_plug_name=>'<strong>Job History</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(85655097704414370)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from xxhrms.XXHRMS_PREVIOUSJOBS',
'where person_id = :P41_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43985283110644424)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43985357330644425)
,p_name=>'ESTABLISHMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTABLISHMENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Establishment Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43985461101644426)
,p_name=>'PREVIOUS_JOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREVIOUS_JOB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last &AP_JOBTITLE_LABEL.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43985521187644427)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43985639848644428)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43985762556644429)
,p_name=>'LEAVING_REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVING_REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason for Leaving'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>240
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43985864919644430)
,p_name=>'WORK_EXPERIENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_EXPERIENCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43985924340644431)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986094200644432)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986151000644433)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986215174644434)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986312313644435)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986476108644436)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986555673644437)
,p_name=>'EFFECTIVE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986631258644438)
,p_name=>'EFFECTIVE_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986729762644439)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43986840538644440)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43985171090644423)
,p_internal_uid=>43985171090644423
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(44006259365719285)
,p_interactive_grid_id=>wwv_flow_imp.id(43985171090644423)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(44006327046719286)
,p_report_id=>wwv_flow_imp.id(44006259365719285)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44006877686719287)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43985283110644424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44007353831719290)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43985357330644425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44007881435719293)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43985461101644426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44008394733719295)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43985521187644427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44008886171719297)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43985639848644428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44009287722719299)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43985762556644429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44009733714719302)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43985864919644430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44010256180719304)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(43985924340644431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44010754124719306)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(43986094200644432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44011277096719309)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(43986151000644433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44011780911719311)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(43986215174644434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44012260937719313)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(43986312313644435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44012745976719315)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(43986476108644436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44013217612719317)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(43986555673644437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44013713924719320)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(43986631258644438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44022337394756807)
,p_view_id=>wwv_flow_imp.id(44006327046719286)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43986729762644439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85735319731414449)
,p_plug_name=>'<strong>Education</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(85655097704414370)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'from xxhrms.XXHRMS_EDUCTIONAL',
'where person_id = :P41_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43773934170852213)
,p_name=>'TYPE_OF_ESTABLISH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_OF_ESTABLISH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Type of Institution'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(48588300890701712)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43774036336852214)
,p_name=>'ESTABLISH_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTABLISH_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Name of Institution'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43774137366852215)
,p_name=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43774228107852216)
,p_name=>'ATT_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATT_FROM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'PLUGIN_YOTTI.MONTH.YEAR.PLUGIN'
,p_heading=>'Year From'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_03', 'N',
  'attribute_05', 'floatIconRight')).to_clob
,p_is_required=>false
,p_max_length=>4
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43774324996852217)
,p_name=>'ATT_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATT_TO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'PLUGIN_YOTTI.MONTH.YEAR.PLUGIN'
,p_heading=>'Year To'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_03', 'N',
  'attribute_05', 'floatIconRight')).to_clob
,p_is_required=>false
,p_max_length=>4
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43774451644852218)
,p_name=>'QUALIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Qualification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''EDU_QUAL''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EDU_QUAL''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43774578957852219)
,p_name=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P41_STAFF_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43774649359852220)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43774762982852221)
,p_name=>'DISCIPLINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCIPLINE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Discipline'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43858053607448952)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43858155261448953)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43983410766644405)
,p_name=>'INS_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43983480516644406)
,p_name=>'INS_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43983567125644407)
,p_name=>'UPDATED_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43983624361644408)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43983796316644409)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'AP_COMPANY_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43983843910644410)
,p_name=>'EFFECTIVE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43983983977644411)
,p_name=>'EFFECTIVE_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43984037199644412)
,p_name=>'WORKFLOW_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43773908409852212)
,p_internal_uid=>43773908409852212
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(43812529563085579)
,p_interactive_grid_id=>wwv_flow_imp.id(43773908409852212)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43812655748085579)
,p_report_id=>wwv_flow_imp.id(43812529563085579)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43813121356085585)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43773934170852213)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43813681632085598)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43774036336852214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43814072903085600)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43774137366852215)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43814583270085603)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43774228107852216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43815086838085605)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43774324996852217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43815521645085607)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43774451644852218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43816051110085610)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43774578957852219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43816586855085612)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(43774649359852220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43817093386085614)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(43774762982852221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43989243229644659)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43858053607448952)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43995494109680067)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(43983410766644405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43996066900680070)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(43983480516644406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43996647960680073)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(43983567125644407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43997307172680075)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(43983624361644408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43997818086680077)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(43983796316644409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43998508003680080)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(43983843910644410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43999024540680082)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(43983983977644411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43999632000680084)
,p_view_id=>wwv_flow_imp.id(43812655748085579)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(43984037199644412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85671652164414386)
,p_plug_name=>'<strong>Attachments/Documents</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(43223307495535205)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85672067724414387)
,p_plug_name=>'Attachments'
,p_parent_plug_id=>wwv_flow_imp.id(85671652164414386)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  *',
'from xxhrms.xxhrms_documents',
'where staff_id = :P41_STAFF_ID',
'and BLOB_CONTENT is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P41_GET_PRO_VAL'
,p_plug_display_when_cond2=>'N'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44102721618978204)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SUITEUSER'
,p_internal_uid=>44102721618978204
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10217687802962070)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_type=>'NUMBER'
,p_format_mask=>'DOWNLOAD:XXHRMS_DOCUMENTS:BLOB_CONTENT:ID::MIME_TYPE:FILENAME:LAST_UPDATED:CHARACTER_SET:inline:Download:XXHRMS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10218036706962072)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10218458696962072)
,p_db_column_name=>'FILENAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10218840060962072)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'File Size'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10219265664962073)
,p_db_column_name=>'FILE_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'File Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10219649426962073)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10220007583962073)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Document Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10220405863962073)
,p_db_column_name=>'BLOB_CONTENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Blob Content'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10220828513962074)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP,57:P57_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10221288977962074)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10221620088962074)
,p_db_column_name=>'CHARACTER_SET'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Character Set'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10222005538962074)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10222462141962075)
,p_db_column_name=>'INS_TIME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ins Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10222801847962075)
,p_db_column_name=>'INS_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44116997093980738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102232'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MIME_TYPE:ID:FILENAME:FILE_DESCRIPTION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98659918897565033)
,p_plug_name=>'Attachments_1'
,p_parent_plug_id=>wwv_flow_imp.id(85671652164414386)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from xxhrms.xxhrms_documents',
'where staff_id = :P41_STAFF_ID',
'and blob_content is null'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P41_GET_PRO_VAL'
,p_plug_display_when_cond2=>'Y'
,p_prn_content_disposition=>'INLINE'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(98660146734565035)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:89:&SESSION.:&AP_REQUEST.:&DEBUG.:89:P89_DOC_ID:#DOCUMENT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_owner=>'ODAWODU'
,p_internal_uid=>98660146734565035
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10224787338962079)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10225150068962079)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Staff id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10225550894962079)
,p_db_column_name=>'BLOB_CONTENT'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Blob content'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10225978565962079)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Mime type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10226310106962079)
,p_db_column_name=>'FILENAME'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10226761538962080)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Last updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10227180461962080)
,p_db_column_name=>'CHARACTER_SET'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Character set'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10227599716962080)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'File size'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10227926793962081)
,p_db_column_name=>'FILE_DESCRIPTION'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'File description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10228370501962081)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'S'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(51509662563514639)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10228715918962081)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>110
,p_column_identifier=>'T'
,p_column_label=>'EDMS Document ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10229125716962081)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10229514871962082)
,p_db_column_name=>'INS_TIME'
,p_display_order=>130
,p_column_identifier=>'V'
,p_column_label=>'Ins Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10229902047962082)
,p_db_column_name=>'INS_BY'
,p_display_order=>140
,p_column_identifier=>'W'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(104147289408581923)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102303'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENT_ID:DOCUMENT_TYPE:FILENAME::LAST_UPDATED_BY:INS_TIME:INS_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43776053390852234)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75267193491239181)
,p_plug_name=>'My Team'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select x.person_id,',
'       x.full_name,',
'       x.other_id,EMPLOYMENT_STATUS ',
'  from xxhrms.xxhrms_people_f x, xxhrms.xxhrms_assignments_f y',
'where   x.person_id = y.person_id',
'and y.company_code = :AP_COMPANY_CODE',
'and x.company_code = y.company_code ',
'and :AP_STAFF_ID in (SELECT column_value',
'     FROM TABLE(apex_string.split(xxhrms.supervsor_func(x.person_id),'':'')))',
'and TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between x.effective_start_date and NVL(x.effective_End_date,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'and TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between y.effective_start_date and NVL(y.effective_End_date,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'and x.employment_status = ''Active Employee''',
'order by full_name'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_customized=>'1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41:P41_STAFF_ID:&PERSON_ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_box_placeholder', 'Search',
  'search_column', 'FULL_NAME',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '&AP_STAFF_ID_LABEL.: <font color="green">&PERSON_ID.</font><br>',
    '')),
  'text_formatting', '<font color="blue">&FULL_NAME.</font>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85642843304414357)
,p_plug_name=>'<b> Employee Details as at &AP_GLOBAL_DATE.</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>1
,p_plug_query_num_rows=>15
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(40399591239422595)
,p_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_template=>wwv_flow_imp.id(2487513223224052)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT a.person_id, a.full_name, c.GRP_CODE, b.sub_organization_code, a.EMAIL, a.telephone1, a.employment_status',
'        FROM xxhrms.xxhrms_people a, xxhrms.xxhrms_assignments b, xxhrms.XXHRMS_PAYROLL_GRPDET_TAB c',
'     WHERE a.person_id = b.person_id',
'	 and a.company_code=b.company_code',
'	 and a.company_code= :AP_COMPANY_CODE',
'     and b.sub_organization_code = c.LOCATION_ID',
'     and a.person_id = :P41_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10116147208961992)
,p_query_column_id=>1
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Person Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10116504319961993)
,p_query_column_id=>2
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10116988051961993)
,p_query_column_id=>3
,p_column_alias=>'GRP_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Pay Group'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12294425735608620)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10117368065961994)
,p_query_column_id=>4
,p_column_alias=>'SUB_ORGANIZATION_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'&AP_SUBORG_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(274240147809292552)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10117712653961994)
,p_query_column_id=>5
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>5
,p_column_heading=>'Email'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10118165642961994)
,p_query_column_id=>6
,p_column_alias=>'TELEPHONE1'
,p_column_display_sequence=>6
,p_column_heading=>'Telephone'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10118507451961994)
,p_query_column_id=>7
,p_column_alias=>'EMPLOYMENT_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Employment Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40400414278422603)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Search and select an employee from the side column'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P41_STAFF_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43223359443535206)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43223440444535207)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_column=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10122269080961996)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(43223440444535207)
,p_button_name=>'SAVE_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Image'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10110460771961979)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(43776053390852234)
,p_button_name=>'Search_Employee'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10264269681962107)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(43225051771535223)
,p_button_name=>'Save_Assignment'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10125484337961999)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(43223931729535212)
,p_button_name=>'Save_personal'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10309066665962134)
,p_button_sequence=>670
,p_button_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_button_name=>'Print'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Payslip'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10309458281962134)
,p_button_sequence=>660
,p_button_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_button_name=>'Print2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Download Payslip'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10123794606961998)
,p_button_sequence=>10
,p_button_name=>'Date_Track'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Effective Date : &P97_DT_VAL.'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:83:&SESSION.:41:&DEBUG.:RP:P83_CUR_PAGE:39'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-calendar'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10172733329962038)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_button_name=>'Save_contact'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10223631465962077)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85672067724414387)
,p_button_name=>'Add_Attachment'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.:&AP_REQUEST.:&DEBUG.:RP,57:P57_STAFF_ID:&P41_STAFF_ID.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10230760730962082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(98659918897565033)
,p_button_name=>'Add_Attachment_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.:&AP_REQUEST.:&DEBUG.:RP,82:P82_STAFF_ID,P82_REQUEST,P82_REQ:&P41_STAFF_ID.,82,&P41_REQUEST.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10339256845962166)
,p_branch_name=>'Goto Page 84'
,p_branch_action=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:RP,84:P84_PERSON_ID,P84_DT_EMP_ASS,P84_PAGE:&P97_STAFF_ID.,&P97_DT_EMP_ASS.,97&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P41_DT_FLAG'
,p_branch_condition_text=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10110857583961982)
,p_name=>'P41_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43776053390852234)
,p_prompt=>'Search By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''All Employees'' d, ''ALL'' r',
'from dual',
'union all',
'select :AP_STAFF_ID_LABEL d, ''Staff ID'' r',
'from dual',
'union all',
'select :AP_EMP_LBL d, ''Force ID'' r',
'from dual',
'union all',
'select ''Full Name'' d, ''Full Name'' r',
'from dual'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10111278651961984)
,p_name=>'P41_SEARCHID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43776053390852234)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10112218386961989)
,p_name=>'P41_IMAGE_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10112646707961989)
,p_name=>'P41_END'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10113043646961989)
,p_name=>'P41_START'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10113428401961989)
,p_name=>'P41_REQUEST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10113829566961990)
,p_name=>'P41_HIDE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10114234599961990)
,p_name=>'P41_HIRE_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10114683895961990)
,p_name=>'P41_DT_FLAG'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_item_default=>'NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10115073652961990)
,p_name=>'P41_DT_EMP_ASS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_item_default=>'NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10115481919961990)
,p_name=>'P41_POPT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(85642843304414357)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10119594237961995)
,p_name=>'P41_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43223359443535206)
,p_prompt=>'&AP_STAFF_ID_LABEL.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10119938398961995)
,p_name=>'P41_EMP_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43223359443535206)
,p_prompt=>'&AP_FULLNAME_LABEL.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10120347236961995)
,p_name=>'P41_EML'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43223359443535206)
,p_prompt=>'Email Address'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10120706232961996)
,p_name=>'P41_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43223359443535206)
,p_prompt=>'Phone Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10121191368961996)
,p_name=>'P41_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43223359443535206)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10121520491961996)
,p_name=>'P41_BIOMETRIC_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43223359443535206)
,p_prompt=>'Biometric Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10122679014961997)
,p_name=>'P41_PIC_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(43223440444535207)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:110px;height:110px"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'select picture from xxhrms_picture',
    'where staff_id = :P41_STAFF_ID',
    'and company_code= :AP_COMPANY_CODE;')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10123007940961997)
,p_name=>'P41_PIC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(43223440444535207)
,p_display_as=>'NATIVE_FILE'
,p_tag_attributes=>'accept="image/*"'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'NATIVE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10124169681961998)
,p_name=>'P41_DT_VAL'
,p_item_sequence=>10
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10126147756962000)
,p_name=>'P41_TITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Title'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''TITLE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''TITLE''',
'order by 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10126540098962001)
,p_name=>'P41_SURNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Surname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10126920210962001)
,p_name=>'P41_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10127378110962001)
,p_name=>'P41_MID_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Middle Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10127708969962001)
,p_name=>'P41_SEX'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''GENDER''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''GENDER''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10128161984962001)
,p_name=>'P41_MAR_STAT'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Marital Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''MARITAL''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''MARITAL''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Marital Status--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10128570106962001)
,p_name=>'P41_DOB'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Date of Birth'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>18
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_date', '-16y',
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10128942512962002)
,p_name=>'P41_INS_TIME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10129303836962002)
,p_name=>'P41_POB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Place of Birth'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10129777871962002)
,p_name=>'P41_NATION'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_item_default=>'NG'
,p_prompt=>'Nationality'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select counry_name as d,',
'       country_code as r',
'  from xxhrms.XXHRMS_COUNTRIES',
' order by 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10130129917962002)
,p_name=>'P41_STATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'State of Origin'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, STATE_CODE',
'FROM XXHRMS_STATES',
'WHERE COUNTRY_CODE = :P41_NATION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select State--'
,p_lov_cascade_parent_items=>'P41_NATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10130508607962002)
,p_name=>'P41_LOC_GOV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Local Government of Origin'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, LOCAL_GOVT_CODE',
'FROM XXHRMS_LOCAL_GOVT_CODES',
'WHERE STATE_CODE = :P41_STATE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select LGA--'
,p_lov_cascade_parent_items=>'P41_STATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10130959043962002)
,p_name=>'P41_NAT_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'National Identity Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10131392882962002)
,p_name=>'P41_GEN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Genotype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GENOTYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''GENOTYPE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''GENOTYPE'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Genotype--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10131729083962003)
,p_name=>'P41_B_GRP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Blood Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BLOOD GROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''BLOOD_GROUP''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''BLOOD_GROUP'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Blood Group--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10132131317962003)
,p_name=>'P41_MOM_MAID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Mother''s Maiden Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10132523218962004)
,p_name=>'P41_OTH_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'&AP_EMP_LBL.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10132936523962004)
,p_name=>'P41_RELIGION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_prompt=>'Religion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT value_Desc, value_code',
'from xxhrms.xxhrms_lookup_religion_v'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10133378501962004)
,p_name=>'P41_EMP_VER_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(85708559783414424)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10134003110962005)
,p_name=>'P41_PER_START'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(85719748994414434)
,p_prompt=>'Effective Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10134452356962005)
,p_name=>'P41_PER_END'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(85719748994414434)
,p_prompt=>'Effective End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10140539828962010)
,p_name=>'P41_STAFF_ID_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10140979958962010)
,p_name=>'P41_ATTRIBUTE21_NAME_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE21''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10141374986962011)
,p_name=>'P41_ATTRIBUTE10_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE10''    and active = ''S''',
'    and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10141744464962011)
,p_name=>'P41_ATTRIBUTE22_NAME_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE22''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10142151454962011)
,p_name=>'P41_ATTRIBUTE11_NAME_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE11''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10142557679962011)
,p_name=>'P41_ATTRIBUTE23_NAME_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE23''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10142906975962012)
,p_name=>'P41_ATTRIBUTE12_NAME_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE12''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10143346658962012)
,p_name=>'P41_ATTRIBUTE24_NAME_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE24''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10143742399962012)
,p_name=>'P41_ATTRIBUTE13_NAME_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE13''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10144186994962012)
,p_name=>'P41_ATTRIBUTE25_NAME_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE25''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10144593697962012)
,p_name=>'P41_ATTRIBUTE14_NAME_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE14''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10144994493962012)
,p_name=>'P41_ATTRIBUTE26_NAME_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE26''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10145303892962013)
,p_name=>'P41_ATTRIBUTE15_NAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE15''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10145734304962013)
,p_name=>'P41_ATTRIBUTE27_NAME_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE27''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10146102173962013)
,p_name=>'P41_ATTRIBUTE16_NAME_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE16''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10146565129962013)
,p_name=>'P41_ATTRIBUTE28_NAME_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE28''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10146990167962013)
,p_name=>'P41_ATTRIBUTE17_NAME_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE17''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10147337773962013)
,p_name=>'P41_ATTRIBUTE20_NAME_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE20''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10147764004962014)
,p_name=>'P41_ATTRIBUTE18_NAME_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE18''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10148105915962014)
,p_name=>'P41_ATTRIBUTE30_NAME_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' ',
'    and source_column = ''ATTRIBUTE30''',
'    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10148532693962014)
,p_name=>'P41_ATTRIBUTE19_NAME_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' ',
'    and source_column = ''ATTRIBUTE19''',
'    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10148983408962014)
,p_name=>'P41_ROWID_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10149351102962014)
,p_name=>'P41_ATTRIBUTE10'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE10_NAME.'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' ',
'    and source_column = ''ATTRIBUTE10''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>'P41_ATTRIBUTE10_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10149755790962014)
,p_name=>'P41_ATTRIBUTE11_1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE11_NAME.'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE11''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE11_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10150185311962015)
,p_name=>'P41_ATTRIBUTE12_1'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE12_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE12''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE12_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10150531373962015)
,p_name=>'P41_ATTRIBUTE13_1'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE13_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE13''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE13_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10150932543962015)
,p_name=>'P41_ATTRIBUTE14_1'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE14_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE14''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE14_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10151314355962015)
,p_name=>'P41_ATTRIBUTE15_1'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE15_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE15''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE15_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10151764639962015)
,p_name=>'P41_ATTRIBUTE16_1'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE16_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE16''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE16_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10152139635962016)
,p_name=>'P41_ATTRIBUTE17_1'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE17_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE17''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE17_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10152582411962016)
,p_name=>'P41_ATTRIBUTE18_1'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE18_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE18''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE18_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10152908059962016)
,p_name=>'P41_ATTRIBUTE19_1'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE19_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE19''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE19_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10153370600962016)
,p_name=>'P41_ATTRIBUTE20_1'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE20_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE20''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE20_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10153760367962016)
,p_name=>'P41_ATTRIBUTE21_1'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE21_NAME.'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' ',
'    and source_column = ''ATTRIBUTE21''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE21_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10154138836962016)
,p_name=>'P41_ATTRIBUTE22_1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE22_NAME.'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE22''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE22_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10154527572962017)
,p_name=>'P41_ATTRIBUTE23_1'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE23_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE23''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE23_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10154976073962017)
,p_name=>'P41_ATTRIBUTE24_1'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE24_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE24''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE24_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10155398621962017)
,p_name=>'P41_ATTRIBUTE25_1'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE25_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE25''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE25_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10155717761962017)
,p_name=>'P41_ATTRIBUTE26_1'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE26_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE26''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE26_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10156159559962017)
,p_name=>'P41_ATTRIBUTE27_1'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE27_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE27''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE27_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10156514101962018)
,p_name=>'P41_ATTRIBUTE28_1'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE28_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE28''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE28_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10156903751962018)
,p_name=>'P41_ATTRIBUTE30_1'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_prompt=>'&P41_ATTRIBUTE30_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_PEOPLE_F'' and source_column = ''ATTRIBUTE30''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE30_NAME_1'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10157386075962018)
,p_name=>'P41_VER_ID_1'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(130040331866995556)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10173198119962038)
,p_name=>'P41_PER_EML'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Personal Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10173554275962038)
,p_name=>'P41_PER_PHN'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Personal Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10173984677962039)
,p_name=>'P41_OFF_EML'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Work Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10174315680962039)
,p_name=>'P41_OFF_PHN'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Work Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10174722418962039)
,p_name=>'P41_X2'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'<strong>Home Address</strong>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10175161583962039)
,p_name=>'P41_STR_ADR'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Street Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10175527038962039)
,p_name=>'P41_CTR'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select counry_name as d,',
'       country_code as r',
'  from xxhrms.XXHRMS_COUNTRIES',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10175945661962039)
,p_name=>'P41_CNT_STA'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'State'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, STATE_CODE',
'FROM XXHRMS_STATES',
'WHERE COUNTRY_CODE = :P41_CTR'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P41_CTR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10176310936962040)
,p_name=>'P41_CNT_CTY'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'City'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10176722529962040)
,p_name=>'P41_X3'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'<strong>Emergency Contact</strong>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10177177984962041)
,p_name=>'P41_EM_NAME'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10177577918962041)
,p_name=>'P41_REL'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Relationship'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RELATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''RELATION''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''RELATION'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10177959442962041)
,p_name=>'P41_EM_ADR'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10178335457962041)
,p_name=>'P41_EM_PHN'
,p_item_sequence=>145
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10178720093962041)
,p_name=>'P41_EM_CTR'
,p_item_sequence=>175
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select counry_name as d,',
'       country_code as r',
'  from xxhrms.XXHRMS_COUNTRIES',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10179175062962042)
,p_name=>'P41_EM_STA'
,p_item_sequence=>185
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'State'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10179538492962042)
,p_name=>'P41_EM_CTY'
,p_item_sequence=>195
,p_item_plug_id=>wwv_flow_imp.id(85726928237414441)
,p_prompt=>'City'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10224089192962078)
,p_name=>'P41_GET_PRO_VAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85672067724414387)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10264951886962108)
,p_name=>'P41_STAFF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_item_default=>'&P41_STAFF_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10265327862962108)
,p_name=>'P41_EMP_APR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10265725866962108)
,p_name=>'P41_ORG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10266100759962108)
,p_name=>'P41_SUB_ORG'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'&AP_SUBORG_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_SUB_ORGANIZATION',
'WHERE COMPANY_CODE = :AP_COMPANY_CODE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select &AP_SUBORG_LABEL. --'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10266594805962108)
,p_name=>'P41_LOC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'&AP_LOCATION_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, CODE as return_value ',
'  from XXHRMS.XXHRMS_DEP_LOCATION',
'where COMPANY_CODE = :AP_COMPANY_CODE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select &AP_LOCATION_LABEL.--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10266964144962109)
,p_name=>'P41_DEPT'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'&AP_DEPARTMENT_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as display_value, dept_id as return_value ',
'  from XXHRMS.XXHRMS_DEPARTMENT',
'where SUB_ORGAN_CODE = :P41_SUB_ORG',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Department--'
,p_lov_cascade_parent_items=>'P41_SUB_ORG'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10267336305962109)
,p_name=>'P41_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'&AP_UNIT_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UNIT_NAME as display_value, UNIT_ID as return_value ',
'  from XXHRMS.XXHRMS_UNITS',
'where DEPT_CODE = :P41_DEPT',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P41_DEPT'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10267749187962109)
,p_name=>'P41_TTL'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'&AP_JOBTITLE_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, JOB_CODE r',
'from xxhrms.XXHRMS_JOBS',
'where COMPANY_CODE = :AP_COMPANY_CODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10268108469962109)
,p_name=>'P41_POSITION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'&AP_POSITION_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select position_name d, position_code r',
'from xxhrms.xxhrms_positions',
'where company_code = :AP_COMPANY_CODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10268514335962109)
,p_name=>'P41_CAT'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Staff Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''EMP_CAT''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EMP_CAT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10268927859962110)
,p_name=>'P41_TYP'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Employee Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''EMP_TYPE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EMP_TYPE''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10269381229962110)
,p_name=>'P41_HR_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_item_default=>'&P41_HIRE_DATE.'
,p_prompt=>'Hire Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10269798410962110)
,p_name=>'P41_PROM_DT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Date of Last Promotion'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10270100425962110)
,p_name=>'P41_ST_PROB_DT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Probation Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10270561020962110)
,p_name=>'P41_ED_PROB_DT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Probation End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10270930926962111)
,p_name=>'P41_SUP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Supervisor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME d,PERSON_ID r',
'FROM XXHRMS_PEOPLE',
'where PERSON_ID <> :P41_STAFF_ID',
'and ass_status = ''ACTIVE''',
'and company_code = :AP_COMPANY_CODE',
'order by FULL_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Supervisor--'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'NOT_ENTERABLE',
  'initial_fetch', 'FIRST_ROWSET',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10271358810962111)
,p_name=>'P41_STAT'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''ASS_STATUS''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''ASS_STATUS''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Status--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P41_EMP_APR'
,p_read_only_when2=>'NA'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10271714564962111)
,p_name=>'P41_UNION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Union'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'UNIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UNION_NAME d, UNION_NAME r',
'  from XXHRMS.XXHRMS_UNION_SETUP',
'  WHERE COMPANY_CODE = :AP_COMPANY_CODE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Union--'
,p_cHeight=>1
,p_read_only_when=>'P41_EMP_APR'
,p_read_only_when2=>'NA'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10272113631962111)
,p_name=>'P41_INC_MONTH'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_prompt=>'Incremental Month:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''INCREMENTAL_MONTH''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''INCREMENTAL_MONTH''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxadm.xxadm_profile_options',
'where upper(trim(profile_option))=upper(trim(''Auto Grade-Step Increment''))',
'and profile_val=''Y'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10272529689962112)
,p_name=>'P41_ASS_VER_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(85683840996414400)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10273264478962113)
,p_name=>'P41_EMP_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85691445603414408)
,p_prompt=>'Effective Start Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10273605130962113)
,p_name=>'P41_EMP_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85691445603414408)
,p_prompt=>'Effective End Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10277016015962115)
,p_name=>'P41_PER_START_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85753948966414467)
,p_prompt=>'Effective Start Date :'
,p_source=>':P41_EMP_START'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10277479085962116)
,p_name=>'P41_PER_END_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85753948966414467)
,p_prompt=>'Effective End Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10280889551962118)
,p_name=>'P41_SAL_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Salary Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''SAL_TYPE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''SAL_TYPE''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Salary Type--'
,p_lov_null_value=>'OTHER'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10281263355962118)
,p_name=>'P41_SAL_TP_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10281658986962118)
,p_name=>'P41_GRADE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Grade'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select GROUP_NAME||'' - ''||GRADE d, ID r ',
'from XXHRMS.XXHRMS_GRADES_V',
'where ORGANISATION = :AP_COMPANY_CODE',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select One'
,p_cHeight=>1
,p_display_when=>'P41_SAL_TYPE'
,p_display_when2=>'GRADE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10282039433962119)
,p_name=>'P41_GRADE_STEP'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Grade Step'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Step ''||grade_step d, grade_step r',
'  FROM XXHRMS.XXHRMS_GRADE_STEP ',
'WHERE status = ''ACTIVE''',
'  AND GRADE_ID = :P41_GRADE',
'  order by TRANS_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P41_GRADE'
,p_ajax_items_to_submit=>'P41_GRADE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_SAL_TYPE'
,p_display_when2=>'GRADE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10282406282962119)
,p_name=>'P41_JOB_TITLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_item_default=>':P41_TTL '
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'&AP_JOBTITLE_LABEL.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10282857943962119)
,p_name=>'P41_JOBLEVEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Job Level :'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT GRADE_STEP AS ID , ''level ''||aa.GRADE_STEP AS "Job Level Description", TRIM(TO_CHAR(aa.SALARY,''999,999,999,990.00'')) "Annual Basic", TRIM(TO_CHAR(ROUND(aa.SALARY/12,2),''999,999,999,990.00''))  "Monthly Basic"',
'  FROM XXHRMS.XXHRMS_GRADE_STEP aa, XXHRMS.XXHRMS_GRADES bb',
'WHERE aa.GRADE_ID = bb.ID',
'AND bb.CAT_CODE = ''JOB_TITLE''',
'AND bb.JOB_TITLE = :P41_TTL',
'AND bb.status = ''ACTIVE''',
' ORDER BY 1'))
,p_lov_cascade_parent_items=>'P41_TTL'
,p_ajax_items_to_submit=>'P41_ANN_BASIC_SAL,P41_MONTHLY_BASIC_SALARY,P41_ANN_BAS_SAL,P41_MONTHLY_BAS_SAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>17
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'Y',
  'attribute_03', '2,1',
  'attribute_04', '2',
  'attribute_06', '3,4,3,4',
  'attribute_07', 'P41_ANN_BASIC_SAL,P41_MONTHLY_BASIC_SALARY,P41_ANN_BAS_SAL,P41_MONTHLY_BAS_SAL',
  'attribute_08', 'NOT_ENTERABLE',
  'attribute_09', '20',
  'attribute_10', '&nbsp;')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10283213282962120)
,p_name=>'P41_SALARY_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Salary Name :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_colspan=>5
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10283698255962120)
,p_name=>'P41_ANN_BASIC_SAL'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Annual Gross Salary'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align: right;"'
,p_display_when=>'P41_SAL_TYPE'
,p_display_when2=>'GRADE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10284000602962120)
,p_name=>'P41_MONTHLY_BASIC_SALARY'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Monthly Gross Salary'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly="readonly;"'
,p_tag_attributes=>'style="text-align: right;"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_SAL_TYPE'
,p_display_when2=>'GRADE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10284488978962120)
,p_name=>'P41_ANN_BAS_SAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'&AP_ANNUAL_GS_LABEL. :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_cattributes_element=>'readonly="readonly;"'
,p_tag_attributes=>'style="text-align: right;", readonly="readonly"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10284873489962121)
,p_name=>'P41_MONTHLY_BAS_SAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'&AP_MONTHLY_GS_LABEL. :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_cattributes_element=>'readonly="readonly;"'
,p_tag_attributes=>'style="text-align: right;", readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10285214254962121)
,p_name=>'P41_ANN_BAS_SAL_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'&AP_ANNUAL_GS_LABEL. :'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align: right;"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10285677640962121)
,p_name=>'P41_MONTHLY_BAS_SAL_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'&AP_MONTHLY_GS_LABEL. :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align: right;" readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10286084120962122)
,p_name=>'P41_CURRENCY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10286497003962122)
,p_name=>'P41_BANK_NAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Bank Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BANK_NAME as display_value, BANK_CODE as return_value ',
'  from XXHRMS.XXHRMS_BANKS',
'  where company_code = :AP_COMPANY_CODE',
'  and STATUS = ''ACTIVE''',
'  and (CBN_CODE is NOT NULL or CRSPND_BANK_CODE is not null)',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select One'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10286823814962122)
,p_name=>'P41_ACCOUNT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Account Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10287238111962122)
,p_name=>'P41_BVN'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'BVN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cMaxlength=>11
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10287692921962122)
,p_name=>'P41_TAX_STATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'State of Residency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, STATE_CODE',
'FROM XXHRMS_STATES',
'WHERE COUNTRY_CODE = ''NG'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select One--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10288007267962123)
,p_name=>'P41_TAX_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'Tax ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
begin
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10288413773962123)
,p_name=>'P41_PFA'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'PFA Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PFA_NAME as display_value, PFADMIN_ID as return_value ',
'  from XXHRMS.XXHRMS_PFA_ADMIN',
'  where company_code = :AP_COMPANY_CODE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select One'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10288852658962123)
,p_name=>'P41_PFA_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'PFA Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10289210556962123)
,p_name=>'P41_HMO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'HMO Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HOSPITAL_NAME as display_value, HOSPITAL_CODE as return_value ',
'  from XXHRMS.XXHRMS_HOSPITALS',
'  where company_code = :AP_COMPANY_CODE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10289687265962123)
,p_name=>'P41_HMO_ACCT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_prompt=>'HMO Plan'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLAN_NAME||'' - ''||PLAN_AMOUNT d, PLAN_AMOUNT r',
'from XXHRMS.XXHRMS_HMO_PLANS',
'WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'AND HOSPITAL_CODE = :P41_HMO'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P41_HMO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10290061684962124)
,p_name=>'P41_SAL_INS_TIME'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10290421749962124)
,p_name=>'P41_SAL_MSG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10290837242962124)
,p_name=>'P41_COLUMN_UPDATED'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(85742723736414456)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10291544490962125)
,p_name=>'P41_STAFF_ID_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10291964544962125)
,p_name=>'P41_ATTRIBUTE11_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE11''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10292376371962125)
,p_name=>'P41_ATTRIBUTE12_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE12''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10292726075962125)
,p_name=>'P41_ATTRIBUTE13_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE13''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10293116753962125)
,p_name=>'P41_ATTRIBUTE14_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE14''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10293516812962126)
,p_name=>'P41_ATTRIBUTE15_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE15''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10293907096962126)
,p_name=>'P41_ATTRIBUTE16_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE16''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10294340054962126)
,p_name=>'P41_ATTRIBUTE17_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE17''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10294784855962126)
,p_name=>'P41_ATTRIBUTE18_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE18''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10295195159962126)
,p_name=>'P41_ATTRIBUTE19_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' ',
'    and source_column = ''ATTRIBUTE19''',
'    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10295518704962127)
,p_name=>'P41_ATTRIBUTE20_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE20''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10295972394962127)
,p_name=>'P41_ATTRIBUTE21_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE21''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10296309840962127)
,p_name=>'P41_ATTRIBUTE22_NAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE22''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10296758377962127)
,p_name=>'P41_ATTRIBUTE23_NAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE23''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10297112988962127)
,p_name=>'P41_ATTRIBUTE24_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE24''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10297501550962128)
,p_name=>'P41_ATTRIBUTE25_NAME'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE25''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10297967117962128)
,p_name=>'P41_ATTRIBUTE26_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE26''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10298338318962128)
,p_name=>'P41_ATTRIBUTE27_NAME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE27''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10298782319962128)
,p_name=>'P41_ATTRIBUTE28_NAME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE28''    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10299186655962128)
,p_name=>'P41_ATTRIBUTE29_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' ',
'    and source_column = ''ATTRIBUTE29''',
'    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10299502430962129)
,p_name=>'P41_ATTRIBUTE30_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' ',
'    and source_column = ''ATTRIBUTE30''',
'    and active = ''S''',
'and company_code = :AP_COMPANY_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10299988797962129)
,p_name=>'P41_VER_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name',
'	from xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' ',
'    and source_column = ''ATTRIBUTE30''',
'    and active = ''S'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10300377748962129)
,p_name=>'P41_ROWID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10300700219962129)
,p_name=>'P41_ATTRIBUTE11'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE11_NAME.'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE11''',
'    and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE11_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10301172317962129)
,p_name=>'P41_ATTRIBUTE12'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE12_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE12''',
'    and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE12_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10301514499962130)
,p_name=>'P41_ATTRIBUTE13'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE13_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE13''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE13_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10301992297962130)
,p_name=>'P41_ATTRIBUTE14'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE14_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE14''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE14_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10302374692962130)
,p_name=>'P41_ATTRIBUTE15'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE15_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE15''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE15_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10302736196962130)
,p_name=>'P41_ATTRIBUTE16'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE16_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE16''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE16_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10303141353962130)
,p_name=>'P41_ATTRIBUTE17'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE17_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE17''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE17_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10303586984962131)
,p_name=>'P41_ATTRIBUTE18'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE18_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE18''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE18_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10303980842962131)
,p_name=>'P41_ATTRIBUTE19'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE19_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE19''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE19_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10304397224962131)
,p_name=>'P41_ATTRIBUTE20'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE20_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE20''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE20_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10304790200962131)
,p_name=>'P41_ATTRIBUTE21'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE21_NAME.'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' ',
'    and source_column = ''ATTRIBUTE21''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE21_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10305150681962132)
,p_name=>'P41_ATTRIBUTE22'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE22_NAME.'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE22''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE22_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10305527982962132)
,p_name=>'P41_ATTRIBUTE23'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE23_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE23''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE23_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10305992145962132)
,p_name=>'P41_ATTRIBUTE24'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE24_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE24''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE24_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10306374735962132)
,p_name=>'P41_ATTRIBUTE25'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE25_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE25''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE25_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10306726060962132)
,p_name=>'P41_ATTRIBUTE26'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE26_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE26''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE26_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10307166304962133)
,p_name=>'P41_ATTRIBUTE27'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE27_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE27''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE27_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10307537345962133)
,p_name=>'P41_ATTRIBUTE28'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE28_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE28''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE28_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10307945681962133)
,p_name=>'P41_ATTRIBUTE29'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE29_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE29''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P41_ATTRIBUTE29_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10308341568962134)
,p_name=>'P41_ATTRIBUTE30'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(130181012604088215)
,p_prompt=>'&P41_ATTRIBUTE30_NAME. :'
,p_display_as=>'PLUGIN_ES.RELATIONAL.JOSEPCOVES.FLEXFIELD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	NAME,',
'		DESCRIPTION,',
'		TYPE,',
'		LOV,',
'		NULLABLE,',
'		FLEX_SIZE,',
'		MAX_LENGTH,',
'		HEIGHT,',
'		HTML_ATTRIBUTES,',
'		LOV_SQL',
'	FROM xxhrms.xxhrms_flexfield_def',
'	where source_table = ''XXHRMS_ASSIGNMENTS_F'' and source_column = ''ATTRIBUTE29''',
'and company_code = :AP_COMPANY_CODE'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P41_ATTRIBUTE29_NAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10309815242962135)
,p_name=>'P41_PAYMONTH'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_prompt=>'Period Ending'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct PAYMONTHS as display_value, PAYMONTH_CODE as return_value ',
'  from XXPAY.XXPAY_PAYRUN_LOG',
'where COMPANY_CODE = :P41_ORG',
' order by PAYMONTH_CODE DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select One'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10310217795962135)
,p_name=>'P41_PAY_RUN'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_prompt=>'Payrun'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT d.value_desc d, a.payrun r',
'    FROM xxpay.xxpay_payrun_log a,XXHRMS_LOOKUP_PAY_RUN_V d',
'    where a.paymonth_code=:P41_PAYMONTH',
'    and a.payrun=d.value_code',
' AND paymonth_code in (select paymonth_code ',
'                               from xxpay.xxpay_enable_payslip  ',
'                               where PAYSLIP_ENABLED = ''Y'' ',
'                               AND COMPANY_CODE = :SS_COMPANY_CODE',
'                              )',
'         and  NVL (xxadm.GET_PROFILE_OPTION(''PAYSLIP_CNTL'',:SS_COMPANY_CODE), ''N'') = ''Y'' '))
,p_lov_cascade_parent_items=>'P41_PAYMONTH'
,p_ajax_items_to_submit=>'P41_PAYMONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10310618151962135)
,p_name=>'P41_PRD'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10311019536962135)
,p_name=>'P41_URL'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10311426847962135)
,p_name=>'P41_JASPER_URL'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_url varchar2(200);',
'  --',
'  CURSOR c_url IS',
'    select ''http://''||report_server_host||'':''||report_server_port||''/JasperReportsIntegration/report?_dataSource=''||report_datasource||''&_repLocale=en_US&_repName=payslip'' rep_url',
'from xxhrms_report_init',
'where report_server_name=''xxhrms'';',
'begin',
'  OPEN c_url;',
'  FETCH c_url INTO v_url;',
'  CLOSE c_url;',
'  RETURN v_url;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10311825749962136)
,p_name=>'P41_REP_NAME'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_source=>'payslip'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10312211054962136)
,p_name=>'P41_FORMAT'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10312693035962136)
,p_name=>'P41_PARAMS'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10313091931962137)
,p_name=>'P41_PP'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10313426451962137)
,p_name=>'P41_DUMMY'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10313892163962137)
,p_name=>'P41_DUMMY2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(85657877076414373)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10314526213962138)
,p_name=>'P41_TOTAL_EARNINGS'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(85665818080414381)
,p_prompt=>'Gross Earnings(NGN)  :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align: right;", readonly="readonly"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10314925165962138)
,p_name=>'P41_TOTAL_DEDUCTIONS'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(85665818080414381)
,p_prompt=>'Total Deductions(NGN)  :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align: right;"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10315310835962138)
,p_name=>'P41_TOTAL_NET_PAY'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(85665818080414381)
,p_prompt=>'Net Earnings(NGN) :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align: right;"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10185731940962046)
,p_tabular_form_region_id=>wwv_flow_imp.id(87178037716700239)
,p_validation_name=>'Existing Suspension'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from xxhrms.xxhrms_suspension_mgr',
'where person_id= :PERSON_ID',
'and :start_date between start_date and end_date',
'AND :APEX$ROW_STATUS not in (''D'',''U'')'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'A suspension exists within this period.'
,p_associated_column=>'START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10320856845962150)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'select 1 from dual where nvl(length(:P41_ACCOUNT),null) = 10'
,p_validation_type=>'EXISTS'
,p_error_message=>'Account Number must be 10 Digits'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(10286823814962122)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10248033538962096)
,p_tabular_form_region_id=>wwv_flow_imp.id(85764905835414477)
,p_validation_name=>'Must be 1st Day of the Month'
,p_validation_sequence=>30
,p_validation=>'select 1 from dual where to_char(to_date(:EFFECTIVE_START_DATE,''DD-MON-RR''),''DD'') = 1'
,p_validation_type=>'EXISTS'
,p_error_message=>'#COLUMN_HEADER# must be the first day of the month.'
,p_associated_column=>'EFFECTIVE_START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10249253465962097)
,p_tabular_form_region_id=>wwv_flow_imp.id(85764905835414477)
,p_validation_name=>'Overlapping Element'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_EMP_BENEFITS ',
'where company_code = :COMPANY_CODE',
'and element_code = :element_code',
'and staff_id = :staff_id',
'AND STATUS = ''ACTIVE''',
'and to_date(:EFFECTIVE_START_DATE,''DD-MON-RR'') between EFFECTIVE_START_DATE and nvl(EFFECTIVE_END_DATE,SYSDATE)',
'AND TRANS_CODE !=  NVL(:TRANS_CODE,0)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'There is an active entry for the selected element. Change the date or update the previous record'
,p_associated_column=>'EFFECTIVE_START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10249619401962097)
,p_tabular_form_region_id=>wwv_flow_imp.id(85764905835414477)
,p_validation_name=>'Future Record Exists'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_EMP_BENEFITS ',
'where company_code = :COMPANY_CODE',
'and element_code = :element_code',
'and staff_id = :staff_id',
'AND STATUS = ''ACTIVE''',
'and to_date(:EFFECTIVE_START_DATE,''DD-MON-RR'')<= EFFECTIVE_START_DATE',
'AND TRANS_CODE !=  NVL(:TRANS_CODE,0)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'There is an future entry for the selected element. Change the date or update the previous record'
,p_associated_column=>'EFFECTIVE_START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10248418298962096)
,p_tabular_form_region_id=>wwv_flow_imp.id(85764905835414477)
,p_validation_name=>'Must be Last day of the month'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual ',
'where last_day(TRUNC(to_date(:EFFECTIVE_END_DATE,''DD-MON-RR''))) = TRUNC(to_date(:EFFECTIVE_END_DATE,''DD-MON-RR''))'))
,p_validation_type=>'EXISTS'
,p_error_message=>'#COLUMN_HEADER# must be last day of the month.'
,p_validation_condition=>'EFFECTIVE_END_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'EFFECTIVE_END_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10248851014962097)
,p_tabular_form_region_id=>wwv_flow_imp.id(85764905835414477)
,p_validation_name=>'End Date must be greater than Start Date'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual ',
'where TRUNC(to_date(:EFFECTIVE_START_DATE,''DD-MON-RR'')) < TRUNC(to_date(:EFFECTIVE_END_DATE,''DD-MON-RR''))'))
,p_validation_type=>'EXISTS'
,p_error_message=>'#COLUMN_HEADER# must be greater than the Start Date'
,p_validation_condition=>'EFFECTIVE_END_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'EFFECTIVE_END_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10257748033962103)
,p_tabular_form_region_id=>wwv_flow_imp.id(85774322972414488)
,p_validation_name=>'Must be First Day of the Month'
,p_validation_sequence=>80
,p_validation=>'select 1 from dual where to_char(to_date(:EFFECTIVE_START_DATE,''DD-MON-RR''),''DD'') = 1'
,p_validation_type=>'EXISTS'
,p_error_message=>'#COLUMN_HEADER# must be the first day of the month.'
,p_associated_column=>'EFFECTIVE_START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10258197323962103)
,p_tabular_form_region_id=>wwv_flow_imp.id(85774322972414488)
,p_validation_name=>'Overlapping Elements'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_EMP_DEDUCTIONS',
'where company_code = :COMPANY_CODE',
'and element_code = :element_code',
'and staff_id = :staff_id',
'AND STATUS = ''ACTIVE''',
'and to_date(:EFFECTIVE_START_DATE,''DD-MON-RR'') between EFFECTIVE_START_DATE and nvl(EFFECTIVE_END_DATE,SYSDATE)',
'AND TRANS_CODE !=  NVL(:TRANS_CODE,0)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'There is an active entry for the selected element. Change the date or update the previous record'
,p_associated_column=>'EFFECTIVE_START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10258508705962103)
,p_tabular_form_region_id=>wwv_flow_imp.id(85774322972414488)
,p_validation_name=>'Future Record Found'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.XXHRMS_EMP_DEDUCTIONS ',
'where company_code = :COMPANY_CODE',
'and element_code = :element_code',
'and staff_id = :staff_id',
'AND STATUS = ''ACTIVE''',
'and to_date(:EFFECTIVE_START_DATE,''DD-MON-RR'')<= EFFECTIVE_START_DATE',
'AND TRANS_CODE !=  NVL(:TRANS_CODE,0)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'There is an future entry for the selected element. Change the date or update the previous record'
,p_associated_column=>'EFFECTIVE_START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10258961870962103)
,p_tabular_form_region_id=>wwv_flow_imp.id(85774322972414488)
,p_validation_name=>'Last Day f the Month'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual ',
'where last_day(TRUNC(to_date(:EFFECTIVE_END_DATE,''DD-MON-RR''))) = TRUNC(to_date(:EFFECTIVE_END_DATE,''DD-MON-RR''))'))
,p_validation_type=>'EXISTS'
,p_error_message=>'#COLUMN_HEADER# must be last day of the month.'
,p_validation_condition=>'EFFECTIVE_END_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'EFFECTIVE_END_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10259398021962104)
,p_tabular_form_region_id=>wwv_flow_imp.id(85774322972414488)
,p_validation_name=>'End Date must be Greater'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual ',
'where TRUNC(to_date(:EFFECTIVE_START_DATE,''DD-MON-RR'')) < TRUNC(to_date(:EFFECTIVE_END_DATE,''DD-MON-RR''))'))
,p_validation_type=>'EXISTS'
,p_error_message=>'#COLUMN_HEADER# must be greater than the Start Date'
,p_validation_condition=>'EFFECTIVE_END_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'EFFECTIVE_END_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10326298378962158)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SEARCH'
,p_condition_element=>'P41_SEARCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ALL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10326774805962159)
,p_event_id=>wwv_flow_imp.id(10326298378962158)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_SEARCHID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10327202312962159)
,p_event_id=>wwv_flow_imp.id(10326298378962158)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_SEARCHID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10327706933962159)
,p_event_id=>wwv_flow_imp.id(10326298378962158)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_SEARCHID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10328285135962159)
,p_event_id=>wwv_flow_imp.id(10326298378962158)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_SEARCHID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10328670312962160)
,p_name=>'New'
,p_event_sequence=>11
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10329172194962160)
,p_event_id=>wwv_flow_imp.id(10328670312962160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P41_SEARCH = ''ALL'' THEN',
'--    :P41_SEARCHID := NULL;',
'--  END IF;',
'NULL;',
'END;'))
,p_attribute_02=>'P41_SEARCH'
,p_attribute_03=>'P41_SEARCHID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10329577724962160)
,p_name=>'Show Grade'
,p_event_sequence=>21
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SAL_TYPE'
,p_condition_element=>'P41_SAL_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'GRADE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10330045094962160)
,p_event_id=>wwv_flow_imp.id(10329577724962160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_GRADE,P41_GRADE_STEP'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10330552202962160)
,p_event_id=>wwv_flow_imp.id(10329577724962160)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_GRADE,P41_GRADE_STEP'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10330932568962161)
,p_name=>'Set Monthly Value'
,p_event_sequence=>31
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_ANN_BASIC_SAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10331477652962161)
,p_event_id=>wwv_flow_imp.id(10330932568962161)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_MONTHLY_BASIC_SALARY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select round(:P41_ANN_BASIC_SAL/12,2) from dual'
,p_attribute_07=>'P41_ANN_BASIC_SAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10331852268962161)
,p_name=>'Set Annual Value'
,p_event_sequence=>41
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_GRADE_STEP'
,p_condition_element=>'P41_GRADE_STEP'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10332319842962161)
,p_event_id=>wwv_flow_imp.id(10331852268962161)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_ANN_BASIC_SAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(SALARY,0) from xxhrms.XXHRMS_GRADE_STEP',
'         where GRADE_ID	 = :P41_GRADE',
'         and GRADE_STEP = :P41_GRADE_STEP;'))
,p_attribute_07=>'P41_GRADE,P41_GRADE_STEP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10332749277962162)
,p_name=>'New_1'
,p_event_sequence=>51
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(85764905835414477)
,p_triggering_element=>'INS_BY'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'INS_BY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10333290553962162)
,p_event_id=>wwv_flow_imp.id(10332749277962162)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EFFECTIVE_START_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10333658705962162)
,p_name=>'New_2'
,p_event_sequence=>61
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(85774322972414488)
,p_triggering_element=>'INS_BY'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'INS_BY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10334140472962162)
,p_event_id=>wwv_flow_imp.id(10333658705962162)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EFFECTIVE_START_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10334539003962162)
,p_name=>'Payslip'
,p_event_sequence=>71
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_PAY_RUN'
,p_condition_element=>'P41_PAYMONTH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10335082339962163)
,p_event_id=>wwv_flow_imp.id(10334539003962162)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c_summary is',
'select TRIM(TO_CHAR(sum(earning_result_value),''999,999,999,990.00'')), TRIM(TO_CHAR(sum(deduction_result_value),''999,999,999,990.00'')), TRIM(TO_CHAR(sum(earning_result_value) - sum(deduction_result_value),''999,999,999,990.00''))',
' from (SELECT x. staff_id, x.paymonth_code, x.element_name, earnings_desc, earning_result_value, '' '' space, deduction_desc, deduction_result_value FROM',
'( SELECT ROWNUM idx, d.*',
'FROM',
'(SELECT DISTINCT staff_id, paymonth_code,b.element_name ',
'            ,    INITCAP(SUBSTR(DECODE(earning_or_deduction,''E'',b.element_name),0,30))            EARNINGS_DESC',
'            ,    DECODE(earning_or_deduction,''E'',b.amt)                  EARNING_RESULT_VALUE',
'         FROM xxpay.xxpay_payroll_analysis_v b',
'        WHERE b.paymonth_code = :P41_PAYMONTH',
'          AND b.staff_id = :P41_STAFF_ID ',
'          AND earning_or_deduction =''E''',
'          AND payrun = NVL(:P41_PAY_RUN, payrun)',
'ORDER BY b.element_name) d',
') x FULL OUTER JOIN',
'(',
'SELECT ROWNUM idx, c.*',
'FROM',
'(SELECT  staff_id, paymonth_code, b.element_name, INITCAP(SUBSTR(DECODE(earning_or_deduction,''D'',b.element_name),0,30))            DEDUCTION_DESC',
'            ,    DECODE(earning_or_deduction,''D'',b.amt)                  DEDUCTION_RESULT_VALUE',
'         FROM xxpay.xxpay_payroll_analysis_v b',
'        WHERE b.paymonth_code = :P41_PAYMONTH',
'          AND b.staff_id = :P41_STAFF_ID ',
'          AND earning_or_deduction = ''D''',
'          AND payrun = NVL(:P41_PAY_RUN, payrun)',
'ORDER BY b.element_name) c',
') y',
' ON x.idx = y.idx);',
'begin',
'  OPEN c_summary;',
'  FETCH c_summary ',
'   INTO :P41_TOTAL_EARNINGS, :P41_TOTAL_DEDUCTIONS, :P41_TOTAL_NET_PAY;',
'  CLOSE c_summary;',
'end;',
''))
,p_attribute_02=>'P41_PAYMONTH,P41_STAFF_ID,P41_PAY_RUN'
,p_attribute_03=>'P41_TOTAL_EARNINGS,P41_TOTAL_DEDUCTIONS,P41_TOTAL_NET_PAY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10335415327962163)
,p_name=>'PRINT PAYSLIP'
,p_event_sequence=>81
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10309458281962134)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10335943904962164)
,p_event_id=>wwv_flow_imp.id(10335415327962163)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.APEXRND.AOP_DA'
,p_attribute_04=>'pdf'
,p_attribute_05=>'SQL'
,p_attribute_06=>'APEX'
,p_attribute_07=>'Payslip_Template.docx'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'''file1'' "filename", ',
'cursor( ',
'        select a.STAFF_ID,',
'        a.P_MONTH,a.FULL_NAME, GRADE_STEP,ACC_NO Account_Number,PIN_NO,TAX_ID, to_char(HIRE_DATE,''DD-MON-YYYY'') HIRE_DATE,',
'        replace(to_char(TOTAL_DEDUCTION,''999G999G999G999G990D00''),'' '','''') TOTAL_DEDUCTION, ',
'        replace(to_char(NETPAY,''999G999G999G999G990D00''),'' '','''') NETPAY, ',
'        replace(to_char(GROSSPAY,''999G999G999G999G990D00''),'' '','''') GROSSPAY,   ',
'        replace(to_char(INCOME_TAX,''999G999G999G999G990D00''),'' '','''') INCOME_TAX,',
'        (select SEX from xxhrms_people pep where pep.person_id = a.staff_ID) Gender,',
'        (select other_id from xxhrms_people pep where pep.person_id = a.staff_ID) Legacy_id,',
'        (select to_char(BIRTH_DATE,''DD-MON-YYYY'') from xxhrms_people pep where pep.person_id = a.staff_ID) DOB,',
'        (select PFA_NAME from xxhrms_pfa_admin pfa where pfa.PFADMIN_ID = a.PFA_ADMINS and pfa.company_code = a.company_code) PFA_NAME,  ',
'        (select st.DESCRIPTION from xxhrms_assignments ass, xxhrms_states st where st.state_code = ass.ssn and ass.person_id = a.staff_ID) TAX_STATE,',
'        (select BANK_NAME from xxhrms_banks bnk where bnk.bank_code = a.BANK_NAME and bnk.company_code = a.company_code) Bank_Name,',
'        (select GRADE from xxhrms_grades grd where grd.id = a.grade and grd.ORGANISATION = a.company_code) Grade,',
'        (select NAME from xxhrms_dep_location loc where loc.CODE = a.DEPT_LOCATION and loc.company_code = a.company_code) Location,',
'        (select NAME from xxhrms_jobs job where job.JOB_CODE= a.JOB_ID and job.company_code = a.company_code) Job,',
'        (select NAME from xxhrms_department dept where dept.dept_id= a.DEPT_CODE and dept.company_code = a.company_code) Department,',
'        (select NAME from xxhrms_sub_organization sub where sub.code = a.SUB_ORGANIZATION_CODE and sub.company_code = a.company_code) SUB_ORGANIZATION,',
'        (select COMPANY_NAME from xxhrms_companyinfo inf where inf.COMPANY_CODE = a.COMPANY_CODE) Company_name,',
'    ',
'    cursor(',
'            select APEX_WEB_SERVICE.BLOB2CLOBBASE64(xxhrms.XXHRMS_RESIZE_IMG(p.id,a.STAFF_ID)) "image" ,',
'            --select APEX_WEB_SERVICE.BLOB2CLOBBASE64(p.PICTURE) "image",   ',
'            10 "img_max_width",',
'            10 "img_max_height"',
'            from XXHRMS.XXHRMS_PICTURE p',
'            WHERE p.STAFF_ID = a.STAFF_ID',
'             )Images,',
'	',
'    cursor(',
'    select STAFF_ID, replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms_benefits',
'    where PAYMONTH_CODE = a.PAYMONTH_CODE',
'	and PAYRUN = a.PAYRUN',
'	and STAFF_ID = a.STAFF_ID',
'	) "Earnings",',
'	',
'	cursor(',
'    select STAFF_ID, replace(to_char(COST,''999G999G999G999G990D00''),'' '','''') AMT,',
'    (select NAME from xxhrms_elements where ELEMENT_ID = ELEMENT_CODE) ELEMENT_NAME',
'    from xxhrms_deductions',
'    where PAYMONTH_CODE = a.PAYMONTH_CODE',
'	and PAYRUN = a.PAYRUN',
'	and STAFF_ID = a.STAFF_ID',
'	) "Deductions"',
'',
'from XXPAY_ARCHIVE_PAY_PROCESSING a',
'where a.COMPANY_CODE = :AP_COMPANY_CODE',
'and STAFF_ID = :P41_STAFF_ID',
'and PAYMONTH_CODE = :P41_PAYMONTH',
'and PAYRUN = nvl(:P41_PAY_RUN,PAYRUN)',
') as "data"',
'from dual'))
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10336392379962164)
,p_name=>'New_3'
,p_event_sequence=>91
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9999756389299474)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10336866980962164)
,p_event_id=>wwv_flow_imp.id(10336392379962164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75267193491239181)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10337280097962165)
,p_name=>'New_4'
,p_event_sequence=>101
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_PAYMONTH,P41_PAY_RUN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10338210471962165)
,p_event_id=>wwv_flow_imp.id(10337280097962165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14683208037122518)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10338746087962165)
,p_event_id=>wwv_flow_imp.id(10337280097962165)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14683189788122517)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10337765947962165)
,p_event_id=>wwv_flow_imp.id(10337280097962165)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14683015561122516)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10172004579962037)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85680004864414397)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Dependants</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10172004579962037
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10167186312962034)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85667842855414382)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Disciplinary Information</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10167186312962034
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10162605603962030)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85650465646414365)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Work Equipment</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10162605603962030
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10186075090962047)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(87178037716700239)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Suspensions</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10186075090962047
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10249982322962097)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85764905835414477)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Other Benefits - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10249982322962097
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10259656835962104)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85774322972414488)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Other Deductions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10259656835962104
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10216644214962066)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85735319731414449)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Education</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10216644214962066
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10207749849962061)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85723534207414438)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Job History</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10207749849962061
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10193250516962052)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85677032054414393)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Skills</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10193250516962052
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10199634775962056)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85698833424414415)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'<strong>Certifications</strong> - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10199634775962056
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10324673606962155)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Contact Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE xxhrms_people_f',
'     SET email2 = :P41_PER_EML,',
'         telephone2= :P41_PER_PHN,',
'         email = :P41_OFF_EML,',
'         telephone1 = :P41_OFF_PHN,         ',
'         residence_address = :P41_STR_ADR,',
'         residence_country = :P41_CTR,',
'         residence_state = :P41_CNT_STA,',
'         residence_city = :P41_CNT_CTY,',
'         updated_time = sysdate,',
'         updated_by = :APP_USER',
'   WHERE person_id = :P41_STAFF_ID',
'     AND effective_start_date = :P41_PER_START',
'     AND to_char(ins_time,''dd-mon-yyyy hh:mi:ss'') = :P41_INS_TIME;',
'  --',
'  UPDATE xxhrms_emergency_contact',
'     SET address = :P41_EM_ADR,',
'         city = :P41_EM_CTY,',
'         country = :P41_EM_CTR,',
'         fullname = :P41_EM_NAME,',
'         mobile_no = :P41_EM_PHN,',
'         state =  :P41_EM_STA,',
'         relationship = :P41_REL,',
'         updated_time = sysdate,',
'         updated_by = :APP_USER',
'   WHERE person_id = :P41_STAFF_ID;',
'  IF SQL%NOTFOUND THEN',
'    INSERT INTO xxhrms_emergency_contact(person_id, address, city, country, ',
'        fullname, mobile_no, state, effective_start_date, ins_time, ins_by, relationship)',
'      VALUES(:P41_STAFF_ID, :P41_EM_ADR, :P41_EM_CTY, :P41_EM_CTR, :P41_EM_NAME, ',
'        :P41_EM_PHN, :P41_EM_STA, SYSDATE, SYSDATE, :APP_USER, :P41_REL);',
'  END IF;',
'commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7074151813086233)
,p_process_success_message=>'Action Processed!'
,p_internal_uid=>10324673606962155
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10325059081962155)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Personal Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_row xxhrms.xxhrms_people_f_tmp%ROWTYPE;',
'  v_date date := sysdate;',
'  v_updated VARCHAR2(2000);',
'  --',
'  CURSOR c_row IS ',
'    SELECT *',
'      FROM xxhrms.xxhrms_people_f',
'     WHERE person_id = :P41_staff_id',
'      AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'      ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'',
'  --',
'BEGIN',
'  --',
'  OPEN c_row;',
'  FETCH c_row INTO v_row;',
'  CLOSE c_row;',
'  --',
'  IF NVL(v_row.last_name,''-x'') <> NVL(:P41_surname,''-x'') THEN',
'    v_updated := ''"Surname" '';',
'  END IF;',
'  IF NVL(v_row.middle_name,''-x'') <> NVL(:P41_mid_name,''-x'') THEN',
'    v_updated := v_updated||''"Middle Name" '';',
'  END IF;',
'  IF NVL(v_row.first_name,''-x'') <> NVL(:P41_first_name,''-x'') THEN',
'    v_updated := v_updated||''"First Name" '';',
'  END IF;',
'  IF NVL(v_row.sex,''-x'') <> NVL(:P41_sex,''-x'') THEN',
'    v_updated := v_updated||''"Gender" '';',
'  END IF;',
'  IF NVL(v_row.marital_status,''-x'') <> NVL(:P41_mar_stat,''-x'') THEN',
'    v_updated := v_updated||''Marital Status '';',
'  END IF;',
'  IF NVL(to_char(v_row.birth_date),''-x'') <> NVL(to_char(:P41_dob),''-x'') THEN',
'    v_updated := v_updated||''"Date of Birth" '';',
'  END IF;',
'  IF NVL(v_row.title,''-x'') <> NVL(:P41_title,''-x'') THEN',
'    v_updated := v_updated||''"Title" '';',
'  END IF;',
'  IF NVL(v_row.state_of_origin,''-x'') <> NVL(:P41_state,''-x'') THEN',
'    v_updated := v_updated||''"State of Origin"" '';',
'  END IF;',
'  IF NVL(v_row.local_govt_area,''-x'') <> NVL(:P41_loc_gov,''-x'') THEN',
'    v_updated := v_updated||''"Local Govt." '';',
'  END IF;',
'  IF NVL(v_row.nationality,''-x'') <> NVL(:P41_nation,''-x'') THEN',
'    v_updated := v_updated||''"Nationality" '';',
'  END IF;',
'  IF NVL(v_row.genotype,''-x'') <> NVL(:P41_gen,''-x'') THEN',
'    v_updated := v_updated||''"Genotype" '';',
'  END IF;',
'  IF NVL(v_row.national_id,''-x'') <> NVL(:P41_nat_id,''-x'') THEN',
'    v_updated := v_updated||''"National ID No." '';',
'  END IF;',
'  IF NVL(v_row.other_id,''-x'') <> NVL(:P41_oth_id,''-x'') THEN',
'    v_updated := v_updated||''"Other ID No." '';',
'  END IF;',
'  IF NVL(v_row.blood_group,''-x'') <> NVL(:P41_b_grp,''-x'') THEN',
'    v_updated := v_updated||''"Blood Group" '';',
'  END IF;',
'  IF NVL(v_row.mothers_maiden_name,''-x'') <> NVL(:P41_mom_maid,''-x'') THEN',
'    v_updated := v_updated||''"Mothers Maiden Name" '';',
'  END IF;',
'  IF NVL(v_row.full_name,''-x'') <> NVL(:P41_surname||'' ''||:P41_first_name||'' ''||:P41_mid_name,''-x'') THEN',
'    v_updated := v_updated||''"Full Name" '';',
'  END IF;',
'  IF NVL(v_row.attribute29,''-x'') <> NVL(:P41_POB,''-x'') THEN',
'    v_updated := v_updated||''"Place of Birth" '';',
'  END IF;',
'   IF NVL(v_row.attribute3,''-x'') <> NVL(:P41_RELIGION,''-x'') THEN',
'    v_updated := v_updated||''"Religion" '';',
'  END IF;',
'	IF NVL(v_row.attribute10,''-x'') <> NVL(:P41_ATTRIBUTE10,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE10_NAME." '';',
'  END IF;',
'	IF NVL(v_row.attribute11,''-x'') <> NVL(:P41_ATTRIBUTE11_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE11_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute12,''-x'') <> NVL(:P41_ATTRIBUTE12_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE12_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute13,''-x'') <> NVL(:P41_ATTRIBUTE13_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE13_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute14,''-x'') <> NVL(:P41_ATTRIBUTE14_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE14_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute15,''-x'') <> NVL(:P41_ATTRIBUTE15_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE15_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute16,''-x'') <> NVL(:P41_ATTRIBUTE16_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE16_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute17,''-x'') <> NVL(:P41_ATTRIBUTE17_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE17_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute18,''-x'') <> NVL(:P41_ATTRIBUTE18_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE18_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute19,''-x'') <> NVL(:P41_ATTRIBUTE19_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE19_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute20,''-x'') <> NVL(:P41_ATTRIBUTE20_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE20_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute21,''-x'') <> NVL(:P41_ATTRIBUTE21_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE21_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute22,''-x'') <> NVL(:P41_ATTRIBUTE22_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE22_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute23,''-x'') <> NVL(:P41_ATTRIBUTE23_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE23_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute24,''-x'') <> NVL(:P41_ATTRIBUTE24_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE24_NAME_1." '';',
'  END IF;																										   ',
'	IF NVL(v_row.attribute25,''-x'') <> NVL(:P41_ATTRIBUTE25_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE25_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute26,''-x'') <> NVL(:P41_ATTRIBUTE26_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE26_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute27,''-x'') <> NVL(:P41_ATTRIBUTE27_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE27_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute28,''-x'') <> NVL(:P41_ATTRIBUTE28_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE28_NAME_1." '';',
'  END IF;',
'	IF NVL(v_row.attribute30,''-x'') <> NVL(:P41_ATTRIBUTE30_1,''-x'') THEN',
'    v_updated := v_updated||''"&P41_ATTRIBUTE30_NAME_1." '';',
'  END IF;',
'  --',
'  v_updated := REPLACE(REPLACE(TRIM(v_updated),''" '',''", ''),''"'','''');',
'  IF v_updated IS NOT NULL THEN',
'    -- setting date track when change exists',
'    :P41_DT_FLAG := ''Y'';',
'    :P41_DT_EMP_ASS := ''EMP'';',
'    --',
'    v_row.last_name := :P41_surname;',
'    v_row.first_name := :P41_first_name;',
'    v_row.sex := :P41_sex;',
'    v_row.marital_status := :P41_mar_stat;',
'    v_row.middle_name := :P41_mid_name;',
'    v_row.birth_date := :P41_dob;',
'    v_row.title := :P41_title;',
'    v_row.full_name := :P41_surname||'' ''||:P41_first_name||'' ''||:P41_mid_name;',
'    v_row.state_of_origin := :P41_state;',
'    v_row.local_govt_area := :P41_loc_gov;',
'    v_row.mothers_maiden_name := :P41_mom_maid;',
'    v_row.nationality := :P41_nation;',
'    v_row.ins_by := :app_user;',
'    v_row.ins_time := v_date;',
'    v_row.effective_start_date := TRUNC(v_date);',
'    v_row.person_id := :P41_staff_id;',
'    v_row.genotype := :P41_gen;',
'    v_row.blood_group :=  :P41_b_grp;',
'    v_row.national_id := :P41_nat_id;',
'    v_row.other_id := :P41_oth_id;',
'    v_row.updated_columns := v_updated;',
'    v_row.attribute29 := :P41_pob;',
'    v_row.attribute3 := :P41_religion;',
'    v_row.attribute10 := :P41_ATTRIBUTE10;',
'	v_row.attribute11 := :P41_ATTRIBUTE11_1;',
'	v_row.attribute12 := :P41_ATTRIBUTE12_1;',
'	v_row.attribute13 := :P41_ATTRIBUTE13_1;',
'	v_row.attribute14 := :P41_ATTRIBUTE14_1;',
'	v_row.attribute15 := :P41_ATTRIBUTE15_1;',
'	v_row.attribute16 := :P41_ATTRIBUTE16_1;',
'	v_row.attribute17 := :P41_ATTRIBUTE17_1;',
'	v_row.attribute18 := :P41_ATTRIBUTE18_1;',
'	v_row.attribute19 := :P41_ATTRIBUTE19_1;',
'	v_row.attribute20 := :P41_ATTRIBUTE20_1;',
'	v_row.attribute21 := :P41_ATTRIBUTE21_1;',
'	v_row.attribute22 := :P41_ATTRIBUTE22_1;',
'	v_row.attribute23 := :P41_ATTRIBUTE23_1;',
'	v_row.attribute24 := :P41_ATTRIBUTE24_1;',
'	v_row.attribute25 := :P41_ATTRIBUTE25_1;',
'	v_row.attribute26 := :P41_ATTRIBUTE26_1;',
'	v_row.attribute27 := :P41_ATTRIBUTE27_1;',
'	v_row.attribute28 := :P41_ATTRIBUTE28_1;',
'	v_row.attribute29 := :P41_POB;',
'	v_row.attribute30 := :P41_ATTRIBUTE30_1;',
'    --',
'    /*INSERT INTO xxhrms.XXHRMS_PEOPLE_ARCHIVE',
'    SELECT * FROM xxhrms.XXHRMS_PEOPLE_F',
'     WHERE person_id = :P41_staff_id',
'     AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''));',
'       --AND effective_start_date <= sysdate;*/',
'    ---',
'    delete xxhrms.xxhrms_people_f_tmp',
'    where person_id = :P41_staff_id;',
'    --',
'    INSERT INTO xxhrms.xxhrms_people_f_tmp',
'    VALUES v_row;    ',
'    --',
'  END IF;',
'  --',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7152212500086313)
,p_internal_uid=>10325059081962155
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10325488227962156)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Image'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_length number;',
'  v_id number;',
'BEGIN',
'  SELECT max(ID)',
'    INTO v_id ',
'    FROM  XXHRMS_PICTURE;',
'  v_id := nvl(v_id,0)+1;',
'      SELECT dbms_lob.getlength(blob_content)',
'    INTO v_length',
'    FROM   apex_application_temp_files',
'   WHERE  NAME = :P41_pic;',
'  IF v_length <1 THEN',
'    raise_application_error(-20001,''No Image Selected'');',
'  ELSIF v_length BETWEEN 5 AND 100000 THEN',
'    DELETE xxhrms_picture WHERE staff_id = :P41_STAFF_ID;',
'    INSERT INTO xxhrms_picture(ID, length,staff_id, pic_NAME, FILENAME,picture, INS_TIME, INS_BY)',
'    SELECT v_id, v_length,:P41_STAFF_ID,:P41_pic, filename, blob_content, SYSDATE, :APP_USER',
'     FROM   apex_application_temp_files',
'    WHERE  NAME = :P41_pic;',
'    --',
'    DELETE apex_application_temp_files WHERE  NAME = :P41_pic;',
'    COMMIT;',
'  ELSE',
'    DELETE apex_application_temp_files WHERE  NAME = :P41_pic;',
'    COMMIT;',
'    raise_application_error(-20001,''Cannot upload pictures bigger than 100KB!'');',
' END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7050641329086208)
,p_internal_uid=>10325488227962156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10325800281962156)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'  v_cols VARCHAR2(500);',
'  v_date date := TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'');',
'  v_ann_sal NUMBER;',
'  v_mth_sal NUMBER;',
'  --v_grade xxhrms_grades.id%type;',
'--  v_gradestep xxhrms_grade_step.grade_step%type;',
'  --',
'  v_assign xxhrms.xxhrms_assignments_f%ROWTYPE; ',
'																													   ',
'  --',
'  CURSOR c_assign IS',
'    SELECT *',
'      FROM xxhrms.xxhrms_assignments_f',
'     WHERE person_id = :P41_STAFF_ID',
'     AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'      ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'BEGIN',
'  OPEN c_assign;',
'  FETCH c_assign INTO v_assign;',
'  CLOSE c_assign;',
'   --v_ann_sal := to_number(:P41_ANN_BASIC_SAL,''999,999,999,990.00'');',
'  -- v_mth_sal := to_number(:P41_MONTHLY_BASIC_SALARY,''999,999,999,990.00'');',
' v_ann_sal := :P41_ANN_BASIC_SAL;',
' v_mth_sal := :P41_MONTHLY_BASIC_SALARY;',
'  --',
'  :P41_sal_msg := ''No changes were made'';',
'  --',
'  IF NVL(:P41_TTL,''-11'') <> NVL(v_assign.job_id,''-11'') THEN',
'    v_cols:= v_cols||''"Job Title" '';',
'  END IF;',
'  IF NVL(:P41_CAT,''-11'') <> NVL(v_assign.staff_category,''-11'') THEN',
'    v_cols:= v_cols||''"Staff Category" '';',
'  END IF;',
'  IF NVL(:P41_DEPT,''-11'') <> NVL(v_assign.dept_code,''-11'') THEN',
'    v_cols:= v_cols||''"Department" '';',
'  END IF;',
'   IF NVL(:P41_UNIT,''-11'') <> NVL(v_assign.EMP_DUTIES,''-11'') THEN',
'    v_cols:= v_cols||''"Unit" '';',
'  END IF;',
'  IF NVL(:P41_LOC,''-11'') <> NVL(v_assign.dept_location,''-11'') THEN',
'    v_cols:= v_cols||''"&AP_LOCATION_LABEL." '';',
'  END IF;',
'  IF NVL(:P41_POSITION,''-11'') <> NVL(v_assign.attribute1,''-11'') THEN',
'    v_cols:= v_cols||''"Position" '';',
'  END IF;',
'  IF NVL(:P41_SAL_TYPE,''-11'') <> NVL(v_assign.attribute7,''-11'') THEN',
'    v_cols:= v_cols||''"Salary Type" '';',
'  END IF;',
'  IF NVL(:P41_TYP,''-11'') <> NVL(v_assign.emp_type,''-11'') THEN',
'    v_cols:= v_cols||''"Employee Type" '';',
'  END IF;',
'  IF NVL(:P41_SUP,''-11'') <> NVL(v_assign.supervisor,''-11'') THEN',
'    v_cols:= v_cols||''"Supervisor" '';',
'  END IF;',
'  IF NVL(:P41_ORG,''-11'') <> NVL(v_assign.company_code,''-11'') THEN',
'    v_cols:= v_cols||''"Organization" '';',
'  END IF;',
'  IF NVL(:P41_SUB_ORG,''-11'') <> NVL(v_assign.sub_organization_code,''-11'') THEN',
'    v_cols:= v_cols||''"&AP_SUBORG_LABEL." '';',
'  END IF;',
'  IF NVL(:P41_STAT,''-11'') <> NVL(v_assign.assignment_status,''-11'') THEN',
'    v_cols:= v_cols||''"Status" '';',
'  END IF;',
'  IF NVL(:P41_INC_MONTH,''-11'') <> NVL(v_assign.attribute4,''-11'') THEN',
'    v_cols:= v_cols||''"Incremental Month" '';',
'  END IF;',
'  IF NVL(to_char(:P41_PROM_DT),''-11'') <> NVL(to_char(v_assign.last_promotion_date),v_assign.last_promotion_date) THEN',
'    v_cols:= v_cols||''"Last Promotion Date" '';',
'  END IF;  ',
'  IF NVL(to_char(:P41_ST_PROB_DT),''-11'') <> NVL(to_char(v_assign.probation_date),v_assign.probation_date) THEN',
'    v_cols:= v_cols||''"Probation Start Date" '';',
'  END IF;  ',
'  IF NVL(to_char(:P41_ED_PROB_DT),''-11'') <> NVL(to_char(v_assign.probation_end_date),v_assign.probation_end_date) THEN',
'    v_cols:= v_cols||''"Probation End Date" '';',
'  END IF; ',
'   -----------------new join',
'  --',
'  IF NVL(:P41_GRADE,''-11'') <> NVL(v_assign.grade,''-11'') THEN',
'    v_cols:= v_cols||''"Grade" '';',
'    :P41_COLUMN_UPDATED:=''GRADE'';',
'  END IF;',
'  IF NVL(:P41_TAX_ID,''-11'') <> NVL(v_assign.tax_id,''-11'') THEN',
'    v_cols:= v_cols||''"Tax ID" '';',
'  END IF;',
'  IF NVL(:P41_TAX_STATE,''-11'') <> NVL(v_assign.ssn,''-11'') THEN',
'    v_cols:= v_cols||''"State of Residency" '';',
'  END IF;',
'  IF NVL(:P41_SAL_TYPE,''-11'') <> NVL(v_assign.attribute7,''-11'') THEN',
'    v_cols:= v_cols||''"Salary Type" '';',
'  END IF;',
'  IF NVL(:P41_GRADE_STEP,''-11'') <> NVL(v_assign.grade_step,''-11'') THEN',
'    v_cols:= v_cols||''"Grade Step" '';',
'    :P41_COLUMN_UPDATED:=''GRADE'';',
'  END IF;',
'  IF NVL(:P41_JOBLEVEL,''-11'') <> NVL(v_assign.joblevel,''-11'') THEN',
'    v_cols:= v_cols||''"Job Level" '';',
'  END IF;',
'  IF NVL(:P41_SALARY_NAME,''-11'') <> NVL(v_assign.attribute6,''-11'') THEN',
'    v_cols:= v_cols||''"Salary Name" '';',
'  END IF;',
'  IF NVL(v_ann_sal,''-11'') <> NVL(v_assign.annual_sal,''-11'') THEN',
'    v_cols:= v_cols||''"Annual Basic Salary" '';',
' END IF;',
' IF NVL(v_mth_sal,''-11'') <> NVL(v_assign.paid_salary,''-11'') THEN',
'    v_cols:= v_cols||''"Monthly Basic Salary" '';',
' END IF;   ',
'  IF NVL(:P41_CURRENCY,''-11'') <> NVL(v_assign.currency,''-11'') THEN',
'    v_cols:= v_cols||''"Currency" '';',
'  END IF;',
'  IF NVL(:P41_BANK_NAME,''-11'') <> NVL(v_assign.bank_name,''-11'') THEN',
'    v_cols:= v_cols||''"Bank Name" '';',
'  END IF;',
'  IF NVL(:P41_ACCOUNT,''-11'') <> NVL(v_assign.ACC_NO,''-11'') THEN',
'    v_cols:= v_cols||''"Account Number" '';',
'  END IF;',
'  IF NVL(:P41_BVN,''-11'') <> NVL(v_assign.attribute3,''-11'') THEN',
'    v_cols:= v_cols||''"BVN" '';',
'  END IF;',
'  IF NVL(:P41_PFA,''-11'') <> NVL(v_assign.PFA_ADMINS,''-11'') THEN',
'    v_cols:= v_cols||''"PFA Name" '';',
'  END IF;',
'  IF NVL(:P41_PFA_ID,''-11'') <> NVL(v_assign.PIN_NO,''-11'') THEN',
'    v_cols:= v_cols||''"PFA Number " '';',
'  END IF;',
'  IF NVL(:P41_STAT,''-11'') <> NVL(v_assign.ASSIGNMENT_STATUS,''-11'') THEN',
'    v_cols:= v_cols||''"Status" '';',
'  END IF;',
'  IF NVL(:P41_HMO,''-11'') <> NVL(v_assign.ATTRIBUTE8,''-11'') THEN',
'    v_cols:= v_cols||''"HMO Name" '';',
'  END IF;',
'  IF NVL(:P41_HMO_ACCT,''-11'') <> NVL(v_assign.ATTRIBUTE9,''-11'') THEN',
'    v_cols:= v_cols||''"HMO Number" '';',
'  END IF;',
'  IF NVL(to_char(:P41_PROM_DT),''-11'') <> NVL(to_char(v_assign.last_promotion_date),v_assign.last_promotion_date) THEN',
'    v_cols:= v_cols||''"Last Promotion Date" '';',
'  END IF;',
'  --',
'  v_cols := REPLACE(REPLACE(TRIM(v_cols),''" '',''", ''),''"'','''');',
'  --',
'  IF v_cols IS NOT NULL THEN',
'    -- setting date track when change exists',
'    :P41_DT_FLAG := ''Y'';',
'    :P41_DT_EMP_ASS := ''ASS'';',
'    --',
'    v_assign.person_id             := NVL(v_assign.person_id,:P41_STAFF_ID);',
'    v_assign.staff_id             := NVL(v_assign.staff_id,:P41_STAFF_ID);',
'    v_assign.job_id                := :P41_TTL;',
'    v_assign.staff_category        := :P41_CAT;',
'    v_assign.dept_code             := :P41_DEPT;',
'    v_assign.EMP_DUTIES            := :P41_UNIT;',
'    v_assign.dept_location         := :P41_LOC;',
'    v_assign.emp_type              := :P41_TYP;',
'    v_assign.supervisor            := :P41_SUP;',
'    v_assign.company_code          := :P41_ORG;',
'    v_assign.sub_organization_code := :P41_SUB_ORG;',
'    v_assign.assignment_status     := :P41_STAT;',
'    v_assign.attribute1            := :P41_POSITION;',
'    v_assign.attribute7            := :P41_SAL_TYPE;',
'    v_assign.ins_by                := :APP_USER;',
'    v_assign.ins_time              := SYSDATE;',
'    v_assign.updated_columns       := v_cols; ',
'    v_assign.fullname              := :P41_EMP_NAME;',
'    v_Assign.probation_date        := :P41_ED_PROB_DT;        --P41_ED_PROB_DT',
'    v_Assign.probation_end_date    := :P41_ED_PROB_DT;--:P41_PROM_DT;',
'    v_assign.effective_start_date  := TRUNC(v_date);',
'    v_assign.attribute4 :=:P41_INC_MONTH;',
'    v_assign.last_promotion_date := :P41_PROM_DT;',
'    v_assign.effective_end_date:=NVL(v_assign.effective_end_date,''31-Dec-4712'');',
'	v_assign.grade := :P41_GRADE;',
'    v_assign.tax_id := :P41_TAX_ID;',
'    v_assign.ssn := :P41_TAX_STATE;',
'    v_assign.attribute7 := :P41_SAL_TYPE;',
'    v_assign.grade_step := :P41_GRADE_STEP;',
'    v_assign.joblevel := :P41_JOBLEVEL;',
'    v_assign.attribute6 := :P41_SALARY_NAME;',
'    v_assign.annual_sal := v_ann_sal;',
'    v_assign.currency := :P41_CURRENCY;',
'    v_assign.paid_salary := v_mth_sal;',
'    v_assign.bank_name := :P41_BANK_NAME;',
'    v_assign.acc_no := :P41_ACCOUNT;',
'    v_assign.attribute3 := :P41_BVN;',
'    v_assign.pfa_admins := :P41_PFA;',
'    v_assign.pin_no := :P41_PFA_ID;',
'    v_assign.assignment_status := :P41_STAT;',
'    v_assign.attribute8 := :P41_HMO;',
'    v_assign.attribute9 := :P41_HMO_ACCT;',
'    v_assign.updated_time := null;',
'    v_assign.updated_by := null;',
'    --',
'    /*INSERT INTO xxhrms.xxhrms_assignments_archive',
'    SELECT * FROM xxhrms.xxhrms_assignments_f',
'     WHERE person_id = :P41_staff_id',
'     AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''));',
'       --AND effective_start_date <= sysdate;*/',
'    --',
'    DELETE xxhrms.xxhrms_assignments_f_tmp',
'     WHERE person_id = :P41_staff_id;',
'     --  AND effective_start_date <= sysdate;',
'    --',
'    ',
'    INSERT INTO xxhrms.xxhrms_assignments_f_tmp',
'     VALUES v_assign;',
'    --',
'   /* UPDATE xxhrms.xxhrms_assignments_archive',
'      SET effective_end_date  =  NVL(effective_end_date,sysdate),',
'        updated_time = sysdate,',
'        updated_by = :app_user',
'    WHERE person_id = :P41_staff_id;*/',
'    --',
'    IF NVL(:P41_ORG,''-11'') <> NVL(v_assign.company_code,''-11'') THEN',
'      UPDATE xxhrms.xxhrms_people_f',
'         SET company_code = v_assign.company_code',
'       WHERE person_id = :P41_staff_id',
'         AND (effective_end_date IS NULL OR effective_end_date >= SYSDATE);',
'    END IF;',
'    --',
'    :P41_SAL_MSG := ''Changes were made to employee assignments'';--Salary Information updated successfully'';',
'    --',
'    COMMIT;',
'    --    ',
'  END IF;',
'  --',
'',
'    COMMIT;',
'    :P41_SAL_MSG := ''Changes were made to employee assignments'';--''Salary Information updated successfully'';',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7200530503086361)
,p_internal_uid=>10325800281962156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10321138804962151)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ASS_D'
,p_process_sql_clob=>':P41_DT_VAL := :AP_GLOBAL_DATE;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10321138804962151
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10321501749962151)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_emp IS ',
'    SELECT a.full_name, a.EMAIL, a.telephone1, to_char(a.effective_start_date,''DD-MON-YYYY''), to_char(a.effective_end_Date,''DD-MON-YYYY''), a.employment_status--,',
'            --nvl(to_char(x.created_date,''DD-Mon-YYYY''),''NILL'') enrollment_date',
'        FROM xxhrms.xxhrms_people_f a-- xxafis.xxafis_emp_softsuite x',
'     WHERE a.person_id = :P41_STAFF_ID',
'     --and a.person_id=x.employee_id(+)',
'	 and company_code=:AP_COMPANY_CODE',
'     AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''));',
'  --',
' --  Cursor Doc_cur(p_staff varchar2)',
' -- is',
' -- select sub_organization,sub_organization_code, full_name,date_of_birth,substr(date_of_birth,4,3)||''''||  substr(date_of_birth,7,5)monthyear',
'   -- from xxhrms.xxhrms_master_All',
'  --  where person_id = p_staff;',
'  --',
'begin',
'  OPEN c_emp;',
'  FETCH c_emp ',
'    INTO :P41_EMP_NAME, :P41_EML, :P41_PHONE, :P41_START, :P41_END, :P41_STATUS--, :P41_BIOMETRIC_DATE',
'    ; ',
'  CLOSE c_emp;',
'   -- default date track to N.',
'    :P41_DT_FLAG := ''N'';',
'    --',
' --   OPEN Doc_cur(:P41_STAFF_ID);',
' -- FETCH Doc_cur into  :DOC_MDA_NAME, :DOC_MDA_ID, :DOC_FULL_NAME, :DOC_DOB, :DOC_MONTH_YEAR;',
' -- close doc_cur;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10321501749962151
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10321963466962151)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'personal_detals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_emp IS',
'  SELECT last_name, sex, first_name, marital_status, middle_name, birth_date, ',
'   title, nationality, state_of_origin, local_govt_area, mothers_maiden_name, genotype, blood_group, NATIONAL_ID, other_id, to_char(effective_start_date,''DD-MON-YYYY''),',
'   to_char(effective_end_Date,''DD-MON-YYYY''), attribute29,attribute3 ,object_version_number,attribute10,attribute11,attribute12,attribute13,attribute14,attribute15,attribute16,',
'   attribute17,attribute18,attribute19,attribute20,attribute21,attribute22,attribute23,attribute24,attribute25,attribute26,attribute27,attribute28',
'  FROM xxhrms.xxhrms_people_f',
'  WHERE person_id = :P41_STAFF_ID    ',
'  and company_code=:AP_COMPANY_CODE',
'     AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''))',
'  ORDER BY NVL(TRUNC(effective_start_date) ,''01-JAN-1990'') desc, NVL(ins_time,''01-JAN-1990'') DESC  ;',
'BEGIN',
'  OPEN c_emp;',
'  FETCH c_emp INTO :P41_SURNAME, :P41_SEX, :P41_FIRST_NAME, :P41_MAR_STAT,  ',
'  :P41_MID_NAME, :P41_DOB, :P41_TITLE, :P41_NATION, :P41_STATE, :P41_LOC_GOV, :P41_MOM_MAID, ',
'  :P41_GEN, :P41_B_GRP, :P41_NAT_ID, :P41_OTH_ID,:P41_PER_START, :P41_per_END, :P41_POB, :P41_RELIGION, :P41_EMP_VER_ID,',
'  :P41_ATTRIBUTE10,:P41_ATTRIBUTE11_1,:P41_ATTRIBUTE12_1,:P41_ATTRIBUTE13_1,:P41_ATTRIBUTE14_1,:P41_ATTRIBUTE15_1,:P41_ATTRIBUTE16_1,:P41_ATTRIBUTE17_1,',
'  :P41_ATTRIBUTE18_1,:P41_ATTRIBUTE19_1,:P41_ATTRIBUTE20_1,:P41_ATTRIBUTE21_1,:P41_ATTRIBUTE22_1,:P41_ATTRIBUTE23_1,:P41_ATTRIBUTE24_1,:P41_ATTRIBUTE25_1,',
'  :P41_ATTRIBUTE26_1,:P41_ATTRIBUTE27_1,:P41_ATTRIBUTE28_1',
'  ',
'  ;',
'  CLOSE c_emp;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10321963466962151
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10322337673962151)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get contact'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_contact IS',
'    SELECT email, telephone1, email2, telephone2, residence_address, residence_country, residence_state, residence_city, to_char(ins_time,''dd-mon-yyyy hh:mi:ss''), effective_start_date',
'      FROM xxhrms_people_f',
'     WHERE person_id = :P41_STAFF_ID',
'	 and company_code=:AP_COMPANY_CODE',
'       AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''));',
'--',
'  CURSOR c_emergency IS   ',
'   SELECT address, city, country, fullname, mobile_no, state, relationship  FROM xxhrms_emergency_contact',
'    WHERE person_id = :P41_STAFF_ID;',
'--',
'BEGIN',
'  OPEN c_contact;',
'  FETCH c_contact',
'   INTO :P41_OFF_EML, :P41_OFF_PHN, :P41_PER_EML, :P41_PER_PHN, :P41_STR_ADR, :P41_CTR, :P41_CNT_STA, :P41_CNT_CTY, :P41_INS_TIME,:P41_PER_START;',
'  CLOSE c_contact;',
'  --',
'  OPEN c_emergency;',
'  FETCH c_emergency ',
'   INTO :P41_EM_ADR, :P41_EM_CTY, :P41_EM_CTR, :P41_EM_NAME,    :P41_EM_PHN, :P41_EM_STA, :P41_REL;',
'  CLOSE c_emergency;',
'  --  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10322337673962151
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10322759374962152)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'idemployee_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_emp IS',
'   SELECT aa.company_code, aa.dept_code, aa.dept_location, aa.emp_type, aa.hire_date, aa.job_id,aa.attribute1, bb.value_desc, aa.staff_category, ',
'    aa.staff_id, aa.sub_organization_code, aa.supervisor, to_char(aa.effective_start_date,''DD-MON-YYYY''), to_char(aa.effective_start_date,''DD-MON-YYYY'') start1, to_char(aa.effective_end_date,''DD-MON-YYYY''),',
'    to_char(aa.effective_end_date,''DD-MON-YYYY'') end1, aa.grade, aa.grade_step,aa.joblevel,aa.attribute6,aa.attribute5, attribute3,attribute4,aa.annual_sal, aa.annual_sal, aa.currency, aa.paid_salary, aa.paid_salary,',
'    aa.bank_name, aa.acc_no,',
'    aa.pfa_admins,aa.pin_no,aa.attribute8,aa.attribute9, aa.attribute7, dd.value_desc, aa.assignment_status,aa.tax_id,aa.ssn,aa.last_promotion_Date,',
'    aa.probation_date, aa.probation_end_date, aa.emp_duties, object_version_number, aa.annual_sal, aa.paid_salary,',
'    aa.attribute11, aa.attribute12, aa.attribute13, aa.attribute14,  aa.attribute15, aa.attribute16, aa.attribute17, aa.attribute18, aa.attribute19,',
'    aa.attribute20, aa.attribute21, aa.attribute22, aa.attribute23, aa.attribute24, aa.attribute25, aa.attribute26, aa.attribute27, aa.attribute28, aa.attribute29, aa.attribute30,aa.attribute6',
'  FROM xxhrms.xxhrms_assignments_f aa, xxhrms_lookup_job_title_v bb, xxhrms.xxhrms_lookup_salary_type_v dd--,xxafis.xxafis_emp_softsuite xx',
'  WHERE aa.person_id = :P41_STAFF_ID',
'    AND aa.job_id = bb.value_code(+)',
'    AND aa.attribute7 = dd.value_code(+)',
'	and aa.company_code=:AP_COMPANY_CODE',
'  --AND aa.person_id = xx.employee_id(+)',
'   AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') BETWEEN EFFECTIVE_START_DATE AND NVL(EFFECTIVE_END_dATE,TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''));',
' -- ORDER BY nvl(effective_start_date,TO_DATE(''01-JAN-1990'')) desc, NVL(ins_time,TO_DATE(''01-JAN-1990'')) desc;',
'BEGIN',
'  OPEN c_emp;',
'  FETCH c_emp INTO',
'  :P41_org, :P41_dept, :P41_LOC, :P41_TYP, :P41_HR_DATE, :P41_TTL,:P41_POSITION,:P41_JOB_TITLE, ',
'  :P41_CAT,:P41_STAFF, :P41_SUB_ORG, :P41_SUP, :P41_EMP_START, :P41_PER_START_1, :P41_EMP_END,:P41_PER_END_1, :P41_GRADE,:P41_GRADE_STEP,',
'  :P41_JOBLEVEL,:P41_SALARY_NAME, :P41_EMP_APR, :P41_BVN, :P41_INC_MONTH, :P41_ANN_BASIC_SAL, :P41_ANN_BAS_SAL, :P41_CURRENCY, :P41_MONTHLY_BASIC_SALARY,',
'  :P41_MONTHLY_BAS_SAL, :P41_BANK_NAME,:P41_ACCOUNT,:P41_PFA,:P41_PFA_ID,:P41_HMO,:P41_HMO_ACCT, :P41_SAL_TYPE, :P41_SAL_TP_DESC, :P41_STAT, ',
'  :P41_TAX_ID, :P41_TAX_STATE,:P41_PROM_DT, :P41_ST_PROB_DT, :P41_ED_PROB_DT, :P41_UNIT, :P41_ASS_VER_ID, :P41_ANN_BAS_SAL_1,:P41_MONTHLY_BAS_SAL_1,',
'  :P41_ATTRIBUTE11, :P41_ATTRIBUTE12, :P41_ATTRIBUTE13, :P41_ATTRIBUTE14, :P41_ATTRIBUTE15, :P41_ATTRIBUTE16, :P41_ATTRIBUTE17, :P41_ATTRIBUTE18, :P41_ATTRIBUTE19,',
'  :P41_ATTRIBUTE20, :P41_ATTRIBUTE21, :P41_ATTRIBUTE22, :P41_ATTRIBUTE23, :P41_ATTRIBUTE24, :P41_ATTRIBUTE25, :P41_ATTRIBUTE26, :P41_ATTRIBUTE27, :P41_ATTRIBUTE28, :P41_ATTRIBUTE29, :P41_ATTRIBUTE30, :P41_UNION',
'  ;',
'  CLOSE c_emp;',
'  :P41_SAL_INS_TIME := null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10322759374962152
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10323152450962154)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'payslip summary'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c_summary is',
'select TRIM(TO_CHAR(sum(earning_result_value),''999,999,999,990.00'')), TRIM(TO_CHAR(sum(deduction_result_value),''999,999,999,990.00'')), TRIM(TO_CHAR(sum(earning_result_value) - sum(deduction_result_value),''999,999,999,990.00''))',
' from (SELECT x. staff_id, x.paymonth_code, x.element_name, earnings_desc, earning_result_value, '' '' space, deduction_desc, deduction_result_value FROM',
'( SELECT ROWNUM idx, d.*',
'FROM',
'(SELECT DISTINCT staff_id, paymonth_code,b.element_name ',
'            ,    INITCAP(SUBSTR(DECODE(earning_or_deduction,''E'',b.element_name),0,30))            EARNINGS_DESC',
'            ,    DECODE(earning_or_deduction,''E'',b.amt)                  EARNING_RESULT_VALUE',
'         FROM xxpay.xxpay_payroll_analysis_v b',
'        WHERE b.paymonth_code = :P41_PAYMONTH',
'          AND b.staff_id = :P41_STAFF_ID ',
'          AND earning_or_deduction =''E''',
'          AND payrun = NVL(:P41_PAY_RUN, payrun)',
'ORDER BY b.element_name) d',
') x FULL OUTER JOIN',
'(',
'SELECT ROWNUM idx, c.*',
'FROM',
'(SELECT  staff_id, paymonth_code, b.element_name, INITCAP(SUBSTR(DECODE(earning_or_deduction,''D'',b.element_name),0,30))            DEDUCTION_DESC',
'            ,    DECODE(earning_or_deduction,''D'',b.amt)                  DEDUCTION_RESULT_VALUE',
'         FROM xxpay.xxpay_payroll_analysis_v b',
'        WHERE b.paymonth_code = :P41_PAYMONTH',
'          AND b.staff_id = :P41_STAFF_ID ',
'          AND earning_or_deduction = ''D''',
'          AND payrun = NVL(:P41_PAY_RUN, payrun)',
'ORDER BY b.element_name) c',
') y',
' ON x.idx = y.idx);',
'begin',
'  OPEN c_summary;',
'  FETCH c_summary ',
'   INTO :P41_TOTAL_EARNINGS, :P41_TOTAL_DEDUCTIONS, :P41_TOTAL_NET_PAY;',
'  CLOSE c_summary;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>10323152450962154
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10323520132962154)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set values'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c_grade is ',
'SELECT TRIM(TO_CHAR(SALARY,''999,999,999,990.00'')), ',
'TRIM(TO_CHAR(ROUND(SALARY/12,2),''999,999,999,990.00'')),',
'TRIM(TO_CHAR(SALARY,''999,999,999,990.00'')), ',
'TRIM(TO_CHAR(ROUND(SALARY/12,2),''999,999,999,990.00''))',
'  FROM XXHRMS.XXHRMS_GRADE_STEP ',
'WHERE status = ''ACTIVE''',
'  AND GRADE_ID = :P41_GRADE',
'  AND grade_step = :P41_GRADE_STEP;',
'begin',
'  open c_grade;',
'  fetch c_grade into :P41_ANN_BASIC_SAL,:P41_MONTHLY_BASIC_SALARY,:P41_ANN_BAS_SAL,:P41_MONTHLY_BAS_SAL;',
'  close c_grade;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>10323520132962154
);
wwv_flow_imp.component_end;
end;
/
