prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_name=>'Available Courses'
,p_alias=>'AV1'
,p_step_title=>'Available Courses'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(287786318178809228)
,p_plug_name=>'Courses'
,p_icon_css_classes=>'fa-book'
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
 p_id=>wwv_flow_imp.id(287931664562728227)
,p_plug_name=>'Assigned Courses'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(287930842581728219)
,p_plug_name=>'Assigned Courses Tab'
,p_parent_plug_id=>wwv_flow_imp.id(287931664562728227)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(287728392063119847)
,p_name=>'Available Courses'
,p_parent_plug_id=>wwv_flow_imp.id(287930842581728219)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  b.START_DATE, b.END_DATE,b.COURSE_ID,',
'  -- data',
'  b.NAME               card_title,       -- title',
'  ''Available''  card_subtitle,    -- subtitle, set template option to see',
'  b.ATTRIBUTE1  card_text,        -- card body text',
'  b.END_DATE        card_subtext --,     -- card secondary text, positioned near bottom',
'',
'  -- ui and other attributes',
' -- card_modifiers,   -- card item modifiers',
'  --card_link,        -- card link, use apex_page.get_url(...)',
'  --card_color,       -- color modifier, e.g. u-color-1 or u-warning',
'  --card_icon,        -- icon class, e.g. fa-cloud',
'  --card_initials     -- 2 or 3 letters, use apex_string.get_initials(...)',
'from XXSLM.XXSLM_COURSES_ACCESS a, xxslm.XXSLM_COURSES b',
'where a.PERSON_ID = :AP_STAFF_ID',
'and a.COURSE_ID = b.COURSE_ID and SELF_ENROLL =''N''',
'--and a.course_id not in (select course_id from xxslm.XXSLM_EXAM_SUMMARY where  STAFF_ID = :AP_STAFF_ID and STATUS = ''COMPLETED'')',
'and trunc(START_DATE) <= trunc(SYSDATE)',
'and (trunc(END_DATE) >= trunc(SYSDATE) or trunc(END_DATE) is null)',
'and B.NAME = NVL(:P74_SEARCH_1, B.NAME)',
'and b.company_code = :AP_COMPANY_CODE',
'order by CREATION_DATE desc',
'',
'/*',
'select  START_DATE, END_DATE,',
'  -- data',
'  NAME               card_title,       -- title',
'  ''Available''  card_subtitle,    -- subtitle, set template option to see',
'  COURSE_DESCRIPTION card_text,        -- card body text',
'  END_DATE        card_subtext --,     -- card secondary text, positioned near bottom',
'',
'  -- ui and other attributes',
' -- card_modifiers,   -- card item modifiers',
'  --card_link,        -- card link, use apex_page.get_url(...)',
'  --card_color,       -- color modifier, e.g. u-color-1 or u-warning',
'  --card_icon,        -- icon class, e.g. fa-cloud',
'  --card_initials     -- 2 or 3 letters, use apex_string.get_initials(...)',
'from XXSLM.XXSLM_ASSIGNED_COURSES_V',
'where SELF_ENROLL = ''N''',
'and trunc(START_DATE) <= trunc(SYSDATE)',
'and (trunc(END_DATE) >= trunc(SYSDATE) or trunc(END_DATE) is null)',
'*/'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P74_SEARCH_1'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2535154973224087)
,p_query_num_rows=>6
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
 p_id=>wwv_flow_imp.id(287929653392728207)
,p_query_column_id=>1
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287929717739728208)
,p_query_column_id=>2
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End Date'
,p_column_format=>'SINCE_SHORT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300925967605533148)
,p_query_column_id=>3
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Course Id'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287728430586119848)
,p_query_column_id=>4
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP:P30_COURSE_ID,P30_COURSE_ID_1:#COURSE_ID#,#COURSE_ID#'
,p_column_linktext=>'#CARD_TITLE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287929940723728210)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtitle'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287728579926119849)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Text'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287728674332119850)
,p_query_column_id=>7
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Subtext'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(287930931305728220)
,p_name=>'Expired Courses'
,p_parent_plug_id=>wwv_flow_imp.id(287930842581728219)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  START_DATE, END_DATE,',
'  -- data',
'  NAME               card_title,       -- title',
'  ''Available''  card_subtitle,    -- subtitle, set template option to see',
'  COURSE_DESCRIPTION card_text,        -- card body text',
'  END_DATE        card_subtext --,     -- card secondary text, positioned near bottom',
'',
'  -- ui and other attributes',
' -- card_modifiers,   -- card item modifiers',
'  --card_link,        -- card link, use apex_page.get_url(...)',
'  --card_color,       -- color modifier, e.g. u-color-1 or u-warning',
'  --card_icon,        -- icon class, e.g. fa-cloud',
'  --card_initials     -- 2 or 3 letters, use apex_string.get_initials(...)',
'from XXSLM.XXSLM_ASSIGNED_COURSES_V',
'where SELF_ENROLL = ''N''',
'and trunc(START_DATE) <= trunc(SYSDATE)',
'and trunc(END_DATE) < trunc(SYSDATE)',
'and company_code = :AP_COMPANY_CODE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2535154973224087)
,p_query_num_rows=>6
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
 p_id=>wwv_flow_imp.id(287931301246728224)
,p_query_column_id=>1
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287931440387728225)
,p_query_column_id=>2
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End Date'
,p_column_format=>'SINCE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287931010037728221)
,p_query_column_id=>3
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287931555839728226)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtitle'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287931133422728222)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Text'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287931219872728223)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Subtext'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(287931704357728228)
,p_plug_name=>'Self Enrollment Courses'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(287930046871728211)
,p_plug_name=>'Self Enrollment Courses Tab'
,p_parent_plug_id=>wwv_flow_imp.id(287931704357728228)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(287724604806119810)
,p_name=>'Available Courses'
,p_parent_plug_id=>wwv_flow_imp.id(287930046871728211)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  b.START_DATE, b.END_DATE,b.COURSE_ID,',
'  -- data',
'  b.NAME               card_title,       -- title',
'  ''Available''  card_subtitle,    -- subtitle, set template option to see',
'  b.ATTRIBUTE1  card_text,        -- card body text',
'  b.END_DATE        card_subtext --,     -- card secondary text, positioned near bottom',
'',
'  -- ui and other attributes',
' -- card_modifiers,   -- card item modifiers',
'  --card_link,        -- card link, use apex_page.get_url(...)',
'  --card_color,       -- color modifier, e.g. u-color-1 or u-warning',
'  --card_icon,        -- icon class, e.g. fa-cloud',
'  --card_initials     -- 2 or 3 letters, use apex_string.get_initials(...)',
'from xxslm.XXSLM_COURSES b',
'where  SELF_ENROLL =''Y''',
'--and a.course_id not in (select course_id from xxslm.XXSLM_EXAM_SUMMARY where  STAFF_ID = :AP_STAFF_ID and STATUS = ''COMPLETED'')',
'/*and trunc(START_DATE) <= trunc(SYSDATE)',
'and (trunc(END_DATE) >= trunc(SYSDATE) or trunc(END_DATE) is null)*/',
'and B.NAME = NVL(:P74_SEARCH, B.NAME)',
'and b.company_code = :AP_COMPANY_CODE',
'order by CREATION_DATE desc',
'',
'',
'/*select START_DATE, END_DATE,',
'  -- data',
'  NAME               card_title,       -- title',
'  ''Available''  card_subtitle,    -- subtitle, set template option to see',
'  COURSE_DESCRIPTION card_text,        -- card body text',
'  END_DATE        card_subtext --,     -- card secondary text, positioned near bottom',
'',
'  -- ui and other attributes',
' -- card_modifiers,   -- card item modifiers',
'  --card_link,        -- card link, use apex_page.get_url(...)',
'  --card_color,       -- color modifier, e.g. u-color-1 or u-warning',
'  --card_icon,        -- icon class, e.g. fa-cloud',
'  --card_initials     -- 2 or 3 letters, use apex_string.get_initials(...)',
'from XXSLM.XXSLM_ASSIGNED_COURSES_V',
'where SELF_ENROLL = ''Y''',
'and trunc(START_DATE) <= trunc(SYSDATE)',
'and (trunc(END_DATE) >= trunc(SYSDATE) or trunc(END_DATE) is null)',
'*/',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P74_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2535154973224087)
,p_query_num_rows=>6
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
 p_id=>wwv_flow_imp.id(287929431623728205)
,p_query_column_id=>1
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287929589193728206)
,p_query_column_id=>2
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End Date'
,p_column_format=>'SINCE_SHORT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300925835502533147)
,p_query_column_id=>3
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Course Id'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287724736135119811)
,p_query_column_id=>4
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP:P30_COURSE_ID,P30_COURSE_ID_1:#COURSE_ID#,#COURSE_ID#'
,p_column_linktext=>'#CARD_TITLE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287929880808728209)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtitle'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287724847897119812)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Text'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287724981032119813)
,p_query_column_id=>7
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Subtext'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(287930150607728212)
,p_name=>'Expired Courses'
,p_parent_plug_id=>wwv_flow_imp.id(287930046871728211)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select START_DATE, END_DATE,',
'  -- data',
'  NAME               card_title,       -- title',
'  ''Available''  card_subtitle,    -- subtitle, set template option to see',
'  COURSE_DESCRIPTION card_text,        -- card body text',
'  END_DATE        card_subtext --,     -- card secondary text, positioned near bottom',
'',
'  -- ui and other attributes',
' -- card_modifiers,   -- card item modifiers',
'  --card_link,        -- card link, use apex_page.get_url(...)',
'  --card_color,       -- color modifier, e.g. u-color-1 or u-warning',
'  --card_icon,        -- icon class, e.g. fa-cloud',
'  --card_initials     -- 2 or 3 letters, use apex_string.get_initials(...)',
'from XXSLM.XXSLM_ASSIGNED_COURSES_V',
'where SELF_ENROLL = ''Y''',
'and trunc(START_DATE) <= trunc(SYSDATE)',
'and trunc(END_DATE) < trunc(SYSDATE)',
'and company_code = :AP_COMPANY_CODE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2535154973224087)
,p_query_num_rows=>6
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
 p_id=>wwv_flow_imp.id(287930560533728216)
,p_query_column_id=>1
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287930670160728217)
,p_query_column_id=>2
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End Date'
,p_column_format=>'SINCE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287930254332728213)
,p_query_column_id=>3
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287930732155728218)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtitle'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287930301352728214)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Text'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287930452905728215)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Subtext'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306592202613003733)
,p_name=>'P74_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(287724604806119810)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  NAME a, name c ',
'from xxslm.XXSLM_COURSES b',
'where company_code = :AP_cOMPANY_cODE',
'order by NAME'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(306592554072003736)
,p_name=>'P74_SEARCH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(287728392063119847)
,p_prompt=>'Search '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'  NAME a, NAME b  ',
'from  xxslm.XXSLM_COURSES ',
'where SELF_ENROLL =''N''',
'order by Name',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'NOT_ENTERABLE',
  'initial_fetch', 'FIRST_ROWSET',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(306592376933003734)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_SEARCH_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306592432753003735)
,p_event_id=>wwv_flow_imp.id(306592376933003734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(287728392063119847)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(306592679608003737)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306592715817003738)
,p_event_id=>wwv_flow_imp.id(306592679608003737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(287724604806119810)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
