prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>'Loan Request Form'
,p_alias=>'AY1'
,p_step_title=>'Loan Request Form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32812428100317327)
,p_plug_name=>'Loan Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP:P21_ID:&LOAN_ID.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_formatting', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<pre>',
    'Request Amount: <font color="green">&REQUEST_AMOUNT.</font>',
    'Request Date: <font color="green">&REQUEST_DATE.</font>',
    'Status: <font color="green">&STATUS.</font>',
    '</pre>')),
  'text_formatting', '<font color="blue">&LOAN_NAME.</font>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33198872105942709)
,p_plug_name=>'Loan Management'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44935756843972497)
,p_plug_name=>'Parent'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_read_only_when=>'P21_WORKFLOW_STATUS'
,p_plug_read_only_when2=>'NEW'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(47947151843386151)
,p_name=>'Loan Repayment Schedule'
,p_parent_plug_id=>wwv_flow_imp.id(44935756843972497)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from TABLE(xxhrms.xxhrms_loans_pkg.loan_appl_sched(:P21_ID))',
''))
,p_display_when_condition=>'P21_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33182699720942685)
,p_query_column_id=>1
,p_column_alias=>'LOAN_ID'
,p_column_display_sequence=>1
,p_column_heading=>'S/No.'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33183088071942685)
,p_query_column_id=>2
,p_column_alias=>'DEDUCT_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Repayment Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33183422085942686)
,p_query_column_id=>3
,p_column_alias=>'DEDUCT_AMOUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Repayment Amount'
,p_column_format=>'999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33183817601942686)
,p_query_column_id=>4
,p_column_alias=>'DEDUCT_INTEREST'
,p_column_display_sequence=>4
,p_column_heading=>'Interest'
,p_column_format=>'999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33184257358942686)
,p_query_column_id=>5
,p_column_alias=>'DEDUCT_NET_AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Principal'
,p_column_format=>'999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33184633759942687)
,p_query_column_id=>6
,p_column_alias=>'NET_TO_DATE_AMOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Principal To Date'
,p_column_format=>'999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33185043034942687)
,p_query_column_id=>7
,p_column_alias=>'OUT_BALANCE_AMOUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Outstanding Balance'
,p_column_format=>'999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33185472385942688)
,p_query_column_id=>8
,p_column_alias=>'DEDUCT_TO_DATE_AMOUNT'
,p_column_display_sequence=>8
,p_column_heading=>'Payment to Date'
,p_column_format=>'999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33185853319942688)
,p_query_column_id=>9
,p_column_alias=>'REPAYMENT_AMOUNT'
,p_column_display_sequence=>9
,p_column_heading=>'Amount Paid'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89809302751099979)
,p_plug_name=>'Loan Aplication Form'
,p_parent_plug_id=>wwv_flow_imp.id(44935756843972497)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(89957869348026529)
,p_name=>'Loan Types & Limit'
,p_parent_plug_id=>wwv_flow_imp.id(44935756843972497)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Initcap(loan_name) loan_name, to_char(xxhrms.xxhrms_loans_pkg.get_max_loan(:AP_STAFF_ID, aa.loan_code),''999,999,999,999.00'') max_amt, repayment_period ',
'FROM xxhrms.xxhrms_loans_setup aa, xxhrms.xxhrms_people bb',
'where aa.company_code = bb.company_code',
'and bb.person_id = :AP_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33196863619942703)
,p_query_column_id=>1
,p_column_alias=>'LOAN_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Loan Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33196086633942703)
,p_query_column_id=>2
,p_column_alias=>'MAX_AMT'
,p_column_display_sequence=>2
,p_column_heading=>'Max. Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33196429208942703)
,p_query_column_id=>3
,p_column_alias=>'REPAYMENT_PERIOD'
,p_column_display_sequence=>3
,p_column_heading=>'Repayment Period'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(102776309749657080)
,p_name=>'Approval Path'
,p_parent_plug_id=>wwv_flow_imp.id(44935756843972497)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select levels,supervisor',
'from xxhrms.xxhrms_approval_path_v'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(32812769239317330)
,p_query_column_id=>1
,p_column_alias=>'LEVELS'
,p_column_display_sequence=>1
,p_column_heading=>'Levels'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33354181585631749)
,p_query_column_id=>2
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>2
,p_column_heading=>'Supervisor'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33188115388942695)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save For Later'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P21_WORKFLOW_STATUS'
,p_button_condition2=>'APPROVED:PENDING'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33188552585942695)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Request'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_WORKFLOW_STATUS'
,p_button_condition2=>'NEW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32812541200317328)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_button_name=>'NewRequest'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Loan Request'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,21::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(33205758408942724)
,p_branch_name=>'after save'
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_ID:&P21_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(33188115388942695)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(33205399194942724)
,p_branch_name=>'Go To Page 56'
,p_branch_action=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>21
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(33206125425942725)
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.:Save:&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33186209494942688)
,p_name=>'P21_TOTAL_AMOUNT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(47947151843386151)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33186615528942691)
,p_name=>'P21_INTEREST_RATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(47947151843386151)
,p_prompt=>'Interest Rate'
,p_post_element_text=>'%'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2560619415224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33189324104942696)
,p_name=>'P21_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33189758619942696)
,p_name=>'P21_LOAN_TYPE_CODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_prompt=>'Loan Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOAN TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select loan_name d, loan_code r ',
'from xxhrms.XXHRMS_LOANS_SETUP',
'where company_code = :SS_COMPANY_CODE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Loan type--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33190139146942697)
,p_name=>'P21_LOAN_TYPE_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_source=>'LOAN_TYPE_CODE'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33190562683942697)
,p_name=>'P21_MAX_ELIGIBLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_prompt=>'Maximum Amount Eligible'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly", style="background-color:#dddddd;text-align:right;"'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33190990989942698)
,p_name=>'P21_MAX_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_prompt=>'Maximum Repayment Period'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="background-color:#dddddd;text-align:right;"'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33191305767942698)
,p_name=>'P21_REQUEST_AMOUNT'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_prompt=>'Request Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33191716146942698)
,p_name=>'P21_REQUEST_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_source=>'select sysdate from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33192103181942699)
,p_name=>'P21_STAFF_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33192538722942699)
,p_name=>'P21_DATE_REPAYMENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_prompt=>'Repayment Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_date', '+0m',
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33192991431942699)
,p_name=>'P21_DURATION_REPAYMENT'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_prompt=>'Repayment Periods'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33193378067942700)
,p_name=>'P21_LOAN_REASON'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_prompt=>'Loan Reason'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33193757266942700)
,p_name=>'P21_CREATED_BY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33194180106942700)
,p_name=>'P21_CREATED_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33194539391942701)
,p_name=>'P21_UPDATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33194903967942701)
,p_name=>'P21_UPDATED_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33195399588942702)
,p_name=>'P21_WORKFLOW_STATUS'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(89809302751099979)
,p_item_default=>'NEW'
,p_prompt=>'Loan Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>50
,p_tag_attributes=>'readonly="readonly", style="background-color:#dddddd;"'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(33199528366942715)
,p_validation_name=>'P21_CREATED_DATE must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P21_CREATED_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_validation_condition=>'TYPE'
,p_validation_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(33199994813942715)
,p_validation_name=>'P21_UPDATED_DATE must be timestamp'
,p_validation_sequence=>140
,p_validation=>'P21_UPDATED_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_validation_condition=>'TYPE'
,p_validation_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(33200377406942716)
,p_validation_name=>'amount'
,p_validation_sequence=>150
,p_validation=>'TO_NUMBER(REPLACE(TRIM(TO_CHAR(:P21_REQUEST_AMOUNT)),'','','''')) <= to_number(REPLACE(TRIM(TO_CHAR(:P21_MAX_ELIGIBLE)),'','',''''))'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Request Amount should not exceed Maximum Amount Eligible'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(33200727493942716)
,p_validation_name=>'repayment_period'
,p_validation_sequence=>160
,p_validation=>'to_number(:P21_MAX_PERIOD) >= TO_NUMBER(:P21_DURATION_REPAYMENT)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Repayment Periods [&P21_DURATION_REPAYMENT.] should not exceed Maximum Repayment Periods [&P21_MAX_PERIOD.] Allowed'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33203852983942721)
,p_name=>'get_loan_typ_details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_LOAN_TYPE_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33204399995942722)
,p_event_id=>wwv_flow_imp.id(33203852983942721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'  :P21_MAX_ELIGIBLE := to_char(xxhrms.xxhrms_loans_pkg.get_max_loan(:AP_STAFF_ID, :P21_LOAN_TYPE_CODE),''999,999,999,999.00'');',
'end;'))
,p_attribute_02=>'P21_LOAN_TYPE_CODE'
,p_attribute_03=>'P21_MAX_ELIGIBLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33204881153942723)
,p_event_id=>wwv_flow_imp.id(33203852983942721)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_MAX_PERIOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT REPAYMENT_PERIOD FROM XXHRMS.XXHRMS_LOANS_SETUP WHERE LOAN_CODE = :P21_LOAN_TYPE_CODE'
,p_attribute_07=>'P21_LOAN_TYPE_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33203051744942719)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get rows'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT loan_type_code, loan_type_name, TO_CHAR(request_amount,''999G999G999G999G999G990D00''), ',
'      TO_CHAR(max_eligible,''999G999G999G999G999G990D00''), request_date, ',
'      staff_id, loan_reason, date_repayment, duration_repayment, created_by, created_date, ',
'      updated_by, updated_date, NVL(workflow_status,''SAVED'')',
'  INTO :P21_LOAN_TYPE_CODE, :P21_LOAN_TYPE_NAME, :P21_REQUEST_AMOUNT, :P21_MAX_ELIGIBLE, ',
'      :P21_REQUEST_DATE, :P21_STAFF_ID, :P21_LOAN_REASON, :P21_DATE_REPAYMENT, ',
'      :P21_DURATION_REPAYMENT, :P21_CREATED_BY, :P21_CREATED_DATE, :P21_UPDATED_BY, ',
'      :P21_UPDATED_DATE, :P21_WORKFLOW_STATUS',
'FROM xxhrms_ss_loans',
'WHERE id = :P21_ID;',
'exception',
'  when no_data_found then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P21_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>33203051744942719
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33201040764942717)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BSYS_SS_LOANS'
,p_attribute_02=>'BSYS_SS_LOANS'
,p_attribute_03=>'P21_ID'
,p_attribute_04=>'ID'
,p_process_when_type=>'NEVER'
,p_internal_uid=>33201040764942717
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33202605868942719)
,p_process_sequence=>100
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get interest rate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select INTEREST_RATE',
'  into :P21_INTEREST_RATE',
'  from XXHRMS_LOANS_SETUP',
' where LOAN_CODE = :P21_LOAN_TYPE_CODE;',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P21_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>33202605868942719
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33203418178942720)
,p_process_sequence=>110
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_max_eligible'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c_period is',
'  SELECT REPAYMENT_PERIOD ',
'  FROM XXHRMS.XXHRMS_LOANS_SETUP ',
'  WHERE LOAN_CODE = :P21_LOAN_TYPE_CODE;',
'begin',
'  :P21_MAX_ELIGIBLE := to_char(xxhrms.xxhrms_loans_pkg.get_max_loan(:AP_STAFF_ID, :P21_LOAN_TYPE_CODE),''999,999,999,999.00'');',
'  OPEN c_period;',
'  FETCH c_period INTO :P21_MAX_PERIOD;',
'  CLOSE c_period;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P21_LOAN_TYPE_CODE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>33203418178942720
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32812674122317329)
,p_process_sequence=>120
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AUTH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);',
'',
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_TYPE''',
'      , p_value => ''LOAN'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32812674122317329
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33201866426942718)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process loan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_table xxhrms.xxhrms_ss_loans%ROWTYPE;',
'begin',
'  v_table.id := :P21_ID;',
'  v_table.loan_type_code := :P21_LOAN_TYPE_CODE;',
'  IF INSTR(:P21_REQUEST_AMOUNT,'','') < 1 THEN',
'     v_table.request_amount := :P21_REQUEST_AMOUNT;',
'  ELSE ',
'    v_table.request_amount := TO_NUMBER(replace(:P21_REQUEST_AMOUNT,'','',''''));--TO_NUMBER(:P21_REQUEST_AMOUNT,''999G999G999G999G999G990D00'') ;',
'  END IF;    ',
'  IF INSTR(:P21_MAX_ELIGIBLE,'','') < 1 THEN',
'     v_table.max_eligible := :P21_MAX_ELIGIBLE;',
'  ELSE ',
'    v_table.max_eligible := TO_NUMBER(replace(:P21_MAX_ELIGIBLE,'','','''')) ;',
'  END IF;    ',
'  v_table.request_date := :P21_REQUEST_DATE;',
'  v_table.loan_reason  := :P21_LOAN_REASON;',
'  v_table.date_repayment := :P21_DATE_REPAYMENT;',
'  v_table.duration_repayment := :P21_DURATION_REPAYMENT;',
'   V_table.WORKFLOW_STATUS := ''SAVED'';',
'  xxhrms.xxhrms_loans_pkg.loan_appl_prc(v_table);',
'  --commit;',
'  :P21_ID := v_table.id;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33188552585942695)
,p_internal_uid=>33201866426942718
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33202239465942718)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submit loan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_table xxhrms.xxhrms_ss_loans%ROWTYPE;',
'begin',
'  v_table.id := :P21_ID;',
'  v_table.loan_type_code := :P21_LOAN_TYPE_CODE;',
'  IF INSTR(:P21_REQUEST_AMOUNT,'','') < 1 THEN',
'     v_table.request_amount := :P21_REQUEST_AMOUNT;',
'  ELSE ',
'    v_table.request_amount := TO_NUMBER(:P21_REQUEST_AMOUNT,''999G999G999G999G999G990D00'') ;',
'  END IF;    ',
'  IF INSTR(:P21_MAX_ELIGIBLE,'','') < 1 THEN',
'     v_table.max_eligible := :P21_MAX_ELIGIBLE;',
'  ELSE ',
'    v_table.max_eligible := TO_NUMBER(:P21_MAX_ELIGIBLE,''999G999G999G999G999G990D00'') ;',
'  END IF;    ',
'  v_table.request_date := :P21_REQUEST_DATE;',
'  v_table.loan_reason  := :P21_LOAN_REASON;',
'  v_table.date_repayment := :P21_DATE_REPAYMENT;',
'  v_table.duration_repayment := :P21_DURATION_REPAYMENT;',
'  v_table.WORKFLOW_STATUS := ''NEW'';',
'  xxhrms.xxhrms_loans_pkg.loan_appl_prc(v_table);',
'  --commit;',
'  -----',
'         for i in (select levels,supervisor',
'            from xxhrms.xxhrms_approval_path_v',
'              order by 1)',
'     loop',
'          INSERT INTO xxhrms.XXHRMS_APPROVAL_TAB (TRANS_TYPE,APR_LVL,APR_ID,STATUS)',
'          VALUES (''LOAN'',i.levels,i.supervisor,''PENDING'');',
'     end loop;',
'     update xxhrms.XXHRMS_APPROVAL_TAB',
'     set TRANS_ID = (select MAX(ID) FROM XXHRMS.xxhrms_ss_loans WHERE CREATED_BY = :APP_USER and STAFF_ID = :AP_STAFF_ID)',
'     where TRANS_TYPE = ''LOAN''',
'     and TRANS_ID is null;',
'     --commit; --P21_ID',
'     :P21_WORKFLOW_STATUS := ''SUBMITTED'';',
'              XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''LOAN'',',
'                                                 pTRANS_ID => v_table.id,',
'                                                 pNOTETPYE => ''NewRequest''',
'                                                );',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                 pTYPE=> ''LOAN'',',
'                                 pTRANS_ID => v_table.id,',
'                                 pNOTETPYE => ''Approver''',
'                                );',
'                                ',
'  End;',
'  '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33188552585942695)
,p_process_success_message=>'Record Submitted Successfully'
,p_internal_uid=>33202239465942718
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33201446490942718)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'9,21'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'TYPE'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_internal_uid=>33201446490942718
);
wwv_flow_imp.component_end;
end;
/
