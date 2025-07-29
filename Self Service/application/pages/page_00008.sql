prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Claims'
,p_step_title=>'Claims'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102417646936133254)
,p_plug_name=>'Travel Request List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'PROJECT_DELIVERABLES,R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,TRIP_CATEGORY_NAME,PROJECT_NAME,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXCLM.XXCLM_CLAIM_APPROVED_REQUEST WHERE REQUEST_ID=R.REQUEST_ID AND TRAVEL_REQUEST IS NOT NULL)>0',
'THEN ''APPROVED''',
'WHEN (SELECT COUNT(*) FROM XXCLM.XXCLM_CLAIMS_REJECTED_REQUESTS WHERE REQUEST_ID=R.REQUEST_ID AND TRAVEL_REQUEST IS NOT NULL)>0',
'THEN ''REJECTED''',
'ELSE ''WAITING APPROVAL''',
'END STATUS',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXCLM.XXCLM_TRIPS_CATEGORY F,XXPBG.XXPBG_PROJECTS P',
'where R.company_code=:SS_COMPANY_CODE',
'',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND R.TRIP_CATEGORY=F.ID',
'AND R.PROJECT_ID=P.PROJECT_ID'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P8_TRAVEL_ID_LISTING:&REQUEST_ID.',
  'list_view_features', 'SEARCH',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_column', 'STATUS',
  'text_column', 'PROJECT_NAME')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(102418484549137816)
,p_name=>'Travel Request Details'
,p_region_name=>'trav_rep'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'PROJECT_DELIVERABLES,R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,TRIP_CATEGORY_NAME,PROJECT_NAME,',
'CASE',
'WHEN REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXCLM.XXCLM_TRIPS_CATEGORY F,XXPBG.XXPBG_PROJECTS P',
'where R.company_code=:SS_COMPANY_CODE',
'and R.REQUEST_ID=:P8_TRAVEL_ID_LISTING',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND R.TRIP_CATEGORY=F.ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P8_TRAVEL_ID_LISTING'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26375670459834309)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26376017446834309)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26376447650834311)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26376822053834313)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26377241168834314)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26377653803834317)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26378034599834319)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Departure Location'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26378456970834319)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>11
,p_column_heading=>'Arrival Location'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26378802137834321)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>14
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26374895656834304)
,p_query_column_id=>10
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26379252926834324)
,p_query_column_id=>11
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>15
,p_column_heading=>'Emp Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26375264511834306)
,p_query_column_id=>12
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>16
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26379692023834324)
,p_query_column_id=>13
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26374461347834302)
,p_query_column_id=>14
,p_column_alias=>'TRIP_CATEGORY_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Trip Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26380020379834326)
,p_query_column_id=>15
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26380408797834329)
,p_query_column_id=>16
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>4
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(51763235274449217)
,p_name=>'Claims Extension'
,p_parent_plug_id=>wwv_flow_imp.id(102418484549137816)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,REQUEST_ID,EXTENSION_START_DATE,EXTENSION_END_DATE,EXTENSION_REASONS,DATE_CREATED,COMPANY_CODE,EMP_ID',
'from XXCLM.XXCLM_CLAIMS_EXTENSION',
'where request_id=:P8_TRAVEL_ID_LISTING'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_CLAIMS_EXTENSION',
'where request_id=:P8_TRAVEL_ID_LISTING'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P8_TRAVEL_ID_LISTING'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26381568106834340)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt edit_ext" alt="">'
,p_column_link_attr=>'data-id=#ID#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26381921938834342)
,p_query_column_id=>2
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26382393114834344)
,p_query_column_id=>3
,p_column_alias=>'EXTENSION_START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Extension Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26382701547834345)
,p_query_column_id=>4
,p_column_alias=>'EXTENSION_END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Extension End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26383138658834347)
,p_query_column_id=>5
,p_column_alias=>'EXTENSION_REASONS'
,p_column_display_sequence=>5
,p_column_heading=>'Extension Reasons'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26383583658834349)
,p_query_column_id=>6
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26383945565834350)
,p_query_column_id=>7
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26384314667834352)
,p_query_column_id=>8
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102422189198147402)
,p_plug_name=>'Travel Request Form'
,p_region_name=>'trav_form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102422652311141132)
,p_plug_name=>'Travel Request Details'
,p_region_name=>'empty_rep'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<i>Click on a trip category to view details or click the add new category button to create new trip category.</i>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26385721257834359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102422189198147402)
,p_button_name=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26385356265834358)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(102422189198147402)
,p_button_name=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26380833254834330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(102418484549137816)
,p_button_name=>'edit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Extend Claim'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXCLM.XXCLM_TRAVEL_REQUEST R',
'where R.REQUEST_ID=:P8_TRAVEL_ID_LISTING',
'and exists (select * from XXCLM.XXCLM_CLAIM_APPROVED_REQUEST v where v.request_id=r.REQUEST_ID ',
'                 and TRAVEL_REQUEST is not null',
'                 )',
'AND not exists(select * from XXCLM.XXCLM_CLAIMS_REJECTED_REQUESTS v where v.request_id=r.REQUEST_ID ',
'                 and TRAVEL_REQUEST is not null)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26386161123834360)
,p_name=>'P8_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(102422189198147402)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26386536903834362)
,p_name=>'P8_EXT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(102422189198147402)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26386939121834363)
,p_name=>'P8_EXTENSION_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(102422189198147402)
,p_prompt=>'Extension Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26387356360834364)
,p_name=>'P8_EXTENSION_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(102422189198147402)
,p_prompt=>'Extension End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26387768878834366)
,p_name=>'P8_EXTENSION_REASONS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(102422189198147402)
,p_prompt=>'Extension Reasons'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26388763532834371)
,p_name=>'P8_TRAVEL_ID_LISTING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(102417646936133254)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26390724095834438)
,p_name=>'NEW PAGE LOAD'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26391242789834439)
,p_event_id=>wwv_flow_imp.id(26390724095834438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#trav_form'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26391770170834442)
,p_event_id=>wwv_flow_imp.id(26390724095834438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P8_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'}',
'else{',
'    $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    ',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26392192713834444)
,p_name=>'EDIT request'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25491481364983624)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26393119735834445)
,p_event_id=>wwv_flow_imp.id(26392192713834444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26392639392834444)
,p_event_id=>wwv_flow_imp.id(26392192713834444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    $("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
'$s(''P8_EXTENSION_START_DATE'','''');',
'$s(''P8_EXTENSION_END_DATE'','''');',
'$s(''P8_EXTENSION_REASONS'','''');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26393557444834448)
,p_name=>'CANCEL FORM'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26385356265834358)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26394066921834449)
,p_event_id=>wwv_flow_imp.id(26393557444834448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P8_TRAVEL_ID_LISTING'')==''''){',
'    $("#empty_rep").show();',
'    $("#trav_rep").hide();',
'    $("#trav_form").hide();',
'}',
'',
'else{',
'    $("#trav_rep").show();',
'    $("#empty_rep").hide();',
'    $("#trav_form").hide();',
'   }',
'apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'$("#trav_but").show();',
'$s(''P8_CATEGORY_ID'','''');',
'$s(''P8_PROJECT_ID'','''');',
'$s(''P8_CLAIMS_ITEMS'','''');',
'$s(''P8_TRIP_CATEGORY'','''');',
'$s(''P8_DEPARTURE_DATE'','''');',
'$s(''P8_ARRIVAL_DATE'','''');',
'$s(''P8_DEPARTURE_LOCATION'','''');',
'$s(''P8_ARRIVAL_LOCATION'','''');',
'$s(''P8_PROJECT_DELIVERABLES'','''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26394592983834451)
,p_event_id=>wwv_flow_imp.id(26393557444834448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_REQUEST_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26394938272834452)
,p_name=>'SUBMIT FORM'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26385721257834359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26396942915834464)
,p_event_id=>wwv_flow_imp.id(26394938272834452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s((''P8_EXTENSION_START_DATE''),($v(''P8_EXTENSION_START_DATE'').replace(/\s+/, '' '')));',
'$s((''P8_EXTENSION_END_DATE''),($v(''P8_EXTENSION_END_DATE'').replace(/\s+/, '' '')));',
'$s((''P8_EXTENSION_REASONS''),($v(''P8_EXTENSION_REASONS'').replace(/\s+/, '' '')));',
'',
'',
'var a=$v("P8_EXTENSION_START_DATE");',
'var b=$v("P8_EXTENSION_END_DATE");',
'',
'var d=$v("P8_EXTENSION_REASONS");',
'',
' if (a==""||b==""||d==""){',
'        alert(''Please fill all the required fields'');',
'        return false;',
'    }',
'if (confirm("Confirm to submit?")){',
'    apex.util.showSpinner( $( "#trav_form" ) );',
'    ',
'    return true;',
'   ',
'}',
'else{',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26395405488834455)
,p_event_id=>wwv_flow_imp.id(26394938272834452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_existed boolean;',
'l_exist boolean;',
'l_exists boolean;',
'    l_message varchar2(4000) ;',
'    ct number;',
'     v_exists number;',
'  l_string          varchar2(4000) := ''P1_X:P1_Y'';',
'  l_page_items_arr  apex_t_varchar2;',
'begin',
'if :P8_ID is null OR :P8_ID=''''',
'then',
'XXCLM.XXCLM_CLAIMS_PKG.create_claim_ext(',
'	p_REQUEST_ID =>:P8_TRAVEL_ID_LISTING,',
'    p_EXTENSION_START_DATE =>:P8_EXTENSION_START_DATE,',
'    p_EXTENSION_END_DATE =>:P8_EXTENSION_END_DATE,',
'    p_EXTENSION_REASONS =>:P8_EXTENSION_REASONS,',
'    p_company_code =>:SS_COMPANY_CODE,',
'    p_EMP_ID =>:AP_STAFF_ID,',
'   p_id =>:P8_ID);',
'     ',
'    ELSE',
'    ',
'UPDATE XXCLM.XXCLM_CLAIMS_EXTENSION SET',
'',
'EXTENSION_START_DATE=:P8_EXTENSION_START_DATE,',
'EXTENSION_END_DATE=:P8_EXTENSION_END_DATE,',
'EXTENSION_REASONS=:P8_EXTENSION_REASONS',
'',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND ID=:P8_EXT_ID;',
' ',
'  END IF;',
'END;'))
,p_attribute_02=>'P8_ID,P8_TRAVEL_ID_LISTING,P8_EXTENSION_START_DATE,P8_EXTENSION_END_DATE,P8_EXTENSION_REASONS,P8_EXT_ID'
,p_attribute_03=>'P8_ID,P8_EXT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26396403783834463)
,p_event_id=>wwv_flow_imp.id(26394938272834452)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//#budget_rep,#bud_button#budget_form',
'$("#trav_but").show();',
'    $("#trav_form").hide();',
'$s(''P8_EXTENSION_START_DATE'','''');',
'$s(''P8_EXTENSION_END_DATE'','''');',
'$s(''P8_EXTENSION_REASONS'','''');',
'',
'  ',
'if($v(''P8_ID'')==$v(''P8_EXT_ID'')){',
'    $s(''P8_EXT_ID'',$v(''P8_ID''));',
'    apex.event.trigger(''#trav_rep'', ''apexrefresh'');',
'    apex.event.trigger(''#trav_ext'', ''apexrefresh'');',
'    $("#trav_rep").show();',
'    $("#apex_wait_overlay").remove();',
'	$(".u-Processing").remove();',
'    ',
'}',
'else{',
'    $s(''P8_EXT_ID'',$v(''P8_ID''));',
'        ',
'    apex.submit();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26395939519834457)
,p_event_id=>wwv_flow_imp.id(26394938272834452)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(102417646936133254)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26389399693834432)
,p_name=>'EDIT_FORM'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.edit_ext'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26389820475834435)
,p_event_id=>wwv_flow_imp.id(26389399693834432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P8_EXT_ID",$(this.triggeringElement).parent().data(''id''));',
'$("#empty_rep").hide();',
'    $("#trav_rep").hide();',
'$("#trav_but").hide();',
'    $("#trav_form").show();',
'$s(''P8_EXTENSION_START_DATE'','''');',
'$s(''P8_EXTENSION_END_DATE'','''');',
'$s(''P8_EXTENSION_REASONS'','''');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26390328951834437)
,p_event_id=>wwv_flow_imp.id(26389399693834432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ID,EXTENSION_START_DATE,EXTENSION_END_DATE,EXTENSION_REASONS into ',
':P8_ID,:P8_EXTENSION_START_DATE,:P8_EXTENSION_END_DATE,:P8_EXTENSION_REASONS',
'from ',
'XXCLM.xXCLM_CLAIMS_EXTENSION',
'where id=:P8_EXT_ID;'))
,p_attribute_02=>'P8_ID,P8_TRAVEL_ID_LISTING,P8_EXTENSION_START_DATE,P8_EXTENSION_END_DATE,P8_EXTENSION_REASONS,P8_EXT_ID'
,p_attribute_03=>'P8_ID,P8_TRAVEL_ID_LISTING,P8_EXTENSION_START_DATE,P8_EXTENSION_END_DATE,P8_EXTENSION_REASONS,P8_EXT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
