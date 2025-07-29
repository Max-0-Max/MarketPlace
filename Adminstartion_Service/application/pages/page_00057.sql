prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_name=>'User Creation Report'
,p_alias=>'USER-CREATION-REPORT'
,p_step_title=>'User Creation Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84279335270879303)
,p_plug_name=>'User Creation Report'
,p_icon_css_classes=>'fa-user-clock'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161990248627557319)
,p_plug_name=>'User Creation Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.USER_NAME, ',
'A.FULL_NAME, ',
'A.EMAIL_ADDRESS,',
'A.CREATED_BY, ',
'A.CREATION_DATE,',
'C.COMPANY_NAME,',
'TO_CHAR(A.CREATION_DATE, ''HH24:MI:SS'') AS creation_time',
'FROM XXMRKT.XXMRKT_MARKETPLACE_USERS A , XXMRKT.XXMRKT_COMPANY_LIST C',
'WHERE --COMPANY_ID = :AP_COMPANY_ID AND',
' A.COMPANY_CODE= :AP_COMPANY_CODE',
' AND C.COMPANY_ID=A.COMPANY_ID',
'AND CATEGORY=''USER''',
'AND USER_ID = NVL(:P57_EMPLOYEE,USER_ID)',
' AND (',
'        (:P57_START_DATE IS NULL OR (A.CREATION_DATE) >= (:P57_START_DATE)) AND',
'        (:P57_END_DATE   IS NULL OR (A.CREATION_DATE) <= (:P57_END_DATE))',
'      )'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'User Creation Report'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(161990425090557319)
,p_name=>'User Creation Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DADEGBITE'
,p_internal_uid=>161990425090557319
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161993864707557324)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161994268456557325)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162000219041558199)
,p_db_column_name=>'USER_NAME'
,p_display_order=>31
,p_column_identifier=>'S'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162000346711558201)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>51
,p_column_identifier=>'T'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162001101124558208)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>121
,p_column_identifier=>'U'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162001273267558210)
,p_db_column_name=>'CREATION_TIME'
,p_display_order=>131
,p_column_identifier=>'V'
,p_column_label=>'Creation Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(84280840550879318)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>141
,p_column_identifier=>'W'
,p_column_label=>'Company Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(163674306744482641)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'794206'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:USER_NAME:EMAIL_ADDRESS:COMPANY_NAME:CREATED_BY:CREATION_DATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(84256719173491389)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(161990248627557319)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4072362960822175091)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160887844029775739)
,p_name=>'P57_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161990248627557319)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT FULL_NAME,USER_ID',
'    FROM XXMRKT.XXMRKT_MARKETPLACE_USERS',
'    WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'    --AND COMPANY_ID = :AP_COMPANY_ID',
'    AND CATEGORY = ''USER'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162001641007558190)
,p_name=>'P57_'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(161990248627557319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162001768446558191)
,p_name=>'P57_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(161990248627557319)
,p_prompt=>'START DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162001887332558192)
,p_name=>'P57_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(161990248627557319)
,p_prompt=>'END DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp.component_end;
end;
/
