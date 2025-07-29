prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'Apply For Loan'
,p_alias=>'APPLY-FOR-LOAN'
,p_page_mode=>'MODAL'
,p_step_title=>'Apply For Loan'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function closeModal(){',
'    apex.navigation.dialog.close(true);',
'    return false;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.loan-card {',
'  max-width: 400px;',
'  font-family: Arial, sans-serif;',
'  margin: 20px auto;',
'}',
'',
'.loan-header {',
'  display: flex;',
'  align-items: center;',
'  gap: 10px;',
'}',
'',
'.loan-icon {',
'  width: 24px;',
'  height: 24px;',
'}',
'',
'.loan-details {',
'  background-color: #f5f5f5;',
'  border-radius: 10px;',
'  padding: 15px;',
'  margin-top: 10px;',
'}',
'',
'.loan-row {',
'  display: flex;',
'  justify-content: space-between;',
'  margin-top: 10px;',
'  flex-wrap: wrap;',
'}',
'',
'.loan-row div {',
'  min-width: 100px;',
'}',
'',
'small {',
'  color: #888;',
'  font-size: 0.75rem;',
'}',
'',
'strong {',
'  font-size: 0.9rem;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'563'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153149022983684087)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN',
'',
'''<div class="loan-card">',
'  <div class="loan-header">',
'    <img src="tree-icon.png" alt="Loan Icon" class="loan-icon">',
'    <h3>Apply For Loan</h3>',
'  </div>',
'',
'  <div class="loan-details">',
'    <div class="loan-row">',
'      <div>',
'        <small>Limits</small><br>',
unistr('        <strong>\20A620,000 - \20A6200,000</strong>'),
'      </div>',
'    </div>',
'',
'    <div class="loan-row">',
'      <div>',
'        <small>Charges</small><br>',
unistr('        <strong>\20A62,000</strong>'),
'      </div>',
'      <div>',
'        <small>Insurance Fees</small><br>',
unistr('        <strong>\20A62,000</strong>'),
'      </div>',
'      <div>',
'        <small>Repayment Period</small><br>',
unistr('        <strong>3\20136months</strong>'),
'      </div>',
'    </div>',
'  </div>',
'</div>',
''';'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(53788472975011701)
,p_branch_name=>'Go To Page 26'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53787407733011694)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53787954255011699)
,p_event_id=>wwv_flow_imp.id(53787407733011694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*apex.util.getTopApex().jQuery(".ui-dialog-content").dialog("option",',
'"title",`<img src="#APP_IMAGES#logo.png" alt="Dialog Title" style="height: 40px;">`);*/',
'',
'',
'$(document).ready(function() {',
'  var $top = apex.util.getTopApex();',
'  var $dialog = $top.jQuery(".ui-dialog-content");',
'',
'  // Ensure the dialog opens with the regular title first',
'  var originalTitle = $dialog.dialog("option", "title");',
'',
'  // Slight delay to ensure title is rendered',
'  setTimeout(function() {',
'    var $titleBar = $top.jQuery(".ui-dialog-titlebar .ui-dialog-title");',
'',
'    if ($titleBar.length) {',
'      $titleBar.html(',
'        ''<img src="#APP_FILES#Featured icon.png" alt="Title Image" style="height: 30px; vertical-align: middle; margin-right: 8px;">'' //+',
'       // apex.util.escapeHTML(''Add New Product'')',
'      );',
'    }',
'  }, 100);',
'});',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53787027847011693)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Company Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    xxmrkt.xxmrkt_marketplace_pkg.create_company(   p_company_name => :P42_COMPANY_NAME,',
'                                                    p_company_type => :P42_COMPANY_TYPE,',
'                                                    p_company_desc => :P42_COMPANY_DESC,',
'                                                    p_status       => :P42_COMPANY_STATUS,',
'                                                    p_upload_img   => :P42_UPLOAD_IMG,',
'                                                    p_benefits     => :P42_BENEFITS',
'                                                );',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        raise_application_Error(-20001, sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>53787027847011693
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53786611521011693)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Company Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   XXMRKT.XXMRKT_MARKETPLACE_PKG.update_company(p_company_name => :P42_COMPANY_NAME,',
'                                                p_id           => :P38_ID,',
'                                                p_company_id   => :P42_COMPANY_ID,',
'                                                p_company_type => :P42_COMPANY_TYPE,',
'                                                p_company_desc => :P42_COMPANY_DESC,',
'                                                p_status       => :P42_COMPANY_STATUS,',
'                                                p_upload_img   => :P42_DISPLAY_IMAGE,',
'                                                p_benefits     => :P42_BENEFITS',
'                        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>53786611521011693
);
wwv_flow_imp.component_end;
end;
/
