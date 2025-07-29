prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_name=>'Payroll Analysis'
,p_alias=>'GQ1'
,p_step_title=>'Payroll Analysis'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(262220845465111634)
,p_plug_name=>'Detailed Payroll Analysis'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>5
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114666179577542467)
,p_plug_name=>'Detailed Payroll Analysis'
,p_parent_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'  C001,C002,C003,C004,C005,C006,C007,C008,C009,C010,',
'  C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,',
'  C021,C022,C023,C024,C025,C026,C027,C028,C029,C030,',
'  C031,C032,C033,C034,C035,C036,C037,C038,C039,C040,',
'  C041,C042,C043,C044,C045,C046,C047,C048,C049,C050,',
'  C051,C052,C053,C054,C055,C056,C057,C058,C059,C060,',
'  C061,C062,C063,C064,C065,C066,C067,C068,C069,C070,',
'  C071,C072,C073,C074,C075,C076,C077,C078,C079,C080,',
'  C081,C082,C083,C084,C085,C086,C087,C088,C089,C090,',
'  C091,C092,C093,C094,C095,C096,C097,C098,C099,C100,',
'  C101,C102,C103,C104,C105,C106,C107,C108,C109,C110,',
'  C111,C112,C113,C114,C115,C116,C117,C118,C119,C120,',
'  C121,C122,C123,C124,C125,C126,C127,C128,C129,C130,',
'  C131,C132,C133,C134,C135,C136,C137,C138,C139,C140,',
'  C141,C142,C143,C144,C145,C146,C147,C148,C149,C150,',
'  C151,C152,C153,C154,C155,C156,C157,C158,C159,C160,',
'  C161,C162,C163,C164,C165,C166,C167,C168,C169,C170,',
'  C171,C172,C173,C174,C175,C176,C177,C178,C179,C180,',
'  C181,C182,C183,C184,C185,C186,C187,C188,C189,C190,',
'  C191,C192,C193,C194,C195,C196,C197,C198,C199,C200,',
'  C201,C202,C203,C204,C205,C206,C207,C208,C209,C210,',
'  C211,C212,C213,C214,C215,C216,C217,C218,C219,C220,',
'  C221,C222,C223,C224,C225',
' from xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' and app_session =:APP_SESSION ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P51_PAY_PERIOD'
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
 p_id=>wwv_flow_imp.id(114666245921542468)
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
,p_internal_uid=>114666245921542468
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43834431850918809)
,p_db_column_name=>'C015'
,p_display_order=>10
,p_column_identifier=>'O'
,p_column_label=>'&AP_STAFF_ID_LABEL.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43828822837918805)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43829238248918806)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'&AP_JOBTITLE_LABEL.'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(48584727251701710)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43829639218918806)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'&AP_SUBORG_LABEL.'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(274240147809292552)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43830096328918806)
,p_db_column_name=>'C004'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'&AP_DEPARTMENT_LABEL.'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(44009598191918930)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43830486853918806)
,p_db_column_name=>'C005'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'&AP_LOCATION_LABEL.'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43830825935918807)
,p_db_column_name=>'C006'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'&AP_UNIT_LABEL.'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(44010148227918931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43831211560918807)
,p_db_column_name=>'C007'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Reference ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43831683818918807)
,p_db_column_name=>'C008'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Grade'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(44008363499918928)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43832016891918807)
,p_db_column_name=>'C009'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Grade Step'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43832453141918807)
,p_db_column_name=>'C010'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Bank Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(44010716025918931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43832821182918808)
,p_db_column_name=>'C011'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Account Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43833286733918808)
,p_db_column_name=>'C012'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Pension Administrator'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(44007776828918919)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43833655733918808)
,p_db_column_name=>'C013'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Pension PIN'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43834009401918808)
,p_db_column_name=>'C014'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'TAX ID'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43834890269918809)
,p_db_column_name=>'C016'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'&PX_COL16.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C016 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43835277171918809)
,p_db_column_name=>'C017'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'&PX_COL17.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C017 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43835617370918810)
,p_db_column_name=>'C018'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'&PX_COL18.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C018 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43836036702918810)
,p_db_column_name=>'C019'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'&PX_COL19.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C019 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43836423639918810)
,p_db_column_name=>'C020'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'&PX_COL20.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C020 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43836812020918810)
,p_db_column_name=>'C021'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'&PX_COL21.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C021 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43837245098918810)
,p_db_column_name=>'C022'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'&PX_COL22.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C022 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43837619059918811)
,p_db_column_name=>'C023'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'&PX_COL23.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C023 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43838057333918811)
,p_db_column_name=>'C024'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'&PX_COL24.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C024 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43838420491918811)
,p_db_column_name=>'C025'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'&PX_COL25.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C025 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43838848563918811)
,p_db_column_name=>'C026'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'&PX_COL26.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C026 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43839274076918811)
,p_db_column_name=>'C027'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'&PX_COL27.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C027 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43839636936918812)
,p_db_column_name=>'C028'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'&PX_COL28.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C028 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43840028519918812)
,p_db_column_name=>'C029'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'&PX_COL29.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C029 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43840463865918812)
,p_db_column_name=>'C030'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'&PX_COL30.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C030 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43840846950918812)
,p_db_column_name=>'C031'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'&PX_COL31.'
,p_column_type=>'STRING'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'PX_COL31'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43841273092918813)
,p_db_column_name=>'C032'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'&PX_COL32.'
,p_column_type=>'STRING'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'PX_COL32'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43841685762918813)
,p_db_column_name=>'C033'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'&PX_COL33.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C033 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43842037344918813)
,p_db_column_name=>'C034'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'&PX_COL34.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C034 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43842405446918813)
,p_db_column_name=>'C035'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'&PX_COL35.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C035 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43842881780918813)
,p_db_column_name=>'C036'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'&PX_COL36.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C036 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43843157808918814)
,p_db_column_name=>'C037'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'&PX_COL37.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C037 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43843599478918814)
,p_db_column_name=>'C038'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'&PX_COL38.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C038 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43843929466918814)
,p_db_column_name=>'C039'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'&PX_COL39.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C039 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43844317014918814)
,p_db_column_name=>'C040'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'&PX_COL40.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C040 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43844754995918814)
,p_db_column_name=>'C041'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'&PX_COL41.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C041 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43845127662918815)
,p_db_column_name=>'C042'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'&PX_COL42.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C042 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43845511581918815)
,p_db_column_name=>'C043'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'&PX_COL43.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C043 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43845963170918815)
,p_db_column_name=>'C044'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'&PX_COL44.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C044 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43846371413918815)
,p_db_column_name=>'C045'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'&PX_COL45.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C045 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43846795392918816)
,p_db_column_name=>'C046'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'&PX_COL46.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C046 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43847194797918816)
,p_db_column_name=>'C047'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'&PX_COL47.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C047 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43847562548918816)
,p_db_column_name=>'C048'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'&PX_COL48.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C048 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43847969813918816)
,p_db_column_name=>'C049'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'&PX_COL49.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C049 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43848339839918816)
,p_db_column_name=>'C050'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'&PX_COL50.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C050 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43848789446918817)
,p_db_column_name=>'C051'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'&PX_COL51.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C051 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43849174741918817)
,p_db_column_name=>'C052'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'&PX_COL52.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C052 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43849548022918817)
,p_db_column_name=>'C053'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'&PX_COL53.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C053 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43849960229918817)
,p_db_column_name=>'C054'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'&PX_COL54.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C054 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43850350042918818)
,p_db_column_name=>'C055'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'&PX_COL55.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C055 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43850777764918818)
,p_db_column_name=>'C056'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'&PX_COL56.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C056 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43851190723918818)
,p_db_column_name=>'C057'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'&PX_COL57.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C057 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43851501431918818)
,p_db_column_name=>'C058'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'&PX_COL58.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C058 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43851927986918819)
,p_db_column_name=>'C059'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'&PX_COL59.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C059 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43852377403918819)
,p_db_column_name=>'C060'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'&PX_COL60.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C060 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43852750103918819)
,p_db_column_name=>'C061'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'&PX_COL61.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C061 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43853131425918819)
,p_db_column_name=>'C062'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'&PX_COL62.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C062 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43853548358918819)
,p_db_column_name=>'C063'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'&PX_COL63.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C063 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43853964784918820)
,p_db_column_name=>'C064'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'&PX_COL64.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C064 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43854398875918820)
,p_db_column_name=>'C065'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'&PX_COL65.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C065 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43854701202918820)
,p_db_column_name=>'C066'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'&PX_COL66.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C066 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43855170528918820)
,p_db_column_name=>'C067'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'&PX_COL67.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C067 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43855504200918820)
,p_db_column_name=>'C068'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'&PX_COL68.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C068 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43855972605918821)
,p_db_column_name=>'C069'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'&PX_COL69.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C069 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43856375715918821)
,p_db_column_name=>'C070'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'&PX_COL70.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C070 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43856769675918821)
,p_db_column_name=>'C071'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'&PX_COL71.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C071 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43857140557918821)
,p_db_column_name=>'C072'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'&PX_COL72.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C072 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43857501111918822)
,p_db_column_name=>'C073'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'&PX_COL73.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C073 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43857984621918822)
,p_db_column_name=>'C074'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'&PX_COL74.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C074 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43858351241918822)
,p_db_column_name=>'C075'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'&PX_COL75.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C075 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43858757854918822)
,p_db_column_name=>'C076'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'&PX_COL76.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C076 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43859131259918822)
,p_db_column_name=>'C077'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'&PX_COL77.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C077 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43859542045918823)
,p_db_column_name=>'C078'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'&PX_COL78.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C078 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43859944341918823)
,p_db_column_name=>'C079'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'&PX_COL79.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C079 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43860366074918823)
,p_db_column_name=>'C080'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'&PX_COL80.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C080 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43860750028918823)
,p_db_column_name=>'C081'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'&PX_COL81.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C081 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43861110419918823)
,p_db_column_name=>'C082'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'&PX_COL82.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C082 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43861504466918824)
,p_db_column_name=>'C083'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'&PX_COL83.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C083 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43861979064918824)
,p_db_column_name=>'C084'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'&PX_COL84.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C084 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43862348119918824)
,p_db_column_name=>'C085'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'&PX_COL85.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C085 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43862710524918824)
,p_db_column_name=>'C086'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'&PX_COL86.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C086 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43863160816918825)
,p_db_column_name=>'C087'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'&PX_COL87.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C087 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43863529370918825)
,p_db_column_name=>'C088'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'&PX_COL88.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C088 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43863953714918825)
,p_db_column_name=>'C089'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'&PX_COL89.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C089 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43864367554918825)
,p_db_column_name=>'C090'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'&PX_COL90.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C090 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43864729376918825)
,p_db_column_name=>'C091'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'&PX_COL91.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C091 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43865149769918826)
,p_db_column_name=>'C092'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'&PX_COL92.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C092 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43865548787918826)
,p_db_column_name=>'C093'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'&PX_COL93.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C093 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43865985620918826)
,p_db_column_name=>'C094'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'&PX_COL94.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C094 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43866329477918826)
,p_db_column_name=>'C095'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'&PX_COL95.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C095 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43866759203918827)
,p_db_column_name=>'C096'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'&PX_COL96.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C096 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43867186141918827)
,p_db_column_name=>'C097'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'&PX_COL97.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C097 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43867547822918827)
,p_db_column_name=>'C098'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'&PX_COL98.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C098 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43867906378918827)
,p_db_column_name=>'C099'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'&PX_COL99.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C099 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43868372693918828)
,p_db_column_name=>'C100'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'&PX_COL100.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C100 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43868788189918828)
,p_db_column_name=>'C101'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'&PX_COL101.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C101 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43869139183918828)
,p_db_column_name=>'C102'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'&PX_COL102.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C102 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43869582740918828)
,p_db_column_name=>'C103'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'&PX_COL103.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C103 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43869943588918828)
,p_db_column_name=>'C104'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'&PX_COL104.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C104 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43870325935918829)
,p_db_column_name=>'C105'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'&PX_COL105.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C105 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43870780935918829)
,p_db_column_name=>'C106'
,p_display_order=>1060
,p_column_identifier=>'DB'
,p_column_label=>'&PX_COL106.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C106 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43871155749918829)
,p_db_column_name=>'C107'
,p_display_order=>1070
,p_column_identifier=>'DC'
,p_column_label=>'&PX_COL107.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C107 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43871581267918829)
,p_db_column_name=>'C108'
,p_display_order=>1080
,p_column_identifier=>'DD'
,p_column_label=>'&PX_COL108.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C108 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43871958320918830)
,p_db_column_name=>'C109'
,p_display_order=>1090
,p_column_identifier=>'DE'
,p_column_label=>'&PX_COL109.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C109 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43872334290918830)
,p_db_column_name=>'C110'
,p_display_order=>1100
,p_column_identifier=>'DF'
,p_column_label=>'&PX_COL110.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C110 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43872725763918830)
,p_db_column_name=>'C111'
,p_display_order=>1110
,p_column_identifier=>'DG'
,p_column_label=>'&PX_COL111.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C111 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43873107574918830)
,p_db_column_name=>'C112'
,p_display_order=>1120
,p_column_identifier=>'DH'
,p_column_label=>'&PX_COL112.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C112 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43873543728918830)
,p_db_column_name=>'C113'
,p_display_order=>1130
,p_column_identifier=>'DI'
,p_column_label=>'&PX_COL113.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C113 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43873974164918831)
,p_db_column_name=>'C114'
,p_display_order=>1140
,p_column_identifier=>'DJ'
,p_column_label=>'&PX_COL114.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C114 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43874350177918831)
,p_db_column_name=>'C115'
,p_display_order=>1150
,p_column_identifier=>'DK'
,p_column_label=>'&PX_COL115.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C115 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43874758010918831)
,p_db_column_name=>'C116'
,p_display_order=>1160
,p_column_identifier=>'DL'
,p_column_label=>'&PX_COL116.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C116 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43875176626918831)
,p_db_column_name=>'C117'
,p_display_order=>1170
,p_column_identifier=>'DM'
,p_column_label=>'&PX_COL117.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C117 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43875507109918831)
,p_db_column_name=>'C118'
,p_display_order=>1180
,p_column_identifier=>'DN'
,p_column_label=>'&PX_COL118.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C118 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43875996970918832)
,p_db_column_name=>'C119'
,p_display_order=>1190
,p_column_identifier=>'DO'
,p_column_label=>'&PX_COL119.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C119 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43876367276918832)
,p_db_column_name=>'C120'
,p_display_order=>1200
,p_column_identifier=>'DP'
,p_column_label=>'&PX_COL120.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C120 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43876748881918832)
,p_db_column_name=>'C121'
,p_display_order=>1210
,p_column_identifier=>'DQ'
,p_column_label=>'&PX_COL121.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C121 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43877188910918832)
,p_db_column_name=>'C122'
,p_display_order=>1220
,p_column_identifier=>'DR'
,p_column_label=>'&PX_COL122.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C122 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43877502473918833)
,p_db_column_name=>'C123'
,p_display_order=>1230
,p_column_identifier=>'DS'
,p_column_label=>'&PX_COL123.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C123 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43877976838918833)
,p_db_column_name=>'C124'
,p_display_order=>1240
,p_column_identifier=>'DT'
,p_column_label=>'&PX_COL124.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C124 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43878328145918833)
,p_db_column_name=>'C125'
,p_display_order=>1250
,p_column_identifier=>'DU'
,p_column_label=>'&PX_COL125.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C125 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43878709671918833)
,p_db_column_name=>'C126'
,p_display_order=>1260
,p_column_identifier=>'DV'
,p_column_label=>'&PX_COL126.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C126 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43879170356918833)
,p_db_column_name=>'C127'
,p_display_order=>1270
,p_column_identifier=>'DW'
,p_column_label=>'&PX_COL127.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C127 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43879547064918834)
,p_db_column_name=>'C128'
,p_display_order=>1280
,p_column_identifier=>'DX'
,p_column_label=>'&PX_COL128.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C128 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43879978197918834)
,p_db_column_name=>'C129'
,p_display_order=>1290
,p_column_identifier=>'DY'
,p_column_label=>'&PX_COL129.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C129 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43880310635918834)
,p_db_column_name=>'C130'
,p_display_order=>1300
,p_column_identifier=>'DZ'
,p_column_label=>'&PX_COL130.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C130 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43880761826918834)
,p_db_column_name=>'C131'
,p_display_order=>1310
,p_column_identifier=>'EA'
,p_column_label=>'&PX_COL131.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C131 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43881116287918835)
,p_db_column_name=>'C132'
,p_display_order=>1320
,p_column_identifier=>'EB'
,p_column_label=>'&PX_COL132.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C132 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43881503963918835)
,p_db_column_name=>'C133'
,p_display_order=>1330
,p_column_identifier=>'EC'
,p_column_label=>'&PX_COL133.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C133 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43881989406918835)
,p_db_column_name=>'C134'
,p_display_order=>1340
,p_column_identifier=>'ED'
,p_column_label=>'&PX_COL134.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C134 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43882388482918835)
,p_db_column_name=>'C135'
,p_display_order=>1350
,p_column_identifier=>'EE'
,p_column_label=>'&PX_COL135.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C135 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43882787925918835)
,p_db_column_name=>'C136'
,p_display_order=>1360
,p_column_identifier=>'EF'
,p_column_label=>'&PX_COL136.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C136 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43883181205918836)
,p_db_column_name=>'C137'
,p_display_order=>1370
,p_column_identifier=>'EG'
,p_column_label=>'&PX_COL137.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C137 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43883542422918836)
,p_db_column_name=>'C138'
,p_display_order=>1380
,p_column_identifier=>'EH'
,p_column_label=>'&PX_COL138.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C138 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43883982745918836)
,p_db_column_name=>'C139'
,p_display_order=>1390
,p_column_identifier=>'EI'
,p_column_label=>'&PX_COL139.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C139 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43884309751918836)
,p_db_column_name=>'C140'
,p_display_order=>1400
,p_column_identifier=>'EJ'
,p_column_label=>'&PX_COL140.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C140 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43884784131918836)
,p_db_column_name=>'C141'
,p_display_order=>1410
,p_column_identifier=>'EK'
,p_column_label=>'&PX_COL141.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C141 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43885124668918837)
,p_db_column_name=>'C142'
,p_display_order=>1420
,p_column_identifier=>'EL'
,p_column_label=>'&PX_COL142.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C142 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43885546305918837)
,p_db_column_name=>'C143'
,p_display_order=>1430
,p_column_identifier=>'EM'
,p_column_label=>'&PX_COL143.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C143 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43885980970918837)
,p_db_column_name=>'C144'
,p_display_order=>1440
,p_column_identifier=>'EN'
,p_column_label=>'&PX_COL144.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C144 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43886347534918837)
,p_db_column_name=>'C145'
,p_display_order=>1450
,p_column_identifier=>'EO'
,p_column_label=>'&PX_COL145.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C145 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43886735008918838)
,p_db_column_name=>'C146'
,p_display_order=>1460
,p_column_identifier=>'EP'
,p_column_label=>'&PX_COL146.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C146 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43887142928918838)
,p_db_column_name=>'C147'
,p_display_order=>1470
,p_column_identifier=>'EQ'
,p_column_label=>'&PX_COL147.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C147 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43887598938918838)
,p_db_column_name=>'C148'
,p_display_order=>1480
,p_column_identifier=>'ER'
,p_column_label=>'&PX_COL148.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C148 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43887954640918838)
,p_db_column_name=>'C149'
,p_display_order=>1490
,p_column_identifier=>'ES'
,p_column_label=>'&PX_COL149.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C149 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43888380628918838)
,p_db_column_name=>'C150'
,p_display_order=>1500
,p_column_identifier=>'ET'
,p_column_label=>'&PX_COL150.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C150 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43888749126918839)
,p_db_column_name=>'C151'
,p_display_order=>1510
,p_column_identifier=>'EU'
,p_column_label=>'&PX_COL151.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C151 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43889158768918839)
,p_db_column_name=>'C152'
,p_display_order=>1520
,p_column_identifier=>'EV'
,p_column_label=>'&PX_COL152.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C152 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43889503241918839)
,p_db_column_name=>'C153'
,p_display_order=>1530
,p_column_identifier=>'EW'
,p_column_label=>'&PX_COL153.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C153 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43889948281918839)
,p_db_column_name=>'C154'
,p_display_order=>1540
,p_column_identifier=>'EX'
,p_column_label=>'&PX_COL154.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C154 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43890314326918839)
,p_db_column_name=>'C155'
,p_display_order=>1550
,p_column_identifier=>'EY'
,p_column_label=>'&PX_COL155.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C155 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43890799262918840)
,p_db_column_name=>'C156'
,p_display_order=>1560
,p_column_identifier=>'EZ'
,p_column_label=>'&PX_COL156.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C156 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43891118176918840)
,p_db_column_name=>'C157'
,p_display_order=>1570
,p_column_identifier=>'FA'
,p_column_label=>'&PX_COL157.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C157 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43891592017918840)
,p_db_column_name=>'C158'
,p_display_order=>1580
,p_column_identifier=>'FB'
,p_column_label=>'&PX_COL158.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C158 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43891902861918840)
,p_db_column_name=>'C159'
,p_display_order=>1590
,p_column_identifier=>'FC'
,p_column_label=>'&PX_COL159.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C159 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43892398114918840)
,p_db_column_name=>'C160'
,p_display_order=>1600
,p_column_identifier=>'FD'
,p_column_label=>'&PX_COL160.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C160 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43892775485918841)
,p_db_column_name=>'C161'
,p_display_order=>1610
,p_column_identifier=>'FE'
,p_column_label=>'&PX_COL161.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C161 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43893133594918841)
,p_db_column_name=>'C162'
,p_display_order=>1620
,p_column_identifier=>'FF'
,p_column_label=>'&PX_COL162.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C162 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43893591182918841)
,p_db_column_name=>'C163'
,p_display_order=>1630
,p_column_identifier=>'FG'
,p_column_label=>'&PX_COL163.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C163 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43893922815918841)
,p_db_column_name=>'C164'
,p_display_order=>1640
,p_column_identifier=>'FH'
,p_column_label=>'&PX_COL164.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C164 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43894384838918842)
,p_db_column_name=>'C165'
,p_display_order=>1650
,p_column_identifier=>'FI'
,p_column_label=>'&PX_COL165.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C165 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43894713932918842)
,p_db_column_name=>'C166'
,p_display_order=>1660
,p_column_identifier=>'FJ'
,p_column_label=>'&PX_COL166.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C166 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43895143410918842)
,p_db_column_name=>'C167'
,p_display_order=>1670
,p_column_identifier=>'FK'
,p_column_label=>'&PX_COL167.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C167 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43895526762918842)
,p_db_column_name=>'C168'
,p_display_order=>1680
,p_column_identifier=>'FL'
,p_column_label=>'&PX_COL168.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C168 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43895916793918843)
,p_db_column_name=>'C169'
,p_display_order=>1690
,p_column_identifier=>'FM'
,p_column_label=>'&PX_COL169.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C169 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43896351334918843)
,p_db_column_name=>'C170'
,p_display_order=>1700
,p_column_identifier=>'FN'
,p_column_label=>'&PX_COL170.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C170 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43896756056918843)
,p_db_column_name=>'C171'
,p_display_order=>1710
,p_column_identifier=>'FO'
,p_column_label=>'&PX_COL171.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C171 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43897133025918843)
,p_db_column_name=>'C172'
,p_display_order=>1720
,p_column_identifier=>'FP'
,p_column_label=>'&PX_COL172.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C172 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43897518823918843)
,p_db_column_name=>'C173'
,p_display_order=>1730
,p_column_identifier=>'FQ'
,p_column_label=>'&PX_COL173.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C173 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43897983713918844)
,p_db_column_name=>'C174'
,p_display_order=>1740
,p_column_identifier=>'FR'
,p_column_label=>'&PX_COL174.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C174 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43898346706918844)
,p_db_column_name=>'C175'
,p_display_order=>1750
,p_column_identifier=>'FS'
,p_column_label=>'&PX_COL175.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C175 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43898796627918844)
,p_db_column_name=>'C176'
,p_display_order=>1760
,p_column_identifier=>'FT'
,p_column_label=>'&PX_COL176.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C176 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43899162134918844)
,p_db_column_name=>'C177'
,p_display_order=>1770
,p_column_identifier=>'FU'
,p_column_label=>'&PX_COL177.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C177 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43899566448918845)
,p_db_column_name=>'C178'
,p_display_order=>1780
,p_column_identifier=>'FV'
,p_column_label=>'&PX_COL178.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C178 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43899958793918845)
,p_db_column_name=>'C179'
,p_display_order=>1790
,p_column_identifier=>'FW'
,p_column_label=>'&PX_COL179.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C179 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43900373135918845)
,p_db_column_name=>'C180'
,p_display_order=>1800
,p_column_identifier=>'FX'
,p_column_label=>'&PX_COL180.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C180 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43900731683918845)
,p_db_column_name=>'C181'
,p_display_order=>1810
,p_column_identifier=>'FY'
,p_column_label=>'&PX_COL181.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C181 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43901104057918845)
,p_db_column_name=>'C182'
,p_display_order=>1820
,p_column_identifier=>'FZ'
,p_column_label=>'&PX_COL182.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C182 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43901514350918846)
,p_db_column_name=>'C183'
,p_display_order=>1830
,p_column_identifier=>'GA'
,p_column_label=>'&PX_COL183.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C183 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43901911599918846)
,p_db_column_name=>'C184'
,p_display_order=>1840
,p_column_identifier=>'GB'
,p_column_label=>'&PX_COL184.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C184 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43902372456918846)
,p_db_column_name=>'C185'
,p_display_order=>1850
,p_column_identifier=>'GC'
,p_column_label=>'&PX_COL185.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C185 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43902708028918846)
,p_db_column_name=>'C186'
,p_display_order=>1860
,p_column_identifier=>'GD'
,p_column_label=>'&PX_COL186.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C186 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43903112853918846)
,p_db_column_name=>'C187'
,p_display_order=>1870
,p_column_identifier=>'GE'
,p_column_label=>'&PX_COL187.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C187 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43903569720918847)
,p_db_column_name=>'C188'
,p_display_order=>1880
,p_column_identifier=>'GF'
,p_column_label=>'&PX_COL188.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C188 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43903918262918847)
,p_db_column_name=>'C189'
,p_display_order=>1890
,p_column_identifier=>'GG'
,p_column_label=>'&PX_COL189.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C189 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43904370399918847)
,p_db_column_name=>'C190'
,p_display_order=>1900
,p_column_identifier=>'GH'
,p_column_label=>'&PX_COL190.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C190 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43904700359918847)
,p_db_column_name=>'C191'
,p_display_order=>1910
,p_column_identifier=>'GI'
,p_column_label=>'&PX_COL191.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C191 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43905171215918848)
,p_db_column_name=>'C192'
,p_display_order=>1920
,p_column_identifier=>'GJ'
,p_column_label=>'&PX_COL192.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C192 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43905536435918848)
,p_db_column_name=>'C193'
,p_display_order=>1930
,p_column_identifier=>'GK'
,p_column_label=>'&PX_COL193.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C193 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43905908457918848)
,p_db_column_name=>'C194'
,p_display_order=>1940
,p_column_identifier=>'GL'
,p_column_label=>'&PX_COL194.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C194 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43906386224918848)
,p_db_column_name=>'C195'
,p_display_order=>1950
,p_column_identifier=>'GM'
,p_column_label=>'&PX_COL195.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C195 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43906766195918848)
,p_db_column_name=>'C196'
,p_display_order=>1960
,p_column_identifier=>'GN'
,p_column_label=>'&PX_COL196.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C196 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43907158183918849)
,p_db_column_name=>'C197'
,p_display_order=>1970
,p_column_identifier=>'GO'
,p_column_label=>'&PX_COL197.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C197 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43907582547918849)
,p_db_column_name=>'C198'
,p_display_order=>1980
,p_column_identifier=>'GP'
,p_column_label=>'&PX_COL198.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C198 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43907930660918849)
,p_db_column_name=>'C199'
,p_display_order=>1990
,p_column_identifier=>'GQ'
,p_column_label=>'&PX_COL199.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C199 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43908390971918849)
,p_db_column_name=>'C200'
,p_display_order=>2000
,p_column_identifier=>'GR'
,p_column_label=>'&PX_COL200.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C200 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43908710668918849)
,p_db_column_name=>'C201'
,p_display_order=>2010
,p_column_identifier=>'GS'
,p_column_label=>'&PX_COL201.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C201 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43909188171918850)
,p_db_column_name=>'C202'
,p_display_order=>2020
,p_column_identifier=>'GT'
,p_column_label=>'&PX_COL202.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C202 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43909500194918850)
,p_db_column_name=>'C203'
,p_display_order=>2030
,p_column_identifier=>'GU'
,p_column_label=>'&PX_COL203.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C203 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43909988800918850)
,p_db_column_name=>'C204'
,p_display_order=>2040
,p_column_identifier=>'GV'
,p_column_label=>'&PX_COL204.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C204 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43910383791918850)
,p_db_column_name=>'C205'
,p_display_order=>2050
,p_column_identifier=>'GW'
,p_column_label=>'&PX_COL205.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C205 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43910754033918851)
,p_db_column_name=>'C206'
,p_display_order=>2060
,p_column_identifier=>'GX'
,p_column_label=>'&PX_COL206.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C206 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43911174915918851)
,p_db_column_name=>'C207'
,p_display_order=>2070
,p_column_identifier=>'GY'
,p_column_label=>'&PX_COL207.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C207 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43911588774918851)
,p_db_column_name=>'C208'
,p_display_order=>2080
,p_column_identifier=>'GZ'
,p_column_label=>'&PX_COL208.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C208 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43911980159918851)
,p_db_column_name=>'C209'
,p_display_order=>2090
,p_column_identifier=>'HA'
,p_column_label=>'&PX_COL209.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C209 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43912372471918851)
,p_db_column_name=>'C210'
,p_display_order=>2100
,p_column_identifier=>'HB'
,p_column_label=>'&PX_COL210.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C210 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43912750592918852)
,p_db_column_name=>'C211'
,p_display_order=>2110
,p_column_identifier=>'HC'
,p_column_label=>'&PX_COL211.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C211 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43913108426918852)
,p_db_column_name=>'C212'
,p_display_order=>2120
,p_column_identifier=>'HD'
,p_column_label=>'&PX_COL212.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C212 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43913598895918852)
,p_db_column_name=>'C213'
,p_display_order=>2130
,p_column_identifier=>'HE'
,p_column_label=>'&PX_COL213.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C213 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43913920961918852)
,p_db_column_name=>'C214'
,p_display_order=>2140
,p_column_identifier=>'HF'
,p_column_label=>'&PX_COL214.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C214 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43914352074918853)
,p_db_column_name=>'C215'
,p_display_order=>2150
,p_column_identifier=>'HG'
,p_column_label=>'&PX_COL215.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C215 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43914740928918853)
,p_db_column_name=>'C216'
,p_display_order=>2160
,p_column_identifier=>'HH'
,p_column_label=>'&PX_COL216.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C216 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43915111393918853)
,p_db_column_name=>'C217'
,p_display_order=>2170
,p_column_identifier=>'HI'
,p_column_label=>'&PX_COL217.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C217 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43915548750918853)
,p_db_column_name=>'C218'
,p_display_order=>2180
,p_column_identifier=>'HJ'
,p_column_label=>'&PX_COL218.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C218 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43915944209918853)
,p_db_column_name=>'C219'
,p_display_order=>2190
,p_column_identifier=>'HK'
,p_column_label=>'&PX_COL219.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C219 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43916395012918854)
,p_db_column_name=>'C220'
,p_display_order=>2200
,p_column_identifier=>'HL'
,p_column_label=>'&PX_COL220.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C220 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43916762047918854)
,p_db_column_name=>'C221'
,p_display_order=>2210
,p_column_identifier=>'HM'
,p_column_label=>'&PX_COL221.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C221 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43917137444918854)
,p_db_column_name=>'C222'
,p_display_order=>2220
,p_column_identifier=>'HN'
,p_column_label=>'&PX_COL222.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C222 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43917579147918854)
,p_db_column_name=>'C223'
,p_display_order=>2230
,p_column_identifier=>'HO'
,p_column_label=>'&PX_COL223.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C223 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43917923009918854)
,p_db_column_name=>'C224'
,p_display_order=>2240
,p_column_identifier=>'HP'
,p_column_label=>'&PX_COL224.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C224 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43918316324918855)
,p_db_column_name=>'C225'
,p_display_order=>2250
,p_column_identifier=>'HQ'
,p_column_label=>'&PX_COL225.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'    FROM xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' AND C225 is not null'))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(115373536267119299)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'439187'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C015:C001:C002:C003:C004:C005:C006:C007:C008:C009:C010:C011:C012:C013:C014:C016:C017:C018:C019:C020:C021:C022:C023:C024:C025:C026:C027:C028:C029:C030:C031:C035:C032:C033:C034:C037:C036:C041:C038:C039:C040:C043:C042:C044:C045:C047:C046:C048:C049:C050:'
||'C051:C052:C053:C054:C055:C056:C057:C058:C059:C060:C061:C062:C063:C064:C065:C066:C067:C068:C069:C070:C071:C072:C073:C074:C075:C076:C077:C078:C079:C080:C081:C082:C083:C084:C085:C086:C087:C088:C089:C090:C091:C092:C093::C216:C217:C218:C219:C220:C221:C222'
||':C223:C224:C225'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117489612495136566)
,p_plug_name=>'Detailed Payroll Analysis'
,p_parent_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'  C001,C002,C003,C004,C005,C006,C007,C008,C009,C010,',
'  C011,C012,C013,C014,C015,C016,C017,C018,C019,C020,',
'  C021,C022,C023,C024,C025,C026,C027,C028,C029,C030,',
'  C031,C032,C033,C034,C035,C036,C037,C038,C039,C040,',
'  C041,C042,C043,C044,C045,C046,C047,C048,C049,C050,',
'  C051,C052,C053,C054,C055,C056,C057,C058,C059,C060,',
'    C061,C062,C063,C064,C065,C066,C067,C068,C069,C070,',
'    C071,C072,C073,C074,C075,C076,C077,C078,C079,C080,',
'    C081,C082,C083,C084,C085,C086,C087,C088,C089,C090,',
'    C091,C092,C093,C094,C095,C096,C097,C098,C099,C100,',
'	C101,C102,C103,C104,C105,C106,C107,C108,C109,C110,',
'  C111,C112,C113,C114,C115,C116,C117,C118,C119,C120,',
'  C121,C122,C123,C124,C125,C126,C127,C128,C129,C130,',
'  C131,C132,C133,C134,C135,C136,C137,C138,C139,C140,',
'  C141,C142,C143,C144,C145,C146,C147,C148,C149,C150,',
'  C151,C152,C153,C154,C155,C156,C157,C158,C159,C160,',
'    C161,C162,C163,C164,C165,C166,C167,C168,C169,C170,',
'    C171,C172,C173,C174,C175,C176,C177,C178,C179,C180,',
'    C181,C182,C183,C184,C185,C186,C187,C188,C189,C190,',
'    C191,C192,C193,C194,C195,C196,C197,C198,C199,C200,',
'    C201,C202,C203,C204,C205,C206,C207,C208,C209,C210,',
'    C211,C212,C213,C214,C215',
' from xxsbs.xxsbs_report_tmp_tb	 ',
' WHERE APP_USER = :APP_USER',
' and app_session =:APP_SESSION ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(117489703649136567)
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
,p_internal_uid=>117489703649136567
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43919437333918859)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43919889733918859)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43920231019918859)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43920616808918859)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C004'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43921025010918859)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'C005'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43921469066918860)
,p_db_column_name=>'C006'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'C006'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43921805289918860)
,p_db_column_name=>'C007'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C007'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43922211890918860)
,p_db_column_name=>'C008'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C008'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43922610531918860)
,p_db_column_name=>'C009'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C009'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43923040712918860)
,p_db_column_name=>'C010'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C010'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43923415198918861)
,p_db_column_name=>'C011'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C011'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43923875941918861)
,p_db_column_name=>'C012'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C012'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43924231835918861)
,p_db_column_name=>'C013'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C013'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43924607102918861)
,p_db_column_name=>'C014'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C014'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43925034359918861)
,p_db_column_name=>'C015'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'C015'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43925440797918862)
,p_db_column_name=>'C016'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'C016'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43925898853918862)
,p_db_column_name=>'C017'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'C017'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43926259865918862)
,p_db_column_name=>'C018'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'C018'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43926683706918862)
,p_db_column_name=>'C019'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'C019'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43927079943918863)
,p_db_column_name=>'C020'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'C020'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43927467322918863)
,p_db_column_name=>'C021'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'C021'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43927825153918863)
,p_db_column_name=>'C022'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'C022'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43928276973918863)
,p_db_column_name=>'C023'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'C023'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43928603541918863)
,p_db_column_name=>'C024'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'C024'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43929020396918864)
,p_db_column_name=>'C025'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'C025'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43929461539918864)
,p_db_column_name=>'C026'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'C026'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43929849585918864)
,p_db_column_name=>'C027'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'C027'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43930293174918864)
,p_db_column_name=>'C028'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'C028'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43930685414918864)
,p_db_column_name=>'C029'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'C029'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43931023543918865)
,p_db_column_name=>'C030'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'C030'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43931499378918865)
,p_db_column_name=>'C031'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'C031'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43931851318918865)
,p_db_column_name=>'C032'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'C032'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43932297515918866)
,p_db_column_name=>'C033'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'C033'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43932635813918866)
,p_db_column_name=>'C034'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'C034'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43933079339918866)
,p_db_column_name=>'C035'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'C035'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43933464872918867)
,p_db_column_name=>'C036'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'C036'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43933823144918867)
,p_db_column_name=>'C037'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'C037'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43934274302918867)
,p_db_column_name=>'C038'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'C038'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43934605020918867)
,p_db_column_name=>'C039'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'C039'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43935003531918867)
,p_db_column_name=>'C040'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'C040'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43935468991918868)
,p_db_column_name=>'C041'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'C041'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43935874391918868)
,p_db_column_name=>'C042'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'C042'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43936299286918868)
,p_db_column_name=>'C043'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'C043'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43936627972918868)
,p_db_column_name=>'C044'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'C044'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43937063756918868)
,p_db_column_name=>'C045'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'C045'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43937456191918869)
,p_db_column_name=>'C046'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'C046'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43937807737918869)
,p_db_column_name=>'C047'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'C047'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43938260474918869)
,p_db_column_name=>'C048'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'C048'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43938672506918869)
,p_db_column_name=>'C049'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'C049'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43939003201918869)
,p_db_column_name=>'C050'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'C050'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43939482002918870)
,p_db_column_name=>'C051'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'C051'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43939821939918870)
,p_db_column_name=>'C052'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'C052'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43940247631918870)
,p_db_column_name=>'C053'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'C053'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43940649036918870)
,p_db_column_name=>'C054'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'C054'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43941071377918870)
,p_db_column_name=>'C055'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'C055'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43941459210918871)
,p_db_column_name=>'C056'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'C056'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43941884801918871)
,p_db_column_name=>'C057'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'C057'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43942288557918871)
,p_db_column_name=>'C058'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'C058'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43942639755918871)
,p_db_column_name=>'C059'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'C059'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43943094952918871)
,p_db_column_name=>'C060'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'C060'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43943482265918872)
,p_db_column_name=>'C061'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'C061'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43943864190918872)
,p_db_column_name=>'C062'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'C062'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43944207962918872)
,p_db_column_name=>'C063'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'C063'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43944612178918872)
,p_db_column_name=>'C064'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'C064'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43945056966918873)
,p_db_column_name=>'C065'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'C065'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43945476554918873)
,p_db_column_name=>'C066'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'C066'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43945803100918873)
,p_db_column_name=>'C067'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'C067'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43946253427918873)
,p_db_column_name=>'C068'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'C068'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43946659308918873)
,p_db_column_name=>'C069'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'C069'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43947026262918874)
,p_db_column_name=>'C070'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'C070'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43947448875918874)
,p_db_column_name=>'C071'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'C071'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43947837526918874)
,p_db_column_name=>'C072'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'C072'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43948256920918874)
,p_db_column_name=>'C073'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'C073'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43948601731918874)
,p_db_column_name=>'C074'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'C074'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43949086687918875)
,p_db_column_name=>'C075'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'C075'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43949462468918875)
,p_db_column_name=>'C076'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'C076'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43949882606918875)
,p_db_column_name=>'C077'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'C077'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43950231755918875)
,p_db_column_name=>'C078'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'C078'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43950662202918876)
,p_db_column_name=>'C079'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'C079'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43951033595918876)
,p_db_column_name=>'C080'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'C080'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43951422855918876)
,p_db_column_name=>'C081'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'C081'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43951801459918876)
,p_db_column_name=>'C082'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'C082'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43952235392918876)
,p_db_column_name=>'C083'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'C083'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43952610292918877)
,p_db_column_name=>'C084'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'C084'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43953010247918877)
,p_db_column_name=>'C085'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'C085'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43953426850918877)
,p_db_column_name=>'C086'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'C086'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43953884566918877)
,p_db_column_name=>'C087'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'C087'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43954243169918877)
,p_db_column_name=>'C088'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'C088'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43954634703918878)
,p_db_column_name=>'C089'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'C089'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43955047002918878)
,p_db_column_name=>'C090'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'C090'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43955427095918878)
,p_db_column_name=>'C091'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'C091'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43955812984918878)
,p_db_column_name=>'C092'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'C092'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43956263023918878)
,p_db_column_name=>'C093'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'C093'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43956618266918879)
,p_db_column_name=>'C094'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'C094'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43957007434918879)
,p_db_column_name=>'C095'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'C095'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43957483302918879)
,p_db_column_name=>'C096'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'C096'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43957843703918879)
,p_db_column_name=>'C097'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'C097'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43958220181918879)
,p_db_column_name=>'C098'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'C098'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43958630027918880)
,p_db_column_name=>'C099'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'C099'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43959071687918880)
,p_db_column_name=>'C100'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'C100'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43959466784918880)
,p_db_column_name=>'C101'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'C101'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43959873640918880)
,p_db_column_name=>'C102'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'C102'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43960247457918881)
,p_db_column_name=>'C103'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'C103'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43960697670918881)
,p_db_column_name=>'C104'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'C104'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43961079423918881)
,p_db_column_name=>'C105'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'C105'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43961448654918881)
,p_db_column_name=>'C106'
,p_display_order=>1060
,p_column_identifier=>'DB'
,p_column_label=>'C106'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43961807071918881)
,p_db_column_name=>'C107'
,p_display_order=>1070
,p_column_identifier=>'DC'
,p_column_label=>'C107'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43962215295918882)
,p_db_column_name=>'C108'
,p_display_order=>1080
,p_column_identifier=>'DD'
,p_column_label=>'C108'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43962662706918882)
,p_db_column_name=>'C109'
,p_display_order=>1090
,p_column_identifier=>'DE'
,p_column_label=>'C109'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43963046920918882)
,p_db_column_name=>'C110'
,p_display_order=>1100
,p_column_identifier=>'DF'
,p_column_label=>'C110'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43963483419918882)
,p_db_column_name=>'C111'
,p_display_order=>1110
,p_column_identifier=>'DG'
,p_column_label=>'C111'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43963822682918882)
,p_db_column_name=>'C112'
,p_display_order=>1120
,p_column_identifier=>'DH'
,p_column_label=>'C112'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43964284021918883)
,p_db_column_name=>'C113'
,p_display_order=>1130
,p_column_identifier=>'DI'
,p_column_label=>'C113'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43964678250918883)
,p_db_column_name=>'C114'
,p_display_order=>1140
,p_column_identifier=>'DJ'
,p_column_label=>'C114'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43965016141918883)
,p_db_column_name=>'C115'
,p_display_order=>1150
,p_column_identifier=>'DK'
,p_column_label=>'C115'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43965464510918883)
,p_db_column_name=>'C116'
,p_display_order=>1160
,p_column_identifier=>'DL'
,p_column_label=>'C116'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43965892130918884)
,p_db_column_name=>'C117'
,p_display_order=>1170
,p_column_identifier=>'DM'
,p_column_label=>'C117'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43966279852918884)
,p_db_column_name=>'C118'
,p_display_order=>1180
,p_column_identifier=>'DN'
,p_column_label=>'C118'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43966681811918884)
,p_db_column_name=>'C119'
,p_display_order=>1190
,p_column_identifier=>'DO'
,p_column_label=>'C119'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43967011783918884)
,p_db_column_name=>'C120'
,p_display_order=>1200
,p_column_identifier=>'DP'
,p_column_label=>'C120'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43967456363918884)
,p_db_column_name=>'C121'
,p_display_order=>1210
,p_column_identifier=>'DQ'
,p_column_label=>'C121'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43967833372918885)
,p_db_column_name=>'C122'
,p_display_order=>1220
,p_column_identifier=>'DR'
,p_column_label=>'C122'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43968265428918885)
,p_db_column_name=>'C123'
,p_display_order=>1230
,p_column_identifier=>'DS'
,p_column_label=>'C123'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43968648782918885)
,p_db_column_name=>'C124'
,p_display_order=>1240
,p_column_identifier=>'DT'
,p_column_label=>'C124'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43969011032918885)
,p_db_column_name=>'C125'
,p_display_order=>1250
,p_column_identifier=>'DU'
,p_column_label=>'C125'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43969496338918885)
,p_db_column_name=>'C126'
,p_display_order=>1260
,p_column_identifier=>'DV'
,p_column_label=>'C126'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43969837239918886)
,p_db_column_name=>'C127'
,p_display_order=>1270
,p_column_identifier=>'DW'
,p_column_label=>'C127'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43970262943918886)
,p_db_column_name=>'C128'
,p_display_order=>1280
,p_column_identifier=>'DX'
,p_column_label=>'C128'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43970637880918886)
,p_db_column_name=>'C129'
,p_display_order=>1290
,p_column_identifier=>'DY'
,p_column_label=>'C129'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43971024561918886)
,p_db_column_name=>'C130'
,p_display_order=>1300
,p_column_identifier=>'DZ'
,p_column_label=>'C130'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43971425798918886)
,p_db_column_name=>'C131'
,p_display_order=>1310
,p_column_identifier=>'EA'
,p_column_label=>'C131'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43971841329918887)
,p_db_column_name=>'C132'
,p_display_order=>1320
,p_column_identifier=>'EB'
,p_column_label=>'C132'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43972200238918887)
,p_db_column_name=>'C133'
,p_display_order=>1330
,p_column_identifier=>'EC'
,p_column_label=>'C133'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43972644047918887)
,p_db_column_name=>'C134'
,p_display_order=>1340
,p_column_identifier=>'ED'
,p_column_label=>'C134'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43973020371918887)
,p_db_column_name=>'C135'
,p_display_order=>1350
,p_column_identifier=>'EE'
,p_column_label=>'C135'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43973478638918887)
,p_db_column_name=>'C136'
,p_display_order=>1360
,p_column_identifier=>'EF'
,p_column_label=>'C136'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43973808956918888)
,p_db_column_name=>'C137'
,p_display_order=>1370
,p_column_identifier=>'EG'
,p_column_label=>'C137'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43974270488918888)
,p_db_column_name=>'C138'
,p_display_order=>1380
,p_column_identifier=>'EH'
,p_column_label=>'C138'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43974695140918888)
,p_db_column_name=>'C139'
,p_display_order=>1390
,p_column_identifier=>'EI'
,p_column_label=>'C139'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43975097621918888)
,p_db_column_name=>'C140'
,p_display_order=>1400
,p_column_identifier=>'EJ'
,p_column_label=>'C140'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43975415932918888)
,p_db_column_name=>'C141'
,p_display_order=>1410
,p_column_identifier=>'EK'
,p_column_label=>'C141'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43975857785918889)
,p_db_column_name=>'C142'
,p_display_order=>1420
,p_column_identifier=>'EL'
,p_column_label=>'C142'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43976275613918889)
,p_db_column_name=>'C143'
,p_display_order=>1430
,p_column_identifier=>'EM'
,p_column_label=>'C143'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43976685714918889)
,p_db_column_name=>'C144'
,p_display_order=>1440
,p_column_identifier=>'EN'
,p_column_label=>'C144'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43977089395918889)
,p_db_column_name=>'C145'
,p_display_order=>1450
,p_column_identifier=>'EO'
,p_column_label=>'C145'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43977415807918889)
,p_db_column_name=>'C146'
,p_display_order=>1460
,p_column_identifier=>'EP'
,p_column_label=>'C146'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43977887017918890)
,p_db_column_name=>'C147'
,p_display_order=>1470
,p_column_identifier=>'EQ'
,p_column_label=>'C147'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43978234375918890)
,p_db_column_name=>'C148'
,p_display_order=>1480
,p_column_identifier=>'ER'
,p_column_label=>'C148'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43978637159918890)
,p_db_column_name=>'C149'
,p_display_order=>1490
,p_column_identifier=>'ES'
,p_column_label=>'C149'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43979082554918890)
,p_db_column_name=>'C150'
,p_display_order=>1500
,p_column_identifier=>'ET'
,p_column_label=>'C150'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43979440904918891)
,p_db_column_name=>'C151'
,p_display_order=>1510
,p_column_identifier=>'EU'
,p_column_label=>'C151'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43979822994918891)
,p_db_column_name=>'C152'
,p_display_order=>1520
,p_column_identifier=>'EV'
,p_column_label=>'C152'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43980290483918891)
,p_db_column_name=>'C153'
,p_display_order=>1530
,p_column_identifier=>'EW'
,p_column_label=>'C153'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43980670079918891)
,p_db_column_name=>'C154'
,p_display_order=>1540
,p_column_identifier=>'EX'
,p_column_label=>'C154'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43981065164918891)
,p_db_column_name=>'C155'
,p_display_order=>1550
,p_column_identifier=>'EY'
,p_column_label=>'C155'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43981406761918892)
,p_db_column_name=>'C156'
,p_display_order=>1560
,p_column_identifier=>'EZ'
,p_column_label=>'C156'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43981820872918892)
,p_db_column_name=>'C157'
,p_display_order=>1570
,p_column_identifier=>'FA'
,p_column_label=>'C157'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43982205033918892)
,p_db_column_name=>'C158'
,p_display_order=>1580
,p_column_identifier=>'FB'
,p_column_label=>'C158'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43982697945918892)
,p_db_column_name=>'C159'
,p_display_order=>1590
,p_column_identifier=>'FC'
,p_column_label=>'C159'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43983056075918892)
,p_db_column_name=>'C160'
,p_display_order=>1600
,p_column_identifier=>'FD'
,p_column_label=>'C160'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43983408402918893)
,p_db_column_name=>'C161'
,p_display_order=>1610
,p_column_identifier=>'FE'
,p_column_label=>'C161'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43983893112918893)
,p_db_column_name=>'C162'
,p_display_order=>1620
,p_column_identifier=>'FF'
,p_column_label=>'C162'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43984281183918893)
,p_db_column_name=>'C163'
,p_display_order=>1630
,p_column_identifier=>'FG'
,p_column_label=>'C163'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43984682850918893)
,p_db_column_name=>'C164'
,p_display_order=>1640
,p_column_identifier=>'FH'
,p_column_label=>'C164'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43985037731918893)
,p_db_column_name=>'C165'
,p_display_order=>1650
,p_column_identifier=>'FI'
,p_column_label=>'C165'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43985433154918894)
,p_db_column_name=>'C166'
,p_display_order=>1660
,p_column_identifier=>'FJ'
,p_column_label=>'C166'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43985821791918894)
,p_db_column_name=>'C167'
,p_display_order=>1670
,p_column_identifier=>'FK'
,p_column_label=>'C167'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43986224545918894)
,p_db_column_name=>'C168'
,p_display_order=>1680
,p_column_identifier=>'FL'
,p_column_label=>'C168'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43986669537918894)
,p_db_column_name=>'C169'
,p_display_order=>1690
,p_column_identifier=>'FM'
,p_column_label=>'C169'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43987045643918894)
,p_db_column_name=>'C170'
,p_display_order=>1700
,p_column_identifier=>'FN'
,p_column_label=>'C170'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43987411165918895)
,p_db_column_name=>'C171'
,p_display_order=>1710
,p_column_identifier=>'FO'
,p_column_label=>'C171'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43987882851918895)
,p_db_column_name=>'C172'
,p_display_order=>1720
,p_column_identifier=>'FP'
,p_column_label=>'C172'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43988299857918895)
,p_db_column_name=>'C173'
,p_display_order=>1730
,p_column_identifier=>'FQ'
,p_column_label=>'C173'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43988696339918895)
,p_db_column_name=>'C174'
,p_display_order=>1740
,p_column_identifier=>'FR'
,p_column_label=>'C174'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43989075536918895)
,p_db_column_name=>'C175'
,p_display_order=>1750
,p_column_identifier=>'FS'
,p_column_label=>'C175'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43989493382918896)
,p_db_column_name=>'C176'
,p_display_order=>1760
,p_column_identifier=>'FT'
,p_column_label=>'C176'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43989824723918896)
,p_db_column_name=>'C177'
,p_display_order=>1770
,p_column_identifier=>'FU'
,p_column_label=>'C177'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43990283955918896)
,p_db_column_name=>'C178'
,p_display_order=>1780
,p_column_identifier=>'FV'
,p_column_label=>'C178'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43990683324918896)
,p_db_column_name=>'C179'
,p_display_order=>1790
,p_column_identifier=>'FW'
,p_column_label=>'C179'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43991047637918896)
,p_db_column_name=>'C180'
,p_display_order=>1800
,p_column_identifier=>'FX'
,p_column_label=>'C180'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43991492072918897)
,p_db_column_name=>'C181'
,p_display_order=>1810
,p_column_identifier=>'FY'
,p_column_label=>'C181'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43991883036918897)
,p_db_column_name=>'C182'
,p_display_order=>1820
,p_column_identifier=>'FZ'
,p_column_label=>'C182'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43992215836918897)
,p_db_column_name=>'C183'
,p_display_order=>1830
,p_column_identifier=>'GA'
,p_column_label=>'C183'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43992626176918897)
,p_db_column_name=>'C184'
,p_display_order=>1840
,p_column_identifier=>'GB'
,p_column_label=>'C184'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43993048743918898)
,p_db_column_name=>'C185'
,p_display_order=>1850
,p_column_identifier=>'GC'
,p_column_label=>'C185'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43993442917918898)
,p_db_column_name=>'C186'
,p_display_order=>1860
,p_column_identifier=>'GD'
,p_column_label=>'C186'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43993850979918898)
,p_db_column_name=>'C187'
,p_display_order=>1870
,p_column_identifier=>'GE'
,p_column_label=>'C187'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43994247044918898)
,p_db_column_name=>'C188'
,p_display_order=>1880
,p_column_identifier=>'GF'
,p_column_label=>'C188'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43994635395918898)
,p_db_column_name=>'C189'
,p_display_order=>1890
,p_column_identifier=>'GG'
,p_column_label=>'C189'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43995035732918899)
,p_db_column_name=>'C190'
,p_display_order=>1900
,p_column_identifier=>'GH'
,p_column_label=>'C190'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43995461168918899)
,p_db_column_name=>'C191'
,p_display_order=>1910
,p_column_identifier=>'GI'
,p_column_label=>'C191'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43995835400918899)
,p_db_column_name=>'C192'
,p_display_order=>1920
,p_column_identifier=>'GJ'
,p_column_label=>'C192'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43996211805918899)
,p_db_column_name=>'C193'
,p_display_order=>1930
,p_column_identifier=>'GK'
,p_column_label=>'C193'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43996673268918899)
,p_db_column_name=>'C194'
,p_display_order=>1940
,p_column_identifier=>'GL'
,p_column_label=>'C194'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43997012735918900)
,p_db_column_name=>'C195'
,p_display_order=>1950
,p_column_identifier=>'GM'
,p_column_label=>'C195'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43997440949918900)
,p_db_column_name=>'C196'
,p_display_order=>1960
,p_column_identifier=>'GN'
,p_column_label=>'C196'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43997806439918900)
,p_db_column_name=>'C197'
,p_display_order=>1970
,p_column_identifier=>'GO'
,p_column_label=>'C197'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43998204636918900)
,p_db_column_name=>'C198'
,p_display_order=>1980
,p_column_identifier=>'GP'
,p_column_label=>'C198'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43998641616918900)
,p_db_column_name=>'C199'
,p_display_order=>1990
,p_column_identifier=>'GQ'
,p_column_label=>'C199'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43999002776918901)
,p_db_column_name=>'C200'
,p_display_order=>2000
,p_column_identifier=>'GR'
,p_column_label=>'C200'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43999429193918901)
,p_db_column_name=>'C201'
,p_display_order=>2010
,p_column_identifier=>'GS'
,p_column_label=>'C201'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43999824770918901)
,p_db_column_name=>'C202'
,p_display_order=>2020
,p_column_identifier=>'GT'
,p_column_label=>'C202'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44000230204918901)
,p_db_column_name=>'C203'
,p_display_order=>2030
,p_column_identifier=>'GU'
,p_column_label=>'C203'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44000694756918902)
,p_db_column_name=>'C204'
,p_display_order=>2040
,p_column_identifier=>'GV'
,p_column_label=>'C204'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44001056112918902)
,p_db_column_name=>'C205'
,p_display_order=>2050
,p_column_identifier=>'GW'
,p_column_label=>'C205'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44001401655918902)
,p_db_column_name=>'C206'
,p_display_order=>2060
,p_column_identifier=>'GX'
,p_column_label=>'C206'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44001871619918902)
,p_db_column_name=>'C207'
,p_display_order=>2070
,p_column_identifier=>'GY'
,p_column_label=>'C207'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44002271930918902)
,p_db_column_name=>'C208'
,p_display_order=>2080
,p_column_identifier=>'GZ'
,p_column_label=>'C208'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44002687735918903)
,p_db_column_name=>'C209'
,p_display_order=>2090
,p_column_identifier=>'HA'
,p_column_label=>'C209'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003020947918903)
,p_db_column_name=>'C210'
,p_display_order=>2100
,p_column_identifier=>'HB'
,p_column_label=>'C210'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003420218918903)
,p_db_column_name=>'C211'
,p_display_order=>2110
,p_column_identifier=>'HC'
,p_column_label=>'C211'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003859842918903)
,p_db_column_name=>'C212'
,p_display_order=>2120
,p_column_identifier=>'HD'
,p_column_label=>'C212'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44004299310918903)
,p_db_column_name=>'C213'
,p_display_order=>2130
,p_column_identifier=>'HE'
,p_column_label=>'C213'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44004671683918904)
,p_db_column_name=>'C214'
,p_display_order=>2140
,p_column_identifier=>'HF'
,p_column_label=>'C214'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44005067170918904)
,p_db_column_name=>'C215'
,p_display_order=>2150
,p_column_identifier=>'HG'
,p_column_label=>'C215'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(117709125186194137)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440054'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C001:C002:C003:C004:C005:C006:C007:C008:C009:C010:C011:C012:C013:C014:C015:C016:C017:C018:C019:C020:C021:C022:C023:C024:C025:C026:C027:C028:C029:C030:C031:C032:C033:C034:C035:C036:C037:C038:C039:C040:C041:C042:C043:C044:C045:C046:C047:C048:C049:C050:'
||'C051:C052:C053:C054:C055:C056:C057:C058:C059:C060:C061:C062:C063:C064:C065:C066:C067:C068:C069:C070:C071:C072:C073:C074:C075:C076:C077:C078:C079:C080:C081:C082:C083:C084:C085:C086:C087:C088:C089:C090:C091:C092:C093:C094:C095:C096:C097:C098:C099:C100:'
||'C101:C102:C103:C104:C105:C106:C107:C108:C109:C110:C111:C112:C113:C114:C115:C116:C117:C118:C119:C120:C121:C122:C123:C124:C125:C126:C127:C128:C129:C130:C131:C132:C133:C134:C135:C136:C137:C138:C139:C140:C141:C142:C143:C144:C145:C146:C147:C148:C149:C150:'
||'C151:C152:C153:C154:C155:C156:C157:C158:C159:C160:C161:C162:C163:C164:C165:C166:C167:C168:C169:C170:C171:C172:C173:C174:C175:C176:C177:C178:C179:C180:C181:C182:C183:C184:C185:C186:C187:C188:C189:C190:C191:C192:C193:C194:C195:C196:C197:C198:C199:C200:'
||'C201:C202:C203:C204:C205:C206:C207:C208:C209:C210:C211:C212:C213:C214:C215'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43732933207918758)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_button_name=>'Go'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Get Report'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43733362771918758)
,p_name=>'P51_PAY_PERIOD'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_prompt=>'Pay Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT P_MONTH, paymonth_code FROM xxpay.xxpay_ARCHIVE_PAY_PROCESSING',
'WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'order by paymonth_code desc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43733767894918760)
,p_name=>'P51_PAY_RUN'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_prompt=>'Pay Run'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'and LOOKUP_CODE = ''PAY_RUN''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''PAY_RUN''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43734107136918760)
,p_name=>'P51_PAY_GROUP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_prompt=>'Pay Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GRP_NAME,GRP_CODE',
'from XXHRMS_PAYROLL_GRP_TAB',
'where COMPANY_CODE = :AP_COMPANY_CODE',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Pay Groups'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43734502398918760)
,p_name=>'P51_SUB_ORG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_prompt=>'&AP_SUBORG_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.NAME, s.CODE from xxhrms.XXHRMS_SUB_ORGANIZATION s, XXHRMS_PAYROLL_GRPDET_TAB t',
'where s.company_code = :AP_COMPANY_CODE',
'and s.CODE = t.LOCATION_ID',
'and t.GRP_CODE=:P51_PAY_GROUP',
'and s.status = ''ACTIVE''',
'',
'--and exists (select c001 code from apex_collections where collection_name=''PX_ACCESS_LEVEL'' and c002=''SUB_ORG'' and c001 = CODE',
' --                             union all',
' --                             select CODE from xxhrms.xxhrms_sub_organization where :AP_USUB_ORG =''0''and COMPANY_CODE=:AP_COMPANY_CODE)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All &AP_SUBORG_LABEL.s'
,p_lov_cascade_parent_items=>'P51_PAY_GROUP'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43734945933918761)
,p_name=>'P51_DEP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_prompt=>'&AP_DEPARTMENT_LABEL.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME, DEPT_ID from xxhrms.XXHRMS_DEPARTMENT',
'where company_code = :AP_COMPANY_CODE',
'and sub_organ_code = :P51_sub_org',
'--and exists (select c001 DEPT_ID from apex_collections where collection_name=''PX_ACCESS_LEVEL'' and c002=''DEPARTMENT'' and c001 = DEPT_ID',
'--                            union all',
'--                              select DEPT_ID from xxhrms.XXHRMS_DEPARTMENT where :AP_UDEPT =''0''and COMPANY_CODE=:AP_COMPANY_CODE)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Departments'
,p_lov_cascade_parent_items=>'P51_SUB_ORG'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43735330782918761)
,p_name=>'P51_ORG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_item_default=>'&AP_COMPANY_CODE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43735789934918761)
,p_name=>'P51_QRY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43736102874918761)
,p_name=>'P51_GEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43736555748918761)
,p_name=>'P51_TBL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43736928678918762)
,p_name=>'P51_CSV'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43737335406918762)
,p_name=>'P51_STAT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43737725630918762)
,p_name=>'P51_ORG_DSC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43738184293918762)
,p_name=>'P51_SUB_DSC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43738546888918762)
,p_name=>'51_PX_COL1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43738959328918762)
,p_name=>'51_PX_COL2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43739325265918763)
,p_name=>'51_PX_COL3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43739774573918763)
,p_name=>'51_PX_COL4'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43740101672918763)
,p_name=>'51_PX_COL5'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43740531939918763)
,p_name=>'51_PX_COL6'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43740922283918763)
,p_name=>'51_PX_COL7'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43741361608918763)
,p_name=>'51_PX_COL8'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43741742029918764)
,p_name=>'51_PX_COL9'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43742186335918764)
,p_name=>'51_PX_COL10'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43742597010918764)
,p_name=>'51_PX_COL11'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43742925952918764)
,p_name=>'51_PX_COL12'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43743358321918764)
,p_name=>'51_PX_COL13'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43743782197918764)
,p_name=>'51_PX_COL14'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43744109550918765)
,p_name=>'51_PX_COL15'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43744598550918765)
,p_name=>'51_PX_COL16'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43744985965918765)
,p_name=>'51_PX_COL17'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43745368684918765)
,p_name=>'51_PX_COL18'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43745735867918765)
,p_name=>'51_PX_COL19'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43746142331918766)
,p_name=>'51_PX_COL20'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43746509355918766)
,p_name=>'51_PX_COL21'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43746919429918766)
,p_name=>'51_PX_COL22'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43747327501918766)
,p_name=>'51_PX_COL23'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43747709128918766)
,p_name=>'51_PX_COL24'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43748154577918766)
,p_name=>'51_PX_COL25'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43748563730918767)
,p_name=>'51_PX_COL26'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43748978269918767)
,p_name=>'51_PX_COL27'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43749331731918767)
,p_name=>'51_PX_COL28'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43749702302918767)
,p_name=>'51_PX_COL29'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43750190392918767)
,p_name=>'51_PX_COL30'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43750589978918767)
,p_name=>'51_PX_COL31'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43750901480918768)
,p_name=>'51_PX_COL32'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43751370881918768)
,p_name=>'51_PX_COL33'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43751726725918768)
,p_name=>'51_PX_COL34'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43752128512918768)
,p_name=>'51_PX_COL35'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43752519214918768)
,p_name=>'51_PX_COL36'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43752998016918768)
,p_name=>'51_PX_COL37'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43753358251918769)
,p_name=>'51_PX_COL38'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43753724867918769)
,p_name=>'51_PX_COL39'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43754150250918769)
,p_name=>'51_PX_COL40'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43754514464918769)
,p_name=>'51_PX_COL41'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43754992422918769)
,p_name=>'51_PX_COL42'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43755348192918769)
,p_name=>'51_PX_COL43'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43755773717918770)
,p_name=>'51_PX_COL44'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43756104552918770)
,p_name=>'51_PX_COL45'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43756562056918770)
,p_name=>'51_PX_COL46'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43756967637918770)
,p_name=>'51_PX_COL47'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43757371438918770)
,p_name=>'51_PX_COL48'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43757741317918770)
,p_name=>'51_PX_COL49'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43758109010918771)
,p_name=>'51_PX_COL50'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43758578635918771)
,p_name=>'51_PX_COL51'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43758985918918771)
,p_name=>'51_PX_COL52'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43759314770918771)
,p_name=>'51_PX_COL53'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43759798148918771)
,p_name=>'51_PX_COL54'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43760144803918771)
,p_name=>'51_PX_COL55'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43760508631918772)
,p_name=>'51_PX_COL56'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43760955908918772)
,p_name=>'51_PX_COL57'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43761389300918772)
,p_name=>'51_PX_COL58'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43761714082918772)
,p_name=>'51_PX_COL59'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43762162651918772)
,p_name=>'51_PX_COL60'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43762500867918772)
,p_name=>'51_PX_COL61'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43762967520918773)
,p_name=>'51_PX_COL62'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43763363884918773)
,p_name=>'51_PX_COL63'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43763770211918773)
,p_name=>'51_PX_COL64'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43764141654918773)
,p_name=>'51_PX_COL65'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43764555478918773)
,p_name=>'51_PX_COL66'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43764990683918773)
,p_name=>'51_PX_COL67'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43765323511918774)
,p_name=>'51_PX_COL68'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43765770961918774)
,p_name=>'51_PX_COL69'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43766173721918774)
,p_name=>'51_PX_COL70'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43766517130918774)
,p_name=>'51_PX_COL71'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43766927988918774)
,p_name=>'51_PX_COL72'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43767395580918774)
,p_name=>'51_PX_COL73'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43767714915918775)
,p_name=>'51_PX_COL74'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43768168318918775)
,p_name=>'51_PX_COL75'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43768599708918775)
,p_name=>'51_PX_COL76'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43768908362918775)
,p_name=>'51_PX_COL77'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43769323927918775)
,p_name=>'51_PX_COL78'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43769724250918775)
,p_name=>'51_PX_COL79'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43770150725918776)
,p_name=>'51_PX_COL80'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43770545559918776)
,p_name=>'51_PX_COL81'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43770903870918776)
,p_name=>'51_PX_COL82'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43771327094918776)
,p_name=>'51_PX_COL83'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43771705922918776)
,p_name=>'51_PX_COL84'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43772153621918777)
,p_name=>'51_PX_COL85'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43772527776918777)
,p_name=>'51_PX_COL86'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43772931528918777)
,p_name=>'51_PX_COL87'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43773345378918777)
,p_name=>'51_PX_COL88'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43773732524918777)
,p_name=>'51_PX_COL89'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43774158015918777)
,p_name=>'51_PX_COL90'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43774566490918778)
,p_name=>'51_PX_COL91'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43774932223918778)
,p_name=>'51_PX_COL92'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43775355252918778)
,p_name=>'51_PX_COL93'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43775773024918778)
,p_name=>'51_PX_COL94'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43776156311918778)
,p_name=>'51_PX_COL95'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43776537956918778)
,p_name=>'51_PX_COL96'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43776924905918779)
,p_name=>'51_PX_COL97'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43777337762918779)
,p_name=>'51_PX_COL98'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43777794074918779)
,p_name=>'51_PX_COL99'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43778188735918779)
,p_name=>'51_PX_COL100'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43778556956918779)
,p_name=>'51_PX_COL101'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43778943196918780)
,p_name=>'51_PX_COL102'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43779337566918780)
,p_name=>'51_PX_COL103'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43779763405918780)
,p_name=>'51_PX_COL104'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43780112117918780)
,p_name=>'51_PX_COL105'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43780582999918780)
,p_name=>'51_PX_COL106'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43780972173918780)
,p_name=>'51_PX_COL107'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43781380152918781)
,p_name=>'51_PX_COL108'
,p_item_sequence=>1210
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43781796620918781)
,p_name=>'51_PX_COL109'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43782197462918781)
,p_name=>'51_PX_COL110'
,p_item_sequence=>1230
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43782583621918781)
,p_name=>'51_PX_COL111'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43782918121918781)
,p_name=>'51_PX_COL112'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43783365289918781)
,p_name=>'51_PX_COL113'
,p_item_sequence=>1260
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43783771287918782)
,p_name=>'51_PX_COL114'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43784156073918782)
,p_name=>'51_PX_COL115'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43784501126918782)
,p_name=>'51_PX_COL116'
,p_item_sequence=>1290
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43784985733918782)
,p_name=>'51_PX_COL117'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43785363863918782)
,p_name=>'51_PX_COL118'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43785708068918782)
,p_name=>'51_PX_COL119'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43786195771918783)
,p_name=>'51_PX_COL120'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43786582365918783)
,p_name=>'51_PX_COL121'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43786925054918783)
,p_name=>'51_PX_COL122'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43787326620918783)
,p_name=>'51_PX_COL123'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43787727550918783)
,p_name=>'51_PX_COL124'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43788134445918783)
,p_name=>'51_PX_COL125'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43788538900918784)
,p_name=>'51_PX_COL126'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43788902417918784)
,p_name=>'51_PX_COL127'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43789326567918784)
,p_name=>'51_PX_COL128'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43789770923918784)
,p_name=>'51_PX_COL129'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43790152678918784)
,p_name=>'51_PX_COL130'
,p_item_sequence=>1430
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43790594446918785)
,p_name=>'51_PX_COL131'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43790921436918785)
,p_name=>'51_PX_COL132'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43791370223918785)
,p_name=>'51_PX_COL133'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43791791058918785)
,p_name=>'51_PX_COL134'
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43792134287918785)
,p_name=>'51_PX_COL135'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43792531488918785)
,p_name=>'51_PX_COL136'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43792956514918786)
,p_name=>'51_PX_COL137'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43793320204918786)
,p_name=>'51_PX_COL138'
,p_item_sequence=>1510
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43793743704918786)
,p_name=>'51_PX_COL139'
,p_item_sequence=>1520
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43794155391918786)
,p_name=>'51_PX_COL140'
,p_item_sequence=>1530
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43794564072918786)
,p_name=>'51_PX_COL141'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43794962518918786)
,p_name=>'51_PX_COL142'
,p_item_sequence=>1550
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43795363775918787)
,p_name=>'51_PX_COL143'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43795739839918787)
,p_name=>'51_PX_COL144'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43796127539918787)
,p_name=>'51_PX_COL145'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43796546050918787)
,p_name=>'51_PX_COL146'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43796943134918787)
,p_name=>'51_PX_COL147'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43797326229918787)
,p_name=>'51_PX_COL148'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43797711613918788)
,p_name=>'51_PX_COL149'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43798100494918788)
,p_name=>'51_PX_COL150'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43798563953918788)
,p_name=>'51_PX_COL151'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43798931652918788)
,p_name=>'51_PX_COL152'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43799312720918788)
,p_name=>'51_PX_COL153'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43799723860918788)
,p_name=>'51_PX_COL154'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43800169167918789)
,p_name=>'51_PX_COL155'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43800570005918789)
,p_name=>'51_PX_COL156'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43800973954918789)
,p_name=>'51_PX_COL157'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43801396105918789)
,p_name=>'51_PX_COL158'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43801770449918789)
,p_name=>'51_PX_COL159'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43802173283918789)
,p_name=>'51_PX_COL160'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43802556123918790)
,p_name=>'51_PX_COL161'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43802963404918790)
,p_name=>'51_PX_COL162'
,p_item_sequence=>1750
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43803332534918790)
,p_name=>'51_PX_COL163'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43803797676918790)
,p_name=>'51_PX_COL164'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43804145534918790)
,p_name=>'51_PX_COL165'
,p_item_sequence=>1780
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43804560070918790)
,p_name=>'51_PX_COL166'
,p_item_sequence=>1790
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43804909575918791)
,p_name=>'51_PX_COL167'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43805379360918791)
,p_name=>'51_PX_COL168'
,p_item_sequence=>1810
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43805757006918791)
,p_name=>'51_PX_COL169'
,p_item_sequence=>1820
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43806146029918791)
,p_name=>'51_PX_COL170'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43806533080918791)
,p_name=>'51_PX_COL171'
,p_item_sequence=>1840
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43806952476918791)
,p_name=>'51_PX_COL172'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43807350850918792)
,p_name=>'51_PX_COL173'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43807709367918792)
,p_name=>'51_PX_COL174'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43808157032918792)
,p_name=>'51_PX_COL175'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43808544889918792)
,p_name=>'51_PX_COL176'
,p_item_sequence=>1890
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43808923894918792)
,p_name=>'51_PX_COL177'
,p_item_sequence=>1900
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43809356645918792)
,p_name=>'51_PX_COL178'
,p_item_sequence=>1910
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43809797914918793)
,p_name=>'51_PX_COL179'
,p_item_sequence=>1920
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43810134300918793)
,p_name=>'51_PX_COL180'
,p_item_sequence=>1930
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43810511220918793)
,p_name=>'51_PX_COL181'
,p_item_sequence=>1940
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43810941058918793)
,p_name=>'51_PX_COL182'
,p_item_sequence=>1950
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43811374696918793)
,p_name=>'51_PX_COL183'
,p_item_sequence=>1960
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43811746295918793)
,p_name=>'51_PX_COL184'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43812164145918794)
,p_name=>'51_PX_COL185'
,p_item_sequence=>1980
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43812514020918794)
,p_name=>'51_PX_COL186'
,p_item_sequence=>1990
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43812948338918794)
,p_name=>'51_PX_COL187'
,p_item_sequence=>2000
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43813325913918794)
,p_name=>'51_PX_COL188'
,p_item_sequence=>2010
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43813751500918794)
,p_name=>'51_PX_COL189'
,p_item_sequence=>2020
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43814144510918795)
,p_name=>'51_PX_COL190'
,p_item_sequence=>2030
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43814563121918795)
,p_name=>'51_PX_COL191'
,p_item_sequence=>2040
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43814950317918795)
,p_name=>'51_PX_COL192'
,p_item_sequence=>2050
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43815326136918795)
,p_name=>'51_PX_COL193'
,p_item_sequence=>2060
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43815700586918795)
,p_name=>'51_PX_COL194'
,p_item_sequence=>2070
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43816127887918795)
,p_name=>'51_PX_COL195'
,p_item_sequence=>2080
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43816536392918796)
,p_name=>'51_PX_COL196'
,p_item_sequence=>2090
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43816922503918796)
,p_name=>'51_PX_COL197'
,p_item_sequence=>2100
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43817339957918796)
,p_name=>'51_PX_COL198'
,p_item_sequence=>2110
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43817722251918796)
,p_name=>'51_PX_COL199'
,p_item_sequence=>2120
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43818131435918796)
,p_name=>'51_PX_COL200'
,p_item_sequence=>2130
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43818568983918796)
,p_name=>'51_PX_COL201'
,p_item_sequence=>2140
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43818958095918797)
,p_name=>'51_PX_COL202'
,p_item_sequence=>2150
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43819379399918797)
,p_name=>'51_PX_COL203'
,p_item_sequence=>2160
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43819711890918797)
,p_name=>'51_PX_COL204'
,p_item_sequence=>2170
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43820121311918797)
,p_name=>'51_PX_COL205'
,p_item_sequence=>2180
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43820532712918797)
,p_name=>'51_PX_COL206'
,p_item_sequence=>2190
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43820954695918797)
,p_name=>'51_PX_COL207'
,p_item_sequence=>2200
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43821379346918798)
,p_name=>'51_PX_COL208'
,p_item_sequence=>2210
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43821758578918798)
,p_name=>'51_PX_COL209'
,p_item_sequence=>2220
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43822156568918798)
,p_name=>'51_PX_COL210'
,p_item_sequence=>2230
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43822580620918798)
,p_name=>'51_PX_COL211'
,p_item_sequence=>2240
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43822924583918798)
,p_name=>'51_PX_COL212'
,p_item_sequence=>2250
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43823320971918799)
,p_name=>'51_PX_COL213'
,p_item_sequence=>2260
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43823748416918799)
,p_name=>'51_PX_COL214'
,p_item_sequence=>2270
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43824127942918799)
,p_name=>'51_PX_COL215'
,p_item_sequence=>2280
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43824542281918799)
,p_name=>'51_PX_COL216'
,p_item_sequence=>2290
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43824974285918799)
,p_name=>'51_PX_COL217'
,p_item_sequence=>2300
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43825301854918800)
,p_name=>'51_PX_COL218'
,p_item_sequence=>2310
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43825700174918800)
,p_name=>'51_PX_COL219'
,p_item_sequence=>2320
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43826150254918800)
,p_name=>'51_PX_COL220'
,p_item_sequence=>2330
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43826519586918800)
,p_name=>'51_PX_COL221'
,p_item_sequence=>2340
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43826960106918800)
,p_name=>'51_PX_COL222'
,p_item_sequence=>2350
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43827348440918800)
,p_name=>'51_PX_COL223'
,p_item_sequence=>2360
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43827786338918801)
,p_name=>'51_PX_COL224'
,p_item_sequence=>2370
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43828147032918801)
,p_name=>'51_PX_COL225'
,p_item_sequence=>2380
,p_item_plug_id=>wwv_flow_imp.id(262220845465111634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44006866841918915)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_SUB_ORG'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44007309584918916)
,p_event_id=>wwv_flow_imp.id(44006866841918915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
' select name into :P51_SUB_DSC ',
' from xxhrms.xxhrms_sub_organization',
' where code = :P51_SUB_ORG;',
' exception',
'   when others then',
'   null;',
'End;'))
,p_attribute_02=>'P51_SUB_ORG'
,p_attribute_03=>'P51_SUB_DSC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44006478997918914)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_BE.APEXRND.AOP'
,p_process_name=>'AOP'
,p_attribute_03=>'&P51_PAY_PERIOD. Payroll Analysis for &P51_SUB_DSC.'
,p_attribute_04=>'xlsx'
,p_attribute_05=>'IR'
,p_attribute_06=>'APEX'
,p_attribute_07=>'SoftSuite_Excel.xlsx'
,p_attribute_13=>'D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>44006478997918914
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44006191140918913)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'  v_query varchar2(4000);',
'  v_header varchar2(4000);',
'  v_sn number:=0;',
'  msg varchar2(4000);',
' ',
'BEGIN',
'    ',
'    ',
'   :P51_QRY:='''';',
'',
'    Delete from xxsbs.xxsbs_report_tmp_tb	',
'    where app_user=:APP_USER',
'    and app_session =:APP_SESSION ;',
'     v_query:=''insert into xxsbs.xxsbs_report_tmp_tb(C001,C002,C003,C004,C005,C006,C007,C008,C009,C010,C011,C012,C013,C014,C015'';',
'',
'     for i in (select distinct  seq ,upper(trim(element_name)) element_name ',
'            from  xxpay.XXPAY_PAYROLL_ANALYSIS_ALL_V aa ',
'                    WHERE cost <> 0 ',
'                    AND company_code = :AP_COMPANY_CODE',
'                    AND paymonth_code = :P51_PAY_PERIOD',
'                    AND payrun = :P51_PAY_RUN',
'                    and nvl(sub_organization_code,''~'')=nvl( :P51_SUB_ORG,nvl(sub_organization_code,''~''))',
'                    and nvl(DEPT_CODE,''~'')=nvl( :P51_DEP,nvl(DEPT_CODE,''~''))',
'                    and nvl(PAY_GROUP,''~'')=nvl( :P51_PAY_GROUP,nvl(PAY_GROUP,''~''))',
'             order by seq,upper(trim(element_name)))',
'     loop',
'         v_sn:=v_sn+1;',
'         v_query:= v_query||'',''||''C''||lpad((15+v_sn),3,''0'');',
'            ',
'         APEX_UTIL.set_session_state (p_name  => ''PX_COL''||(15+v_sn),p_value   => i.element_name);',
'           ',
'    end loop;',
'',
' v_query := v_query||'') SELECT y.FULL_NAME,y.JOB_ID,y.sub_organization_code, y.DEPT_CODE,y.DEPT_LOCATION,',
'			y.UNIT,y.REF_ID, y.GRADE,y.GRADE_STEP,y.BANK_NAME,y.ACC_NO,y.PFA_ADMINS,y.PIN_NO,y.TAX_ID, x.* ',
'            FROM TABLE (xxpay.pivot(''''SELECT STAFF_ID, seq||upper(trim(element_name)) element_name, COST element_amt ',
'            FROM xxpay.XXPAY_PAYROLL_ANALYSIS_ALL_V aa ',
'            WHERE cost <> 0 ',
'            AND company_code = ''''''''''||:AP_COMPANY_CODE||''''''''''',
'            AND paymonth_code = ''||:P51_PAY_PERIOD||''',
'            AND payrun = ''||:P51_PAY_RUN||'' ',
'            and nvl(sub_organization_code,''''''''~'''''''') = nvl( ''''''''''||:P51_SUB_ORG||'''''''''' ,nvl(sub_organization_code,''''''''~''''''''))',
'            and nvl(DEPT_CODE,''''''''~'''''''') = nvl( ''''''''''||:P51_DEP||'''''''''' ,nvl(DEPT_CODE,''''''''~''''''''))',
'            and nvl(PAY_GROUP,''''''''~'''''''') = nvl( ''''''''''||:P51_PAY_GROUP||'''''''''' ,nvl(PAY_GROUP,''''''''~''''''''))',
'            ORDER BY STAFF_ID, seq, upper(trim(element_name))'''')) x, ',
'            (select a.staff_id, a.FULL_NAME,a.JOB_ID,a.sub_organization_code, a.DEPT_CODE,a.DEPT_LOCATION,a.UNIT,z.attribute11 REF_ID, a.GRADE, a.GRADE_STEP,a.BANK_NAME,a.ACC_NO,a.PFA_ADMINS,a.PIN_NO,a.TAX_ID  ',
'            from xxpay.xxpay_archive_pay_processing a, xxhrms.xxhrms_people z',
'            where a.company_code = ''''''||:AP_COMPANY_CODE||'''''' ',
'            and a.staff_id = z.person_id',
'            AND PAYMONTH_CODE = ''||:P51_PAY_PERIOD||'' AND payrun = ''||:P51_PAY_RUN; ',
'            ',
'    v_query := v_query||'') y  ',
'            where x.staff_id= y.staff_id'';',
'',
'    --EXECUTE IMMEDIATE v_query ;',
'   xxexec_query(v_query,msg);',
'',
'    :P51_QRY := v_query||msg;',
'    --:P51_PAY_GROUP',
'',
'  -- and exists (select 1 from xxhrms.XXHRMS_EMPLOYEE_ACCESS_ALL a where a.person_id = staff_id)',
'EXCEPTION ',
'  when others then',
'  :P51_QRY:=sqlerrm||''-Sql:-''||msg;',
'	rollback;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(46569994658175057)
,p_internal_uid=>44006191140918913
);
wwv_flow_imp.component_end;
end;
/
