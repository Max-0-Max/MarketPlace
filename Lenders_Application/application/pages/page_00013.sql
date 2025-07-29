prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>'Interactive'
,p_alias=>'INTERACTIVE'
,p_step_title=>'Interactive'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Target the table header cells in Classic Report */',
'table.t-Report-report thead th {',
'  background: #2C2E2F;',
'  font-family: Helvetica, Arial, sans-serif;',
'  font-weight: 700;',
'  font-size: 16px;',
'  line-height: 100%;',
'  letter-spacing: 0;',
'  align-items: center;',
'  color: #F6F7F9;',
'  height: 60px;',
'  padding: 12px;',
'  text-align: left;',
'}',
'',
'/* Remove spacing between table header cells */',
'.my-table {',
'  border-collapse: collapse;',
'  width: 100%;',
'}',
'',
'.my-table th {',
'  background: #2C2E2F;',
'  color: #F6F7F9;',
'  font-family: Helvetica, Arial, sans-serif;',
'  font-weight: 700;',
'  font-size: 16px;',
'  line-height: 100%;',
'  letter-spacing: 0;',
'  height: 60px;',
'  padding: 12px;',
'  border: none; /* Remove white lines */',
'}',
'',
'.t-Report-cell{',
'    background-color: white;',
'}',
'',
'/* Style the entire report table */',
'.t-Report-report {',
'  width: 100%;',
'  border-collapse: collapse;',
'  margin-top: 10px;',
'  border: none;',
'}',
'',
'/* Header style */',
'.t-Report-report thead th {',
'  background-color: #2C2E2F;',
'  color: #F6F7F9;',
'  font-family: Helvetica, Arial, sans-serif;',
'  font-weight: 700;',
'  font-size: 14px;',
'  text-align: left;',
'  padding: 12px;',
'  border: none;',
'}',
'',
'/* Table rows */',
'.t-Report-report tbody td {',
'  font-family: Helvetica;',
'font-weight: 400;',
'font-style: Regular;',
' font-size: 16px;',
'line-height: 100%;',
'letter-spacing: 0%; ',
'color: #7A7A7A;',
'}',
'',
'/* Bold and dark for loan amount */',
'.t-Report-report td:nth-child(4),',
'.t-Report-report td:nth-child(6) {',
'  font-weight: 700;',
'  color: #2C2E2F;',
'}',
'',
'/* Action link */',
'a.action-link {',
'  color: #2C2E2F;',
'  font-weight: bold;',
'  text-decoration: none;',
'}',
'',
'a.action-link:hover {',
'  text-decoration: underline;',
'}',
'',
'/* Optional: alternate row coloring */',
'.t-Report-report tbody tr:nth-child(even) {',
'  background-color: #f8f9fa;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75765708743632566)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56394687327590424)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(75766451680632576)
,p_name=>'Interactive'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'                a.person_id,',
'                initcap(a.full_name) full_name,',
'                d.product_id,',
'                d.product_type,',
'                c.loan_type_id,',
'                c.loan_type,',
'                b.loan_id,',
unistr('                (''\20A6'' || b.loan_amount) loan_amount,'),
'                b.loan_status,',
'                b.company_id,',
'                e.approval_level,',
'                e.disbursed_status,',
'                e.status,',
'                to_char(e.created_date, ''Day, DD Month YYYY'') created_date,',
'                to_char(b.disbursed_date, ''Day, DD Month YYYY'') disbursed_date,',
unistr('                ''Take Action \2197'' AS ACTION'),
'            FROM ',
'                XXHRMS.XXHRMS_PEOPLE a',
'            JOIN ',
'                XXMRKT.XXMRKT_APPLIED_LOANS b',
'                ON a.person_id = b.staff_id',
'            JOIN ',
'                XXMRKT.XXMRKT_PRODUCT_LIST d',
'                ON b.product_id = d.product_id',
'            JOIN ',
'                XXMRKT.XXMRKT_LOAN_TYPES c',
'                ON d.product_type = c.loan_type_id',
'            JOIN ',
'                XXMRKT.XXMRKT_LOAN_STATUS e',
'                ON e.loan_id = b.loan_id',
'            /*WHERE ',
'                b.company_id = :P9_COMPANY_ID',
'                AND b.company_code = :AP_COMPANY_CODE',
'                AND E.APPROVAL_LEVEL = :AP_LEVEL',
'                and e.status = ''DENIED''*/',
'            ORDER BY ',
'                b.creation_date DESC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75773230536656704)
,p_query_column_id=>1
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75773364339656705)
,p_query_column_id=>2
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75773436360656706)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75773584915656707)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Product Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75773668978656708)
,p_query_column_id=>5
,p_column_alias=>'LOAN_TYPE_ID'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75773777154656709)
,p_query_column_id=>6
,p_column_alias=>'LOAN_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'Loan Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75773809594656710)
,p_query_column_id=>7
,p_column_alias=>'LOAN_ID'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75773910371656711)
,p_query_column_id=>8
,p_column_alias=>'LOAN_AMOUNT'
,p_column_display_sequence=>80
,p_column_heading=>'Loan Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75774060295656712)
,p_query_column_id=>9
,p_column_alias=>'LOAN_STATUS'
,p_column_display_sequence=>90
,p_column_heading=>'Loan Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75774135121656713)
,p_query_column_id=>10
,p_column_alias=>'COMPANY_ID'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75774232694656714)
,p_query_column_id=>11
,p_column_alias=>'APPROVAL_LEVEL'
,p_column_display_sequence=>110
,p_column_heading=>'Approval Level'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75774339127656715)
,p_query_column_id=>12
,p_column_alias=>'DISBURSED_STATUS'
,p_column_display_sequence=>120
,p_column_heading=>'Disbursed Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75774431789656716)
,p_query_column_id=>13
,p_column_alias=>'STATUS'
,p_column_display_sequence=>130
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75774519331656717)
,p_query_column_id=>14
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>140
,p_column_heading=>'Created Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75774693987656718)
,p_query_column_id=>15
,p_column_alias=>'DISBURSED_DATE'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(75774760682656719)
,p_query_column_id=>16
,p_column_alias=>'ACTION'
,p_column_display_sequence=>160
,p_column_heading=>'Action'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75564075481060709)
,p_name=>'P13_COMPANY_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
