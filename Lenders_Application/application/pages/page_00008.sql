prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Create New Product'
,p_alias=>'CREATE-NEW-PRODUCT'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function closeModal(){',
'    apex.navigation.dialog.close(true);',
'    return false;',
'}',
'',
''))
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
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121992821552536041)
,p_plug_name=>'Product Setup'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_ID,',
'       PRODUCT_NAME,',
'       PRODUCT_TYPE,',
'       INTEREST_RATE,',
'       DEDUCTION_HEADER,',
'       MINIMUM_LIMIT,',
'       CHARGES_TYPE,',
'       CHARGES,',
'       INSFEES_TYPE,',
'       INSURANCE_FEE,',
'       COMPANY_ID,',
'       COMPANY_CODE,',
'       STATUS,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       MAXIMUM_LIMIT,',
'       MINIMUM_REPAYMENT_PERIOD,',
'       MAXIMUM_REPAYMENT_PERIOD',
'  from XXMRKT.XXMRKT_PRODUCT_LIST',
'  where COMPANY_CODE = :AP_COMPANY_cODE'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220863455166465516)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(',
'          ''<div class="top-region-header"> ',
'                    <div class="page-title">''||:P8_SET_ADD_UPDATE||''</div>',
'            </div>    ',
'        '');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72803662513638434)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_button_name=>'Create_Product'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Product'
,p_button_condition=>'P8_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72804054561638437)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_button_name=>'Update_Product'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Product'
,p_button_condition=>'P8_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(72822314800638510)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121990854693536049)
,p_name=>'P8_SET_ADD_UPDATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    case ',
'        when :P8_PRODUCT_ID is null Then',
'            ''Add New Product''',
'        else',
'            ''Edit Product''',
'    end',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121994331218536084)
,p_name=>'P8_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121994461963536085)
,p_name=>'P8_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121994554980536086)
,p_name=>'P8_PRODUCT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Product Type'
,p_source=>'PRODUCT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOAN_TYPES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121994601282536087)
,p_name=>'P8_INTEREST_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Interest Rate'
,p_source=>'INTEREST_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122402324328067738)
,p_name=>'P8_DEDUCTION_HEADER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Deduction Header'
,p_source=>'DEDUCTION_HEADER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME ELEMENT_NAME, ELEMENT_ID ',
'   FROM XXHRMS.XXHRMS_ELEMENTS',
'   WHERE CLASSIFICATION = ''DEDUCTION''',
'   AND STATUS = ''ACTIVE''',
'   AND COMPANY_CODE = :AP_COMPANY_CODE',
'--    AND ELEMENT_ID NOT IN (SELECT DEDUCTION_HEADER',
'--                            FROM XXMRKT_PRODUCT_LISTS',
'--                            WHERE COMPANY_CODE = :AP_COMPANY_cODE)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>500
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122402465767067739)
,p_name=>'P8_MINIMUM_LIMIT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Minimum Limit'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'MINIMUM_LIMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122402501619067740)
,p_name=>'P8_CHARGES_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Charges Type'
,p_source=>'CHARGES_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Amount',
  'off_value', 'Amount',
  'on_label', 'Percentage',
  'on_value', 'Percentage',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122402651002067741)
,p_name=>'P8_CHARGES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Charges'
,p_source=>'CHARGES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122402707039067742)
,p_name=>'P8_INSFEES_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Insurance Fee Type'
,p_source=>'INSFEES_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Amount',
  'off_value', 'Amount',
  'on_label', 'Percentage',
  'on_value', 'Percentage',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122402815691067743)
,p_name=>'P8_INSURANCE_FEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Insurance Fee'
,p_source=>'INSURANCE_FEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122402908031067744)
,p_name=>'P8_COMPANY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_source=>'COMPANY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122402998036067745)
,p_name=>'P8_COMPANY_CODE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_source=>'COMPANY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403111331067746)
,p_name=>'P8_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Inactive',
  'off_value', 'I',
  'on_label', 'Active',
  'on_value', 'A',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403251212067747)
,p_name=>'P8_CREATED_BY_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403304383067748)
,p_name=>'P8_CREATION_DATE_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403449956067749)
,p_name=>'P8_UPDATED_BY_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403554162067750)
,p_name=>'P8_UPDATE_DATE_1'
,p_source_data_type=>'DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403621880067751)
,p_name=>'P8_MAXIMUM_LIMIT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Maximum Limit'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'MAXIMUM_LIMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403707732067752)
,p_name=>'P8_MINIMUM_REPAYMENT_PERIOD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Minimum Repayment Period'
,p_source=>'MINIMUM_REPAYMENT_PERIOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LEVEL ||'' Months'' num1, LEVEL num2',
'FROM dual',
'CONNECT BY LEVEL <= 36;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403817831067753)
,p_name=>'P8_MAXIMUM_REPAYMENT_PERIOD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_item_source_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_prompt=>'Maximum Repayment Period'
,p_source=>'MAXIMUM_REPAYMENT_PERIOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LEVEL ||'' Months'' num1, LEVEL num2',
'FROM dual',
'CONNECT BY LEVEL <= 36;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403899611067754)
,p_name=>'P8_CHARGES_TYPE_CHECK'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122403993454067755)
,p_name=>'P8_INSFEES_TYPE_CHECK'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(121992821552536041)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139890273471402015)
,p_name=>'P8_COMPANY_CAT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(220863455166465516)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(72819483009638497)
,p_validation_name=>'Check Limits'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN XXMRKT.XXMRKT_MARKETPLACE_PKG.check_min_max(   p_min_limit => REGEXP_REPLACE(REGEXP_REPLACE(:P8_MINIMUM_LIMIT, '','', ''''), ''\..*'', ''''),',
'                                               p_max_limit => REGEXP_REPLACE(REGEXP_REPLACE(:P8_MAXIMUM_LIMIT, '','', ''''), ''\..*'', ''''),',
'                                               p_min_rep_period => :P8_MINIMUM_REPAYMENT_PERIOD,',
'                                               p_max_rep_period => :P8_MAXIMUM_REPAYMENT_PERIOD',
');'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72821396531638503)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72821819034638509)
,p_event_id=>wwv_flow_imp.id(72821396531638503)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72819758782638499)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Product Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id NUMBER;',
'BEGIN',
'    SELECT MAX (product_id) ',
'	INTO v_id ',
'	FROM xxmrkt.xxmrkt_product_list;',
'',
'    v_id := NVL (v_id, 0) + 1;',
'    ',
'    xxmrkt.xxmrkt_product_list_api.create_row(   ',
'                                                p_product_id       =>   v_id,',
'                                                p_product_name     =>   :P8_PRODUCT_NAME,',
'                                                p_product_type     =>   :P8_PRODUCT_TYPE,',
'                                                p_interest_rate    =>   :P8_INTEREST_RATE,',
'                                                p_deduction_header =>   null,',
'                                                p_minimum_limit    =>    REGEXP_REPLACE(REGEXP_REPLACE(:P8_MINIMUM_LIMIT, '','', ''''), ''\..*'', ''''),',
'                                                p_charges          =>   :P8_CHARGES,',
'                                                p_insurance_fee    =>   :P8_INSURANCE_FEE,',
'                                                p_company_id       =>   :P8_COMPANY_ID,',
'                                                p_company_code     =>   :AP_cOMPANY_CODE,',
'                                                p_status           =>   :P8_STATUS,',
'                                                p_created_by       =>   :AP_USER_ID,',
'                                                p_creation_date    =>   sysdate,',
'                                                p_updated_by       =>   :AP_USER_ID,',
'                                                p_update_date      =>   sysdate,',
'                                                p_maximum_limit    =>   REGEXP_REPLACE(REGEXP_REPLACE(:P8_MAXIMUM_LIMIT, '','', ''''), ''\..*'', ''''), ',
'                                                p_minimum_repayment_period => :P8_MINIMUM_REPAYMENT_PERIOD,',
'                                                p_maximum_repayment_period => :P8_MAXIMUM_REPAYMENT_PERIOD,',
'                                                p_insfees_type     =>   :P8_INSFEES_TYPE,',
'                                                p_charges_type     =>   :P8_CHARGES_TYPE',
'                                            );',
'',
'    -- Call the email notification procedure after product creation',
' XXMRKT.XXMRKT_MARKETPLACE_NOTIFICATIONS_PKG.send_new_product_admin_notif(v_id);',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        raise_application_Error(-20001, sqlerrm);',
'        ',
'',
'        ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(72803662513638434)
,p_process_success_message=>'Product Successfully Created'
,p_internal_uid=>72819758782638499
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72820597906638502)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Product Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_row XXMRKT.XXMRKT_PRODUCT_LIST%ROWTYPE;',
'BEGIN',
'',
'    SELECT *',
'    INTO v_row ',
'    FROM XXMRKT.XXMRKT_PRODUCT_LIST',
'    WHERE COMPANY_cODE = :AP_COMPANY_CODE',
'    AND COMPANY_ID = :P8_COMPANY_ID',
'    AND PRODUCT_ID = :P8_PRODUCT_ID;',
'',
'    v_row.product_name      := :P8_PRODUCT_NAME;',
'    v_row.product_type      := :P8_PRODUCT_TYPE;',
'    v_row.interest_rate     := :P8_INTEREST_RATE;',
'    v_row.deduction_header  := null;',
'    v_row.minimum_limit     := REGEXP_REPLACE(REGEXP_REPLACE(:P8_MINIMUM_LIMIT, '','', ''''), ''\..*'', '''');',
'    v_row.charges           := :P8_CHARGES;',
'    v_row.insurance_fee     := :P8_INSURANCE_FEE;',
'    v_row.status            := :P8_STATUS;',
'    v_row.maximum_limit     := REGEXP_REPLACE(REGEXP_REPLACE(:P8_MAXIMUM_LIMIT, '','', ''''), ''\..*'', '''');',
'    v_row.minimum_repayment_period  := :P8_MINIMUM_REPAYMENT_PERIOD;',
'    v_row.maximum_repayment_period  := :P8_MAXIMUM_REPAYMENT_PERIOD;',
'    v_row.insfees_type              := :P8_INSFEES_TYPE;',
'    v_row.charges_type              := :P8_CHARGES_TYPE;',
'    v_row.update_date := sysdate;',
'    v_row.updated_by := :AP_USER_ID;',
'',
'    xxmrkt.xxmrkt_product_list_api.update_row(  p_row => v_row',
'                                            );',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        raise_application_Error(-20001, sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(72804054561638437)
,p_process_success_message=>'Product Successfully Updated'
,p_internal_uid=>72820597906638502
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72820993078638502)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(72803662513638434)
,p_internal_uid=>72820993078638502
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72817479922638465)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(121992821552536041)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create New Product'
,p_internal_uid=>72817479922638465
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72820108338638502)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Check Insurance and charges types'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT CHARGES_TYPE, INSFEES_TYPE',
'INTO :P8_CHARGES_TYPE_CHECK, :P8_INSFEES_TYPE_CHECK',
'FROM XXMRKT.XXMRKT_PRODUCT_LIST',
'WHERE COMPANY_cODE = :AP_cOMPANY_cODE',
'AND COMPANY_ID = :P8_COMPANY_ID',
'AND ROWNUM = 1;',
'EXCEPTION',
'    WHEN no_data_found THEN',
'       NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>72820108338638502
);
wwv_flow_imp.component_end;
end;
/
