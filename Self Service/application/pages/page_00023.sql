prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>'Loan Details'
,p_alias=>'AX1'
,p_step_title=>'Loan Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8577344518881016)
,p_name=>'Loan Details'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT loan_id, staff_id, full_name, loan_name, request_amount, request_date, date_repayment, duration_repayment, auth_group,',
'  max_amt, interest_rate, grace_period, rate_of_basic, repayment_period, ',
'  workflow_status status,PAYMENT_STATUS,',
'(select sum(nvl(repayment_amount,0)) from TABLE(xxhrms.xxhrms_loans_pkg.loan_appl_sched(loan_id)))amount_paid,',
'(select sum(nvl(deduct_amount,0)) from TABLE(xxhrms.xxhrms_loans_pkg.loan_appl_sched(loan_id))) amount_payable,',
'loan_id||staff_id||full_name||loan_name||request_amount||request_date SEARCH',
'  FROM',
'(SELECT x.loan_id, x.STAFF_ID, z.full_NAME, y.loan_name, x.REQUEST_AMOUNT, x.REQUEST_DATE, x.DATE_REPAYMENT, x.auth_group,',
'   x.duration_repayment,  y.max_amt, y.interest_rate, y.grace_period, y.rate_of_basic, y.repayment_period, x.workflow_status,X.PAYMENT_STATUS',
'        FROM ',
'        (SELECT xx.ID loan_id, xx.STAFF_ID,  xx.duration_repayment, xx.REQUEST_AMOUNT, xx.REQUEST_DATE,  xx.DATE_REPAYMENT, ',
'        xx.workflow_status, yy.auth_group,xx.loan_type_code, xx.updated_by, XX.PAYMENT_STATUS',
'         ',
'        FROM xxhrms.xxhrms_ss_loans xx, xxhrms.xxhrms_staff_auth yy',
'        WHERE xx.staff_id = yy.staff_id(+)) x, ',
'        xxhrms.xxhrms_loans_setup y, xxhrms.xxhrms_people z        ',
'  -- AND i.logname = :AP_USERNAME) v',
'        WHERE x.LOAN_TYPE_CODE = y.LOAN_CODE',
'          AND x.staff_id = z.person_id',
'          AND x.staff_id = :AP_STAFF_ID)',
'          --AND x.workflow_status = ''APPROVED''',
'          --AND workflow_status IS NOT NULL)',
'          ORDER BY request_date desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579076099881033)
,p_query_column_id=>1
,p_column_alias=>'LOAN_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Loan Id'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579113822881034)
,p_query_column_id=>2
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Staff Id'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579287456881035)
,p_query_column_id=>3
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Full Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579326098881036)
,p_query_column_id=>4
,p_column_alias=>'LOAN_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Loan Name'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579477956881037)
,p_query_column_id=>5
,p_column_alias=>'REQUEST_AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Request Amount'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579585167881038)
,p_query_column_id=>6
,p_column_alias=>'REQUEST_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Request Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579603385881039)
,p_query_column_id=>7
,p_column_alias=>'DATE_REPAYMENT'
,p_column_display_sequence=>7
,p_column_heading=>'Date Repayment'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579708278881040)
,p_query_column_id=>8
,p_column_alias=>'DURATION_REPAYMENT'
,p_column_display_sequence=>8
,p_column_heading=>'Duration Repayment'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579858312881041)
,p_query_column_id=>9
,p_column_alias=>'AUTH_GROUP'
,p_column_display_sequence=>9
,p_column_heading=>'Auth Group'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8579984285881042)
,p_query_column_id=>10
,p_column_alias=>'MAX_AMT'
,p_column_display_sequence=>10
,p_column_heading=>'Max Amt'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8580071912881043)
,p_query_column_id=>11
,p_column_alias=>'INTEREST_RATE'
,p_column_display_sequence=>11
,p_column_heading=>'Interest Rate'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8580199750881044)
,p_query_column_id=>12
,p_column_alias=>'GRACE_PERIOD'
,p_column_display_sequence=>12
,p_column_heading=>'Grace Period'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8580294503881045)
,p_query_column_id=>13
,p_column_alias=>'RATE_OF_BASIC'
,p_column_display_sequence=>13
,p_column_heading=>'Rate Of Basic'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8580313361881046)
,p_query_column_id=>14
,p_column_alias=>'REPAYMENT_PERIOD'
,p_column_display_sequence=>14
,p_column_heading=>'Repayment Period'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8580490200881047)
,p_query_column_id=>15
,p_column_alias=>'STATUS'
,p_column_display_sequence=>15
,p_column_heading=>'Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8580549531881048)
,p_query_column_id=>16
,p_column_alias=>'PAYMENT_STATUS'
,p_column_display_sequence=>16
,p_column_heading=>'Payment Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8580658566881049)
,p_query_column_id=>17
,p_column_alias=>'AMOUNT_PAID'
,p_column_display_sequence=>17
,p_column_heading=>'Amount Paid'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8580707909881050)
,p_query_column_id=>18
,p_column_alias=>'AMOUNT_PAYABLE'
,p_column_display_sequence=>18
,p_column_heading=>'Amount Payable'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10454010751658101)
,p_query_column_id=>19
,p_column_alias=>'SEARCH'
,p_column_display_sequence=>19
,p_column_heading=>'Search'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(64557004241010109)
,p_name=>'Loan Details'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *From xxhrms.XXHRMS_LOAN_REQUEST_DETAILS',
'where STAFFID = ''010'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64557404707010121)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64557863949010122)
,p_query_column_id=>2
,p_column_alias=>'STAFFID'
,p_column_display_sequence=>2
,p_column_heading=>'Staff ID'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64558287411010122)
,p_query_column_id=>3
,p_column_alias=>'FULLNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64558640113010123)
,p_query_column_id=>4
,p_column_alias=>'LOANAMONUT'
,p_column_display_sequence=>4
,p_column_heading=>'Loan Amonut'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64559089910010123)
,p_query_column_id=>5
,p_column_alias=>'INTERESTPAYABLE'
,p_column_display_sequence=>5
,p_column_heading=>'Interest Payable'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64559421831010124)
,p_query_column_id=>6
,p_column_alias=>'REPAYMENTPERIOD'
,p_column_display_sequence=>6
,p_column_heading=>'Repayment Period'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64559824852010124)
,p_query_column_id=>7
,p_column_alias=>'STARTPAYDAY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64560263556010125)
,p_query_column_id=>8
,p_column_alias=>'ENDPAYDAY'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64560602016010125)
,p_query_column_id=>9
,p_column_alias=>'REPAYMENTSTARTDATE'
,p_column_display_sequence=>9
,p_column_heading=>'Repayment Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64561056058010126)
,p_query_column_id=>10
,p_column_alias=>'REPAYMENTENDDATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64561461264010126)
,p_query_column_id=>11
,p_column_alias=>'REPAYMENTAMOUNT'
,p_column_display_sequence=>11
,p_column_heading=>'Repayment Amount'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64561823993010126)
,p_query_column_id=>12
,p_column_alias=>'PRINCIPALAMOUNT'
,p_column_display_sequence=>12
,p_column_heading=>'Principal Amount'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64562277713010127)
,p_query_column_id=>13
,p_column_alias=>'INTEREST'
,p_column_display_sequence=>13
,p_column_heading=>'Interest'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64562658376010127)
,p_query_column_id=>14
,p_column_alias=>'TOTALREPAYMENT'
,p_column_display_sequence=>14
,p_column_heading=>'Total Repayment'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64563040827010128)
,p_query_column_id=>15
,p_column_alias=>'FEE'
,p_column_display_sequence=>15
,p_column_heading=>'Fee'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64563429880010128)
,p_query_column_id=>16
,p_column_alias=>'MONTHLYREPAYMENT'
,p_column_display_sequence=>16
,p_column_heading=>'Monthly Repayment'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64578601904010162)
,p_plug_name=>'Loan Details'
,p_icon_css_classes=>'fa-money'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp.component_end;
end;
/
