prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>'Copy Performance Indicator'
,p_alias=>'AA3'
,p_step_title=>'Copy Performance Indicator'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'01'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33564145294696703)
,p_plug_name=>'Copy Indicators'
,p_icon_css_classes=>'fa-copy'
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
 p_id=>wwv_flow_imp.id(69807861609102639)
,p_plug_name=>'Copy Performance Indicator'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69809893658102643)
,p_name=>'Performance Indicators'
,p_region_name=>'myreport'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding:t-Form--large'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'TASK_ID,',
'apex_item.checkbox(1,TASK_ID) as selected,',
'EMPLOYEE,',
'CLASSIFICATION,',
'DESCRIPTION,',
'WEIGHT,',
'WEIGHING_TYPE,',
'UNIT_OF_MEASURE,',
'TARGET,',
'APPRAISAL_ID,',
'INDICATOR_TYPE,',
'PERFORMANCE_INDICATOR,',
'PERFORMANCE_ID',
'FROM  xxpermgt.xxpermgt_emp_task_setup',
'where EMPLOYEE = :P40_STAFF_ID',
'AND APPRAISAL_ID = :P40_PREV_APPRAISAL',
'AND PERFORMANCE_ID NOT IN(',
'                        SELECT ',
'                        PERFORMANCE_ID',
'                       FROM xxpermgt.xxpermgt_emp_task_setup',
'                        WHERE APPRAISAL_ID =  :P40_CURR_APPRAISAL',
'                        AND EMPLOYEE =  :P40_STAFF_ID',
'                        ) '))
,p_ajax_items_to_submit=>'P40_STAFF_ID,P40_CURR_APPRAISAL,P40_PREV_APPRAISAL'
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>30
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33558049055696695)
,p_query_column_id=>1
,p_column_alias=>'TASK_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33558424311696696)
,p_query_column_id=>2
,p_column_alias=>'SELECTED'
,p_column_display_sequence=>1
,p_column_heading=>'<input type="checkbox" id="selectunselectall">'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33558846138696696)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33559274120696696)
,p_query_column_id=>4
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>5
,p_column_heading=>'Classification'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(36276534582246413)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33559666355696697)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>9
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33560096882696697)
,p_query_column_id=>6
,p_column_alias=>'WEIGHT'
,p_column_display_sequence=>11
,p_column_heading=>'Weight'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33560462042696698)
,p_query_column_id=>7
,p_column_alias=>'WEIGHING_TYPE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33560858007696698)
,p_query_column_id=>8
,p_column_alias=>'UNIT_OF_MEASURE'
,p_column_display_sequence=>10
,p_column_heading=>'Unit of Measure'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33561227329696698)
,p_query_column_id=>9
,p_column_alias=>'TARGET'
,p_column_display_sequence=>13
,p_column_heading=>'Target'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33561672000696699)
,p_query_column_id=>10
,p_column_alias=>'APPRAISAL_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33562047862696699)
,p_query_column_id=>11
,p_column_alias=>'INDICATOR_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Indicator Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33562413305696699)
,p_query_column_id=>12
,p_column_alias=>'PERFORMANCE_INDICATOR'
,p_column_display_sequence=>6
,p_column_heading=>'Performance Indicator'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33562849446696700)
,p_query_column_id=>13
,p_column_alias=>'PERFORMANCE_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33563264871696700)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69809893658102643)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy Indicators'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33563651932696701)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69809893658102643)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_APPRAISAL_ID,P3_STAFF_ID:&P40_CURR_APPRAISAL.,&P40_STAFF_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33556169618696681)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69807861609102639)
,p_button_name=>'back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_APPRAISAL_ID,P3_STAFF_ID:&P40_CURR_APPRAISAL.,&P40_STAFF_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33556533969696685)
,p_name=>'P40_STAFF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69807861609102639)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33556943845696689)
,p_name=>'P40_CURR_APPRAISAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69807861609102639)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33557312724696689)
,p_name=>'P40_PREV_APPRAISAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69807861609102639)
,p_prompt=>'Previous Appraisal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title d, SETUP_ID r',
'from xxpermgt_appraisal_plan_setup',
'where company_code = :SS_COMPANY_CODE',
'and SETUP_ID != :P40_CURR_APPRAISAL',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33565536969696709)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_PREV_APPRAISAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33566045442696711)
,p_event_id=>wwv_flow_imp.id(33565536969696709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69809893658102643)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33566477993696712)
,p_name=>'checkkbox'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#myreport'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33566970228696712)
,p_event_id=>wwv_flow_imp.id(33566477993696712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#selectunselectall'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($( ''#myreport #selectunselectall'' ).is('':checked'')) {',
'      $(''#myreport input[type=checkbox][name=f01]'').prop(''checked'',true);',
'    } else {',
'      $(''#myreport input[type=checkbox][name=f01]'').prop(''checked'',false);',
'    }'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33565150782696707)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_id varchar2(100);',
'v_date date;',
'v_appraisal varchar2(1000);',
'v_performance_id varchar2(1000);--',
'v_indicator  varchar2(1000) ;',
'v_performance varchar2(4000);',
'v_task_id varchar2(3000);',
'v_Classification varchar2(400) ;',
'v_Description varchar2(4000) ;',
'V_Unit_of_measure varchar2(100);',
'v_Weight varchar2(100);',
'v_Target varchar2(100);',
'v_staff_id varchar2(100);',
'--v_error varchar2(100);',
'begin',
'FOR i IN 1 .. HTMLDB_APPLICATION.g_f01.COUNT',
'          loop',
'select HTMLDB_APPLICATION.g_f01(i)  into v_id from dual;',
'',
'select max(task_id) + 1 into v_task_id from  xxpermgt.xxpermgt_emp_task_setup;',
' ',
'--select sysdate into v_date from dual;',
'if  APEX_APPLICATION.G_F01(i) is not null',
'then',
'select max(task_id) + 1 into v_task_id from  xxpermgt.xxpermgt_emp_task_setup;',
'',
'select APPRAISAL_ID,',
'       PERFORMANCE_ID,',
'       Performance_indicator,',
'       Indicator_type,	',
'       Classification,',
'       Description,',
'      Unit_of_measure,',
'      Weight,',
'      Target',
'       ',
'into   v_appraisal, ',
'        v_performance_id,',
'        v_performance,',
'        v_indicator,',
'        v_Classification,',
'        v_Description,',
'        V_Unit_of_measure,',
'        v_Weight,',
'        v_Target',
'from  xxpermgt.xxpermgt_emp_task_setup ',
'where task_id in(v_id);',
'--v_error := :P40_STAFF_ID;',
' insert into xxpermgt.xxpermgt_emp_task_setup (     task_id,',
'                                                   EMPLOYEE,',
'                                                  APPRAISAL_ID,',
'                                                  PERFORMANCE_ID,',
'                                               Performance_indicator,',
'                                               Indicator_type,',
'                                               Classification,',
'                                               Description,',
'                                               Unit_of_measure,',
'                                               Weight,',
'                                               Target',
'                                              )',
'values(v_task_id,',
'       :P40_STAFF_ID,',
'        :P40_CURR_APPRAISAL,',
'       v_performance_id,',
'       v_performance,',
'       v_indicator,',
'       v_Classification,',
'       v_Description,',
'       V_Unit_of_measure,',
'       v_Weight,',
'       v_Target',
'      );',
' end if;',
' COMMIT;',
'  end loop;',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33563264871696700)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>33565150782696707
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33564754737696706)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SuccessMsg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF (:P40_START_DATE IS NOT NULL AND',
'    :p40_end_date is not null AND',
'    :P40_WORKSHIFT_NAME IS NOT NULL AND ',
'    :P40_CLOCK_IN IS NOT NULL AND',
'    :P40_CLOCK_OUT IS NOT NULL AND',
'    :P40_TYPE IS NOT NULL) ',
'    THEN',
'apex_application.g_print_success_message',
'    := ''Workshift Setup updated'';',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22731797787840038)
,p_internal_uid=>33564754737696706
);
wwv_flow_imp.component_end;
end;
/
