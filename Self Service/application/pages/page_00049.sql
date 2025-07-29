prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_name=>'Exit Interview'
,p_alias=>'AQ7'
,p_step_title=>'Exit Interview'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function customVals() {',
'	var vAssignID = apex.item("P49_ASSIGN_ID").getValue(); //Response to Exit Interview not completed',
'	const rowStatus = await getResponseStatus(vAssignID);',
'	apex.item("P49_PROCEED").setValue(1);',
'',
'',
'	function customConfirm(pMessage, pCallback, pOkLabel, pCancelLabel) {',
'',
'		var l_original_messages = {',
'			"APEX.DIALOG.OK": apex.lang.getMessage("APEX.DIALOG.OK"),',
'			"APEX.DIALOG.CANCEL": apex.lang.getMessage("APEX.DIALOG.CANCEL")',
'		};',
'',
'		//change the button labels messages',
'		apex.lang.addMessages({',
'			"APEX.DIALOG.OK": pOkLabel',
'		});',
'		apex.lang.addMessages({',
'			"APEX.DIALOG.CANCEL": pCancelLabel',
'		});',
'',
'		//show the confirm dialog',
'		apex.message.confirm(pMessage, pCallback);',
'',
'		//the timeout is required since APEX 19.2 due to a change in the apex.message.confirm',
'		setTimeout(function() {',
'			//changes the button labels messages back to their original values',
'			apex.lang.addMessages({',
'				"APEX.DIALOG.OK": l_original_messages["APEX.DIALOG.OK"]',
'			});',
'			apex.lang.addMessages({',
'				"APEX.DIALOG.CANCEL": l_original_messages["APEX.DIALOG.CANCEL"]',
'			});',
'		}, 0);',
'	}',
'',
'',
'	if (rowStatus == 0) {',
'',
'		var msg = "You''re about to submit your response," + ''\n'' + "Kindly Note that you would not be able to edit your response after submission" + ''\n\n'' + "Do you wish to continue?";',
'',
'',
'		customConfirm(msg, function(okPressed) {',
'',
'			if (okPressed) {',
'				apex.widget.waitPopup();',
'				//apex.item("P49_ASSIGN_ID").setValue();',
'				apex.message.showPageSuccess("Exit Interview Response Submitted Successfully");',
'				apex.submit(''CONFIRM'');',
'',
'				return true;',
'			} else {',
'				alert(''Exit Interview Response Submission Cancelled'');',
'				$("#apex_wait_overlay").remove(); //REMOVE OVERLAY',
'				$(".u-Processing").remove(); //REMOVE OVERLAY',
'',
'				return false;',
'			}',
'',
'		}, "Yes Submit Response", "No, I will Re-validate Response");',
'	} else if (rowStatus == 1) {',
'		apex.message.clearErrors();',
'',
'		apex.message.showErrors([{',
'			type: "error",',
'			location: "page",',
'			message: "No Exit Interview Found. ",',
'			unsafe: false',
'		}]);',
'		apex.item("P49_PROCEED").setValue(0);',
'	} else {',
'		apex.message.clearErrors();',
'',
'		apex.message.showErrors([{',
'			type: "error",',
'			location: "page",',
'			message: "Response to Exit Interview not completed. ",',
'			unsafe: false',
'		}]);',
'		apex.item("P49_PROCEED").setValue(0);',
'	}',
'}',
'',
'',
'async function getResponseStatus(assignedID) {',
'	return new Promise((resolve, reject) => {',
'',
'		//var trans_id=apex.item(''P13_TRANSACTION_ID'').getValue();',
'		apex.server.process(''getResponseStatus'',',
'',
'			{',
'				x01: assignedID',
'			}, {',
'				success: function(data) {',
'					if (data.success) {',
'						return resolve(data.vCnt);',
'						//var msgs =data.vCnt;',
'					} else {',
'						//apex.message.showPageSuccess( "Error");',
'						//Response to Exit Interview not completed',
'						return reject(new Error("Error"));',
'						$("#apex_wait_overlay").remove(); //REMOVE OVERLAY',
'						$(".u-Processing").remove(); //REMOVE OVERLAY',
'',
'					}',
'',
'				},',
'				error: function(err) {',
'					console.log(err);',
'					$("#apex_wait_overlay").remove(); //REMOVE OVERLAY',
'					$(".u-Processing").remove(); //REMOVE OVERLAY',
'				}',
'',
'			}',
'',
'		).always(function() {',
'',
'			//apex.submit({  request:"SUB",  showWait:true});  ',
'',
'		});',
'	})',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.exit-button{',
'    color: red;',
'    font-weight: bolder;',
'    text-align: justify;',
'}',
'',
'.a-GV-table td, .a-GV-table th {',
'    white-space: normal;',
'}',
'',
'.a-GV-table--checkbox{',
'    visibility: hidden;',
'}'))
,p_step_template=>wwv_flow_imp.id(2470187120224039)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(43015873867948233)
,p_name=>'Exit Interview'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.ROWKEY,',
'        A.HEADER_NAME,',
'        E.COMPANY_CODE,',
'        E.ASSIGNED_BY,',
'        E.ASSIGNED_DATE,',
'        E.STATUS',
'        ',
'        FROM XXHRMS.XXHRMS_EXIT_INTERVIEW_ASSIGN E, XXHRMS.XXHRMS_EXIT_INTERVIEW_SETUP_HEADER A',
'        WHERE E.HEADER_ROWKEY=A.ROWKEY',
'        AND E.ROWKEY=:P49_ASSIGN_ID'))
,p_display_when_condition=>'P49_ASSIGN_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P49_ASSIGN_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
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
 p_id=>wwv_flow_imp.id(26236899670712499)
,p_query_column_id=>1
,p_column_alias=>'ROWKEY'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26237277111712500)
,p_query_column_id=>2
,p_column_alias=>'HEADER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26237602506712500)
,p_query_column_id=>3
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Company'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48581182525701704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26238061531712500)
,p_query_column_id=>4
,p_column_alias=>'ASSIGNED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Assigned By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26238478585712501)
,p_query_column_id=>5
,p_column_alias=>'ASSIGNED_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Assigned Date'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26238834909712501)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43015944347948234)
,p_plug_name=>'Interview Questions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.* ',
'from xxhrms.XXHRMS_EXIT_INTERVIEW_ASSIGN_DETAILS A, xxhrms.XXHRMS_EXIT_INTERVIEW_SETUP_DETAILS B',
'wHERE A.ASSIGNED_ROWKEY=:P49_ASSIGN_ID',
'AND A.QUESTION_ROWKEY = B.ROWKEY',
'AND B.STATUS = ''Y''',
'AND A.HEADER_ROWKEY = B.HEADER_ROWKEY'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P49_ASSIGN_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P49_ASSIGN_ID'
,p_plug_read_only_when_type=>'NOT_EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.* ',
'from xxhrms.XXHRMS_EXIT_INTERVIEW_ASSIGN_DETAILS A, xxhrms.XXHRMS_EXIT_INTERVIEW_SETUP_DETAILS B',
'wHERE A.ASSIGNED_ROWKEY=:P49_ASSIGN_ID',
'AND A.QUESTION_ROWKEY = B.ROWKEY',
'AND B.STATUS = ''Y''',
'AND A.HEADER_ROWKEY = B.HEADER_ROWKEY',
'AND A.RESPONSE IS NULL'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43016309011948237)
,p_name=>'ROWKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWKEY'
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
 p_id=>wwv_flow_imp.id(43016374532948238)
,p_name=>'ASSIGNED_ROWKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNED_ROWKEY'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43016441385948239)
,p_name=>'HEADER_ROWKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEADER_ROWKEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(43016588336948240)
,p_name=>'QUESTION_ROWKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUESTION_ROWKEY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Question'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT QUESTIONS, ROWKEY',
'FROM XXHRMS.XXHRMS_EXIT_INTERVIEW_SETUP_DETAILS',
'--WHERE ROWKEY=:QUESTION_ROWKEY'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43016669145948241)
,p_name=>'RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Response'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43016788107948242)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43016865790948243)
,p_name=>'COMPANY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(43017016836948244)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43017091284948245)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(43016223393948236)
,p_internal_uid=>43016223393948236
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_imp.id(43071837859828280)
,p_interactive_grid_id=>wwv_flow_imp.id(43016223393948236)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(43071982276828280)
,p_report_id=>wwv_flow_imp.id(43071837859828280)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43072425308828283)
,p_view_id=>wwv_flow_imp.id(43071982276828280)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(43016309011948237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43072845779828287)
,p_view_id=>wwv_flow_imp.id(43071982276828280)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(43016374532948238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43073423304828289)
,p_view_id=>wwv_flow_imp.id(43071982276828280)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43016441385948239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43073890664828291)
,p_view_id=>wwv_flow_imp.id(43071982276828280)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43016588336948240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43074434471828293)
,p_view_id=>wwv_flow_imp.id(43071982276828280)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43016669145948241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43074881719828294)
,p_view_id=>wwv_flow_imp.id(43071982276828280)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43016788107948242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43075364130828296)
,p_view_id=>wwv_flow_imp.id(43071982276828280)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43016865790948243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43075858363828298)
,p_view_id=>wwv_flow_imp.id(43071982276828280)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(43017016836948244)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43064657189820999)
,p_plug_name=>'Assigned Interview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ROWKEY,',
'        HEADER_ROWKEY,',
'        COMPANY_CODE,',
'        ASSIGNED_BY,',
'        STAFF_ID,',
'        to_char(ASSIGNED_DATE,''fmDay, fmDD fmMonth, YYYY'') ASSIGNED_DATE,',
'        RESPONSE_DATE,',
'        REQUEST_ID	',
'from XXHRMS.XXHRMS_EXIT_INTERVIEW_ASSIGN',
'WHERE STAFF_ID=  NVL(:P49_STAFF_ID, :AP_STAFF_ID)',
'AND COMPANY_CODE=:AP_COMPANY_CODE',
'and  nvl(STATUS,0)!=1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_ajax_items_to_submit=>'P49_STAFF_ID'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', 'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP:P49_ASSIGN_ID:&ROWKEY.',
  'list_view_features', 'ADVANCED_FORMATTING:SEARCH',
  'search_type', 'SERVER_EXACT_IGNORE',
  'supplemental_info_formatting', '&ASSIGNED_DATE.',
  'text_formatting', 'EXIT INTERVIEW QUESTION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43065960659821012)
,p_plug_name=>'Exit Interview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p class="exit-button">Please select your Exit Interview question from the left panel to provide your response</P>',
'<p class="exit-button">Ensure to click the "Save" button to save your response and click the "Submit Response" button to complete the process</br>',
'Failure to Submit response invalidates the process.</p>',
''))
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P49_ASSIGN_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26239218811712501)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43015873867948233)
,p_button_name=>'CONFIRM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Response'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26244164240712510)
,p_name=>'P49_ASSIGN_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43015944347948234)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26245299475712512)
,p_name=>'P49_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43064657189820999)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26245611763712512)
,p_name=>'P49_FULLNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43064657189820999)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Staff Name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FULL_NAME',
'from xxhrms.xxhrms_people',
'where PERSON_ID = :P49_STAFF_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P49_STAFF_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58205541906861530)
,p_name=>'P49_PROCEED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43064657189820999)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26246869880712513)
,p_name=>'submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26239218811712501)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26247338274712514)
,p_event_id=>wwv_flow_imp.id(26246869880712513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'customVals();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26247857755712514)
,p_event_id=>wwv_flow_imp.id(26246869880712513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P49_PROCEED = 1 THEN',
'update XXHRMS.XXHRMS_EXIT_REQUESTS',
'set EXIT_INTERVIEW = ''Y''',
'where EMPLOYEE_ID = NVL(:P49_STAFF_ID ,:AP_STAFF_ID);',
'END IF;',
'end;'))
,p_attribute_02=>'P49_STAFF_ID,AP_STAFF_ID,P49_PROCEED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26244517553712511)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(43015944347948234)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Interview Questions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26244517553712511
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26246057428712513)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE XXHRMS.XXHRMS_EXIT_INTERVIEW_ASSIGN',
'    SET RESPONSE_DATE=SYSDATE,',
'    STATUS=1',
'    WHERE ROWKEY=:P49_ASSIGN_ID;',
'    ',
'    ',
'    UPDATE XXHRMS.XXHRMS_EXIT_REQUESTS',
'    SET exit_interview=''Y''',
'    WHERE request_id=(SELECT REQUEST_ID FROM XXHRMS.XXHRMS_EXIT_INTERVIEW_ASSIGN',
'                     WHERE ROWKEY=:P49_ASSIGN_ID);',
'                     ',
'    xxhrms.XXHRMS_NOTIFICATION_ALRT.Filled_Interview(:AP_STAFF_ID,:AP_COMPANY_CODE);',
'       :P49_ASSIGN_ID := null;              ',
'                     END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26246057428712513
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26246499998712513)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getResponseStatus'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_rrr       varchar2(1000);',
'vRRR        NUMBER;',
'nRRR        NUMBER;',
'l_clob      clob;',
'',
'begin',
'',
'select count(*) into  vRRR ',
'from XXHRMS.XXHRMS_EXIT_INTERVIEW_ASSIGN_DETAILS a ,  XXHRMS.XXHRMS_EXIT_INTERVIEW_SETUP_DETAILS B',
'where ASSIGNED_ROWKEY=APEX_APPLICATION.g_x01',
'and b.ROWKEY= A.QUESTION_ROWKEY',
'and b.HEADER_ROWKEY = a.HEADER_ROWKEY',
'and b.STATUS = ''Y'';',
'',
'select count(*) into  nRRR ',
'from XXHRMS.XXHRMS_EXIT_INTERVIEW_ASSIGN_DETAILS a,  XXHRMS.XXHRMS_EXIT_INTERVIEW_SETUP_DETAILS B',
'where A.ASSIGNED_ROWKEY=APEX_APPLICATION.g_x01',
'and A.RESPONSE IS not Null',
'and b.ROWKEY= A.QUESTION_ROWKEY',
'and b.HEADER_ROWKEY = a.HEADER_ROWKEY',
'and B.STATUS = ''Y'';',
'    ',
'    apex_json.open_object();',
'    if vRRR=nRRR and vRRR!=0',
'    then ',
'    apex_json.write(''count'', 1);',
'    apex_json.write(''success'', true);',
'    apex_json.write(''vCnt'', 0);',
'    elsif vRRR=0',
'    then',
'    apex_json.write(''success'', true);',
'    apex_json.write(''vCnt'', 1);',
'    else',
'    apex_json.write(''success'', true);',
'    apex_json.write(''vCnt'', 2);',
'    end if;',
'',
'    apex_json.close_object();',
'    apex_json.flush();',
'    apex_json.free_output;',
'        ',
'        ',
'    exception',
'    when NO_DATA_FOUND',
'    then',
'   ',
'   apex_json.open_object();',
'   apex_json.write(''error'', ''No Data Found ''||sqlerrm||'' - ''|| DBMS_UTILITY.FORMAT_ERROR_BACKTRACE); ',
'   apex_json.write(''msg'', false);',
'   apex_json.close_object();',
'   apex_json.flush();',
'   apex_json.free_output;',
'   ',
'   when others',
'   then',
'   ',
'   apex_json.open_object();',
'   apex_json.write(''error'', ''Error Processing Risk Details''||sqlerrm||'' - ''|| DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);',
'   apex_json.write(''msg'', false); ',
'   apex_json.close_object();',
'   apex_json.flush();',
'   apex_json.free_output;',
'   ',
'   end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26246499998712513
);
wwv_flow_imp.component_end;
end;
/
