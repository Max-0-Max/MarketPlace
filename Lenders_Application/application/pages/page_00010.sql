prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000008
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'PENDING FORM.'
,p_alias=>'P71-HEADER'
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
'  margin: 5px auto;',
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
'.loan-row > div {',
'  flex: 1;',
'  min-width: 150px;',
'  padding: 5px 10px;',
'  box-sizing: border-box;',
'}',
'',
'.user-card {',
'  border: 1px solid #ddd;',
'  border-radius: 8px;',
'  padding: 16px;',
'  max-width: 800px;',
'  background: #fff;',
'}',
'',
'.user-details {',
'  display: flex;',
'  flex-direction: column;',
'  gap: 16px;',
'}',
'',
'.user-row {',
'  display: flex;',
'  gap: 16px;',
'  justify-content: space-between;',
'  flex-wrap: wrap;',
'}',
'',
'.user-row > div {',
'  flex: 1 1 30%;',
'  min-width: 150px;',
'}',
'',
'small {',
'  color: #555;',
'  font-size: 12px;',
'}',
'',
'strong {',
'  display: block;',
'  font-size: 14px;',
'  margin-top: 4px;',
'  color: #333;',
'}',
'',
'',
'small {',
'  color: #555;',
'  font-size: 12px;',
'  text-transform: uppercase;',
'  letter-spacing: 0.5px;',
'}',
'',
'strong {',
'  display: block;',
'  font-size: 16px;',
'  color: #333;',
'  margin-top: 4px;',
'}',
'',
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
'/* .a-AlertMessage{',
'    padding: 25px;',
'} */',
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
'.light-p{',
'    styleName: Text sm/Regular;',
'    font-family: Helvetica;',
'    font-size: 14px;',
'    font-weight: 400;',
'    line-height: 20px;',
'    text-align: left;',
'    padding-top: 3px;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'    color: #667085;',
'}',
'',
'.dark-p{',
'    font-family: Helvetica;',
'    font-size: 16px;',
'    font-weight: 700;',
'    line-height: 28px;',
'    padding-top: 7px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'    color: #101828;',
'}',
'',
'.inner{',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'    width: 100%;',
'}',
'',
'.left-img,',
'.right-img {',
'  max-width: 50px; /* Adjust size as needed */',
'  height: auto;',
'}',
'',
'.t-Alert--success {',
'  background-color: #1a1a2e !important;',
'  color: #f0f0f0 !important;',
'  font-family: Helvetica;',
'  font-size: 16px;',
'  text-align: center;',
'}',
''))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73396811894060047)
,p_plug_name=>'Users Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_FIRST_NAME       XXHRMS.XXHRMS_PEOPLE.FIRST_NAME%TYPE;',
'    V_LAST_NAME        XXHRMS.XXHRMS_PEOPLE.LAST_NAME%TYPE;',
'    V_GENDER           XXHRMS.XXHRMS_PEOPLE.SEX%TYPE;',
'    V_DATE_OF_BIRTH    VARCHAR2(255);',
'    V_EMAIL            XXHRMS.XXHRMS_PEOPLE.EMAIL%TYPE;',
'    V_TELEPHONE_NUMBER XXHRMS.XXHRMS_PEOPLE.TELEPHONE1%TYPE;',
'    V_HIRE_DATE        VARCHAR2(255);',
'    v_ACCOUNT_NUMBER   VARCHAR2(255);',
'BEGIN',
'    BEGIN',
'        SELECT',
'            p.FIRST_NAME,',
'            p.LAST_NAME,',
'            p.SEX,',
'            TO_CHAR(p.BIRTH_DATE, ''Day, DD Month YYYY''),',
'            p.EMAIL,',
'            p.TELEPHONE1,',
'            TO_CHAR(a.HIRE_DATE, ''Day, DD Month YYYY''),',
'            a.ACC_NO',
'        INTO',
'            V_FIRST_NAME,',
'            V_LAST_NAME,',
'            V_GENDER,',
'            V_DATE_OF_BIRTH,',
'            V_EMAIL,',
'            V_TELEPHONE_NUMBER,',
'            V_HIRE_DATE,',
'            V_ACCOUNT_NUMBER',
'        FROM XXMRKT.XXMRKT_APPLIED_LOANS d',
'        JOIN XXHRMS.XXHRMS_PEOPLE p ON d.STAFF_ID = p.PERSON_ID',
'        JOIN XXHRMS.XXHRMS_ASSIGNMENTS a ON p.PERSON_ID = a.PERSON_ID',
'        WHERE d.LOAN_ID = :P10_LOAN_ID',
'        AND a.COMPANY_CODE = :AP_COMPANY_CODE',
'        AND ROWNUM = 1;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'',
'    -- Generate the HTML Response',
'    RETURN ',
' ''<div class="loan-card">',
'  <div class="loan-details">',
'  ',
'    <div class="loan-row">',
'      <div>',
'        <small>First Name</small><br>',
'        <strong>'' || NVL(initcap(V_FIRST_NAME), ''N/A'') || ''</strong>',
'      </div>',
'      <div>',
'        <small>Last Name</small><br>',
'        <strong>'' || NVL(initcap(V_LAST_NAME), ''N/A'') || ''</strong>',
'      </div>',
'      <div>',
'        <small>Gender</small><br>',
'        <strong>'' || NVL(initcap(V_GENDER), ''N/A'') || ''</strong>',
'      </div>',
'    </div>',
'    ',
'    <div class="loan-row">',
'      <div>',
'        <small>Phone Number</small><br>',
'        <strong>'' || NVL(V_TELEPHONE_NUMBER, ''N/A'') || ''</strong>',
'      </div>',
'      <div>',
'        <small>Date of Birth</small><br>',
'        <strong>'' || NVL(V_DATE_OF_BIRTH, ''N/A'') || ''</strong>',
'      </div>',
'      <div>',
'        <small>Hire Date</small><br>',
'        <strong>'' || NVL(V_HIRE_DATE, ''N/A'') || ''</strong>',
'      </div>',
'    </div>',
'',
'    <div class="loan-row">',
'      <div>',
'        <small>Account Number</small><br>',
'        <strong>'' || NVL(V_ACCOUNT_NUMBER, ''N/A'') || ''</strong>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'',
'',
''';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127541345209739157)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(280711842890625508)
,p_plug_name=>'Loans Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_LOAN_TYPE VARCHAR2(100);',
'    V_AMOUNT VARCHAR2(100);',
'    V_START_DATE VARCHAR2(100);',
'    V_END_DATE VARCHAR2(100);',
'    V_DURATION VARCHAR2(20);',
'    V_DEDUC VARCHAR2(100);',
'BEGIN',
'	 SELECT ',
'		c.loan_type,',
'		to_char(b.loan_amount, ''999G999G999G999G990D00'') loan_amount,',
'		to_char(B.start_date, ''Day, DD Month YYYY''),',
'		to_char(B.end_date, ''Day, DD Month YYYY''),',
'		b.duration,',
'        to_char(xxmrkt.xxmrkt_marketplace_pkg.calc_curr_loan_amount(b.loan_amount, d.interest_rate, b.duration),''999G999G999G999G990D00'') monthly_deduction',
'	INTO V_LOAN_TYPE,',
'		 V_AMOUNT,',
'		 V_START_DATE,',
'		 V_END_DATE,',
'		 V_DURATION,',
'         V_DEDUC',
'	FROM ',
'		XXHRMS.XXHRMS_PEOPLE a',
'	JOIN ',
'		XXMRKT.XXMRKT_APPLIED_LOANS b',
'		ON a.person_id = b.staff_id',
'	JOIN ',
'		XXMRKT.XXMRKT_PRODUCT_LIST d',
'		ON b.product_id = d.product_id',
'	JOIN ',
'		XXMRKT.XXMRKT_LOAN_TYPES c',
'		ON d.product_type = c.loan_type_id',
'	JOIN ',
'		XXMRKT.XXMRKT_LOAN_STATUS e',
'		ON e.loan_id = b.loan_id',
'	WHERE ',
'		b.company_id = :AP_COMPANY_ID',
'		AND b.company_code = :AP_COMPANY_CODE',
'		AND E.APPROVAL_LEVEL = :AP_LEVEL',
'	   and b.loan_id = :P10_LOAN_ID',
'	   -- and e.disbursed_status = ''PENDING'' OR E.DISBURSED_STATUS = ''DISBURSED''',
'	ORDER BY ',
'		b.creation_date DESC;',
'RETURN',
'        ''<div class="loan-card">',
'          <div class="loan-header">',
'            <img src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||:AP_COMPANY_ID||''" alt="Loan Icon" class="loan-icon">',
'            <h3>''||:P10_HEADER||''</h3>',
'          </div>',
'',
'          <div class="loan-details">',
'            <div class="loan-row">',
'              <div>',
'                <small>Loan Type</small><br>',
'                <strong>''||V_LOAN_TYPE||''</strong>',
'              </div>',
'              <div>',
'                <small>Start Date</small><br>',
'                <strong>''||V_START_DATE||''</strong>',
'              </div>',
'              <div>',
'                <small>End Date</small><br>',
'                <strong>''||V_END_DATE||''</strong>',
'              </div>',
'            </div>',
'',
'            <div class="loan-row">',
'              <div>',
'                <small>Principal</small><br>',
unistr('                <strong>\20A6''||V_AMOUNT||''</strong>'),
'              </div>',
'              <div>',
'                <small>Monthly Deduction</small><br>',
unistr('                <strong>\20A6''||V_DEDUC||''</strong>'),
'              </div>',
'              <div>',
'                <small>Duration</small><br>',
'                <strong>''||V_DURATION||'' Months</strong>',
'              </div>',
'            </div>',
'          </div>',
'        </div>',
'        '';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P10_LOAN_ID'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73769917976894793)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_button_name=>'Apply'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply For Loan'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P10_LOAN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73769512877894790)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_button_name=>'Cancel_Loan'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel Loan'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P10_LOAN_ID IS NOT NULL AND :P10_LOAN_STATUS = ''Initiated'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74163130816954913)
,p_button_sequence=>130
,p_button_name=>'approve_take_action'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Take Action'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'AP_LEVEL'
,p_button_condition2=>'5'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77991912600441408)
,p_button_sequence=>150
,p_button_name=>'disburse_take_action'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Take Action'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'AP_LEVEL'
,p_button_condition2=>'5'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73396930792060048)
,p_name=>'P10_USER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(280711842890625508)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74163059968954912)
,p_name=>'P10_APPROVAL'
,p_item_sequence=>80
,p_prompt=>'APPROVE/ DENY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:APPROVE;Approve,DENY;Deny'
,p_cHeight=>1
,p_display_when=>'AP_LEVEL'
,p_display_when2=>'5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74163519928954917)
,p_name=>'P10_LEVEL_STATUS'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74164573908954927)
,p_name=>'P10_MESSAGE'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77991331531441402)
,p_name=>'P10_MANAGE_APPROVAL'
,p_item_sequence=>110
,p_item_default=>'Approve'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77991694120441405)
,p_name=>'P10_DONE_APPROVAL'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77991862306441407)
,p_name=>'P10_DISBURSE'
,p_item_sequence=>90
,p_prompt=>'DISBURSE/ DENY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:DISBURSE;Disburse,DENY;Deny'
,p_cHeight=>1
,p_display_when=>'AP_LEVEL'
,p_display_when2=>'5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127542933403739199)
,p_name=>'P10_REPAYMENT_PERIOD'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_prompt=>'<p class="input-loan">Select Repayment Period </p>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LEVEL || '' Months'' AS num1, LEVEL AS num2',
'FROM dual',
'CONNECT BY LEVEL <= :P10_MAXIMUM_REPAYMENT_PERIOD',
'MINUS',
'SELECT LEVEL || '' Months'' AS num1, LEVEL AS num2',
'FROM dual',
'CONNECT BY LEVEL < :P10_MINIMUM_REPAYMENT_PERIOD;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'P10_LOAN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127542970598739200)
,p_name=>'P10_AMOUNT_TO_BORROW'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_prompt=>'<p class="input-loan">Enter Amount To Borrow</p>'
,p_pre_element_text=>unistr('<span class="input-group-text">\20A6</span>')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when=>'P10_LOAN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127543057669739201)
,p_name=>'P10_RECEIVING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_prompt=>'<p class="input-loan">Receiving Amount</p>'
,p_pre_element_text=>unistr('<span class="input-group-text">\20A6</span>')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_read_only_when=>'P10_LOAN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127543434869739204)
,p_name=>'P10_MINIMUM_REPAYMENT_PERIOD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     MINIMUM_REPAYMENT_PERIOD ',
'    FROM  XXMRKT.XXMRKT_PRODUCT_LIST',
'    WHERE COMPANY_ID = :P10_COMPANY_ID',
'    AND COMPANY_cODE = :AP_COMPANY_CODE',
'    AND PRODUCT_ID = :P10_PRODUCT_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127543495027739205)
,p_name=>'P10_MAXIMUM_REPAYMENT_PERIOD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     MAXIMUM_REPAYMENT_PERIOD ',
'    FROM  XXMRKT.XXMRKT_PRODUCT_LIST',
'    WHERE COMPANY_ID = :P10_COMPANY_ID',
'    AND COMPANY_cODE = :AP_COMPANY_CODE',
'    AND PRODUCT_ID = :P10_PRODUCT_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127546460612739228)
,p_name=>'P10_COMPANY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(280711842890625508)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127546572972739229)
,p_name=>'P10_PRODUCT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(280711842890625508)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127547258932739243)
,p_name=>'P10_RECEIVING_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130525755337824295)
,p_name=>'P10_MINIMUM_LIMIT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130525861767824296)
,p_name=>'P10_MAXIMUM_LIMIT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130526659666824304)
,p_name=>'P10_ELIGIBILITY_ERR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137968569667733536)
,p_name=>'P10_LOAN_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137969120473733541)
,p_name=>'P10_LOAN_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137973165353733575)
,p_name=>'P10_HEADER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(280711842890625508)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140358253112144202)
,p_name=>'P10_ACTION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(127541345209739157)
,p_item_default=>'apply'
,p_source=>'apply'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140846272891658372)
,p_name=>'P10_COMPANY_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(280711842890625508)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(73775794295894832)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>':P10_AMOUNT_TO_BORROW < :P10_MINIMUM_LIMIT'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Amount is not correct'
,p_when_button_pressed=>wwv_flow_imp.id(73769917976894793)
,p_associated_item=>wwv_flow_imp.id(127542970598739200)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73779699657894843)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73780110891894843)
,p_event_id=>wwv_flow_imp.id(73779699657894843)
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
 p_id=>wwv_flow_imp.id(73781407295894845)
,p_name=>'Set Receiving Value'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_AMOUNT_TO_BORROW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73782449964894845)
,p_event_id=>wwv_flow_imp.id(73781407295894845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set Receiving Value'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'var input = $v(''P10_AMOUNT_TO_BORROW''); // get current input value',
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
'$s(''P10_AMOUNT_TO_BORROW'', formatted);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73782904070894846)
,p_event_id=>wwv_flow_imp.id(73781407295894845)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Set Receiving Value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_RECEIVING_1'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN XXMRKT.XXMRKT_MARKETPLACE_PKG.calculate_receiving_amount(    ',
'                                                                p_company_id => :P10_COMPANY_ID,',
'                                                                p_product_id => :P10_PRODUCT_ID,',
'                                                                p_amount_to_borrow => :P10_AMOUNT_TO_BORROW',
'                                                            );'))
,p_attribute_07=>'P10_AMOUNT_TO_BORROW,P10_PRODUCT_ID,P10_COMPANY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73781913732894845)
,p_event_id=>wwv_flow_imp.id(73781407295894845)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Set Receiving Value'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_RECEIVING,P10_RECEIVING_1'
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
'var input = $v(''P10_RECEIVING_1''); // get current input value',
'if (!input) return;',
'',
'// Remove all non-digit characters except decimal point if needed',
'var clean = sanitizeNumber(input) //input.replace(/[^0-9]/g, '''');',
'',
'// Format number with thousands separator',
'var formatted = clean.replace(/\B(?=(\d{3})+(?!\d))/g, ",");',
'',
'// Set formatted value back to the item',
'$s(''P10_RECEIVING'', " ");',
'',
'// Set formatted value back to the item',
'$s(''P10_RECEIVING'', formatted);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73783454585894846)
,p_event_id=>wwv_flow_imp.id(73781407295894845)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_RECEIVING'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73777220010894837)
,p_name=>'submit loan'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73769917976894793)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73777784665894841)
,p_event_id=>wwv_flow_imp.id(73777220010894837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_ELIGIBILITY_ERR'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN XXMRKT.XXMRKT_MARKETPLACE_PKG.check_eligibility(p_amount     => :P10_AMOUNT_TO_BORROW, ',
'                                                       p_duration   => :P10_REPAYMENT_PERIOD,',
'                                                       p_company_id => :P10_COMPANY_ID,',
'                                                       p_product_id => :P10_PRODUCT_ID',
'                                                       );'))
,p_attribute_07=>'P10_AMOUNT_TO_BORROW,P10_REPAYMENT_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73778261091894842)
,p_event_id=>wwv_flow_imp.id(73777220010894837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let msg = $v(''P10_ELIGIBILITY_ERR'');',
'if (msg != ''''){',
'        validateLoan();',
'}else{',
'    successfulLoan(''Congratulations!!! Loan Successfully Submitted'',''Loan Application Successful!!!'' );',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73778723716894842)
,p_event_id=>wwv_flow_imp.id(73777220010894837)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_cnt NUMBER;',
'BEGIN',
'    XXMRKT.XXMRKT_MARKETPLACE_PKG.create_loan(    p_amount_to_borrow  => :P10_AMOUNT_TO_BORROW,',
'                                                  p_repayment_period  => :P10_REPAYMENT_PERIOD,',
'                                                  p_receiving_amount  => :P10_RECEIVING,',
'                                                  p_product_id        => :P10_PRODUCT_ID,',
'                                                  p_company_id        => :P10_COMPANY_ID',
'    );',
'END;'))
,p_attribute_02=>'P10_COMPANY_ID,P10_PRODUCT_ID,P10_AMOUNT_TO_BORROW,P10_REPAYMENT_PERIOD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P10_ELIGIBILITY_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73779252225894843)
,p_event_id=>wwv_flow_imp.id(73777220010894837)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P10_COMPANY_ID,P10_PRODUCT_ID'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P10_ELIGIBILITY_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73780589185894844)
,p_name=>'cancel loan'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73769512877894790)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73781081337894844)
,p_event_id=>wwv_flow_imp.id(73780589185894844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'confirmCancelLoan()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74164235489954924)
,p_name=>'New_1'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74163130816954913)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75777250187656744)
,p_event_id=>wwv_flow_imp.id(74164235489954924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-family: Helvetica;',
'font-weight: 700;',
'font-size: 15px;',
'leading-trim: NONE;',
'line-height: 28px;',
'letter-spacing: 0%;',
'color: #101828;',
'">Are you sure you want to &P10_APPROVAL. this loan?</span>'))
,p_attribute_02=>'<span style="font-family: Helvetica; font-weight: 400; font-size: 14px; leading-trim: NONE; line-height: 20px; letter-spacing: 0%;color: #667085;">Confirm Loan Approval</span>'
,p_attribute_03=>'information'
,p_attribute_06=>'Yes, Confirm'
,p_attribute_07=>'No, Cancel'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75777351714656745)
,p_event_id=>wwv_flow_imp.id(74164235489954924)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_max_level   NUMBER;',
'BEGIN',
'  -- Process loan approval',
'  XXMRKT.XXMRKT_MARKETPLACE_PKG.process_loan_approval(',
'    p_action      => UPPER(:P10_APPROVAL),',
'    p_loan_id     => :P10_LOAN_ID,',
'    p_level       => :AP_LEVEL,',
'    p_company_id  => :AP_COMPANY_ID,',
'    p_user_id     => :AP_USER_ID',
'  );',
'',
'  -- Get the maximum approval level for this company',
'  SELECT MAX(approval_level)',
'    INTO v_max_level',
'    FROM XXMRKT.xxmrkt_approval_setup',
'   WHERE company_id = :AP_COMPANY_ID;',
'',
'  --  If action is APPROVED and more levels exist, notify next approver',
'  IF UPPER(:P10_APPROVAL) = ''APPROVED'' AND :AP_LEVEL < v_max_level THEN',
'    XXMRKT.XXMRKT_MARKETPLACE_NOTIFICATIONS_PKG.send_applied_loan_approvers_notif(',
'      p_loan_id => :P10_LOAN_ID,',
'      p_user    => :AP_USER_ID',
'    );',
'  END IF;',
'',
'  -- Notify applicant when:',
'  IF (:AP_LEVEL = 1 AND UPPER(:P10_APPROVAL) = ''APPROVED'') OR',
'     UPPER(:P10_APPROVAL) = ''DENIED'' OR',
'     (:AP_LEVEL = 5 AND UPPER(:P10_DISBURSE) IN (''DISBURSED'', ''DENIED'')) THEN',
'',
'    XXMRKT.XXMRKT_MARKETPLACE_NOTIFICATIONS_PKG.send_loan_status_user_notif(',
'      p_loan_id => :P10_LOAN_ID,',
'      p_status  => COALESCE(:P10_DISBURSE, :P10_APPROVAL)',
'    );',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P10_LOAN_ID,P10_APPROVAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82400092027505212)
,p_event_id=>wwv_flow_imp.id(74164235489954924)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P10_APPROVAL = ''Approve'' THEN',
'       :P10_DONE_APPROVAL := ''Approved'';',
'    ELSE ',
'       :P10_DONE_APPROVAL := ''Denied'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P10_APPROVAL'
,p_attribute_03=>'P10_DONE_APPROVAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75777452604656746)
,p_event_id=>wwv_flow_imp.id(74164235489954924)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-family: Helvetica;',
'font-weight: 400;',
'font-style: Regular;',
'font-size: 16px;',
'leading-trim: NONE;',
'line-height: 100%;',
'letter-spacing: 0%;',
'text-align: center;',
'color: #32373B;',
'">Loan has been &P10_DONE_APPROVAL. successfully</span>'))
,p_attribute_03=>'information'
,p_attribute_06=>'Close'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75777546594656747)
,p_event_id=>wwv_flow_imp.id(74164235489954924)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P10_LOAN_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77992018118441409)
,p_name=>'New_2'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77991912600441408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77992222420441411)
,p_event_id=>wwv_flow_imp.id(77992018118441409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-family: Helvetica;',
'font-weight: 700;',
'font-size: 15px;',
'leading-trim: NONE;',
'line-height: 28px;',
'letter-spacing: 0%;',
'color: #101828;',
'">Are you sure you want to &P10_DISBURSE. this loan?</span>'))
,p_attribute_02=>'<span style="font-family: Helvetica; font-weight: 400; font-size: 14px; leading-trim: NONE; line-height: 20px; letter-spacing: 0%;color: #667085;">Confirm Loan Disbursement</span>'
,p_attribute_03=>'information'
,p_attribute_06=>'Yes, Confirm'
,p_attribute_07=>'No, Cancel'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77992397786441412)
,p_event_id=>wwv_flow_imp.id(77992018118441409)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXMRKT.XXMRKT_MARKETPLACE_PKG.process_loan_approval(',
'    p_action      => UPPER(:P10_DISBURSE),',
'    p_loan_id     => :P10_LOAN_ID,',
'    p_level       => :AP_LEVEL,',
'    p_company_id  => :AP_COMPANY_ID,',
'    p_user_id     => :AP_USER_ID',
'  );',
'END;',
'',
'',
''))
,p_attribute_02=>'P10_LOAN_ID,P10_DISBURSE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82399663090505208)
,p_event_id=>wwv_flow_imp.id(77992018118441409)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P10_DISBURSE = ''Disburse'' THEN',
'       :P10_DONE_APPROVAL := ''Disbursed'';',
'    ELSE ',
'       :P10_DONE_APPROVAL := ''Denied'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P10_DISBURSE'
,p_attribute_03=>'P10_DONE_APPROVAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77992438175441413)
,p_event_id=>wwv_flow_imp.id(77992018118441409)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-family: Helvetica;',
'font-weight: 400;',
'font-style: Regular;',
'font-size: 16px;',
'leading-trim: NONE;',
'line-height: 100%;',
'letter-spacing: 0%;',
'text-align: center;',
'color: #32373B;',
'">Loan has been &P10_DONE_APPROVAL. successfully</span>'))
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77992505490441414)
,p_event_id=>wwv_flow_imp.id(77992018118441409)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P10_LOAN_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73776464554894835)
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
'    WHERE LOAN_ID = :P10_LOAN_ID',
'    AND COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'    SELECT  XXMRKT.XXMRKT_MARKETPLACE_PKG.calculate_receiving_amount(    ',
'                                                                p_company_id => :P10_COMPANY_ID,',
'                                                                p_product_id => :P10_PRODUCT_ID,',
'                                                                p_amount_to_borrow => V_LOAN_AMOUNT',
'                                                            )',
'    INTO V_RECEIVING_AMOUNT',
'    FROM DUAL;',
'',
'  --  V_HEADER := ''View Loan Details'';',
'',
'    apex_util.set_session_state(p_name => ''P10_AMOUNT_TO_BORROW'', p_value => V_LOAN_AMOUNT);',
'    apex_util.set_session_state(p_name => ''P10_REPAYMENT_PERIOD'', p_value => V_DURATION);',
'    apex_util.set_session_state(p_name => ''P10_RECEIVING'', p_value => V_RECEIVING_AMOUNT);',
'    apex_util.set_session_state(p_name => ''P10_LOAN_STATUS'', p_value => V_LOAN_STATUS);',
'   -- apex_util.set_session_state(p_name => ''P10_HEADER'', p_value => V_HEADER);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>73776464554894835
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73776070871894834)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set min and max limits'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    SELECT NVL(MINIMUM_LIMIT, 0), NVL(MAXIMUM_LIMIT, 0)',
'    INTO :P10_MINIMUM_LIMIT, :P10_MAXIMUM_LIMIT',
'    FROM XXMRKT.XXMRKT_PRODUCT_LIST',
'    WHERE COMPANY_cODE = :AP_COMPANY_cODE',
'    AND COMPANY_ID = :P10_COMPANY_ID',
'    AND PRODUCT_ID = :P10_PRODUCT_ID;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN ',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>73776070871894834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74163984626954921)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXMRKT.XXMRKT_MARKETPLACE_PKG.process_loan_approval(',
'    p_action      => UPPER(:P10_APPROVAL),',
'    p_loan_id     => :P10_LOAN_ID,',
'    p_level       => :AP_LEVEL,',
'    p_company_id  => :AP_COMPANY_ID,',
'    p_user_id     => :AP_USER_ID',
'  );',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(74163130816954913)
,p_internal_uid=>74163984626954921
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73776859303894836)
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
' WHERE LOAN_ID = :P10_LOAN_ID',
' AND COMPANY_ID = :P10_COMPANY_ID',
' AND PRODUCT_ID = :P10_PRODUCT_ID',
' AND COMPANY_CODE = :AP_COMPANY_CODE;',
'',
' v_row.LOAN_STATUS := ''Canceled'';',
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
,p_internal_uid=>73776859303894836
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74164802010954930)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74164802010954930
);
wwv_flow_imp.component_end;
end;
/
