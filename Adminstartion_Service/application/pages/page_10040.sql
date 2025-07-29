prompt --application/pages/page_10040
begin
--   Manifest
--     PAGE: 10040
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
 p_id=>10040
,p_name=>'Job Reporting'
,p_alias=>'AG1'
,p_page_mode=>'MODAL'
,p_step_title=>'Job Reporting'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(3053965350201226)
,p_help_text=>'<p>This report includes all the jobs selected to be monitored by this application.  More details of each job can be viewed by clicking on the job name.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3065239422201255)
,p_plug_name=>'Job Reporting'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JOB_NAME,',
'       JOB_CLASS,',
'       ENABLED,',
'       STATE,',
'       RUN_COUNT,',
'       FAILURE_COUNT,',
'       RETRY_COUNT,',
'       REPEAT_INTERVAL,',
'       LAST_START_DATE,',
'       LAST_RUN_DURATION,',
'       JOB_SUBNAME,',
'       JOB_STYLE,',
'       JOB_CREATOR,',
'       CLIENT_ID,',
'       GLOBAL_UID,',
'       PROGRAM_OWNER,',
'       PROGRAM_NAME,',
'       JOB_TYPE,',
'       JOB_ACTION,',
'       NUMBER_OF_ARGUMENTS,',
'       SCHEDULE_OWNER,',
'       SCHEDULE_NAME,',
'       SCHEDULE_TYPE,',
'       START_DATE,',
'       EVENT_QUEUE_OWNER,',
'       EVENT_QUEUE_NAME,',
'       EVENT_QUEUE_AGENT,',
'       EVENT_CONDITION,',
'       EVENT_RULE,',
'       FILE_WATCHER_OWNER,',
'       FILE_WATCHER_NAME,',
'       END_DATE,',
'       AUTO_DROP,',
'       RESTART_ON_RECOVERY,',
'       RESTART_ON_FAILURE,',
'       JOB_PRIORITY,',
'       MAX_RUNS,',
'       MAX_FAILURES,',
'       NEXT_RUN_DATE,',
'       SCHEDULE_LIMIT,',
'       MAX_RUN_DURATION,',
'       LOGGING_LEVEL,',
'       STORE_OUTPUT,',
'       STOP_ON_WINDOW_CLOSE,',
'       INSTANCE_STICKINESS,',
'       RAISE_EVENTS,',
'       SYSTEM,',
'       JOB_WEIGHT,',
'       NLS_ENV,',
'       SOURCE,',
'       NUMBER_OF_DESTINATIONS,',
'       DESTINATION_OWNER,',
'       DESTINATION,',
'       CREDENTIAL_OWNER,',
'       CREDENTIAL_NAME,',
'       INSTANCE_ID,',
'       DEFERRED_DROP,',
'       ALLOW_RUNS_IN_RESTRICTED_MODE,',
'       COMMENTS,',
'       FLAGS,',
'       RESTARTABLE,',
'       CONNECT_CREDENTIAL_OWNER,',
'       CONNECT_CREDENTIAL_NAME',
'  from user_scheduler_jobs'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3066222304201256)
,p_name=>'Job Reporting'
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
,p_owner=>'HTEMITAYO'
,p_internal_uid=>3066222304201256
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3066327341201302)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Job Name'
,p_column_link=>'f?p=&APP_ID.:10041:&SESSION.::&DEBUG.:RP,CIR,RIR:IR_JOB_NAME:#JOB_NAME#'
,p_column_linktext=>'#JOB_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3066635990201302)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3067081168201303)
,p_db_column_name=>'ENABLED'
,p_display_order=>31
,p_column_identifier=>'C'
,p_column_label=>'Enabled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3067439728201304)
,p_db_column_name=>'STATE'
,p_display_order=>41
,p_column_identifier=>'D'
,p_column_label=>'&amp;AP_STATE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3067865418201304)
,p_db_column_name=>'RUN_COUNT'
,p_display_order=>51
,p_column_identifier=>'E'
,p_column_label=>'Run Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3068281603201305)
,p_db_column_name=>'FAILURE_COUNT'
,p_display_order=>61
,p_column_identifier=>'F'
,p_column_label=>'Failure Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3068614987201305)
,p_db_column_name=>'RETRY_COUNT'
,p_display_order=>66
,p_column_identifier=>'G'
,p_column_label=>'Retry Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3069066271201306)
,p_db_column_name=>'REPEAT_INTERVAL'
,p_display_order=>67
,p_column_identifier=>'H'
,p_column_label=>'Repeat Interval'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3069437754201307)
,p_db_column_name=>'LAST_START_DATE'
,p_display_order=>71
,p_column_identifier=>'I'
,p_column_label=>'Last Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3069856445201307)
,p_db_column_name=>'LAST_RUN_DURATION'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>'Last Run Duration'
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
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3070213462201308)
,p_db_column_name=>'JOB_SUBNAME'
,p_display_order=>91
,p_column_identifier=>'K'
,p_column_label=>'Job Subname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3070630491201308)
,p_db_column_name=>'JOB_STYLE'
,p_display_order=>101
,p_column_identifier=>'L'
,p_column_label=>'Job Style'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3071036265201309)
,p_db_column_name=>'JOB_CREATOR'
,p_display_order=>111
,p_column_identifier=>'M'
,p_column_label=>'Job Creator'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3071447420201310)
,p_db_column_name=>'CLIENT_ID'
,p_display_order=>115
,p_column_identifier=>'N'
,p_column_label=>'Client ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3071875237201310)
,p_db_column_name=>'GLOBAL_UID'
,p_display_order=>121
,p_column_identifier=>'O'
,p_column_label=>'Global Unique ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3072239322201311)
,p_db_column_name=>'PROGRAM_OWNER'
,p_display_order=>131
,p_column_identifier=>'P'
,p_column_label=>'Program Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3072601045201311)
,p_db_column_name=>'PROGRAM_NAME'
,p_display_order=>141
,p_column_identifier=>'Q'
,p_column_label=>'Program Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3073061193201312)
,p_db_column_name=>'JOB_TYPE'
,p_display_order=>151
,p_column_identifier=>'R'
,p_column_label=>'Job Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3073456971201313)
,p_db_column_name=>'JOB_ACTION'
,p_display_order=>161
,p_column_identifier=>'S'
,p_column_label=>'Job Action'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3073889055201313)
,p_db_column_name=>'NUMBER_OF_ARGUMENTS'
,p_display_order=>171
,p_column_identifier=>'T'
,p_column_label=>'Number of Arguements'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3074295869201314)
,p_db_column_name=>'SCHEDULE_OWNER'
,p_display_order=>171
,p_column_identifier=>'U'
,p_column_label=>'Schedule Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3074680456201314)
,p_db_column_name=>'SCHEDULE_NAME'
,p_display_order=>181
,p_column_identifier=>'V'
,p_column_label=>'Schedule Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3075001989201315)
,p_db_column_name=>'SCHEDULE_TYPE'
,p_display_order=>191
,p_column_identifier=>'W'
,p_column_label=>'Schedule Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3075499981201316)
,p_db_column_name=>'START_DATE'
,p_display_order=>195
,p_column_identifier=>'X'
,p_column_label=>'From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3075819437201316)
,p_db_column_name=>'EVENT_QUEUE_OWNER'
,p_display_order=>201
,p_column_identifier=>'Y'
,p_column_label=>'Event Queue Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3076258541201317)
,p_db_column_name=>'EVENT_QUEUE_NAME'
,p_display_order=>211
,p_column_identifier=>'Z'
,p_column_label=>'Event Queue Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3076606904201318)
,p_db_column_name=>'EVENT_QUEUE_AGENT'
,p_display_order=>221
,p_column_identifier=>'AA'
,p_column_label=>'Event Queue Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3077038910201318)
,p_db_column_name=>'EVENT_CONDITION'
,p_display_order=>231
,p_column_identifier=>'AB'
,p_column_label=>'Event Condition'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3077430628201319)
,p_db_column_name=>'EVENT_RULE'
,p_display_order=>241
,p_column_identifier=>'AC'
,p_column_label=>'Event Rule'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3077827192201319)
,p_db_column_name=>'FILE_WATCHER_OWNER'
,p_display_order=>251
,p_column_identifier=>'AD'
,p_column_label=>'File Watcher Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3078263975201320)
,p_db_column_name=>'FILE_WATCHER_NAME'
,p_display_order=>261
,p_column_identifier=>'AE'
,p_column_label=>'File Watcher Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3078690551201321)
,p_db_column_name=>'END_DATE'
,p_display_order=>271
,p_column_identifier=>'AF'
,p_column_label=>'To'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3079037609201321)
,p_db_column_name=>'AUTO_DROP'
,p_display_order=>281
,p_column_identifier=>'AG'
,p_column_label=>'Auto Drop'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3079435405201322)
,p_db_column_name=>'RESTART_ON_RECOVERY'
,p_display_order=>291
,p_column_identifier=>'AH'
,p_column_label=>'Restart on Recovery'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3079803572201322)
,p_db_column_name=>'RESTART_ON_FAILURE'
,p_display_order=>301
,p_column_identifier=>'AI'
,p_column_label=>'Restart on Failure'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3080279515201323)
,p_db_column_name=>'JOB_PRIORITY'
,p_display_order=>311
,p_column_identifier=>'AJ'
,p_column_label=>'Job Priority'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3080637250201324)
,p_db_column_name=>'MAX_RUNS'
,p_display_order=>321
,p_column_identifier=>'AK'
,p_column_label=>'Maximum Runs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3081098285201324)
,p_db_column_name=>'MAX_FAILURES'
,p_display_order=>331
,p_column_identifier=>'AL'
,p_column_label=>'Maximum Failures'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3081463031201325)
,p_db_column_name=>'NEXT_RUN_DATE'
,p_display_order=>351
,p_column_identifier=>'AM'
,p_column_label=>'Next Run Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3081846640201325)
,p_db_column_name=>'SCHEDULE_LIMIT'
,p_display_order=>361
,p_column_identifier=>'AN'
,p_column_label=>'Schedule Limit'
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
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082274383201326)
,p_db_column_name=>'MAX_RUN_DURATION'
,p_display_order=>371
,p_column_identifier=>'AO'
,p_column_label=>'Maximum Run Duration'
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
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082672192201327)
,p_db_column_name=>'LOGGING_LEVEL'
,p_display_order=>381
,p_column_identifier=>'AP'
,p_column_label=>'Logging Level'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3083089142201327)
,p_db_column_name=>'STORE_OUTPUT'
,p_display_order=>391
,p_column_identifier=>'AQ'
,p_column_label=>'Store Output'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3083495104201328)
,p_db_column_name=>'STOP_ON_WINDOW_CLOSE'
,p_display_order=>401
,p_column_identifier=>'AR'
,p_column_label=>'Stop on Window Close'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3083898882201328)
,p_db_column_name=>'INSTANCE_STICKINESS'
,p_display_order=>411
,p_column_identifier=>'AS'
,p_column_label=>'Instance Stickiness'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3084298298201329)
,p_db_column_name=>'RAISE_EVENTS'
,p_display_order=>421
,p_column_identifier=>'AT'
,p_column_label=>'Raise Events'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3084696927201330)
,p_db_column_name=>'SYSTEM'
,p_display_order=>431
,p_column_identifier=>'AU'
,p_column_label=>'System'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3085062760201330)
,p_db_column_name=>'JOB_WEIGHT'
,p_display_order=>441
,p_column_identifier=>'AV'
,p_column_label=>'Job Weight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3085449908201331)
,p_db_column_name=>'NLS_ENV'
,p_display_order=>451
,p_column_identifier=>'AW'
,p_column_label=>'NLS Environment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3085868344201331)
,p_db_column_name=>'SOURCE'
,p_display_order=>461
,p_column_identifier=>'AX'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3086264810201332)
,p_db_column_name=>'NUMBER_OF_DESTINATIONS'
,p_display_order=>471
,p_column_identifier=>'AY'
,p_column_label=>'Number of Destinations'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3086695122201333)
,p_db_column_name=>'DESTINATION_OWNER'
,p_display_order=>481
,p_column_identifier=>'AZ'
,p_column_label=>'Destination Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3087086316201333)
,p_db_column_name=>'DESTINATION'
,p_display_order=>491
,p_column_identifier=>'BA'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3087410655201334)
,p_db_column_name=>'CREDENTIAL_OWNER'
,p_display_order=>501
,p_column_identifier=>'BB'
,p_column_label=>'Credential Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3087836220201334)
,p_db_column_name=>'CREDENTIAL_NAME'
,p_display_order=>511
,p_column_identifier=>'BC'
,p_column_label=>'Credential Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3088273728201335)
,p_db_column_name=>'INSTANCE_ID'
,p_display_order=>521
,p_column_identifier=>'BD'
,p_column_label=>'Instance ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3088690852201336)
,p_db_column_name=>'DEFERRED_DROP'
,p_display_order=>531
,p_column_identifier=>'BE'
,p_column_label=>'Deferred Drop'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3089078621201336)
,p_db_column_name=>'ALLOW_RUNS_IN_RESTRICTED_MODE'
,p_display_order=>541
,p_column_identifier=>'BF'
,p_column_label=>'Allow Runs in Restricted Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3089479252201337)
,p_db_column_name=>'COMMENTS'
,p_display_order=>551
,p_column_identifier=>'BG'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3089857700201337)
,p_db_column_name=>'FLAGS'
,p_display_order=>561
,p_column_identifier=>'BH'
,p_column_label=>'Flags'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3090298795201338)
,p_db_column_name=>'RESTARTABLE'
,p_display_order=>571
,p_column_identifier=>'BI'
,p_column_label=>'Restartable'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3090637463201339)
,p_db_column_name=>'CONNECT_CREDENTIAL_OWNER'
,p_display_order=>581
,p_column_identifier=>'BJ'
,p_column_label=>'Connect Credential Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3091031338201339)
,p_db_column_name=>'CONNECT_CREDENTIAL_NAME'
,p_display_order=>591
,p_column_identifier=>'BK'
,p_column_label=>'Connect Credential Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3092051167201340)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'30921'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_NAME:ENABLED:STATE:RUN_COUNT:FAILURE_COUNT:RETRY_COUNT:REPEAT_INTERVAL:LAST_START_DATE:LAST_RUN_DURATION:NEXT_RUN_DATE'
,p_sort_column_1=>'JOB_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3092905375201341)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3065239422201255)
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
