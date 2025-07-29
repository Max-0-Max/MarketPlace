prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_name=>'&P71_HEADER.'
,p_alias=>'HG66'
,p_page_mode=>'MODAL'
,p_step_title=>'&P71_HEADER.'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function closeModal(){',
'    apex.navigation.dialog.close(true);',
'    return false;',
'}',
'',
'',
'function validateLoan(){',
'  let msg = $v(''P71_ELIGIBILITY_ERR'');',
'   apex.message.alert( msg, function(){',
'    console.log("Dialog Closed!")',
'    }, {',
'        title: `Heads Up!!!`,',
'        style: "information",',
'        dialogClasses: "my-custom-class",',
'        iconClasses: "fa fa-info-circle fa-2x",',
'        okLabel: "Okay!"',
'    } );',
'',
'    return false;',
'}',
'',
'',
'function successfulLoan(msg, title){',
' // let msg = $v(''P71_ELIGIBILITY_ERR'');',
'   apex.message.alert( `${msg}`, function(){',
'    console.log("Dialog Closed!")',
'    }, {',
'        title: `${title}`,',
'        style: "success",',
'        dialogClasses: "my-custom-class",',
'        iconClasses: "fa fa-check-circle fa-2x",',
'        okLabel: "Okay!"',
'    } );',
'',
'    return false;',
'}',
'',
'function confirmCancelLoan(){',
'    apex.message.confirm( "Are you sure you want to cancel this loan?", function( okPressed ) {',
'            if (okPressed) {',
'                apex.server.process("PROCESS_DATA", {}, {',
'                    dataType: "json", // or remove this if returning JSON',
'                        success: function(data) {',
'                            if (data.status === "success") {',
'                                closeModal();',
'                                //apex.message.showPageSuccess(''Loan Successfully Canceled'');',
'                            } else {',
'                                apex.message.alert(''Failed to cancel loan'');',
'                            }',
'                        },',
'                        error: function(jqXHR, textStatus, errorThrown) {',
'                            console.error("Error:", textStatus, errorThrown);',
'                    }',
'                });',
'            }',
'    }, {',
'        title: "Cancel Loan",',
'        style: "danger",',
'        dialogClasses: "my-custom-class",',
'        iconClasses: "fa fa-question fa-2x",',
'        cancelLabel: "Cancel",',
'        confirmLabel: "I confirm"',
'    } );',
'    return false;',
'}',
'',
'// Now show new errors',
'function getError(msg){',
'    apex.message.showErrors( [',
'    {',
'        type:       "error",',
'        location:   ["inline" ],',
'        pageItem:   "P71_AMOUNT_TO_BORROW",',
'        message:    msg,',
'        unsafe:     false',
'    }',
'    ] );',
'}',
'',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	body {',
'font-family: Helvetica;',
'}',
'',
'.t-Button-label{',
'font-weight: 700;',
'font-size: 14px;',
'line-height: 100%;',
'letter-spacing: -1%;',
'}',
'',
'.loan-card {',
'  font-family: Helvetica;',
'  margin: 20px auto;',
'}',
'',
'.loan-header {',
'  display: flex;',
'  align-items: center;',
'  text-align: center;',
'  gap: 10px;',
'}',
'',
'.loan-header h3{',
'    font-family: Helvetica;',
'font-weight: 700;',
'font-size: 20px;',
'line-height: 150%;',
'letter-spacing: 0%;',
'text-transform: capitalize;',
'margin: 0;',
'}',
'',
'.loan-icon {',
'  width: 48px;',
'height: 48px;',
'gap: 10px;',
'border-radius: 4px;',
'border: 1px solid #DDDDDD;',
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
'  font-family: Helvetica;',
'font-weight: 400;',
'font-size: 14px;',
'line-height: 100%;',
'letter-spacing: 0%;',
'text-transform: capitalize;',
'color: #7A7A7A;',
'}',
'',
'strong {',
'  font-family: Helvetica;',
'font-weight: 700;',
'font-size: 14px;',
'line-height: 150%;',
'letter-spacing: 0%;',
'color: #423B3B;',
'',
'}',
'',
'.input-group-text{',
'    font-family: Helvetica;',
'font-weight: 400;',
'font-size: 16px;',
'line-height: 100%;',
'letter-spacing: 0%;',
'color: #B5B5B5;',
'padding-right: 10px;',
'}',
'',
'.input-loan{',
'    font-family: Helvetica;',
'font-weight: 400;',
'font-size: 14px;',
'line-height: 140%;',
'letter-spacing: -1%;',
'color: #24272B;',
'}',
'',
'ui-dialog-content ui-widget-content{',
'    padding: 25px;',
'}',
'',
'.a-AlertMessage{',
'    padding: 25px;',
'}',
'',
'.a-AlertMessage-icon{',
'    background-color: #D0E4FB;',
'}',
'',
'.a-AlertMessage-title {',
'    font-family: Helvetica;',
'font-weight: 400;',
'font-size: 24px;',
'line-height: 100%;',
'letter-spacing: 0%;',
'text-align: center;',
'}',
'',
'.a-AlertMessage-details{',
'    font-family: Helvetica;',
'font-weight: 400;',
'font-size: 20px;',
'line-height: 100%;',
'letter-spacing: 0%;',
'text-align: center;',
'}',
'',
'js-confirmBtn ui-button ui-corner-all ui-widget ui-button--hot{',
'    font-family: Helvetica;',
'font-weight: 700;',
'font-size: 16px;',
'line-height: 100%;',
'letter-spacing: 0%;',
'text-align: center;',
'}',
'',
'/* Cancel button (optional separate styling) */',
'.ui-dialog.my-custom-class .ui-dialog-buttonpane .ui-button:contains("Cancel") {',
'  background-color: #e0e0e0;',
'  color: #333;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'563'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53772375586844404)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73396547919060044)
,p_plug_name=>'New1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>40
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_FIRST_NAME       XXHRMS.XXHRMS_PEOPLE.FIRST_NAME%TYPE;',
'    V_LAST_NAME        XXHRMS.XXHRMS_PEOPLE.LAST_NAME%TYPE;',
'    V_GENDER           XXHRMS.XXHRMS_PEOPLE.SEX%TYPE;',
'    V_DATE_OF_BIRTH   VARCHAR2(255);',
'    V_EMAIL            XXHRMS.XXHRMS_PEOPLE.EMAIL%TYPE;',
'    V_TELEPHONE_NUMBER XXHRMS.XXHRMS_PEOPLE.TELEPHONE1%TYPE;',
'    V_HIRE_DATE        XXHRMS.XXHRMS_ASSIGNMENTS.HIRE_DATE%TYPE;',
'    v_html             CLOB;',
'BEGIN',
'    SELECT',
'           p.FIRST_NAME,',
'           p.LAST_NAME,',
'           p.SEX,',
'           p.BIRTH_DATE,',
'           p.EMAIL,',
'           p.TELEPHONE1,',
'           a.HIRE_DATE',
'    INTO   V_FIRST_NAME,',
'           V_LAST_NAME,',
'           V_GENDER,',
'           V_DATE_OF_BIRTH,',
'           V_EMAIL,',
'           V_TELEPHONE_NUMBER,',
'           V_HIRE_DATE',
'    FROM XXHRMS.XXHRMS_PEOPLE p, XXHRMS.XXHRMS_ASSIGNMENTS a',
'    WHERE p.PERSON_ID = a.PERSON_ID',
'    AND a.COMPANY_CODE = :AP_COMPANY_CODE',
'      AND p.PERSON_ID = :AP_STAFF_ID;',
'',
'    RETURN ',
'    ''<div class="loan-card">',
'   ',
'',
'      <div class="loan-details">',
'        <div class="loan-row">',
'          <div>',
'            <small>First Name</small><br>',
'            <strong>''|| NVL(V_FIRST_NAME, ''N/A'') ||''</strong>',
'          </div>',
'        </div>',
'',
'        <div class="loan-row">',
'          <div>',
'            <small>Last Name</small><br>',
'            <strong>''|| NVL(V_LAST_NAME, ''N/A'') ||''</strong>',
'          </div>',
'          <div>',
'            <small>Gender</small><br>',
'            <strong>''|| NVL(V_GENDER, ''N/A'') ||''</strong>',
'          </div>',
'          <div>',
'            <small>Phone Number</small><br>',
'            <strong>''|| NVL(V_TELEPHONE_NUMBER, ''N/A'') ||''</strong>',
'          </div>',
'          <div>',
'            <small>Phone Number</small><br>',
'            <strong>''|| NVL(V_DATE_OF_BIRTH, ''N/A'') ||''</strong>',
'          </div>',
'        </div>',
'      </div>',
'    </div>'';',
'',
'    -- Print it to console/log for debugging',
'   -- DBMS_OUTPUT.PUT_LINE(v_html);',
'',
'    -- Or assign it to a bind variable to return it to caller if needed',
'    -- :YOUR_OUTPUT_VAR := v_html;',
'',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206942873267730755)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MINIMUM_LIMIT VARCHAR2(100);',
'    V_MAXIMUM_LIMIT VARCHAR2(100);',
'    V_CHARGES VARCHAR2(100);',
'    V_INSURANCE_FEE VARCHAR2(100);',
'    V_MINIMUM_REPAYMENT_PERIOD VARCHAR2(20);',
'    V_MAXIMUM_REPAYMENT_PERIOD VARCHAR2(20);',
'BEGIN',
'    SELECT TO_CHAR(NVL(MINIMUM_LIMIT, 0), ''999G999G999G999G990D00'') MINIMUM_LIMIT,',
'           TO_CHAR(NVL(MAXIMUM_LIMIT, 0), ''999G999G999G999G990D00'') MAXIMUM_LIMIT,',
'           MINIMUM_REPAYMENT_PERIOD,',
'           MAXIMUM_REPAYMENT_PERIOD,',
unistr('           DECODE(INSFEES_TYPE, ''Percentage'', ''''||NVL(INSURANCE_FEE, 0)||''%'', ''Amount'', ''\20A6''||TO_CHAR(NVL(INSURANCE_FEE, 0), ''999G999G999G999G990D00'')||'''') INSURANCE_FEE,'),
unistr('           DECODE(CHARGES_TYPE, ''Percentage'', ''''||NVL(CHARGES, 0)||''%'', ''Amount'', ''\20A6''||TO_CHAR(NVL(CHARGES, 0), ''999G999G999G999G990D00'')||'''') CHARGES'),
'    INTO    V_MINIMUM_LIMIT,',
'            V_MAXIMUM_LIMIT,',
'            V_MINIMUM_REPAYMENT_PERIOD,',
'            V_MAXIMUM_REPAYMENT_PERIOD,',
'            V_CHARGES,',
'            V_INSURANCE_FEE',
'    FROM  XXMRKT.XXMRKT_PRODUCT_LIST',
'    WHERE COMPANY_ID = :P71_COMPANY_ID',
'    AND COMPANY_cODE = :AP_COMPANY_CODE',
'    AND PRODUCT_ID = :P71_PRODUCT_ID;',
'RETURN',
'''<div class="loan-card">',
'  <div class="loan-header">',
'    <img src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||:P71_COMPANY_ID||''" alt="Loan Icon" class="loan-icon">',
'    <h3>''||:P71_HEADER||''</h3>',
'  </div>',
'',
'  <div class="loan-details">',
'    <div class="loan-row">',
'      <div>',
'        <small>Limits</small><br>',
unistr('        <strong>\20A6''||V_MINIMUM_LIMIT||'' - \20A6''||V_MAXIMUM_LIMIT||''</strong>'),
'      </div>',
'    </div>',
'',
'    <div class="loan-row">',
'      <div>',
'        <small>Charges</small><br>',
'        <strong>''||V_CHARGES||''</strong>',
'      </div>',
'    <div>',
'        <small>Insurance Fees</small><br>',
'        <strong>''||V_INSURANCE_FEE||''</strong>',
'      </div>',
'      <div>',
'        <small>Repayment Period</small><br>',
unistr('        <strong>''||V_MINIMUM_REPAYMENT_PERIOD||''\2013''||V_MAXIMUM_REPAYMENT_PERIOD||''months</strong>'),
'      </div>',
'    </div>',
'  </div>',
'</div>',
''';',
'',
'END;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53772993153844410)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_button_name=>'Apply'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply For Loan'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P71_LOAN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64198346054838744)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_button_name=>'Cancel_Loan'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel Loan'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P71_LOAN_ID IS NOT NULL AND :P71_LOAN_STATUS = ''Initiated'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53772153423844402)
,p_name=>'P71_COMPANY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(206942873267730755)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53772265783844403)
,p_name=>'P71_PRODUCT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(206942873267730755)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53772587541844406)
,p_name=>'P71_REPAYMENT_PERIOD'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_prompt=>'<p class="input-loan">&P71_CONTROL.</p>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LEVEL || '' Months'' AS num1, LEVEL AS num2',
'FROM dual',
'CONNECT BY LEVEL <= :P71_MAXIMUM_REPAYMENT_PERIOD',
'MINUS',
'SELECT LEVEL || '' Months'' AS num1, LEVEL AS num2',
'FROM dual',
'CONNECT BY LEVEL < :P71_MINIMUM_REPAYMENT_PERIOD;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'P71_LOAN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53772624736844407)
,p_name=>'P71_AMOUNT_TO_BORROW'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_prompt=>'<p class="input-loan">Loan Principal</p>'
,p_pre_element_text=>unistr('<span class="input-group-text">\20A6</span>')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when=>'P71_LOAN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '5000',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53772711807844408)
,p_name=>'P71_RECEIVING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_prompt=>'<p class="input-loan">Disbursement Amount</p>'
,p_pre_element_text=>unistr('<span class="input-group-text">\20A6</span>')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_read_only_when=>'P71_LOAN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2560737149224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53773089007844411)
,p_name=>'P71_MINIMUM_REPAYMENT_PERIOD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     MINIMUM_REPAYMENT_PERIOD ',
'    FROM  XXMRKT.XXMRKT_PRODUCT_LIST',
'    WHERE COMPANY_ID = :P71_COMPANY_ID',
'    AND COMPANY_cODE = :AP_COMPANY_CODE',
'    AND PRODUCT_ID = :P71_PRODUCT_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53773149165844412)
,p_name=>'P71_MAXIMUM_REPAYMENT_PERIOD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     MAXIMUM_REPAYMENT_PERIOD ',
'    FROM  XXMRKT.XXMRKT_PRODUCT_LIST',
'    WHERE COMPANY_ID = :P71_COMPANY_ID',
'    AND COMPANY_cODE = :AP_COMPANY_CODE',
'    AND PRODUCT_ID = :P71_PRODUCT_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53776913070844450)
,p_name=>'P71_RECEIVING_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56755409475929502)
,p_name=>'P71_MINIMUM_LIMIT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56755515905929503)
,p_name=>'P71_MAXIMUM_LIMIT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56756313804929511)
,p_name=>'P71_ELIGIBILITY_ERR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64198223805838743)
,p_name=>'P71_LOAN_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64198774611838748)
,p_name=>'P71_LOAN_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64198858164838749)
,p_name=>'P71_HEADER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(206942873267730755)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66587907250249409)
,p_name=>'P71_ACTION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_item_default=>'apply'
,p_source=>'apply'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67071965702763546)
,p_name=>'P71_COMPANY_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(206942873267730755)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73396610125060045)
,p_name=>'P71_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73396547919060044)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73396733796060046)
,p_name=>'P71_COMPANY_ID_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73396547919060044)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73828451685021729)
,p_name=>'P71_CONTROL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(53772375586844404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82400817937505220)
,p_name=>'P71_PRODUCT_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(206942873267730755)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82400943781505221)
,p_name=>'P71_LOAN_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(206942873267730755)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53795476683046672)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53795969281046672)
,p_event_id=>wwv_flow_imp.id(53795476683046672)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53773377474844414)
,p_name=>'Set Receiving Value'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_AMOUNT_TO_BORROW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53773906332844420)
,p_event_id=>wwv_flow_imp.id(53773377474844414)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set Receiving Value'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'var input = $v(''P71_AMOUNT_TO_BORROW''); // get current input value',
'',
'if (!input) return;',
'',
'// Remove all non-digit characters except decimal point if needed',
'var clean = input.replace(/[^0-9]/g, '''');',
'',
'// Format number with thousands separator',
'var formatted = clean.replace(/\B(?=(\d{3})+(?!\d))/g, ",");',
'',
'// Set formatted value back to the item',
'$s(''P71_AMOUNT_TO_BORROW'', formatted);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53773442135844415)
,p_event_id=>wwv_flow_imp.id(53773377474844414)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set Receiving Value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RECEIVING_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN XXMRKT.XXMRKT_MARKETPLACE_PKG.calculate_receiving_amount(    ',
'                                                                p_company_id => :P71_COMPANY_ID,',
'                                                                p_product_id => :P71_PRODUCT_ID,',
'                                                                p_amount_to_borrow => :P71_AMOUNT_TO_BORROW',
'                                                            );'))
,p_attribute_07=>'P71_AMOUNT_TO_BORROW,P71_PRODUCT_ID,P71_COMPANY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53773821751844419)
,p_event_id=>wwv_flow_imp.id(53773377474844414)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Set Receiving Value'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RECEIVING,P71_RECEIVING_1'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function sanitizeNumber(input) {',
'  // Remove all characters except digits, decimal point, and minus sign',
'  input = input.replace(/[^0-9.-]/g, '''');',
'',
'  // Keep only the first minus sign at the start',
'  input = input.replace(/(?!^)-/g, '''');',
'',
'  // Keep only the first decimal point',
'  input = input.replace(/(\..*?)\./g, ''$1'');',
'',
'  return input;',
'}',
'',
'var input = $v(''P71_RECEIVING_1''); // get current input value',
'if (!input) return;',
'',
'// Remove all non-digit characters except decimal point if needed',
'var clean = sanitizeNumber(input) //input.replace(/[^0-9]/g, '''');',
'',
'// Format number with thousands separator',
'var formatted = clean.replace(/\B(?=(\d{3})+(?!\d))/g, ",");',
'',
'// Set formatted value back to the item',
'$s(''P71_RECEIVING'', " ");',
'',
'// Set formatted value back to the item',
'$s(''P71_RECEIVING'', formatted);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53773524026844416)
,p_event_id=>wwv_flow_imp.id(53773377474844414)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RECEIVING'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56756149212929509)
,p_name=>'submit loan'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53772993153844410)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56756286938929510)
,p_event_id=>wwv_flow_imp.id(56756149212929509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_ELIGIBILITY_ERR'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN XXMRKT.XXMRKT_MARKETPLACE_PKG.check_eligibility(p_amount     => :P71_AMOUNT_TO_BORROW, ',
'                                                       p_duration   => :P71_REPAYMENT_PERIOD,',
'                                                       p_company_id => :P71_COMPANY_ID,',
'                                                       p_product_id => :P71_PRODUCT_ID',
'                                                       );'))
,p_attribute_07=>'P71_AMOUNT_TO_BORROW,P71_REPAYMENT_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56756480816929512)
,p_event_id=>wwv_flow_imp.id(56756149212929509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let msg = $v(''P71_ELIGIBILITY_ERR'');',
'if (msg != ''''){',
'        validateLoan();',
'}else{',
'    successfulLoan(''Congratulations!!! Loan Successfully Submitted'',''Loan Application Successful!!!'' );',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56756632318929514)
,p_event_id=>wwv_flow_imp.id(56756149212929509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_cnt NUMBER;',
'    v_loan_id NUMBER;',
'BEGIN',
'    -- Create the loan',
'    XXMRKT.XXMRKT_MARKETPLACE_PKG.create_loan(',
'        p_amount_to_borrow  => :P71_AMOUNT_TO_BORROW,',
'        p_repayment_period  => :P71_REPAYMENT_PERIOD,',
'        p_receiving_amount  => :P71_RECEIVING,',
'        p_product_id        => :P71_PRODUCT_ID,',
'        p_company_id        => :P71_COMPANY_ID',
'    );',
'',
'    -- Get the latest loan_id for this user ',
'    SELECT MAX(loan_id)',
'    INTO v_loan_id',
'    FROM XXMRKT.xxmrkt_applied_loans',
'    WHERE staff_id = :AP_USER_ID;',
'',
'    -- Call the notification procedure',
'    XXMRKT.XXMRKT_MARKETPLACE_NOTIFICATIONS_PKG.send_applied_loan_admin_notif(',
'        p_loan_id => v_loan_id,',
'        p_user    => :AP_USER_ID',
'    );',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20001, SQLERRM);',
'END;',
''))
,p_attribute_02=>'P71_COMPANY_ID,P71_PRODUCT_ID,P71_AMOUNT_TO_BORROW,P71_REPAYMENT_PERIOD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P71_ELIGIBILITY_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56756588921929513)
,p_event_id=>wwv_flow_imp.id(56756149212929509)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P71_COMPANY_ID,P71_PRODUCT_ID'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P71_ELIGIBILITY_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64198482050838745)
,p_name=>'cancel loan'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64198346054838744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66587224785249402)
,p_event_id=>wwv_flow_imp.id(64198482050838745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'confirmCancelLoan()'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64198164275838742)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set session state'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_LOAN_AMOUNT NUMBER;',
'    V_DURATION NUMBER;',
'    V_RECEIVING_AMOUNT NUMBER;',
'    V_LOAN_STATUS VARCHAR2(30);',
'    V_HEADER VARCHAR2(200);',
'BEGIN',
'    SELECT LOAN_AMOUNT,',
'           DURATION,',
'           LOAN_STATUS',
'    INTO V_LOAN_AMOUNT,',
'         V_DURATION,',
'         V_LOAN_STATUS',
'    FROM XXMRKT.XXMRKT_APPLIED_LOANS',
'    WHERE LOAN_ID = :P71_LOAN_ID',
'    AND COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'    SELECT  XXMRKT.XXMRKT_MARKETPLACE_PKG.calculate_receiving_amount(    ',
'                                                                p_company_id => :P71_COMPANY_ID,',
'                                                                p_product_id => :P71_PRODUCT_ID,',
'                                                                p_amount_to_borrow => V_LOAN_AMOUNT',
'                                                            )',
'    INTO V_RECEIVING_AMOUNT',
'    FROM DUAL;',
'',
'    V_HEADER := ''View Loan Details'';',
'',
'    apex_util.set_session_state(p_name => ''P71_AMOUNT_TO_BORROW'', p_value => V_LOAN_AMOUNT);',
'    apex_util.set_session_state(p_name => ''P71_REPAYMENT_PERIOD'', p_value => V_DURATION);',
'    apex_util.set_session_state(p_name => ''P71_RECEIVING'', p_value => V_RECEIVING_AMOUNT);',
'    apex_util.set_session_state(p_name => ''P71_LOAN_STATUS'', p_value => V_LOAN_STATUS);',
'    apex_util.set_session_state(p_name => ''P71_HEADER'', p_value => V_HEADER);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>64198164275838742
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56755902234929507)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set min and max limits'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    SELECT NVL(MINIMUM_LIMIT, 0), NVL(MAXIMUM_LIMIT, 0)',
'    INTO :P71_MINIMUM_LIMIT, :P71_MAXIMUM_LIMIT',
'    FROM XXMRKT.XXMRKT_PRODUCT_LIST',
'    WHERE COMPANY_cODE = :AP_COMPANY_cODE',
'    AND COMPANY_ID = :P71_COMPANY_ID',
'    AND PRODUCT_ID = :P71_PRODUCT_ID;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>56755902234929507
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66587622221249406)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESS_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW XXMRKT.XXMRKT_APPLIED_LOANS%ROWTYPE;',
'BEGIN',
' SELECT *',
' INTO V_ROW',
' FROM XXMRKT.XXMRKT_APPLIED_LOANS',
' WHERE LOAN_ID = :P71_LOAN_ID',
' AND COMPANY_ID = :P71_COMPANY_ID',
' AND PRODUCT_ID = :P71_PRODUCT_ID',
' AND COMPANY_CODE = :AP_COMPANY_CODE;',
'',
' v_row.LOAN_STATUS := ''CANCELLED'';',
'',
' XXMRKT.XXMRKT_APPLIED_LOANS_API.update_row (',
'    p_row => v_row );',
'    ',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''status'', ''success'');',
'    APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_JSON.OPEN_OBJECT;',
'        APEX_JSON.WRITE(''status'', ''failed'');',
'        APEX_JSON.CLOSE_OBJECT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>66587622221249406
);
wwv_flow_imp.component_end;
end;
/
