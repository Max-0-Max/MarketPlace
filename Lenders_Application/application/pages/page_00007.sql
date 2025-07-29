prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'&P47_SET_ADD_UPDATE.'
,p_alias=>'P47-SET-ADD-UPDATE1'
,p_page_mode=>'MODAL'
,p_step_title=>'&P47_SET_ADD_UPDATE.'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function closeModal(){',
'    apex.navigation.dialog.close(true);',
'    return false;',
'}',
'',
'function validateUser(){',
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
'function successfulUser(msg, title){',
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
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body {',
'font-family: Helvetica;',
'}',
'',
'.top-region{',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'    margin-top: 30px;',
'}',
'',
'',
'.icon-button {',
'  display: flex;',
'  align-items: center; /* Vertically center the icon and text */',
'  padding: 10px 0px 10px 0px;',
'  background: #FFFFFF;',
'  color: #000000;',
'  border: none;',
'  border-radius: 5px;',
'  cursor: pointer;',
'  font-size: 16px;',
'  transition: background-color 0.3s;',
'}',
'',
'',
'.icon {',
'  width: 20px; /* Set the width of the icon */',
'  height: 20px; /* Set the height of the icon */',
'  margin-right: 10px; /* Space between icon and text */',
'}',
'',
'',
'.button-text {',
'  white-space: nowrap; /* Prevent the text from breaking onto a new line */',
'    font-family: Helvetica;',
'    font-size: 16px;',
'    font-weight: 700;',
'    line-height: 18.4px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'}',
'',
'/* Container for positioning the input and icon together */',
'.search-container {',
'  position: relative;',
'  width: 50%;',
'  height: 56px;',
'}',
'',
'',
'/* Styling the input field */',
'.search-input {',
'  width: 100%;',
'  height: 100%;',
'  font-size: 16px;',
'  border: 1px solid #E5E5E5;',
'  border-radius: 4px;',
'  padding: 16px; /* Optional, for extra space on the right */',
'  font-family: Helvetica;',
'    font-size: 16px;',
'    font-weight: 400;',
'    line-height: 18.4px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'        color: #8C8C8C;',
'',
'',
'}',
'',
'/* Styling the search icon */',
'.search-icon {',
'  position: absolute;',
'  right: 10px;  /* Place the icon on the right side */',
'  top: 50%;',
'  transform: translateY(-50%);',
'  width: 20px;  /* Adjust size of the icon */',
'  height: 20px; /* Adjust size of the icon */',
'  cursor: pointer; /* Change cursor to indicate it''s clickable */',
'}',
'',
'/* Border change on focus */',
'.search-input:focus {',
'  border: 1.5px solid #E5E5E5; /* Border color on focus */',
'  outline: none; /* Removes the default browser outline */',
'}',
'',
'',
'/**Add new product **/',
'.add-product-button {',
'      display: inline-flex;',
'      align-items: center;',
'      gap: 6px;',
'      background: none;',
'      border: none;',
'      color: #1A73E8;',
'      font-family: Arial, sans-serif;',
'      font-size: 14px;',
'      font-weight: 600;',
'      cursor: pointer;',
'      padding: 4px 8px;',
'    }',
'',
'    .add-product-button img {',
'      width: 20px;',
'      height: 20px;',
'      border-radius: 4px;',
'    }',
'',
'    .top-region-header{',
'        display: flex;',
'      align-items: center;',
'      font-family: Arial, sans-serif;',
'      font-size: 16px;',
'      font-weight: bold;',
'      color: #000;',
'    }',
'',
'    .back-link {',
'      display: flex;',
'      align-items: center;',
'      gap: 6px;',
'      color: #000;',
'      text-decoration: none;',
'      font-weight: bold;',
'    }',
'',
'    .back-link img {',
'      width: 16px;',
'      height: 16px;',
'    }',
'',
'    .divider {',
'      height: 20px;',
'      border-left: 1px solid #ccc;',
'      margin: 0 12px;',
'    }',
'',
'    .page-title {',
'      font-weight: bold;',
'      padding: 8px 0;',
'    }',
'',
'    .head-text{',
'        font-family: Helvetica;',
'font-weight: 400;',
'font-size: 16px;',
'line-height: 140%;',
'letter-spacing: -1%;',
'color: #24272B;',
'    }',
'',
'       .placeholder{',
'        font-family: Helvetica;',
'font-weight: 400;',
'font-size: 16px;',
'line-height: 100%;',
'letter-spacing: 0%;',
'color: #B5B5B5;',
'',
'    }',
'',
'    .img-t{',
'        border: 1px solid #DDDDDD;',
'        background-color: #DDDDDD;',
'        border-radius: 4px;',
'        width:48px;',
'        height: 48px;',
'        text-align: center;',
'    }',
'',
'    .t-Button-label{',
'font-weight: 700;',
'font-size: 14px;',
'line-height: 100%;',
'letter-spacing: -1%;',
'    }',
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
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140530635047921869)
,p_plug_name=>'&nbsp'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_ID,',
'       USER_NAME,',
'       PASSWORD,',
'       FULL_NAME,',
'       EMAIL_ADDRESS,',
'       COMPANY_CODE,',
'       STATUS,',
'       COMPANY_ID,',
'       COMPANY_TYPE,',
'       MENUS',
'  from XXMRKT.XXMRKT_MARKETPLACE_USERS',
'  where company_code = :AP_COMPANY_CODE'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288510885573772898)
,p_plug_name=>'&nbsp'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(',
'          ''<div class="top-region-header"> ',
'                    <div class="page-title">''||:P7_SET_ADD_UPDATE||''</div>',
'            </div>    ',
'        '');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73403252040234475)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_button_name=>'Create_User'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create User'
,p_button_condition=>'P7_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73403611276234481)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_button_name=>'Update_User'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update User'
,p_button_condition=>'P7_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(73415090084234552)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75568154562060750)
,p_name=>'P7_NEW'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SHUTTLE'
,p_named_lov=>'APPROVER-NAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME AS DISPLAY_VALUE,',
'       USERNAME AS RETURN_VALUE',
'        FROM XXMRKT.XXMRKT_APPROVAL_SETUP ',
'        WHERE COMPANY_ID =:AP_COMPANY_ID',
'        AND COMPANY_CODE= :AP_COMPANY_CODE'))
,p_cHeight=>5
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77992840562441417)
,p_name=>'P7_MENUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_prompt=>'Add Menus'
,p_source=>'MENUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>'STATIC:Report;15,Approvals;9,Company Setup;2,Transactions;14'
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140475108688998018)
,p_name=>'P7_SET_ADD_UPDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    case ',
'        when :P7_USER_ID is null Then',
'            ''Add New User''',
'        else',
'            ''Edit User''',
'    end',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140475417351998021)
,p_name=>'7_P71_ELIGIBILITY_ERR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140483116737998047)
,p_name=>'P7_COMPANY_CAT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(288510885573772898)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140532177712921919)
,p_name=>'P7_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140532253800921920)
,p_name=>'P7_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_prompt=>'User Name'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140532390480921921)
,p_name=>'P7_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_prompt=>'Password'
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>300
,p_begin_on_new_line=>'N'
,p_display_when=>'P7_USER_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140532447326921922)
,p_name=>'P7_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140532617586921923)
,p_name=>'P7_COMPANY_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_source=>'COMPANY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140532650321921924)
,p_name=>'P7_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Disabled',
  'off_value', 'I',
  'on_label', 'Enabled ',
  'on_value', 'A',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141199475131597683)
,p_name=>'P7_COMPANY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_source=>'COMPANY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141199636323597684)
,p_name=>'P7_COMPANY_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_source=>'COMPANY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141200008634597688)
,p_name=>'P7_EMAIL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_item_source_plug_id=>wwv_flow_imp.id(140530635047921869)
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-envelope'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(73411463313234536)
,p_validation_name=>'Validate User'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN XXMRKT.XXMRKT_MARKETPLACE_PKG.validate_user(   p_username => :P7_USER_NAME,',
'                                            p_password => :P7_PASSWORD',
');'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(73403252040234475)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(73411762478234538)
,p_validation_name=>'Check Password'
,p_validation_sequence=>40
,p_validation=>'P7_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Password field cannot be empty'
,p_when_button_pressed=>wwv_flow_imp.id(73403252040234475)
,p_associated_item=>wwv_flow_imp.id(140532390480921921)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(73412111784234540)
,p_validation_name=>'Check Username'
,p_validation_sequence=>50
,p_validation=>'P7_USER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Username field cannot be empty'
,p_when_button_pressed=>wwv_flow_imp.id(73403252040234475)
,p_associated_item=>wwv_flow_imp.id(140532253800921920)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73414024610234545)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73414553830234550)
,p_event_id=>wwv_flow_imp.id(73414024610234545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*apex.util.getTopApex().jQuery(".ui-dialog-content").dialog("option",',
'"title",`<img src="#APP_IMAGES#logo.png" alt="Dialog Title" style="height: 40px;">`);*/',
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
 p_id=>wwv_flow_imp.id(75776278000656734)
,p_name=>'New_1'
,p_event_sequence=>20
,p_condition_element=>'P7_USER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75776324704656735)
,p_event_id=>wwv_flow_imp.id(75776278000656734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(''#P7_USER_NAME'').prop(''readonly'', true);',
'$(''#P7_EMAIL_ADDRESS'').prop(''readonly'', true);',
'  $(''#P7_FULL_NAME'').prop(''readonly'', true);',
'',
'  '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73412411061234540)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save User Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'XXMRKT.XXMRKT_MARKETPLACE_PKG.create_user(  p_username  => :P7_USER_NAME,',
'                                            p_password  => :P7_PASSWORD,',
'                                            p_full_name => :P7_FULL_NAME,',
'                                            p_email_address  => :P7_EMAIL_ADDRESS,',
'                                            p_status    => :P7_STATUS,',
'                                            p_company_id => :P7_COMPANY_ID,',
'                                            p_company_type => :P7_COMPANY_TYPE,',
'                                            p_category => ''USER'',--- Default made to user',
'                                            p_menus    => :P7_MENUS',
'                                        );',
'',
'END;',
'DECLARE',
'    v_user_id NUMBER;',
'BEGIN',
'    SELECT user_id',
'    INTO v_user_id',
'    FROM xxmrkt.xxmrkt_marketplace_users',
'    WHERE user_name = :P7_USER_NAME',
'      AND company_id = :P7_COMPANY_ID;',
'',
'    XXMRKT.XXMRKT_MARKETPLACE_NOTIFICATIONS_PKG.send_account_creation_notif(v_user_id, :P7_PASSWORD);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73403252040234475)
,p_process_success_message=>'Product Successfully Created'
,p_internal_uid=>73412411061234540
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73412882203234543)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update User Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_row XXMRKT.XXMRKT_MARKETPLACE_USERS%ROWTYPE;',
'BEGIN',
'    SELECT *',
'    INTO v_Row ',
'    FROM XXMRKT.XXMRKT_MARKETPLACE_USERS',
'    WHERE COMPANY_cODE = :AP_COMPANY_CODE',
'    AND COMPANY_ID = :P7_COMPANY_ID',
'    AND USER_ID = :P7_USER_ID;',
'    ',
'    v_row.status := :P7_STATUS;',
'    v_row.update_date := sysdate;',
'    v_row.updated_by := :AP_STAFF_ID;',
'    v_row.menus := :P7_MENUS;',
'',
'    XXMRKT.XXMRKT_MARKETPLACE_USERS_API.update_row ( p_row => v_Row );',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        raise_application_Error(-20001, sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73403611276234481)
,p_process_success_message=>'User Successfully Updated'
,p_internal_uid=>73412882203234543
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73413261936234543)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73403252040234475)
,p_internal_uid=>73413261936234543
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73413622054234544)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set session'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P7_COMPANY_CAT = 1 THEN',
'    apex_util.set_session_state(p_name => ''P7_COMPANY_TYPE'', p_value => ''Loan Services'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>73413622054234544
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73410116818234494)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(140530635047921869)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create New  User'
,p_internal_uid=>73410116818234494
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73392590845060004)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_USERS_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  -- Open JSON array',
'  apex_json.open_array;',
'',
'  FOR pro_rec IN (',
'    SELECT user_id,',
'           company_id,',
'           user_name,',
'           full_name,',
'           email_Address,',
'           decode(status, ''A'', ''Enabled'', ''I'', ''Disabled'') status',
'    FROM XXMRKT.XXMRKT_MARKETPLACE_USERS',
'    WHERE COMPANY_ID = :P7_COMPANY_ID',
'    AND COMPANY_CODE = :AP_COMPANY_CODE',
'    AND COMPANY_TYPE = ''Loan Services''',
'    ORDER BY CREATION_DATE DESC',
'  )',
'  LOOP',
'    apex_json.open_object;',
'    apex_json.write(''userId'', pro_rec.user_id);',
'    apex_json.write(''companyID'', pro_rec.company_id);',
'    apex_json.write(''userName'', pro_rec.user_name);',
'    apex_json.write(''emailAddress'', pro_rec.email_Address);',
'    apex_json.write(''fullName'', pro_rec.full_name);',
'    apex_json.write(''status'', pro_rec.status);',
'    apex_json.close_object;',
'  END LOOP;',
'',
'  apex_json.close_array;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    -- Clear previous output (if any)',
'    apex_json.free_output;',
'    ',
'    -- Start fresh JSON error response',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''error'');',
'    apex_json.write(''message'', SQLERRM);',
'    apex_json.close_object;',
'',
'    -- RAISE_APPLICATION_ERROR is optional here; use it to signal error to JavaScript',
'    -- raise_application_error(-20001, SQLERRM);',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>73392590845060004
);
wwv_flow_imp.component_end;
end;
/
