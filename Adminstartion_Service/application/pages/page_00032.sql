prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'product report'
,p_step_title=>'product report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(99465090014287290)
,p_name=>'Report 1'
,p_template=>wwv_flow_imp.id(5452712612166699)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PRODUCT_ID", ',
'"PRODUCT_NAME",',
'"PRODUCT_DESCRIPTION",',
'"PRODUCT_STATUS",',
'"INS_TIME",',
'"INS_BY",',
'"LAST_UPDATE_DATE",',
'"LAST_UPDATED_BY",',
'"COMPANY_CODE",',
'"PRODUCT_CATEGORY",',
'"COMPANY_DESC",',
'"OLD_PRICE",',
'"NEW_PRICE",',
'dbms_lob.getlength("BLOB_CONTENT") "BLOB_CONTENT",',
'"MIME_TYPE",',
'"FILENAME"',
'from "#OWNER#"."XXSBS_MRKT_PRODUCTS_LISTS" ',
'  ',
''))
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(5475144363166715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99465694831287322)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>1
,p_column_link=>'f?p=#APP_ID#:36:#APP_SESSION#::::P36_PRODUCT_ID:#PRODUCT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'PRODUCT_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99466005427287335)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'PRODUCT_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99466405489287336)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Product Description'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'PRODUCT_DESCRIPTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99466856047287336)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Product Status'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'PRODUCT_STATUS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99467235103287337)
,p_query_column_id=>5
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Ins Time'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'INS_TIME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99467603633287338)
,p_query_column_id=>6
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Ins By'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'INS_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99468044592287339)
,p_query_column_id=>7
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Last Update Date'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'LAST_UPDATE_DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99468478856287340)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'LAST_UPDATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99468825027287340)
,p_query_column_id=>9
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>9
,p_column_heading=>'Company Code'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'COMPANY_CODE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99469200683287341)
,p_query_column_id=>10
,p_column_alias=>'PRODUCT_CATEGORY'
,p_column_display_sequence=>10
,p_column_heading=>'Product Category'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'PRODUCT_CATEGORY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99469677258287342)
,p_query_column_id=>11
,p_column_alias=>'COMPANY_DESC'
,p_column_display_sequence=>11
,p_column_heading=>'Company Desc'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'COMPANY_DESC'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99470061033287342)
,p_query_column_id=>12
,p_column_alias=>'OLD_PRICE'
,p_column_display_sequence=>12
,p_column_heading=>'Old Price'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'OLD_PRICE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99470475371287343)
,p_query_column_id=>13
,p_column_alias=>'NEW_PRICE'
,p_column_display_sequence=>13
,p_column_heading=>'New Price'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'NEW_PRICE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99470828528287344)
,p_query_column_id=>14
,p_column_alias=>'BLOB_CONTENT'
,p_column_display_sequence=>14
,p_column_heading=>'Blob Content'
,p_column_format=>'DOWNLOAD:XXSBS_MRKT_PRODUCTS_LISTS:BLOB_CONTENT:PRODUCT_ID:'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'BLOB_CONTENT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99471232328287345)
,p_query_column_id=>15
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>15
,p_column_heading=>'Mime Type'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'MIME_TYPE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99471641719287346)
,p_query_column_id=>16
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>16
,p_column_heading=>'Filename'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'XXSBS'
,p_ref_table_name=>'XXSBS_MRKT_PRODUCTS_LISTS'
,p_ref_column_name=>'FILENAME'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99476867951287365)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(99465090014287290)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:36'
);
wwv_flow_imp.component_end;
end;
/
