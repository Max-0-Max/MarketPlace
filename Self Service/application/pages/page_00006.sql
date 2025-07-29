prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Payroll Approval Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Payroll Approval Details'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.log{',
'    display:none;',
'}',
'.a-IRR-controlsContainer {',
'    display:none;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41966735593985817)
,p_plug_name=>'Payroll Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'                                 select staff_id,other_id ,aa.full_name,job_description, bank_name,Account_Number,grade,Step,location_name, ',
'                                        department, pfa_name, pin_no, aa.unit, ',
'                                        aa.sub_organization,SUBSTR(seq||element_name,1,30) element_name, AMT as Amount, AMT , element_name ELEMENT,paymonth_code',
'                                        FROM xxpay.xxpay_payroll_analysis_v aa, xxhrms_people bb ',
'                                        WHERE amt <> 0 AND staff_id = person_id ',
'                                    and paymonth_code = :P6_PMONTH',
'                                    and payrun = :P6_PAYRUN',
'                                       and aa.company_code = NVL(:P6_COMPANY_CODE,:AP_COMPANY_CODE )',
'									   and aa.company_code = bb.company_code',
'                                       and aa.SUB_ORGANIZATION_CODE = :P6_APP_GRP_CODE ',
'                                       and :P6_GROUP_TYPE = ''SUB''',
'                                   ',
'                                  UNION ALL',
'                                select staff_id,other_id ,aa.full_name,job_description, bank_name,Account_Number,grade,Step,location_name, ',
'                                        department, pfa_name, pin_no, aa.unit, ',
'                                        aa.sub_organization,SUBSTR(seq||element_name,1,30) element_name, AMT as Amount, AMT, element_name ELEMENT,paymonth_code',
'                                        FROM xxpay.xxpay_payroll_analysis_v aa, xxhrms_people bb ',
'                                        WHERE amt <> 0 AND staff_id = person_id ',
'                                      and paymonth_code = :P6_PMONTH',
'                                      and payrun = :P6_PAYRUN',
'                                       and aa.company_code = NVL(:P6_COMPANY_CODE,:AP_COMPANY_CODE )',
'									   and aa.company_code = bb.company_code',
'                                       and aa.LOCATION_CODE =  :P6_APP_GRP_CODE ',
'                                       and :P6_GROUP_TYPE =''LOC''',
'                                  UNION ALL',
'                                select staff_id,other_id ,aa.full_name,job_description, bank_name,Account_Number,grade,Step,location_name, ',
'                                        department, pfa_name, pin_no, aa.unit, ',
'                                        aa.sub_organization,SUBSTR(seq||element_name,1,30) element_name, AMT as Amount, AMT, element_name ELEMENT,paymonth_code',
'                                        FROM xxpay.xxpay_payroll_analysis_v aa, xxhrms_people bb ',
'                                         WHERE amt <> 0 AND staff_id = person_id ',
'                                      and paymonth_code = :P6_PMONTH',
'                                      and payrun = :P6_PAYRUN',
'                                       and aa.company_code = NVL(:P6_COMPANY_CODE,:AP_COMPANY_CODE )',
'									   and aa.company_code = bb.company_code',
'                                       and aa.DEPT_ID = :P6_APP_GRP_CODE ',
'                                       and :P6_GROUP_TYPE = ''DEPT''',
'                               UNION ALL',
'                                select staff_id,other_id ,aa.full_name,job_description, bank_name,Account_Number,grade,Step,location_name, ',
'                                        department, pfa_name, pin_no, aa.unit, ',
'                                        aa.sub_organization,SUBSTR(seq||element_name,1,30) element_name, AMT as Amount, AMT , element_name ELEMENT,paymonth_code',
'                                        FROM xxpay.xxpay_payroll_analysis_v aa, xxhrms_people bb ',
'                                        WHERE amt <> 0 AND staff_id = person_id ',
'                                      and paymonth_code = :P6_PMONTH',
'                                      and payrun = :P6_PAYRUN',
'                                       and aa.company_code = NVL(:P6_COMPANY_CODE,:AP_COMPANY_CODE )',
'									   and aa.company_code = bb.company_code',
'                                       and :P6_GROUP_TYPE =''GLOBAL''',
'                                       UNION ALL',
'                                select staff_id,other_id ,aa.full_name,job_description, bank_name,Account_Number,grade,Step,location_name, ',
'                                        department, pfa_name, pin_no, aa.unit, ',
'                                        aa.sub_organization,SUBSTR(seq||element_name,1,30) element_name, AMT as Amount, AMT , element_name ELEMENT,paymonth_code',
'                                        FROM xxpay.xxpay_payroll_analysis_v aa, xxhrms_people bb ',
'                                         WHERE amt <> 0 AND staff_id = person_id ',
'                                      and paymonth_code = :P6_PMONTH',
'                                      and payrun = :P6_PAYRUN',
'                                       and aa.company_code = NVL(:P6_COMPANY_CODE,:AP_COMPANY_CODE )',
'									   and aa.company_code = bb.company_code',
'                                       and aa.UNIT_ID = :P6_APP_GRP_CODE',
'                                       and :P6_GROUP_TYPE=''UNIT''',
'                                       ',
'                                )',
'               '))
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
 p_id=>wwv_flow_imp.id(41966879316985818)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KUNLE'
,p_internal_uid=>41966879316985818
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41966909951985819)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967013863985820)
,p_db_column_name=>'OTHER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Other Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967158681985821)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967252377985822)
,p_db_column_name=>'JOB_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Job Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967342839985823)
,p_db_column_name=>'BANK_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Bank Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967489207985824)
,p_db_column_name=>'ACCOUNT_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Account Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967552484985825)
,p_db_column_name=>'GRADE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967613634985826)
,p_db_column_name=>'STEP'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Step'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967774883985827)
,p_db_column_name=>'LOCATION_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&AP_LOCATION_LABEL.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967894874985828)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'&AP_DEPARTMENT_LABEL.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41967940323985829)
,p_db_column_name=>'PFA_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Pfa Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968082313985830)
,p_db_column_name=>'PIN_NO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Pin No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968102573985831)
,p_db_column_name=>'UNIT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968225092985832)
,p_db_column_name=>'SUB_ORGANIZATION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&AP_SUBORG_LABEL.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968367308985833)
,p_db_column_name=>'ELEMENT_NAME'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Element Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968475580985834)
,p_db_column_name=>'AMOUNT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968579675985835)
,p_db_column_name=>'AMT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Amt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968634490985836)
,p_db_column_name=>'ELEMENT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Element'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41968738914985837)
,p_db_column_name=>'PAYMONTH_CODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Paymonth Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41978527397070103)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'419786'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STAFF_ID:OTHER_ID:FULL_NAME:JOB_DESCRIPTION:BANK_NAME:ACCOUNT_NUMBER:GRADE:STEP:LOCATION_NAME:DEPARTMENT:PFA_NAME:PIN_NO:UNIT:SUB_ORGANIZATION:ELEMENT_NAME:AMOUNT:AMT:ELEMENT:PAYMONTH_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(41979828979166262)
,p_report_id=>wwv_flow_imp.id(41978527397070103)
,p_pivot_columns=>'ELEMENT'
,p_row_columns=>'STAFF_ID:FULL_NAME:DEPARTMENT'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(41980298192166263)
,p_pivot_id=>wwv_flow_imp.id(41979828979166262)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'AMOUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Amount'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41968803416985838)
,p_name=>'P6_PMONTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41966735593985817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41968977551985839)
,p_name=>'P6_APP_GRP_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41966735593985817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41969009310985840)
,p_name=>'P6_GROUP_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41966735593985817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41969297986985842)
,p_name=>'P6_APPR_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41966735593985817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43661424488006105)
,p_name=>'P6_PAYRUN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41966735593985817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55654728605708411)
,p_name=>'P6_COMPANY_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41966735593985817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
