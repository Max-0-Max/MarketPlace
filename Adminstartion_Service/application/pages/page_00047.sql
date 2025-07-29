prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>'Create User'
,p_alias=>'YH33'
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
 p_id=>wwv_flow_imp.id(78569433940189934)
,p_plug_name=>'Create New User'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_ID,',
'       USER_NAME,',
'       PASSWORD,',
'       FULL_NAME,',
'       COMPANY_CODE,',
'       STATUS,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       INVALID_LOG_CNT,',
'       LAST_INVALID_LOG_TIME,',
'       LAST_LOGIN_TIME,',
'       LOGIN_CNT,',
'       COMPANY_ID,',
'       COMPANY_TYPE,',
'       EMAIL_ADDRESS,',
'       CATEGORY',
'  from XXMRKT.XXMRKT_MARKETPLACE_USERS'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215108241235538465)
,p_plug_name=>'&nbsp '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(',
'          ''<div class="top-region-header"> ',
'                    <div class="page-title">''||:P47_SET_ADD_UPDATE||''</div>',
'            </div>    ',
'        '');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67048555959711360)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_button_name=>'Create_User'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create User'
,p_button_condition=>'P47_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67048953883711365)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_button_name=>'Update_User'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update User'
,p_button_condition=>'P47_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(67066924113711417)
,p_branch_name=>'Go To Page 39'
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67072267587763549)
,p_name=>'P47_COMPANY_CAT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(215108241235538465)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78569684771189936)
,p_name=>'P47_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78569967550189939)
,p_name=>'P47_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>wwv_flow_imp.id(5504520019166737)
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
 p_id=>wwv_flow_imp.id(78570060356189940)
,p_name=>'P47_COMPANY_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'COMPANY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570162187189941)
,p_name=>'P47_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Disabled',
  'off_value', 'I',
  'on_label', 'Enabled',
  'on_value', 'A',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570245768189942)
,p_name=>'P47_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570314308189943)
,p_name=>'P47_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570433579189944)
,p_name=>'P47_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570587851189945)
,p_name=>'P47_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570610156189946)
,p_name=>'P47_INVALID_LOG_CNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'INVALID_LOG_CNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570751203189947)
,p_name=>'P47_LAST_INVALID_LOG_TIME'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'LAST_INVALID_LOG_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570810220189948)
,p_name=>'P47_LAST_LOGIN_TIME'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'LAST_LOGIN_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78570971212189949)
,p_name=>'P47_LOGIN_CNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'LOGIN_CNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78571035007189950)
,p_name=>'P47_COMPANY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'COMPANY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78588928173317601)
,p_name=>'P47_COMPANY_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'COMPANY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78589166652317603)
,p_name=>'P47_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78589258446317604)
,p_name=>'P47_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_prompt=>'User Name'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(5504520019166737)
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
 p_id=>wwv_flow_imp.id(78589389366317605)
,p_name=>'P47_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_prompt=>'Password'
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>300
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78589425574317606)
,p_name=>'P47_EMAIL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_item_source_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_icon_css_classes=>'fa-envelope'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78589559347317607)
,p_name=>'P47_SET_ADD_UPDATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(78569433940189934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67127679075687433)
,p_validation_name=>'Validate User'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN XXMRKT.XXMRKT_MARKETPLACE_PKG.validate_user(   p_username => :P47_USER_NAME,',
'                                            p_password => :P47_PASSWORD',
');'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(67048555959711360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67065965216711413)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67066473298711416)
,p_event_id=>wwv_flow_imp.id(67065965216711413)
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
 p_id=>wwv_flow_imp.id(78589738528317609)
,p_name=>'New_1'
,p_event_sequence=>20
,p_condition_element=>'P47_USER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78589851794317610)
,p_event_id=>wwv_flow_imp.id(78589738528317609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(''#P47_USER_NAME'').prop(''readonly'', true);',
'$(''#P47_EMAIL_ADDRESS'').prop(''readonly'', true);',
'  $(''#P47_FULL_NAME'').prop(''readonly'', true);',
'$(''#P47_PASSWORD'').prop(''readonly'', true);',
'',
'  '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67064384459711404)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save User Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'XXMRKT.XXMRKT_MARKETPLACE_PKG.create_user(  p_username  => :P47_USER_NAME,',
'                                            p_password  => :P47_PASSWORD,',
'                                            p_full_name => :P47_FULL_NAME,',
'                                            p_email_address  => :P47_EMAIL_ADDRESS,',
'                                            p_status    => :P47_STATUS,',
'                                            p_company_id => :P47_COMPANY_ID,',
'                                            p_company_type => :P47_COMPANY_TYPE,',
'                                            p_category => ''ADMIN'',--- Default made to admin',
'                                            p_menus => ''1,2,9,14,15'' -- submit all the menus for admin',
'                                        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(67048555959711360)
,p_process_success_message=>'Product Successfully Created'
,p_internal_uid=>67064384459711404
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67065118238711412)
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
'    AND COMPANY_ID = :P47_COMPANY_ID',
'    AND USER_ID = :P47_USER_ID;',
'    ',
'    v_row.status := :P47_STATUS;',
'    v_row.update_date := sysdate;',
'    v_row.updated_by := :AP_STAFF_ID;',
'',
'    XXMRKT.XXMRKT_MARKETPLACE_USERS_API.update_row ( p_row => v_Row );',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        raise_application_Error(-20001, sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(67048953883711365)
,p_process_success_message=>'User Successfully Updated'
,p_internal_uid=>67065118238711412
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67065515792711412)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(67048555959711360)
,p_internal_uid=>67065515792711412
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67072143061763548)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set session'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P47_COMPANY_CAT = 1 THEN',
'    apex_util.set_session_state(p_name => ''P47_COMPANY_TYPE'', p_value => ''Loan Services'');',
'END IF;',
'',
'IF :P47_USER_ID IS NULL THEN',
'    :P47_SET_ADD_UPDATE := ''Add User'';',
'ELSE',
'    :P47_SET_ADD_UPDATE := ''Edit User'';',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>67072143061763548
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(78569542030189935)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(78569433940189934)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create User'
,p_internal_uid=>78569542030189935
);
wwv_flow_imp.component_end;
end;
/
