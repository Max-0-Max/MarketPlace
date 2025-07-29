prompt --application/pages/page_10060
begin
--   Manifest
--     PAGE: 10060
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
 p_id=>10060
,p_name=>'Email Reporting'
,p_alias=>'AJ1'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Reporting'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(3105875534290165)
,p_help_text=>'<p>This report shows all email queued to be sent and those already sent.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3106171050290166)
,p_plug_name=>'Email Reporting'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.message(''APEX.FEATURE.EMAIL_REPORTING.QUEUED'') mail_status,',
'       id,',
'       mail_to,',
'       mail_from,',
'       mail_replyto,',
'       mail_subj,',
'       mail_cc,',
'       mail_bcc,',
'       mail_send_count,',
'       mail_send_error,',
'       last_updated_by,',
'       last_updated_on,',
'       mail_message_created, ',
'       lower(mail_message_created_by) message_created_by,',
'       app_id,',
'       dbms_lob.getlength(mail_body) text_body_size,',
'       dbms_lob.getlength(mail_body_html) html_body_size,',
'       null send_begin,',
'       null send_end,',
'       null mail_attachment_count,',
'       null mail_attachment_size',
'  from apex_mail_queue',
'union',
'select apex_lang.message(''APEX.FEATURE.EMAIL_REPORTING.SENT'') mail_status,',
'       mail_id id,',
'       mail_to,',
'       mail_from,',
'       mail_replyto,',
'       mail_subj,',
'       mail_cc,',
'       mail_bcc,',
'       null mail_send_count,',
'       mail_send_error,',
'       null last_updated_by,',
'       last_updated_on,',
'       mail_message_created,',
'       null message_created_by,',
'       app_id,',
'       mail_body_size text_body_size,',
'       mail_body_html_size html_body_size,',
'       mail_message_send_begin send_begin,',
'       mail_message_send_end   send_end,',
'       mail_attachment_count,',
'       mail_attachment_size',
'  from apex_mail_log'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3107109918290168)
,p_name=>'Email Reporting'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SUITEUSER'
,p_internal_uid=>3107109918290168
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3107204634290180)
,p_db_column_name=>'MAIL_STATUS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3107617805290181)
,p_db_column_name=>'ID'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>'&amp;nbsp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3108048168290182)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3108499762290183)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3108863717290184)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Reply To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3109230923290184)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3109614098290185)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'CC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110081626290185)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'BCC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110489806290186)
,p_db_column_name=>'MAIL_SEND_COUNT'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Send Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3110886394290187)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Send Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3111298438290187)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3111644571290188)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>111
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3112066602290188)
,p_db_column_name=>'MAIL_MESSAGE_CREATED'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3112499494290189)
,p_db_column_name=>'MESSAGE_CREATED_BY'
,p_display_order=>131
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3112848678290190)
,p_db_column_name=>'APP_ID'
,p_display_order=>141
,p_column_identifier=>'O'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3113224596290190)
,p_db_column_name=>'TEXT_BODY_SIZE'
,p_display_order=>151
,p_column_identifier=>'P'
,p_column_label=>'Text Body Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3113608928290191)
,p_db_column_name=>'HTML_BODY_SIZE'
,p_display_order=>161
,p_column_identifier=>'Q'
,p_column_label=>'HTML Body Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3114077546290191)
,p_db_column_name=>'SEND_BEGIN'
,p_display_order=>171
,p_column_identifier=>'R'
,p_column_label=>'Send Begin'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3114482776290192)
,p_db_column_name=>'SEND_END'
,p_display_order=>171
,p_column_identifier=>'S'
,p_column_label=>'Send End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3114825920290192)
,p_db_column_name=>'MAIL_ATTACHMENT_COUNT'
,p_display_order=>181
,p_column_identifier=>'T'
,p_column_label=>'Attachment Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3115274655290193)
,p_db_column_name=>'MAIL_ATTACHMENT_SIZE'
,p_display_order=>191
,p_column_identifier=>'U'
,p_column_label=>'Attachment Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3115923823290194)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'31160'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MAIL_STATUS:MAIL_TO:MAIL_FROM:MAIL_SUBJ:MAIL_SEND_COUNT:MAIL_SEND_ERROR:MAIL_MESSAGE_CREATED:MESSAGE_CREATED_BY:APP_ID:HTML_BODY_SIZE'
,p_sort_column_1=>'MAIL_MESSAGE_CREATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(274931680674865019)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Grouping'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'2749317'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MAIL_STATUS:MAIL_TO:MAIL_FROM:MAIL_SUBJ:MAIL_SEND_COUNT:MAIL_SEND_ERROR:MAIL_MESSAGE_CREATED:MESSAGE_CREATED_BY:APP_ID:HTML_BODY_SIZE'
,p_sort_column_1=>'MAIL_MESSAGE_CREATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(274932037959865038)
,p_report_id=>wwv_flow_imp.id(274931680674865019)
,p_group_by_columns=>'MAIL_SUBJ'
,p_function_01=>'COUNT'
,p_function_column_01=>'*'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3116888978290195)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3106171050290166)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp.component_end;
end;
/
