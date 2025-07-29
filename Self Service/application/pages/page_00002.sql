prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Policy Documents'
,p_alias=>'AR1'
,p_step_title=>'Policy Documents'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39143553931738271)
,p_plug_name=>'Policy Documents'
,p_icon_css_classes=>'fa-window-maximize'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(40610425604778812)
,p_name=>'Signed Policy Documents'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'	   dbms_crypto.hash(utl_raw.cast_to_raw(id || FILENAME), 4 /* DBMS_CRYPTO.HASH_SH256 */) id2,',
'       STAFF_ID,',
'       BLOB_CONTENT,',
'       MIME_TYPE,',
'       FILENAME,',
'       LAST_UPDATED,',
'       CHARACTER_SET,',
'       FILE_SIZE,',
'       FILE_DESCRIPTION',
'  from XXHRMS.XXHRMS_POLICY_DOCUMENTS_signed',
'  where company_code = :SS_COMPANY_CODE',
'  and staff_id = :AP_STAFF_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40610868573778816)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>40
,p_column_heading=>'&nbsp'
,p_column_format=>'DOWNLOAD:XXHRMS_POLICY_DOCUMENTS:BLOB_CONTENT:ID::MIME_TYPE:FILENAME:LAST_UPDATED:CHARACTER_SET:attachment:Download:XXHRMS'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40610957291778817)
,p_query_column_id=>2
,p_column_alias=>'ID2'
,p_column_display_sequence=>50
,p_column_heading=>'&nbsp'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-eye click-here" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#ID2#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40610543915778813)
,p_query_column_id=>3
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40610607931778814)
,p_query_column_id=>4
,p_column_alias=>'BLOB_CONTENT'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40610734341778815)
,p_query_column_id=>5
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611010664778818)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>60
,p_column_heading=>'File Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611254056778820)
,p_query_column_id=>7
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611349857778821)
,p_query_column_id=>8
,p_column_alias=>'CHARACTER_SET'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611471708778822)
,p_query_column_id=>9
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611117983778819)
,p_query_column_id=>10
,p_column_alias=>'FILE_DESCRIPTION'
,p_column_display_sequence=>70
,p_column_heading=>'File Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40611535026778823)
,p_plug_name=>'Policy Documents'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41000931928499833)
,p_name=>'Policy Documents'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'	   dbms_crypto.hash(utl_raw.cast_to_raw(id || FILENAME), 4 /* DBMS_CRYPTO.HASH_SH256 */) id2,',
'       STAFF_ID,',
'       BLOB_CONTENT,',
'       MIME_TYPE,',
'       FILENAME,',
'       LAST_UPDATED,',
'       CHARACTER_SET,',
'       FILE_SIZE,',
'       FILE_DESCRIPTION',
'  from XXHRMS.XXHRMS_POLICY_DOCUMENTS',
'  where company_code = :SS_COMPANY_CODE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_imp.id(39139881439738255)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>4
,p_column_heading=>'&nbsp'
,p_column_format=>'DOWNLOAD:XXHRMS_POLICY_DOCUMENTS:BLOB_CONTENT:ID::MIME_TYPE:FILENAME:LAST_UPDATED:CHARACTER_SET:attachment:Download:XXHRMS'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77088971960783945)
,p_query_column_id=>2
,p_column_alias=>'ID2'
,p_column_display_sequence=>5
,p_column_heading=>'&nbsp'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-eye click-here" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#ID2#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39140272127738257)
,p_query_column_id=>3
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39140645381738257)
,p_query_column_id=>4
,p_column_alias=>'BLOB_CONTENT'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39141088421738257)
,p_query_column_id=>5
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39141445603738258)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'File Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39141881911738258)
,p_query_column_id=>7
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39142297083738258)
,p_query_column_id=>8
,p_column_alias=>'CHARACTER_SET'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39142668577738259)
,p_query_column_id=>9
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39143011106738259)
,p_query_column_id=>10
,p_column_alias=>'FILE_DESCRIPTION'
,p_column_display_sequence=>7
,p_column_heading=>'File Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77089095737783946)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41000931928499833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77089358973783949)
,p_name=>'SET AND OPEN URL'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.click-here'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77089455122783950)
,p_event_id=>wwv_flow_imp.id(77089358973783949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91422456464790201)
,p_event_id=>wwv_flow_imp.id(77089358973783949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var str = apex.item( "P2_ID" ).getValue();',
'alert(''https://testapp.softsuite.com/softsuite/api/ss/policy/''+str);',
'window.open(''https://testapp.softsuite.com/softsuite/api/ss/policy/''+str, ''_blank'');'))
);
wwv_flow_imp.component_end;
end;
/
