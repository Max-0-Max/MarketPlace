prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'BUDGET'
,p_step_title=>'BUDGET'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function add_commas(number){',
'	//remove any existing commas...',
'	number=number.replace(/,/g, "");',
'	//start putting in new commas...',
'	number = '''' + number;',
'	if (number.length > 3) {',
'		var mod = number.length % 3;',
'		var output = (mod > 0 ? (number.substring(0,mod)) : '''');',
'		for (i=0 ; i < Math.floor(number.length / 3); i++) {',
'			if ((mod == 0) && (i == 0))',
'				output += number.substring(mod+ 3 * i, mod + 3 * i + 3);',
'			else',
'				output+= '','' + number.substring(mod + 3 * i, mod + 3 * i + 3);',
'		}',
'		return (output);',
'	}',
'	else return number;',
'}',
'function addDays(date, inx) {',
'    var d = new Date(date);',
'    d.setDate(d.getDate() + inx);  ',
'    return d;',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P3_BUDGET_START_DATE'').datepicker(''option'', ''onSelect'', function(dateTxt, inst) {',
'    var currentDay = new Date(inst[''selectedYear''], inst[''selectedMonth''], inst[''selectedDay'']);',
'    $(''#P3_BUDGET_END_DATE'').datepicker(''option'', ''minDate'', addDays(currentDay, 0));',
'   ',
'});',
' '))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53366937436589230)
,p_plug_name=>'Budgets'
,p_region_name=>'budget_list'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUDGET_ID,INITCAP(BUDGET_NAME) BUDGET_NAME,BUDGET_ACCOUNT_TYPE,BUDGET_START_DATE,BUDGET_END_DATE,BUDGET_VALUE,',
'to_char(b.CREATED_DATE,''fmDay, fmDD fmMonth, YYYY'') CREATED_DATE,',
'b.COMPANY_CODE,b.PROJECT_ID, project_name,',
'case',
'when (select count(*) from xxpbg.XXPBG_BUDGET_SUPPLEMENTARY s where s.budget_id=b.budget_id)=0',
'then TO_CHAR(BUDGET_VALUE,''999G999G999G999G990D00'')',
'else (select to_char((SUM(s.budget_value) + b.budget_value),''999G999G999G999G990D00'')',
'                     from xxpbg.XXPBG_BUDGET_SUPPLEMENTARY s where s.budget_id=b.budget_id)',
'end BV',
'',
'FROM XXPBG.XXPBG_BUDGET b, xxpbg.XXPBG_PROJECTS p',
'WHERE b.COMPANY_CODE=:SS_COMPANY_CODE',
'and b.project_id=p.project_id',
'order by budget_id desc'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P19_BUDGET_ID_LISTING:&BUDGET_ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_column', 'BUDGET_NAME',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    'Project : <font color="blue">&PROJECT_NAME.</font>',
    'Budget Account : <font color="green"> &BUDGET_ACCOUNT_TYPE.</font>',
    'Start Date : &BUDGET_START_DATE.',
    'End Date : &BUDGET_END_DATE.</font>',
    '</pre>')),
  'text_formatting', '&BUDGET_NAME.')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(53367052270589231)
,p_name=>'Budgets Details'
,p_region_name=>'budget_rep'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUDGET_ID,initcap(BUDGET_NAME),BUDGET_ACCOUNT_TYPE, BUDGET_START_DATE,BUDGET_END_DATE,BUDGET_VALUE,CREATED_DATE,',
'COMPANY_CODE,PROJECT_ID, NULL DEL,',
'case',
'when (select count(*) from xxpbg.XXPBG_BUDGET_SUPPLEMENTARY s where s.budget_id=b.budget_id)=0',
'then BUDGET_VALUE',
'else (select sum(s.budget_value) + b.budget_value from xxpbg.XXPBG_BUDGET_SUPPLEMENTARY s where budget_id=:P19_BUDGET_ID_LISTING)',
'END BUDGE',
'FROM XXPBG.XXPBG_BUDGET b',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND BUDGET_ID=:P19_BUDGET_ID_LISTING',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P19_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(29267395514771150)
,p_query_column_id=>1
,p_column_alias=>'BUDGET_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29270118838771156)
,p_query_column_id=>2
,p_column_alias=>'INITCAP(BUDGET_NAME)'
,p_column_display_sequence=>2
,p_column_heading=>'Budget Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29267774629771151)
,p_query_column_id=>3
,p_column_alias=>'BUDGET_ACCOUNT_TYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29270524451771157)
,p_query_column_id=>4
,p_column_alias=>'BUDGET_START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Budget Start Date'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29268106303771152)
,p_query_column_id=>5
,p_column_alias=>'BUDGET_END_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Budget End Date'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29268587087771153)
,p_query_column_id=>6
,p_column_alias=>'BUDGET_VALUE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29268952904771153)
,p_query_column_id=>7
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29269382715771155)
,p_query_column_id=>8
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'Organization'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Company_name d, company_code r',
'from xxhrms.xxhrms_companyinfo'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29269719453771156)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Project'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP(PROJECT_NAME) D, PROJECT_ID R',
'FROM XXPBG.XXPBG_PROJECTS'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29270941963771159)
,p_query_column_id=>10
,p_column_alias=>'DEL'
,p_column_display_sequence=>11
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete_bud" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#BUDGET_ID#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29271306011771160)
,p_query_column_id=>11
,p_column_alias=>'BUDGE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53368248190589243)
,p_plug_name=>'Budget Form'
,p_region_name=>'budget_form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77645216040556955)
,p_plug_name=>'Budget Details'
,p_region_name=>'empty_reg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<i>Select a budget from the budget pane to view details</i>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87085847727648651)
,p_plug_name=>'Supplementary Budget'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112317346108117818)
,p_plug_name=>'Assets Supplementary'
,p_parent_plug_id=>wwv_flow_imp.id(87085847727648651)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=001'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(58397382986634935)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58397382986634935
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29299161546771302)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29299548549771303)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29299997410771305)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29300347918771306)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29300789603771307)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29301178210771309)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29301527982771311)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29301951884771312)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29302365036771315)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112318802461117833)
,p_plug_name=>'Liability suplementary'
,p_parent_plug_id=>wwv_flow_imp.id(87085847727648651)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=005'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(58485799411015536)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58485799411015536
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29303060402771321)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29303421985771322)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29303837430771324)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29304238477771326)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29304677071771327)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29305087686771329)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29305443711771330)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29305872183771333)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29306200092771334)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112319984473117844)
,p_plug_name=>'Ownership Supplementary'
,p_parent_plug_id=>wwv_flow_imp.id(87085847727648651)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=003'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(58484872589015526)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58484872589015526
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29306939124771340)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29307311310771345)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29307738045771345)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29308144490771346)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29308591868771348)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29308983147771349)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29309309879771351)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29309796286771352)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29310114828771354)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112373079398179805)
,p_plug_name=>'Revenue Supplementary'
,p_parent_plug_id=>wwv_flow_imp.id(87085847727648651)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=002'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(58483853773015516)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58483853773015516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29310861866771359)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29311290284771360)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29311672909771362)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29312032586771362)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29312481451771364)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29312878876771366)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29313220021771367)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29313639052771369)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29314092348771370)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112374100300179816)
,p_plug_name=>'Expense Supplementary'
,p_parent_plug_id=>wwv_flow_imp.id(87085847727648651)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=004'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(58399441983634956)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58399441983634956
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29314732661771377)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29315105651771379)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29315583329771380)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29315935069771382)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29316343782771383)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29316789546771385)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29317174497771385)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29317561644771387)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29317924635771388)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112214773882289478)
,p_plug_name=>'Initial Budgets'
,p_region_name=>'budget_reps'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112065924284468780)
,p_plug_name=>'Initial Budget Details'
,p_parent_plug_id=>wwv_flow_imp.id(112214773882289478)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111401966330471806)
,p_plug_name=>'Assets'
,p_parent_plug_id=>wwv_flow_imp.id(112065924284468780)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=001'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(58383822994318828)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58383822994318828
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29279436836771206)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29279839818771207)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29280224380771208)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29280644183771209)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29281061858771210)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29281472488771210)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29281814596771211)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29282208686771212)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58394126337624106)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'292826'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112101723035791808)
,p_plug_name=>'Liability'
,p_parent_plug_id=>wwv_flow_imp.id(112065924284468780)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=005'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(58384729180318837)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58384729180318837
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29283346965771226)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29283777922771226)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29284192677771227)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29284524776771228)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29284989240771229)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29285368357771230)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29285779628771233)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29286126358771234)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58431291468644807)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'292865'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112164347695842971)
,p_plug_name=>'Ownership'
,p_parent_plug_id=>wwv_flow_imp.id(112065924284468780)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=003'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(58384828185318838)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58384828185318838
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29287233277771240)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29287661936771242)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29288036138771243)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29288410599771245)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29288812505771245)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29289221720771248)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29289653819771249)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29290046458771251)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58431893660644812)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'292904'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112164432568842972)
,p_plug_name=>'Revenue'
,p_parent_plug_id=>wwv_flow_imp.id(112065924284468780)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=002'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(58384929312318839)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58384929312318839
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29291153933771260)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29291559804771263)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29291959890771266)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29292304655771266)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29292759356771270)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29293150664771272)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29293518476771273)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29293993853771275)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58432636722644816)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'292943'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112164563763842973)
,p_plug_name=>'Expense'
,p_parent_plug_id=>wwv_flow_imp.id(112065924284468780)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'and coa=004'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(58385006966318840)
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
,p_owner=>'KUNLE'
,p_internal_uid=>58385006966318840
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29295058988771281)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29295409246771284)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29295812062771285)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29296200800771287)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29296641534771289)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29297004007771290)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29297343768771292)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29297708978771293)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58433350676644821)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'292981'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29273919947771167)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_button_name=>'SAVE_BUDGET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29274393817771167)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29272535609771163)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(53367052270589231)
,p_button_name=>'Budget_valuex'
,p_button_static_id=>'init_bud'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Budget'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_ACTION,P10_BUDGET_ID_LISTING:INIT,&P19_BUDGET_ID_LISTING.'
,p_button_condition=>'select * from XXPBG.XXPBG_BUDGET_INITIAL where BUDGET_ID=:P19_BUDGET_ID_LISTING'
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-code-fork'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29271733288771160)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(53367052270589231)
,p_button_name=>'Budget_Duplicate'
,p_button_static_id=>'init_bud'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'reate Supplementary Budget'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_ACTION,P10_BUDGET_ID_LISTING:INIT,&P19_BUDGET_ID_LISTING.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING',
'AND EXISTS (SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB',
'           WHERE TRANS_TYPE=''BUDGET'')',
'AND NOT EXISTS (SELECT * FROM XXHRMS.XXHRMS_APPROVAL_TAB',
'           WHERE TRANS_TYPE=''BUDGET''',
'               AND STATUS IN (''PENDING, REJECTED'') AND TRANS_ID=:P19_BUDGET_ID_LISTING)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-code-fork'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29273224249771165)
,p_button_sequence=>10
,p_button_name=>'create_budget'
,p_button_static_id=>'bud_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Budget'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29272173244771162)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53367052270589231)
,p_button_name=>'SUP_BUDGET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Create Supplemantary Budget'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-angle-double-down'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29274756215771168)
,p_name=>'P19_BUDGET_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_prompt=>'Budget Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(29275126210771176)
,p_name=>'P19_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP(PROJECT_NAME) D, PROJECT_ID R',
'FROM XXPBG.XXPBG_PROJECTS',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE'))
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
 p_id=>wwv_flow_imp.id(29275518399771178)
,p_name=>'P19_COMPANY_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_prompt=>'Organization'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Company_name d, company_code r',
'from xxhrms.xxhrms_companyinfo',
'where company_code=:SS_COMPANY_CODE'))
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29275998922771178)
,p_name=>'P19_BUDGET_ACCOUNT_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_prompt=>'Budget Account Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME D,ID',
'FROM XXGLD.XXGLD_CHART_OF_ACCOUNT WHERE COMPANY_CODE=:SS_COMPANY_CODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29276310001771179)
,p_name=>'P19_BUDGET_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_prompt=>'Budget Value'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onkeyup="this.value=add_commas(this.value)";'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29276772546771181)
,p_name=>'P19_BUDGET_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29277124154771181)
,p_name=>'P19_BUDGET_ID_LISTING'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29277575082771182)
,p_name=>'P19_BUDGET_START_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'focus',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29277914689771184)
,p_name=>'P19_BUDGET_END_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(53368248190589243)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'focus',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29318889811771414)
,p_name=>'NEW PAGE'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29319352368771417)
,p_event_id=>wwv_flow_imp.id(29318889811771414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P19_BUDGET_ID_LISTING'')==''''){',
'    $("#empty_reg").show();',
'     $("#budget_rep").hide();',
'    $("#init_rep").hide();',
'    $("#budget_reps").hide();',
'    $("#budget_reps").hide();',
'}',
'else{',
'    $("#budget_rep").show();',
'    $("#init_rep").show();',
'    $("#sup_bud_result").show();',
'    $("#empty_reg").hide();',
'    $("#budget_reps").show();',
'    $("#budget_reps").show();',
'}',
'$("#budget_form").hide();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29319701946771417)
,p_name=>'CREATE BUDGET'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24101772054818134)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29320217782771418)
,p_event_id=>wwv_flow_imp.id(29319701946771417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#budget_form'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29320772954771419)
,p_event_id=>wwv_flow_imp.id(29319701946771417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#budget_rep,#bud_button,#empty_reg,#init_rep,#budget_reps'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29321202218771420)
,p_event_id=>wwv_flow_imp.id(29319701946771417)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_BUDGET_ID,P19_BUDGET_NAME,P19_COMPANY_CODE,P19_PROJECT_ID,P19_BUDGET_ACCOUNT_TYPE,P19_BUDGET_VALUE,P19_BUDGET_START_DATE,P19_BUDGET_END_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29321654146771421)
,p_name=>'CANCEL FORM'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29274393817771167)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29322147244771422)
,p_event_id=>wwv_flow_imp.id(29321654146771421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(confirm("Cancel budget creation?")){',
'',
'    //$("#budget_rep").show();',
'    ',
'    ',
'    $("#budget_form").hide();',
'    $s(''P19_BUDGET_NAME'','''');',
'$s(''P19_BUDGET_ACCOUNT_TYPE'','''');',
'$s(''P19_BUDGET_VALUE'','''');',
'$s(''P19_BUDGET_START_DATE'','''');',
'    $s(''P19_BUDGET_END_DATE'','''');',
'$("#bud_button").show();',
'    if ($v(''P19_BUDGET_ID_LISTING'')==''''){',
'    $("#empty_reg").show();',
'}',
'else{',
'    $("#budget_rep").show();',
'    $("#init_rep").show();',
'    $("#sup_bud_result").show();',
'    $(".init_budg").show();',
'}',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29322555625771422)
,p_name=>'SAVE budget'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29273919947771167)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29324564568771427)
,p_event_id=>wwv_flow_imp.id(29322555625771422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s((''P19_BUDGET_NAME''),($v(''P19_BUDGET_NAME'').replace(/\s+/, '' '')));',
'//$s((''P19_BUDGET_ACCOUNT_TYPE''),($v(''P19_BUDGET_ACCOUNT_TYPE'').replace(/\s+/, '' '')));',
'//$s((''P19_BUDGET_VALUE''),($v(''P19_BUDGET_VALUE'').replace(/\s+/, '' '')));',
'$s((''P19_BUDGET_START_DATE''),($v(''P19_BUDGET_START_DATE'').replace(/\s+/, '' '')));',
'//$s((''P19_BUDGET_VALUE''),($v(''P19_BUDGET_VALUE'').replace(/,/g, "")));',
'',
'',
'var a=$v("P19_BUDGET_NAME");',
'//var b=$v("P19_BUDGET_ACCOUNT_TYPE");',
'//var c=$v("P19_BUDGET_VALUE");',
'var d=$v("P19_BUDGET_START_DATE");',
'',
'/*if(!$.isNumeric($v("P19_BUDGET_VALUE"))){',
'',
'    alert(''Budget Value must be a number'');',
'    return false;',
'}*/',
'',
' if (a==""||d==""){',
'        alert(''Please fill the required fields'');',
'        return false;',
'    }',
'if (confirm("Save the budget now?")){',
'    apex.util.showSpinner( $( "#budget_form" ) );',
'    return true;',
'   ',
'}',
'else{',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29324014874771426)
,p_event_id=>wwv_flow_imp.id(29322555625771422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'if :P19_BUDGET_ID is null OR :P19_BUDGET_ID=''''',
'then',
'xxpbg.XXPBG_PROJECT_BUDGET.create_budget(',
'	p_budget_name =>:P19_BUDGET_NAME,',
'    p_project_id =>:P19_PROJECT_ID,',
'    p_budget_account_type =>NULL,',
'    p_budget_start_date =>:P19_BUDGET_START_DATE,',
'    p_budget_end_date =>:P19_BUDGET_END_DATE,',
'    p_budget_value =>NULL,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_emp_id => :AP_STAFF_ID,',
'    p_id =>:P19_BUDGET_ID);',
'/*',
'insert into xxpbg.XXPBG_BUDGET (BUDGET_NAME,PROJECT_ID,BUDGET_ACCOUNT_TYPE,BUDGET_START_DATE,BUDGET_END_DATE,',
'                            BUDGET_VALUE,COMPANY_CODE,CREATED_DATE)',
'VALUES (:P19_BUDGET_NAME,:P19_PROJECT_ID,:P19_BUDGET_ACCOUNT_TYPE,:P19_BUDGET_START_DATE,:P19_BUDGET_END_DATE,',
'       :P19_BUDGET_VALUE,:SS_COMPANY_CODE,SYSDATE);',
'       */',
'       ELSE',
'UPDATE xxpbg.XXPBG_BUDGET SET',
'BUDGET_NAME=:P19_BUDGET_NAME,',
'PROJECT_ID=:P19_PROJECT_ID,',
'',
'BUDGET_START_DATE=:P19_BUDGET_START_DATE,',
'BUDGET_END_DATE=:P19_BUDGET_END_DATE',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND BUDGET_ID=:P19_BUDGET_ID;',
'END IF;',
'END;'))
,p_attribute_02=>'P19_BUDGET_NAME,SS_COMPANY_CODE,P19_PROJECT_ID,P19_BUDGET_ACCOUNT_TYPE,P19_BUDGET_ID,P19_BUDGET_VALUE,P19_BUDGET_START_DATE,P19_BUDGET_END_DATE'
,p_attribute_03=>'P19_BUDGET_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29323089800771423)
,p_event_id=>wwv_flow_imp.id(29322555625771422)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//#budget_rep,#bud_button#budget_form',
'$("#bud_button").show();',
'    $("#budget_form").hide();',
'    $s(''P19_BUDGET_NAME'','''');',
'$s(''P19_BUDGET_ACCOUNT_TYPE'','''');',
'$s(''P19_BUDGET_VALUE'','''');',
'$s(''P19_BUDGET_START_DATE'','''');',
'$s(''P19_BUDGET_END_DATE'','''');',
'$s(''P19_BUDGET_ID_LISTING'',$v(''P19_BUDGET_ID''));',
'if ($v(''P19_BUDGET_ID_LISTING'')==''''){',
'    $("#empty_reg").show();',
'}',
'else{',
'    $("#budget_rep").show();',
'    $("#init_rep").show();',
'    $("#sup_bud_result").show();',
'}',
'apex.event.trigger(''#budget_rep'', ''apexrefresh'');',
'apex.event.trigger(''#init_rep'', ''apexrefresh'');',
'apex.event.trigger(''#sup_bud_result'', ''apexrefresh'');',
'$("#apex_wait_overlay").remove();',
'		$(".u-Processing").remove();',
'apex.submit();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29323526787771425)
,p_event_id=>wwv_flow_imp.id(29322555625771422)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53366937436589230)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29324922669771427)
,p_name=>'VIEW LISTING DETAILS'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.budg_listing'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29325487447771428)
,p_event_id=>wwv_flow_imp.id(29324922669771427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P19_BUDGET_ID_LISTING",$(this.triggeringElement).data(''id''));',
'',
'apex.event.trigger(''#budget_rep'', ''apexrefresh'');',
'$("#budget_rep").show();',
'$("#bud_button").show();',
'    $("#budget_form").hide();',
'$(".init_budg").show();',
'',
'$("#empty_reg").hide();',
'',
'$("#budget_form_sup").hide();',
'$("#sup_bud_result").show();',
'$("#init_rep").show();',
'//$("html, body").animate({ scrollTop:  $("#bud_crumbs").top }, "slow");',
'$("html, body").animate({ scrollTop: ''#bud_crumbs'' }, "slow");',
'',
'//apex.event.trigger(''#budget_rep'', ''apexrefresh'');',
'apex.event.trigger(''#sup_bud_result'', ''apexrefresh'');',
'apex.event.trigger(''#init_rep'', ''apexrefresh'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29325824985771429)
,p_name=>'DELETE LISTING'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete_bud'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29326342884771429)
,p_event_id=>wwv_flow_imp.id(29325824985771429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(confirm("Delete selected budget?")){',
'    apex.util.showSpinner( $( "#budget_rep" ) );',
'return true',
'}',
'else{',
'return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29326869771771430)
,p_event_id=>wwv_flow_imp.id(29325824985771429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'delete from xxpbg.XXPBG_BUDGET',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND BUDGET_ID=:P19_BUDGET_ID_LISTING;',
':P19_BUDGET_ID_LISTING:=null;',
'END;'))
,p_attribute_02=>'P19_BUDGET_ID,P19_BUDGET_ID_LISTING'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29327388283771431)
,p_event_id=>wwv_flow_imp.id(29325824985771429)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'		$(".u-Processing").remove();',
'$("#budget_rep").hide();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29327809149771432)
,p_event_id=>wwv_flow_imp.id(29325824985771429)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53366937436589230)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29328237835771432)
,p_name=>'SUP_BUDGET'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24151549871685709)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29328738521771433)
,p_event_id=>wwv_flow_imp.id(29328237835771432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#budget_form_sup'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29330789921771436)
,p_event_id=>wwv_flow_imp.id(29328237835771432)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_SUP_BUDGET_VALUE,P19_SUP_BUG_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29329253240771434)
,p_event_id=>wwv_flow_imp.id(29328237835771432)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#budget_rep,#budget_form,#init_rep,#sup_bud_result,#bud_button'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29329752358771434)
,p_event_id=>wwv_flow_imp.id(29328237835771432)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'select BUDGET_ID,PROJECT_ID,BUDGET_ACCOUNT_TYPE',
'                         ',
'into :P19_SUP_BUDGET_ID,:P19_SUP_PROJECT_ID,:P19_BUDGET_ACCOUNT_TYPE_1',
'       ',
'from xxpbg.XXPBG_BUDGET',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING;',
'end;'))
,p_attribute_02=>'P19_BUDGET_ID_LISTING'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29330264648771435)
,p_event_id=>wwv_flow_imp.id(29328237835771432)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_BUDGET_ID_LISTING'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29331102013771436)
,p_name=>'edit_BUDGET'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_sup_bud'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29331665731771437)
,p_event_id=>wwv_flow_imp.id(29331102013771436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#budget_form_sup'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29332113279771438)
,p_event_id=>wwv_flow_imp.id(29331102013771436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#budget_rep,#budget_form,#init_rep,#sup_bud_result,#bud_button'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29334103321771441)
,p_event_id=>wwv_flow_imp.id(29331102013771436)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P19_SUP_BUG_ID",$(this.triggeringElement).parent().data(''id''));'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29332664199771439)
,p_event_id=>wwv_flow_imp.id(29331102013771436)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'select BUDGET_ID,PROJECT_ID,BUDGET_ACCOUNT_TYPE',
'                         ',
'into :P19_SUP_BUDGET_ID,:P19_SUP_PROJECT_ID,:P19_BUDGET_ACCOUNT_TYPE_1',
'       ',
'from xxpbg.XXPBG_BUDGET',
'where BUDGET_ID=:P19_BUDGET_ID_LISTING;',
'',
'select to_char(BUDGET_VALUE,''999G999G999G999G990'')',
'into :P19_SUP_BUDGET_VALUE FROM xxpbg.XXPBG_BUDGET_SUPPLEMENTARY',
'WHERE SUP_BUDGET_ID=:P19_SUP_BUG_ID;',
'end;'))
,p_attribute_02=>'P19_BUDGET_ID_LISTING'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29333647255771440)
,p_event_id=>wwv_flow_imp.id(29331102013771436)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s((''P19_SUP_BUDGET_VALUE''),($v(''P19_SUP_BUDGET_VALUE'').replace(/\s+/, '''')));'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29333153270771440)
,p_event_id=>wwv_flow_imp.id(29331102013771436)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_BUDGET_ID_LISTING'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29335934798771446)
,p_name=>'New'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29336413460771447)
,p_event_id=>wwv_flow_imp.id(29335934798771446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_BUDGET_ACCOUNT_TYPE_1,P19_SUP_BUDGET_ID,P19_SUP_PROJECT_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29334568229771442)
,p_name=>'REFRESH'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(53367052270589231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29335004216771442)
,p_event_id=>wwv_flow_imp.id(29334568229771442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53367052270589231)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29335521073771443)
,p_event_id=>wwv_flow_imp.id(29334568229771442)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess(''Initial Budget Created'');',
'$(''#init_bud'').hide();',
'$(''#budget_reps'').show();'))
);
wwv_flow_imp.component_end;
end;
/
