prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_name=>'View Other Assigned KPIs'
,p_alias=>'WG1'
,p_step_title=>'View Other Assigned KPIs'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#STEP .a-GV-table td, #STEP .a-GV-table th {',
'  overflow: visible;',
'  overflow-wrap: break-word;',
'  text-overflow: ellipsis;',
'  white-space: normal;',
'}',
'',
'#STEP2 .a-GV-table td, #STEP2 .a-GV-table th {',
'  overflow: visible;',
'  overflow-wrap: break-word;',
'  text-overflow: ellipsis;',
'  white-space: normal;',
'}',
'',
'#STEP3 .a-GV-table td, #STEP3 .a-GV-table th {',
'  overflow: visible;',
'  overflow-wrap: break-word;',
'  text-overflow: ellipsis;',
'  white-space: normal;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94541820375556135)
,p_plug_name=>'Peer to Peer Appraisal'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT A.EMPLOYEE,',
'       A.APPRAISAL_ID,',
'       (SELECT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY) PEER_ID,',
'	   (SELECT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY) peer_name,',
'	   A.INS_BY,',
'       --trunc(A.INS_TIME) ins_time,',
'       A.SUPERVISOR,',
'       B.OBJECTIVE_SCORE,',
'	   B.MAX_OBJ_SCORE,',
'	   B.COMPETENCY_SCORE,',
'	   B.MAX_COMP_SCORE,',
'	   B.TOTAL_SCORE,',
'	   B.OVERALL_SCORE,',
'	   B.PERCENTAGE',
'  from XXPERMGT.XXPERMGT_P2P_TASK_SETUP A',
'  LEFT JOIN XXPERMGT.XXPERMGT_APPRAISAL_P2P_SCORE B ON A.APPRAISAL_ID = B.APPRAISAL_ID ',
'  													AND A.EMPLOYEE = B.EMPLOYEE_ID ',
'													AND B.PEER_ID = (SELECT DISTINCT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY)',
'  where A.APPRAISAL_ID = :P56_APPRAISAL_ID',
'  AND A.EMPLOYEE = :AP_STAFF_ID'))
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
 p_id=>wwv_flow_imp.id(94541973960556136)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Peer to Peer Appraisal Not Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:RP,58:P58_APPRAISAL_ID,P58_INS_BY,P58_PEER_ID:&P56_APPRAISAL_ID.,#INS_BY#,#PEER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'AWAZIRI'
,p_internal_uid=>94541973960556136
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94542168264556138)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94542830502556145)
,p_db_column_name=>'APPRAISAL_ID'
,p_display_order=>90
,p_column_identifier=>'B'
,p_column_label=>'Appraisal Plan'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(300009633571926267)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94543323737556150)
,p_db_column_name=>'SUPERVISOR'
,p_display_order=>140
,p_column_identifier=>'D'
,p_column_label=>'Supervisor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95288686159729014)
,p_db_column_name=>'PEER_ID'
,p_display_order=>150
,p_column_identifier=>'E'
,p_column_label=>'Peer Staff ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95288713459729015)
,p_db_column_name=>'OBJECTIVE_SCORE'
,p_display_order=>160
,p_column_identifier=>'F'
,p_column_label=>'Objective Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95288825524729016)
,p_db_column_name=>'MAX_OBJ_SCORE'
,p_display_order=>170
,p_column_identifier=>'G'
,p_column_label=>'Max Obj Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95288979913729017)
,p_db_column_name=>'COMPETENCY_SCORE'
,p_display_order=>180
,p_column_identifier=>'H'
,p_column_label=>'Competency Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95289097584729018)
,p_db_column_name=>'MAX_COMP_SCORE'
,p_display_order=>190
,p_column_identifier=>'I'
,p_column_label=>'Max Comp Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95289178500729019)
,p_db_column_name=>'TOTAL_SCORE'
,p_display_order=>200
,p_column_identifier=>'J'
,p_column_label=>'Total Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95289272803729020)
,p_db_column_name=>'OVERALL_SCORE'
,p_display_order=>210
,p_column_identifier=>'K'
,p_column_label=>'Overall Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95289301300729021)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>220
,p_column_identifier=>'L'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95309667566893301)
,p_db_column_name=>'INS_BY'
,p_display_order=>230
,p_column_identifier=>'M'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95310461147893309)
,p_db_column_name=>'PEER_NAME'
,p_display_order=>240
,p_column_identifier=>'N'
,p_column_label=>'Peer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(95296332177825221)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'952964'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PEER_ID:PEER_NAME:APPRAISAL_ID:OBJECTIVE_SCORE:MAX_OBJ_SCORE:COMPETENCY_SCORE:MAX_COMP_SCORE:TOTAL_SCORE:OVERALL_SCORE:PERCENTAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95289459216729022)
,p_plug_name=>'Non Supervisory Appraisal'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT A.EMPLOYEE,',
'       A.APPRAISAL_ID,',
'       (SELECT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY) NON_SUP_ID,',
'	   (SELECT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY) NON_SUP_name,',
'	   A.INS_BY,',
'       --A.INS_TIME,',
'       A.SUPERVISOR,',
'       B.OBJECTIVE_SCORE,',
'	   B.MAX_OBJ_SCORE,',
'	   B.COMPETENCY_SCORE,',
'	   B.MAX_COMP_SCORE,',
'	   B.TOTAL_SCORE,',
'	   B.OVERALL_SCORE,',
'	   B.PERCENTAGE',
'  from XXPERMGT.XXPERMGT_NONSUP_TASK_SETUP A',
'  LEFT JOIN XXPERMGT.XXPERMGT_APPRAISAL_NONSUP_SCORE B ON A.APPRAISAL_ID = B.APPRAISAL_ID ',
'  													AND A.EMPLOYEE = B.EMPLOYEE_ID ',
'													AND B.NON_SUP_ID = (SELECT DISTINCT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY)',
'  where A.APPRAISAL_ID = :P56_APPRAISAL_ID',
'  AND A.EMPLOYEE = :AP_STAFF_ID'))
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
 p_id=>wwv_flow_imp.id(95289590585729023)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Non Supervisory Appraisal Not Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RP:P59_APPRAISAL_ID,P59_NONSUP_ID,P59_INS_BY:&P56_APPRAISAL_ID.,#NON_SUP_ID#,#INS_BY#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'AWAZIRI'
,p_internal_uid=>95289590585729023
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95289604977729024)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95289721840729025)
,p_db_column_name=>'APPRAISAL_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Appraisal Plan'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(300009633571926267)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95289989801729027)
,p_db_column_name=>'SUPERVISOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Supervisor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95290183103729029)
,p_db_column_name=>'OBJECTIVE_SCORE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Objective Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95290272748729030)
,p_db_column_name=>'MAX_OBJ_SCORE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Max Obj Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95290320558729031)
,p_db_column_name=>'COMPETENCY_SCORE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Competency Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95290466738729032)
,p_db_column_name=>'MAX_COMP_SCORE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Max Comp Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95290504136729033)
,p_db_column_name=>'TOTAL_SCORE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Total Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95290612675729034)
,p_db_column_name=>'OVERALL_SCORE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Overall Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95290731094729035)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95309720339893302)
,p_db_column_name=>'NON_SUP_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Non Supervisor Staff_ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95310529688893310)
,p_db_column_name=>'NON_SUP_NAME'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Non Supervisor Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95310925834893314)
,p_db_column_name=>'INS_BY'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(95305665732855426)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'953057'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NON_SUP_ID:NON_SUP_NAME:APPRAISAL_ID:OBJECTIVE_SCORE:MAX_OBJ_SCORE:COMPETENCY_SCORE:MAX_COMP_SCORE:TOTAL_SCORE:OVERALL_SCORE:PERCENTAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95290877395729036)
,p_plug_name=>'Subordinate Appraisal'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT A.EMPLOYEE,',
'       A.APPRAISAL_ID,',
'       (SELECT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY) SUBORDINATE_ID,',
'	   (SELECT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY) SUBORDINATE_name,',
'	   A.INS_BY,',
'       --A.INS_TIME,',
'       A.SUPERVISOR,',
'       B.OBJECTIVE_SCORE,',
'	   B.MAX_OBJ_SCORE,',
'	   B.COMPETENCY_SCORE,',
'	   B.MAX_COMP_SCORE,',
'	   B.TOTAL_SCORE,',
'	   B.OVERALL_SCORE,',
'	   B.PERCENTAGE',
'  from XXPERMGT.XXPERMGT_SUBORD_TASK_SETUP A',
'  LEFT JOIN XXPERMGT.XXPERMGT_APPRAISAL_SUBORD_SCORE B ON A.APPRAISAL_ID = B.APPRAISAL_ID ',
'  													AND A.EMPLOYEE = B.EMPLOYEE_ID ',
'													AND B.SUBORDINATE_ID = (SELECT DISTINCT STAFF_ID FROM XXADM.XXADM_PASSWORD WHERE LOGNAME = A.INS_BY)',
'  where A.APPRAISAL_ID = :P56_APPRAISAL_ID',
'  AND A.EMPLOYEE = :AP_STAFF_ID'))
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
 p_id=>wwv_flow_imp.id(95290940574729037)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Subordinate Appraisal Not Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63:P63_APPRAISAL_ID,P63_INS_BY,P63_SUBORD_ID:&P56_APPRAISAL_ID.,#INS_BY#,#SUBORDINATE_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'AWAZIRI'
,p_internal_uid=>95290940574729037
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95291057635729038)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95291144685729039)
,p_db_column_name=>'APPRAISAL_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Appraisal Plan'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(300009633571926267)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95291393295729041)
,p_db_column_name=>'SUPERVISOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Supervisor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95291591000729043)
,p_db_column_name=>'OBJECTIVE_SCORE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Objective Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95291636457729044)
,p_db_column_name=>'MAX_OBJ_SCORE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Max Obj Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95291746286729045)
,p_db_column_name=>'COMPETENCY_SCORE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Competency Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95291838656729046)
,p_db_column_name=>'MAX_COMP_SCORE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Max Comp Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95291913315729047)
,p_db_column_name=>'TOTAL_SCORE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Total Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95292019967729048)
,p_db_column_name=>'OVERALL_SCORE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Overall Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95292126142729049)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95309996011893304)
,p_db_column_name=>'SUBORDINATE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Subordinate Staff ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95310722763893312)
,p_db_column_name=>'SUBORDINATE_NAME'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Subordinate Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(95311053397893315)
,p_db_column_name=>'INS_BY'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(95306290265855437)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'953063'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUBORDINATE_ID:SUBORDINATE_NAME:APPRAISAL_ID:OBJECTIVE_SCORE:MAX_OBJ_SCORE:COMPETENCY_SCORE:MAX_COMP_SCORE:TOTAL_SCORE:OVERALL_SCORE:PERCENTAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95292241675729050)
,p_plug_name=>'Other Appraisals'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208759976907256552)
,p_plug_name=>'Other Assigned KPIs'
,p_icon_css_classes=>'fa-clipboard-list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95312687105893331)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(208759976907256552)
,p_button_name=>'back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P56_GOTO.:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95310363478893308)
,p_name=>'P56_APPRAISAL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95292241675729050)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95312749726893332)
,p_name=>'P56_GOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208759976907256552)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95166334425998173)
,p_name=>'get_details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_APPRAISAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95166876529998191)
,p_event_id=>wwv_flow_imp.id(95166334425998173)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95165547172998170)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_emp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select a.full_name,a.person_id,a.email_address,a.telephone_number_1',
'into :P56_EMPLOYEE_NAME,:P56_STAFF_ID,:P56_EMAIL_ADDRESS,:P56_CONTACT_NUMBER',
'from xxhrms_master_all a',
'where a.person_id = :P56_STAFF_ID;',
'exception',
'when others then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>95165547172998170
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95165916030998171)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c_mgt is',
'    select  title,effective_start_date,effective_end_date,status,mgr_due_date,emp_due_date, ',
'        case when trunc(sysdate) between mgr_due_date and emp_due_date then ''ACTIVE'' ELSE ''INACTIVE'' END due_status,NVL(P2P_CLASS,''ORGANIZATION''),P2P_NUM',
'     from xxpermgt_appraisal_plan_setup',
'    where setup_id = :P56_APPRAISAL_ID',
'    order by 1;',
'begin  ',
'  open c_mgt;',
'  fetch c_mgt into :P56_APPRAISAL_TITLE,:P56_START_DATE,:P56_END_DATE,:P56_STATUS,:P56_MANAGER_DUE_DATE,:P56_EMPLOYEE_DUE_DATE,:P56_DUE_STATUS,:P56_P2P_CLASS,:P56_MAX_P2P_NUM;',
'  close c_mgt;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>95165916030998171
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95165134388998169)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get p2p'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CNT NUMBER;',
'BEGIN',
'SELECT COUNT(DISTINCT INS_BY) INTO V_CNT',
'FROM xxpermgt_P2P_task_setup',
'WHERE APPRAISAL_ID = :P56_APPRAISAL_ID',
'AND EMPLOYEE = :P56_STAFF_ID;',
'',
'IF :P56_MAX_P2P_NUM IS NULL THEN --ALWAYS ALLOW P2P',
'	:P56_ALLOW_P2P := ''Y'';',
'ELSE',
'	IF V_CNT < :P56_MAX_P2P_NUM THEN ',
'	 :P56_ALLOW_P2P := ''Y'';',
'	ELSE',
'	 :P56_ALLOW_P2P := ''N'';',
'	END IF;',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'	:P56_ALLOW_P2P := ''N'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>95165134388998169
);
wwv_flow_imp.component_end;
end;
/
