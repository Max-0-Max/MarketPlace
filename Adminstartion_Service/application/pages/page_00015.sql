prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Seeded Lookups'
,p_alias=>'AT201'
,p_step_title=>'Seeded Lookups'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_imp.id(5413815154166670)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6513762729792462)
,p_plug_name=>'Seeded Lookups'
,p_icon_css_classes=>'fa-server-lock'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6523630138792485)
,p_name=>'Seeded Lookup'
,p_template=>wwv_flow_imp.id(5452712612166699)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'XXSBS_SEEDED_TAB'
,p_query_where=>'"TAB_ID" = :P15_TAB_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P15_TAB_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'EXISTS'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
' from XXSBS_SEEDED_TAB_VALUES',
' where "TAB_ID" = :P15_TAB_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(5469766923166712)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6524338130792487)
,p_query_column_id=>1
,p_column_alias=>'TAB_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Tab Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "TAB_ID" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6524706043792488)
,p_query_column_id=>2
,p_column_alias=>'TAB_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Table Name'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "TAB_NAME" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6525132776792488)
,p_query_column_id=>3
,p_column_alias=>'COLUMN_SIZE'
,p_column_display_sequence=>3
,p_column_heading=>'Column Count'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6525571405792488)
,p_query_column_id=>4
,p_column_alias=>'COLUMN_NAME_1'
,p_column_display_sequence=>4
,p_column_heading=>'Column 1'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_1" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6525928020792488)
,p_query_column_id=>5
,p_column_alias=>'COLUMN_NAME_2'
,p_column_display_sequence=>5
,p_column_heading=>'Column 2'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_2" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6526314380792489)
,p_query_column_id=>6
,p_column_alias=>'COLUMN_NAME_3'
,p_column_display_sequence=>6
,p_column_heading=>'Column 3'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_3" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6526702975792489)
,p_query_column_id=>7
,p_column_alias=>'COLUMN_NAME_4'
,p_column_display_sequence=>7
,p_column_heading=>'Column 4'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_4" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6527154862792489)
,p_query_column_id=>8
,p_column_alias=>'COLUMN_NAME_5'
,p_column_display_sequence=>8
,p_column_heading=>'Column 5'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_5" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6527586167792490)
,p_query_column_id=>9
,p_column_alias=>'COLUMN_NAME_6'
,p_column_display_sequence=>9
,p_column_heading=>'Column 6'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_6" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6527941636792490)
,p_query_column_id=>10
,p_column_alias=>'COLUMN_NAME_7'
,p_column_display_sequence=>10
,p_column_heading=>'Column 7'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_7" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6528386533792490)
,p_query_column_id=>11
,p_column_alias=>'COLUMN_NAME_8'
,p_column_display_sequence=>11
,p_column_heading=>'Column 8'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_8" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6528738524792491)
,p_query_column_id=>12
,p_column_alias=>'COLUMN_NAME_9'
,p_column_display_sequence=>12
,p_column_heading=>'Column 9'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_9" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6529173508792491)
,p_query_column_id=>13
,p_column_alias=>'COLUMN_NAME_10'
,p_column_display_sequence=>13
,p_column_heading=>'Column 10'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_10" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6529562854792491)
,p_query_column_id=>14
,p_column_alias=>'COLUMN_NAME_11'
,p_column_display_sequence=>14
,p_column_heading=>'Column 11'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_11" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6529940488792492)
,p_query_column_id=>15
,p_column_alias=>'COLUMN_NAME_12'
,p_column_display_sequence=>15
,p_column_heading=>'Column 12'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_12" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6530309158792492)
,p_query_column_id=>16
,p_column_alias=>'COLUMN_NAME_13'
,p_column_display_sequence=>16
,p_column_heading=>'Column 13'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_13" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6530792645792492)
,p_query_column_id=>17
,p_column_alias=>'COLUMN_NAME_14'
,p_column_display_sequence=>17
,p_column_heading=>'Column 14'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_14" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6531122687792492)
,p_query_column_id=>18
,p_column_alias=>'COLUMN_NAME_15'
,p_column_display_sequence=>18
,p_column_heading=>'Column 15'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_15" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6531507870792493)
,p_query_column_id=>19
,p_column_alias=>'COLUMN_NAME_16'
,p_column_display_sequence=>19
,p_column_heading=>'Column 16'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_16" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6531911781792493)
,p_query_column_id=>20
,p_column_alias=>'COLUMN_NAME_17'
,p_column_display_sequence=>20
,p_column_heading=>'Column 17'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_17" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6532381013792493)
,p_query_column_id=>21
,p_column_alias=>'COLUMN_NAME_18'
,p_column_display_sequence=>21
,p_column_heading=>'Column 18'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_18" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6532750957792494)
,p_query_column_id=>22
,p_column_alias=>'COLUMN_NAME_19'
,p_column_display_sequence=>22
,p_column_heading=>'Column 19'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_19" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6533170343792494)
,p_query_column_id=>23
,p_column_alias=>'COLUMN_NAME_20'
,p_column_display_sequence=>23
,p_column_heading=>'Column 20'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "COLUMN_NAME_20" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6533506259792494)
,p_query_column_id=>24
,p_column_alias=>'STATUS'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "STATUS" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6533997704792495)
,p_query_column_id=>25
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "CREATED_BY" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6534351075792495)
,p_query_column_id=>26
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "CREATION_DATE" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6534705846792495)
,p_query_column_id=>27
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "LAST_UPDATED_BY" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6535095718792496)
,p_query_column_id=>28
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "XXSBS_SEEDED_TAB"',
'where "LAST_UPDATE_DATE" is not null',
'and "TAB_ID" = :P15_TAB_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6552925885792516)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TAB_ID,',
'       COLUMN_VALUE_1,',
'       COLUMN_VALUE_2,',
'       COLUMN_VALUE_3,',
'       COLUMN_VALUE_4,',
'       COLUMN_VALUE_5,',
'       COLUMN_VALUE_6,',
'       COLUMN_VALUE_7,',
'       COLUMN_VALUE_8,',
'       COLUMN_VALUE_9,',
'       COLUMN_VALUE_10,',
'       COLUMN_VALUE_11,',
'       COLUMN_VALUE_12,',
'       COLUMN_VALUE_13,',
'       COLUMN_VALUE_14,',
'       COLUMN_VALUE_15,',
'       COLUMN_VALUE_16,',
'       COLUMN_VALUE_17,',
'       COLUMN_VALUE_18,',
'       COLUMN_VALUE_19,',
'       COLUMN_VALUE_20,',
'       CREATION_DATE,',
'       CREATED_BY,',
'       LAST_UPDATE_DATE,',
'       LAST_UPDATED_BY,',
'       STATUS',
'  from XXSBS_SEEDED_TAB_VALUES',
' where "TAB_ID" = :P15_TAB_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P15_TAB_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4041760035100746)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4041832102100747)
,p_name=>'TAB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P15_TAB_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4042155679100750)
,p_name=>'COLUMN_VALUE_3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_3'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_3.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6751618441831301)
,p_name=>'COLUMN_VALUE_4'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_4'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_4.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_4'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6751770708831302)
,p_name=>'COLUMN_VALUE_5'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_5'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_5.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_5'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6751824582831303)
,p_name=>'COLUMN_VALUE_6'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_6'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_6.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_6'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6751977821831304)
,p_name=>'COLUMN_VALUE_7'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_7'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_7.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_7'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752032187831305)
,p_name=>'COLUMN_VALUE_8'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_8'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_8.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_8'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752115308831306)
,p_name=>'COLUMN_VALUE_9'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_9'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_9.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_9'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752257580831307)
,p_name=>'COLUMN_VALUE_10'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_10'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_10.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_10'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752372590831308)
,p_name=>'COLUMN_VALUE_11'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_11'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_11.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_11'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752422655831309)
,p_name=>'COLUMN_VALUE_12'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_12'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_12.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_12'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752578441831310)
,p_name=>'COLUMN_VALUE_13'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_13'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_13.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_13'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752663329831311)
,p_name=>'COLUMN_VALUE_14'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_14'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_14.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_14'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752747811831312)
,p_name=>'COLUMN_VALUE_15'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_15'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_15.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_15'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752886445831313)
,p_name=>'COLUMN_VALUE_16'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_16'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_16.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_16'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6752995247831314)
,p_name=>'COLUMN_VALUE_17'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_17'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_17.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_17'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753025164831315)
,p_name=>'COLUMN_VALUE_18'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_18'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_18.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_18'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753141605831316)
,p_name=>'COLUMN_VALUE_19'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_19'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_19.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_19'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753285482831317)
,p_name=>'COLUMN_VALUE_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_20'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_20.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_20'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753318896831318)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753477171831319)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753540048831320)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753643496831321)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753761346831322)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753877579831323)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6753932671831324)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6754548497831330)
,p_name=>'COLUMN_VALUE_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_1.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6754613883831331)
,p_name=>'COLUMN_VALUE_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_VALUE_2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&P15_COLUMN_NAME_2.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P15_COLUMN_NAME_2'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4041640078100745)
,p_internal_uid=>4041640078100745
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6757591814831449)
,p_interactive_grid_id=>wwv_flow_imp.id(4041640078100745)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6757671968831449)
,p_report_id=>wwv_flow_imp.id(6757591814831449)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6758110187831450)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4041760035100746)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6758668422831454)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4041832102100747)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6760144926831460)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4042155679100750)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6760614159831462)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6751618441831301)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6761141420831465)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6751770708831302)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6761653043831467)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6751824582831303)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6762198632831469)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(6751977821831304)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6762634442831471)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(6752032187831305)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6763145375831473)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(6752115308831306)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6763609202831476)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(6752257580831307)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6764186657831478)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(6752372590831308)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6764623825831480)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(6752422655831309)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6765171867831482)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(6752578441831310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6765648030831484)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(6752663329831311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6766178660831487)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(6752747811831312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6766663293831489)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(6752886445831313)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6767166980831491)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(6752995247831314)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6767657466831493)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(6753025164831315)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6768132844831495)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(6753141605831316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6768563412831497)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(6753285482831317)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6769028279831499)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(6753318896831318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6769584285831502)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(6753477171831319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6770011888831504)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(6753540048831320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6770529769831506)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(6753643496831321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6771016163831508)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(6753761346831322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6786274077833984)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6753877579831323)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7074353014588992)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(6754548497831330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7074827543588995)
,p_view_id=>wwv_flow_imp.id(6757671968831449)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(6754613883831331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6593185378792559)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P15_TAB_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9573842069213602)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from XXSBS_SEEDED_TAB'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15:P15_TAB_ID:&TAB_ID.',
  'list_view_features', 'SEARCH',
  'search_column', 'TAB_NAME',
  'search_type', 'SERVER_LIKE_IGNORE',
  'supplemental_info_column', 'STATUS',
  'text_column', 'TAB_NAME')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6593691698792560)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6523630138792485)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP,25:P25_TAB_ID:&P15_TAB_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_security_scheme=>wwv_flow_imp.id(3148311787613203)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6514468930792463)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6513762729792462)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.:RESET:&DEBUG.:RP,15::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6514829360792463)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6513762729792462)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP,25::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6552549780792516)
,p_name=>'P15_TAB_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6523630138792485)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6754790714831332)
,p_name=>'P15_COLUMN_NAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6754893526831333)
,p_name=>'P15_COLUMN_NAME_3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755004545831335)
,p_name=>'P15_COLUMN_NAME_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755112995831336)
,p_name=>'P15_COLUMN_NAME_4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755207656831337)
,p_name=>'P15_COLUMN_NAME_5'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755328841831338)
,p_name=>'P15_COLUMN_NAME_6'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755465576831339)
,p_name=>'P15_COLUMN_NAME_7'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755555570831340)
,p_name=>'P15_COLUMN_NAME_11'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755664832831341)
,p_name=>'P15_COLUMN_NAME_15'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755784662831342)
,p_name=>'P15_COLUMN_NAME_8'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755846783831343)
,p_name=>'P15_COLUMN_NAME_12'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6755968621831344)
,p_name=>'P15_COLUMN_NAME_16'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6756096255831345)
,p_name=>'P15_COLUMN_NAME_9'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6756109440831346)
,p_name=>'P15_COLUMN_NAME_13'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6756285189831347)
,p_name=>'P15_COLUMN_NAME_17'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6756326319831348)
,p_name=>'P15_COLUMN_NAME_10'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6756458581831349)
,p_name=>'P15_COLUMN_NAME_14'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6756581367831350)
,p_name=>'P15_COLUMN_NAME_18'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7117212295935601)
,p_name=>'P15_COLUMN_NAME_19'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7117349748935602)
,p_name=>'P15_COLUMN_NAME_20'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(9573842069213602)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6593957372792560)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6523630138792485)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6594582413792560)
,p_event_id=>wwv_flow_imp.id(6593957372792560)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6595069591792561)
,p_event_id=>wwv_flow_imp.id(6593957372792560)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Xxsbs\u0020Seeded\u0020Tab\u0020updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6594081126792560)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6596391801792562)
,p_event_id=>wwv_flow_imp.id(6594081126792560)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7118084109935609)
,p_name=>'DisableEdit'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7118175650935610)
,p_event_id=>wwv_flow_imp.id(7118084109935609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(6593691698792560)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6754028700831325)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6552925885792516)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Region Display Selector - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6754028700831325
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6754939117831334)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getColumnName'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cnt number:=30;',
'v_name varchar2(50);',
'',
'begin',
'',
'--v_cnt:=nvl(xxsbs.xxsbs_seeded_lookup_pkg.get_column_name(:P15_TAB_ID,''COLUMN_SIZE''),0);',
'',
'FOR i IN 1 .. 20--v_cnt',
'    LOOP',
'        v_name:=xxsbs.xxsbs_seeded_lookup_pkg.get_column_name(:P15_TAB_ID, ''COLUMN_NAME_''||i);',
'                ',
'        APEX_UTIL.set_session_state (p_name    => ''P15_COLUMN_NAME_''||i,p_value   => v_name);',
'    END LOOP;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6754939117831334
);
wwv_flow_imp.component_end;
end;
/
