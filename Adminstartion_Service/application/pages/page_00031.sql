prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_name=>'Jasper Reports'
,p_step_title=>'Jasper Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4661648544804300)
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
 p_id=>wwv_flow_imp.id(69686449273258481)
,p_plug_name=>'Jasper Reports'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JRD_ID,',
'       JRD_NAME,',
'       JRD_DESCRIPTION,',
'       JRD_XML',
'  from XXADM.JRXML_REPORT_DEFINITIONS',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69686530394258481)
,p_name=>'Jasper Reports'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'IADEBONA'
,p_internal_uid=>69686530394258481
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4658495808804289)
,p_db_column_name=>'JRD_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,19:P19_JRD_ID:#JRD_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4658853566804290)
,p_db_column_name=>'JRD_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Jasper Report Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4659266957804291)
,p_db_column_name=>'JRD_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4659631870804291)
,p_db_column_name=>'JRD_XML'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Jrd Xml'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69691772403333048)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'46600'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JRD_ID:JRD_NAME:JRD_DESCRIPTION:JRD_XML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4660310665804299)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69686449273258481)
,p_button_name=>'Close'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Close'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4660785382804299)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69686449273258481)
,p_button_name=>'image'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'Report Images'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP,36::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4661197832804300)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69686449273258481)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_image_alt=>'New Entry'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,19::'
);
wwv_flow_imp.component_end;
end;
/
