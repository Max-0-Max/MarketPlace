prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Workflow Requests'
,p_step_title=>'Workflow Requests'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33286792311345593)
,p_plug_name=>'Workflow Requests'
,p_icon_css_classes=>'fa-list'
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
 p_id=>wwv_flow_imp.id(36761786579395815)
,p_plug_name=>'Workflow Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TRANS_TYPE,TRANS_TYPE TT,',
'       TRANS_ID,',
'       ''Level''||'' ''||APR_LVL APR_LVL,',
'       APR_ID,',
'       (select company_name from xxhrms.xxhrms_companyinfo c where c.company_code = apr.company_code) company,',
'       COMMENTS,',
'       STATUS STAT,',
'       CASE  ',
'          WHEN upper(STATUS) = ''PENDING'' THEN  ''<span class="fa fa-pie-chart-45" aria-hidden="true"></span> '' || ''<font color="blue">''|| STATUS  ',
'          WHEN upper(STATUS) = ''APPROVED'' THEN ''<span class="fa fa-check-circle" aria-hidden="true"></span> '' || ''<font color="green">'' || STATUS',
'          WHEN upper(STATUS) = ''CANCELLED'' THEN ''<span class="fa fa-times-circle" aria-hidden="true"></span> '' || ''<font color="orange">'' || STATUS',
'         Else ''<span class="fa fa-times-circle" aria-hidden="true"></span> '' || ''<font color="red">'' || status || ''</font>''',
'         End CASE,',
'       CREATED_BY,',
'       CREATED_TIME,',
'       UPDATED_BY,',
'       UPDATED_TIME',
'  from XXHRMS.XXHRMS_APPROVAL_TAB apr',
'   where APR_ID = :AP_STAFF_ID',
'and NEXTS = ''Y''',
'--AND COMMENTS IS NULL',
' order by ID desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_COUNT NUMBER;',
'BEGIN',
'SELECT COUNT(1) INTO V_COUNT FROM XXADM.XXADM_PROFILE_OPTIONS',
'WHERE  PROFILE_CODE= ''EXIT_MGT''',
'AND PROFILE_VAL = ''Y''',
'AND COMPANY_CODE = :AP_COMPANY_CODE',
'AND APPLICATION = ''2000004'';',
'',
'IF V_COUNT > 0 THEN ',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(36761843434395816)
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
,p_owner=>'TADEDAPO'
,p_internal_uid=>36761843434395816
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36761977278395817)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17:P17_ACTION,P17_ID,P17_REQ_ID,P17_STATUS,P17_LEVEL:#TRANS_TYPE#,#ID#,#TRANS_ID#,#STAT#,#APR_LVL#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762076877395818)
,p_db_column_name=>'TRANS_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762167510395819)
,p_db_column_name=>'TRANS_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Trans Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762284708395820)
,p_db_column_name=>'APR_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Apr Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49069743669515903)
,p_db_column_name=>'COMPANY'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number;',
'begin',
'    select count(COLUMN_VALUE) into v_count from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':'')) where upper(a.LOGNAME )= upper(:AP_USERNAME);',
'    if v_count > 1 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762383280395821)
,p_db_column_name=>'COMMENTS'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762483800395822)
,p_db_column_name=>'CASE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762596571395823)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30110881455904351)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762630064395824)
,p_db_column_name=>'CREATED_TIME'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762798225395825)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762842216395826)
,p_db_column_name=>'UPDATED_TIME'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Updated Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36762950702395827)
,p_db_column_name=>'TT'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30101627385884565)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36763029436395828)
,p_db_column_name=>'APR_LVL'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Approval Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36763137190395829)
,p_db_column_name=>'STAT'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Stat'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38815169605256980)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'388152'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TT:APR_LVL:CREATED_BY:CASE:COMMENTS:CREATED_TIME::COMPANY'
,p_sort_column_1=>'CREATED_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52357302869773099)
,p_plug_name=>'Workflow Requests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TRANS_TYPE,TRANS_TYPE TT,',
'       TRANS_ID,',
'       ''Level''||'' ''||APR_LVL APR_LVL,',
'       APR_ID,',
'       (select company_name from xxhrms.xxhrms_companyinfo c where c.company_code = apr.company_code) company,',
'       COMMENTS,',
'       STATUS STAT,',
'       CASE  ',
'          WHEN upper(STATUS) = ''PENDING'' THEN  ''<span class="fa fa-pie-chart-45" aria-hidden="true"></span> '' || ''<font color="blue">''|| STATUS  ',
'          WHEN upper(STATUS) = ''APPROVED'' THEN ''<span class="fa fa-check-circle" aria-hidden="true"></span> '' || ''<font color="green">'' || STATUS',
'         Else ''<span class="fa fa-times-circle" aria-hidden="true"></span> '' || ''<font color="red">'' ||''<b>''|| status || ''</font>''||''</b>''',
'         End CASE,',
'       CREATED_BY,',
'       CREATED_TIME,',
'       UPDATED_BY,',
'       UPDATED_TIME',
'  from XXHRMS.XXHRMS_APPROVAL_TAB apr',
'   where APR_ID = :AP_STAFF_ID',
'and NEXTS = ''Y''',
'--AND COMMENTS IS NULL',
' order by ID desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'V_COUNT NUMBER;',
'BEGIN',
'SELECT COUNT(1) INTO V_COUNT FROM XXADM.XXADM_PROFILE_OPTIONS',
'WHERE  PROFILE_CODE= ''EXIT_MGT''',
'AND PROFILE_VAL = ''Y''',
'AND COMPANY_CODE = :AP_COMPANY_CODE',
'AND APPLICATION = ''2000004'';',
'',
'IF V_COUNT = 0 THEN ',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(63322183181209093)
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
,p_internal_uid=>63322183181209093
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33289091733364083)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17:P17_ACTION,P17_ID,P17_REQ_ID,P17_STATUS:#TRANS_TYPE#,#ID#,#TRANS_ID#,#STAT#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33288640842364080)
,p_db_column_name=>'TT'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30101627385884565)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33289400708364083)
,p_db_column_name=>'TRANS_TYPE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33289866996364084)
,p_db_column_name=>'TRANS_ID'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Trans Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33290268348364084)
,p_db_column_name=>'APR_ID'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Apr Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49069660224515902)
,p_db_column_name=>'COMPANY'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number;',
'begin',
'    select count(COLUMN_VALUE) into v_count from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':'')) where upper(a.LOGNAME )= upper(:AP_USERNAME);',
'    if v_count > 1 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33290628928364085)
,p_db_column_name=>'COMMENTS'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33291072715364085)
,p_db_column_name=>'CASE'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33291420498364085)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30110881455904351)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33291878480364086)
,p_db_column_name=>'CREATED_TIME'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33292254597364086)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33292626501364087)
,p_db_column_name=>'UPDATED_TIME'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Updated Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33293094743364087)
,p_db_column_name=>'APR_LVL'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Approval Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33352313801631731)
,p_db_column_name=>'STAT'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Stat'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63378979181443816)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'332934'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'ID:TT:APR_LVL:CREATED_BY:CASE:COMMENTS:CREATED_TIME::STAT:COMPANY'
,p_sort_column_1=>'CREATED_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp.component_end;
end;
/
