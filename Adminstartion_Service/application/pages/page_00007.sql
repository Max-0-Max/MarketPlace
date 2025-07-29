prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'User Management'
,p_alias=>'AL1'
,p_step_title=>'User Management'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3969159382855527)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5462108380166706)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15096932967255693)
,p_plug_name=>'User Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>30
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P7_REQUEST'
,p_plug_display_when_cond2=>'D'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(50793462463230396)
,p_name=>'ListOfComp'
,p_parent_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_template=>wwv_flow_imp.id(5431141257166683)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  A.*,COMPANY_CODE AS COMPCODE from XXADM.XXADM_EMP_COMP_CODE A',
'where staff_id = :P7_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(5475144363166715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3954502446855506)
,p_query_column_id=>1
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Staff id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3954913645855507)
,p_query_column_id=>2
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Company code'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3955349888855508)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_column_heading=>'&nbsp'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Company_name as d, company_code as r',
'from  xxhrms.xxhrms_companyinfo'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15124995832871240)
,p_name=>'User Roles'
,p_template=>wwv_flow_imp.id(5452712612166699)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"USER_ID",',
'"ROLE_CODE",',
'"START_DATE",',
'"END_DATE",',
'"ORDER_NO",',
'"STATUS",',
'"EFFECTIVE_START_DATE",',
'"EFFECTIVE_END_DATE"',
'from "XXADM"."XXADM_USER_ROLES_TAB"',
'where user_id = :P7_LOGNAME'))
,p_display_when_condition=>'RETURN :P7_LOGNAME IS NOT NULL AND :P7_REQUEST = ''D'';'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'FUNCTION_BODY'
,p_query_row_template=>wwv_flow_imp.id(5475144363166715)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3956430284855512)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3956818564855513)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'ROWID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3957290995855513)
,p_query_column_id=>3
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>3
,p_column_heading=>'User Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'P33_LOGNAME'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'USER_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3957617027855514)
,p_query_column_id=>4
,p_column_alias=>'ROLE_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Role'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT role_name, role_code ',
'from XXADM_ROLES_TAB'))
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'ROLE_CODE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3958034501855514)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'START_DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3958488072855515)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'End Date'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'END_DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3958803669855515)
,p_query_column_id=>7
,p_column_alias=>'ORDER_NO'
,p_column_display_sequence=>7
,p_column_heading=>'Order No'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'ORDER_NO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3959224160855515)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(3974823347855533)
,p_lov_show_nulls=>'YES'
,p_column_width=>15
,p_include_in_export=>'Y'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'STATUS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3959625024855516)
,p_query_column_id=>9
,p_column_alias=>'EFFECTIVE_START_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Effective Start Date'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'EFFECTIVE_START_DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3960029815855516)
,p_query_column_id=>10
,p_column_alias=>'EFFECTIVE_END_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Effective End Date'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXADM_USER_ROLES_TAB'
,p_ref_column_name=>'EFFECTIVE_END_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52166376959847403)
,p_plug_name=>'User Management'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P7_REQUEST'
,p_plug_display_when_cond2=>'D'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15093935997251156)
,p_plug_name=>'List of Users'
,p_parent_plug_id=>wwv_flow_imp.id(52166376959847403)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'       LOGNAME,',
'       STAFF_ID,',
'       LEVELS,',
'       EDATE,',
'       STATUS',
'  from XXADM.XXADM_PASSWORD'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P7_REQUEST'
,p_plug_display_when_cond2=>'D'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15094022047251156)
,p_name=>'List of Users'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.:D:&DEBUG.:RP:P7_LOGNAME,P7_REQUEST:#LOGNAME#,D'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'IADEBONA'
,p_internal_uid=>15094022047251156
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3965472481855523)
,p_db_column_name=>'NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'&AP_FULLNAME_LABEL.'
,p_allow_ctrl_breaks=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3965893659855523)
,p_db_column_name=>'LOGNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Login Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3966223235855523)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'&AP_STAFF_ID_LABEL.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3966600903855524)
,p_db_column_name=>'LEVELS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Access Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3967095355855524)
,p_db_column_name=>'EDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3967446276855525)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15097655055266180)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'39678'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:LOGNAME:STAFF_ID:LEVELS:EDATE:STATUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3960499251855516)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15124995832871240)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3960859361855517)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15124995832871240)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3961269159855517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15124995832871240)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3949515690855493)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3949999523855494)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3961693151855517)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15124995832871240)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3968248905855526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15093935997251156)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.:D:&DEBUG.:RP,33:P7_REQUEST:D'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3974107099855532)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.:D:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3960859361855517)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3974593443855532)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.:D:&DEBUG.::P33_LOGNAME:&P33_LOGNAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11171981639661651)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3950369595855494)
,p_name=>'P7_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'&AP_STAFF_ID_LABEL. :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT person_ID ||'' - ''||FULL_NAME d,  person_ID r',
'FROM xxhrms.XXHRMS_PEOPLE',
'WHERE EMPLOYMENT_STATUS = ''Active Employee''',
'AND (person_id NOT IN (SELECT staff_id FROM xxadm.xxadm_password',
'WHERE staff_id IS NOT NULL)',
'     or person_id = :P7_STAFF_ID)',
'AND PERSON_ID IN (SELECT PERSON_ID FROM XXHRMS_aSSIGNMENTS WHERE ASSIGNMENT_STATUS = ''ACTIVE'')',
'ORDER BY trim(FULL_NAME)',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select One--'
,p_cSize=>50
,p_cMaxlength=>4000
,p_colspan=>8
,p_grid_column=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3950692869855497)
,p_name=>'P7_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'&AP_FULLNAME_LABEL. :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_colspan=>8
,p_grid_column=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3951011926855497)
,p_name=>'P7_LOGNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'Username :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>30
,p_tag_attributes=>'onChange="this.value=this.value.toUpperCase();"'
,p_colspan=>8
,p_grid_column=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3951450876855499)
,p_name=>'P7_LOGNAME_R'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'Username :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_attributes=>'readonly="readonly", style="background-color:#f9f9f9;"'
,p_colspan=>8
,p_grid_column=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3951815870855500)
,p_name=>'P7_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'Access Level :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:1;1,2;2'
,p_cHeight=>1
,p_colspan=>8
,p_grid_column=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3952232275855501)
,p_name=>'P7_PWD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'Password :'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3952654299855501)
,p_name=>'P7_CPWD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'Confirm Password :'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3953075726855502)
,p_name=>'P7_EDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'End Date :'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3953433244855503)
,p_name=>'P7_STATUS'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_prompt=>'Status :'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS'
,p_lov=>'.'||wwv_flow_imp.id(3974823347855533)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Status--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(5504608440166737)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3953870598855504)
,p_name=>'P7_OPWD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(15096932967255693)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3955705365855509)
,p_name=>'P7_COMP_LIST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(50793462463230396)
,p_prompt=>'Company List'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select company_code from XXADM.XXADM_EMP_COMP_CODE',
'where username = :P7_LOGNAME'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Company_name as d, company_code as r',
'from xxhrms.xxhrms_companyinfo'))
,p_cHeight=>10
,p_field_template=>wwv_flow_imp.id(5504247449166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3968648579855526)
,p_name=>'P7_REQUEST'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15093935997251156)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3969888846855528)
,p_validation_name=>'LOGNAME Required'
,p_validation_sequence=>20
,p_validation=>'P7_LOGNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_imp.id(11171981639661651)
,p_associated_item=>wwv_flow_imp.id(3951011926855497)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3962161211855518)
,p_tabular_form_region_id=>wwv_flow_imp.id(15124995832871240)
,p_validation_name=>'START_DATE must be a valid date'
,p_validation_sequence=>40
,p_validation=>'START_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_imp.id(3960859361855517)
,p_associated_column=>'START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3962585400855518)
,p_tabular_form_region_id=>wwv_flow_imp.id(15124995832871240)
,p_validation_name=>'END_DATE must be a valid date'
,p_validation_sequence=>50
,p_validation=>'END_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_imp.id(3960859361855517)
,p_associated_column=>'END_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3962996121855519)
,p_tabular_form_region_id=>wwv_flow_imp.id(15124995832871240)
,p_validation_name=>'ORDER_NO must be numeric'
,p_validation_sequence=>60
,p_validation=>'ORDER_NO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(3960859361855517)
,p_associated_column=>'ORDER_NO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3963391744855519)
,p_tabular_form_region_id=>wwv_flow_imp.id(15124995832871240)
,p_validation_name=>'EFFECTIVE_START_DATE must be a valid date'
,p_validation_sequence=>80
,p_validation=>'EFFECTIVE_START_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_imp.id(3960859361855517)
,p_associated_column=>'EFFECTIVE_START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3963797094855519)
,p_tabular_form_region_id=>wwv_flow_imp.id(15124995832871240)
,p_validation_name=>'EFFECTIVE_END_DATE must be a valid date'
,p_validation_sequence=>90
,p_validation=>'EFFECTIVE_END_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_imp.id(3960859361855517)
,p_associated_column=>'EFFECTIVE_END_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3971394414855529)
,p_name=>'hide_write'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>'return :P7_LOGNAME is not null and :P7_OPWD is not null;'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3971870716855530)
,p_event_id=>wwv_flow_imp.id(3971394414855529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_LOGNAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3972225755855530)
,p_name=>'hide_read'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P7_LOGNAME IS NULL OR :P7_OPWD IS NULL'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3972715631855531)
,p_event_id=>wwv_flow_imp.id(3972225755855530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_LOGNAME_R'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3973154160855531)
,p_name=>'Password Strength'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3973636490855531)
,p_event_id=>wwv_flow_imp.id(3973154160855531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ZXCVBN_PASSWORD_STRENGTH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_PWD'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'2'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3964081508855520)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15124995832871240)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_01=>'XXADM'
,p_attribute_02=>'XXADM_USER_ROLES_TAB'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3960859361855517)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>3964081508855520
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3964431311855520)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15124995832871240)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_01=>'XXADM'
,p_attribute_02=>'XXADM_USER_ROLES_TAB'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>3964431311855520
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3970575787855529)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create user'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_row xxadm_password%ROWTYPE;',
'BEGIN',
'  v_row.logname := :P7_LOGNAME;',
'  v_row.name := :P7_NAME;',
'  v_row.levels := :P7_LEVEL;',
'  v_row.edate := :P7_EDATE;',
'  v_row.staff_id := :P7_STAFF_ID;',
'  v_row.status := :P7_STATUS;',
'  v_row.pword := :P7_PWD;',
'  --',
'  IF :P7_PWD IS NOT NULL OR :P7_CPWD IS NOT NULL THEN',
'    IF :P7_PWD <> :P7_CPWD THEN',
'      RAISE_APPLICATION_ERROR(-20005, ''Password Must Match Confirmation Password'');',
'    END IF;',
'  END IF;',
'  IF :P7_OPWD IS NULL THEN',
'    xxadm.xxadm_security_pkg.add_user(:P7_LOGNAME, :P7_PWD);',
'  ELSIF v_row.pword IS NOT NULL THEN',
'    xxadm.xxadm_security_pkg.alter_user(:P7_LOGNAME, :P7_PWD);',
'  END IF; ',
'  --SELECT REGEXP_SUBSTR(:P7_STAFF_ID,''[^-"]+'',1) INTO v_row.staff_id from dual;',
'  UPDATE XXADM_PASSWORD ',
'  SET NAME = :P7_NAME, LEVELS = :P7_LEVEL, EDATE = :P7_EDATE,',
'     STAFF_ID = :P7_STAFF_ID, ',
'     --STAFF_ID = v_row.staff_id,',
'     STATUS = :P7_STATUS',
'  WHERE LOGNAME = :P7_LOGNAME;',
'  IF :P7_OPWD IS NULL AND :P7_STAFF_ID IS NOT NULL THEN',
'    xxadm.xxadm_security_pkg.sendmail(:P7_LOGNAME, :P7_PWD,''1'');',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11171981639661651)
,p_process_success_message=>'Record Saved Successfully'
,p_internal_uid=>3970575787855529
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3970902462855529)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AddComp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'xxadm.xxadm_org_list(:P7_COMP_LIST, :P7_STAFF_ID,:P7_LOGNAME);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11171981639661651)
,p_internal_uid=>3970902462855529
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3970114078855528)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_people IS',
'  SELECT aa.NAME, aa.logname, aa.LEVELS, aa.edate, aa.staff_id staff, aa.status, ''1''',
'    FROM xxadm_password aa, xxhrms_assignments bb, xxhrms_people cc',
'    WHERE aa.staff_id = bb.staff_id(+)',
'      and bb.person_id = cc.person_id(+)',
'      AND aa.logname = :P7_LOGNAME;',
'BEGIN',
'  OPEN c_people;',
'  FETCH c_people  INTO :P7_NAME, :P7_LOGNAME_R, :P7_LEVEL, :P7_EDATE, :P7_STAFF_ID, :P7_STATUS,:P7_OPWD;',
'  CLOSE c_people;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'D'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>3970114078855528
);
wwv_flow_imp.component_end;
end;
/
