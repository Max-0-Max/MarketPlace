prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'Request Details'
,p_alias=>'AZ1'
,p_step_title=>'Request Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' let showAlert = (message) => {',
'         $(''#R25368015977547902'').prepend(',
'         `<div id="errors" class="alert alert-danger" role="alert" style="margin-top: 20px; margin-bottom: 20px; padding: 20px;">',
'            <strong>Oh snap!</strong> ${message}',
'         </div>`',
'         );',
'    };',
'',
'',
'    let hideAlert = (message) => {',
'      if($(''#errors'').length){',
'         $(''#errors'').remove();',
'      };',
'    };',
'',
'    let showError = (field_name) => {',
'        $(`#h_${field_name}`).css(''color'', "red");',
'    }',
'',
'    let hideError = (field_name) => {',
'        $(`#h_${field_name}`).css(''color'', "green");',
'    }',
'',
'       let validate = (field_name) => {',
'',
'        //jquery element',
'        let fieldElem = $(`[name=${field_name}]`);',
'        //hide field error is exists',
'        hideError(field_name);',
'',
'        if ( fieldElem.is("input") && fieldElem.attr(''type'') == ''text'') {',
'            ',
'            // let text_value = fieldElem.val();',
'',
'            // //if empty',
'            // if(!text_value){',
'            //     return false;',
'            // }',
'',
'            //field 3 is phone number, let''s validate phone number',
'        ',
'',
'        } else if ( fieldElem.is("input") && fieldElem.attr(''type'') == ''radio'' && !fieldElem.is(":checked") ) {',
'            return false;',
'        } else if ( fieldElem.is("input") && fieldElem.attr(''type'') == ''checkbox'' && !fieldElem.is(":checked") ) {',
'            return false;',
'        } else if (fieldElem.is("select") && !fieldElem.val()) {',
'            return false;',
'        } else if (fieldElem.is("textarea") && !fieldElem.val()) {',
'           return false;',
'        } else {',
'        //means no error',
'          return true;',
'        }',
'};',
'',
'',
'function show_notification0(Msg){  ',
'      apex.message.showPageSuccess(Msg); ',
'',
'       /*8 $(''#t_Alert_Success'').attr(''style'',''background-color: rgb(50,205,50);'');',
'        $(''.t-Alert-title'').attr(''style'',''color: black;font-weight: bold;'');',
'        $(''#t_Alert_Success div div.t-Alert-icon span'').removeClass(''t-Icon'').addClass(''fa fa-ban fa-2x fa-anim-flash fam-x fam-is-danger'');',
'        $(''#t_Alert_Success  div div.t-Alert-icon span'').attr(''style'',''color: black'');*/',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(() => {',
'',
'    //handle on change events',
'    $(''form #custom-form'').find(''select, textarea, input'').change(function(e){',
'',
'        let field_name = $(this).attr(''name'');',
'',
'         //run vaidation ',
'        if(!validate(field_name)){',
'            //if validation fails',
'',
'            showError(field_name);',
'        }else{',
'            //if validation passes',
'            hideError(field_name);',
'',
'        }',
'    });',
'});',
'',
'',
'/*jQuery(function(){',
'    if (localStorage.input) {',
'        var checks = JSON.parse(localStorage.input);',
'        jQuery('':checkbox'').prop(''checked'', function(i) {',
'            return checks[i];',
'        });',
'    }',
'});',
'',
'jQuery('':checkbox'').on(''change'', function() {',
'    localStorage.input = JSON.stringify(jQuery('':checkbox'').map(function() {',
'        return this.checked;',
'    }).get());',
'});*/'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#rejected_info{',
'        TEXT-ALIGN: CENTER;',
'    BACKGROUND-COLOR: darkred;',
'    COLOR: aliceblue !important;',
'}',
'',
'#approved_info{',
'        TEXT-ALIGN: CENTER;',
'    BACKGROUND-COLOR: green;',
'    COLOR: aliceblue !important;',
'}',
'',
'',
'',
'',
'#rejected_info{',
'        TEXT-ALIGN: CENTER;',
'    BACKGROUND-COLOR: darkred;',
'    COLOR: aliceblue !important;',
'}',
'',
'#custom-form {',
'  font-size: 1.2em;',
'    --background-color:rgb(18, 112, 159);',
'    --color:white;',
'     display: inline-block;',
'  position: relative;',
'}',
'.form-group{',
'    padding: 10px 5px;',
'}',
'',
'.form-check-input{',
'    position: absolute;',
'    height: 20px;',
'  width: 20px;',
'    background-color: #eee;',
'    border: 1px solid grey;',
'}',
'',
'.form-check-input: hover{',
'     background-color: #ccc;',
'}',
'',
'.form-check-label{',
'    font-size: 14px;',
'      height: 25px;',
'  width: 25px;',
'    margin-left: 40px;',
'}',
'',
'',
'',
'/* Customize the label (the container) */',
'.container-t {',
'  display: block;',
'  position: relative;',
'  padding-left: 35px;',
'  margin-bottom: 12px;',
'  cursor: pointer;',
'  /*font-size: 22px;*/',
'  -webkit-user-select: none;',
'  -moz-user-select: none;',
'  -ms-user-select: none;',
'  user-select: none;',
'}',
'',
'/* Hide the browser''s default checkbox */',
'.container-t input {',
'  position: absolute;',
'  opacity: 0;',
'  cursor: pointer;',
'  height: 0;',
'  width: 0;',
'}',
'',
'/* Create a custom checkbox */',
'.checkmark {',
'  position: absolute;',
'  top: 0;',
'  left: 0;',
'  height: 25px;',
'  width: 25px;',
'  background-color: #eee;',
'}',
'',
'/* On mouse-over, add a grey background color */',
'.container:hover input ~ .checkmark {',
'  background-color: #ccc;',
'}',
'',
'/* When the checkbox is checked, add a blue background */',
'.container input:checked ~ .checkmark {',
'  background-color: #2196F3;',
'}',
'',
'/* Create the checkmark/indicator (hidden when not checked) */',
'.checkmark:after {',
'  content: "";',
'  position: absolute;',
'  display: none;',
'}',
'',
'/* Show the checkmark when checked */',
'.container input:checked ~ .checkmark:after {',
'  display: block;',
'}',
'',
'/* Style the checkmark/indicator */',
'.container .checkmark:after {',
'  left: 9px;',
'  top: 5px;',
'  width: 5px;',
'  height: 10px;',
'  border: solid white;',
'  border-width: 0 3px 3px 0;',
'  -webkit-transform: rotate(45deg);',
'  -ms-transform: rotate(45deg);',
'  transform: rotate(45deg);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15699592090272538)
,p_plug_name=>'Approved Request'
,p_region_name=>'approved_info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<span style="color:#fff!IMPORTANT;">THIS REQUEST HAS BEEN APPROVED!</span>'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXHRMS.XXHRMS_APPROVAL_TAB',
'where STATUS=''APPROVED'' AND ID=:P17_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26525005378400320)
,p_plug_name=>'Rejected Request'
,p_region_name=>'rejected_info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<span style="color:#fff!IMPORTANT;">THIS REQUEST HAS BEEN REJECTED!</span>'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXHRMS.XXHRMS_APPROVAL_TAB',
'where STATUS=''REJECTED'' AND ID=:P17_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26560569018561096)
,p_plug_name=>'Request Details'
,p_icon_css_classes=>'fa-bullseye'
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
 p_id=>wwv_flow_imp.id(33352241592631730)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P17_STATUS != ''PENDING''',
'and :P17_ACTION != ''LEAVE'''))
,p_plug_read_only_when2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26914502669688007)
,p_name=>'Travel Request Detail'
,p_region_name=>'voucher'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'--''<a class="edit_deliv" href="javascript:void(null);"data-id=''||REQUEST_ID||''>''||PROJECT_DELIVERABLES||''   ',
'--<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""></a>''PROJECT_DELIVERABLES,',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,PROJECT_NAME,',
'CASE',
'WHEN REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME)||'' @''||q.ITEM_RATE||'' qty: ''||q.ITEM_QUANTITY||'' Total: ''||q.ITEM_RATE*q.ITEM_QUANTITY,''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P',
'where R.company_code=:SS_COMPANY_CODE',
'and R.REQUEST_ID=(select REQUEST_ID from XXCLM.XXCLM_CLAIMS_VOUCHER where voucher_id=:P17_REQ_ID)',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'',
'AND R.PROJECT_ID=P.PROJECT_ID',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P17_TRAVEL_ID_LISTING'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26914895587688010)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26914965400688011)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915061321688012)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915179029688013)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915231430688014)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915385258688015)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915485958688016)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>9
,p_column_heading=>'Departure Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915525338688017)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Arrival Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915679248688018)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>11
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26914688517688008)
,p_query_column_id=>10
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915790776688019)
,p_query_column_id=>11
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>12
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26914713705688009)
,p_query_column_id=>12
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>2
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915845186688020)
,p_query_column_id=>13
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>13
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26915936530688021)
,p_query_column_id=>14
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>14
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26916000260688022)
,p_query_column_id=>15
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>15
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27410045269758107)
,p_name=>'Voucher Detail'
,p_region_name=>'vouchers'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CT NUMBER;',
'   V_SQL VARCHAR2(32000)  ;',
'    V_SQLi VARCHAR2(32000);',
'BEGIN',
'',
'SELECT ''select r.REQUEST_ID,R.CATEGORY_ID,REQUEST_NAME,DESCRIPTION,START_DATE,CERTIFICATION_BODY,R.COMPANY_CODE,v.EMP_ID,R.CREATED_DATE,CATEGORY_NAME,REQUEST_TYPE,',
'CASE',
'WHEN r.REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(l.ITEM_NAME)||'''' @''''||q.price||'''' qty: ''''||q.QUANTITY||'''' Total: ''''||q.price*q.QUANTITY,''''<br/>'''') within group (order by q.ID )',
'     FROM XXCLM.XXCLM_OTHER_REQUEST_ITEM Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.OTHER_REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS,',
'	 CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''''VOUCHER'''' AND STATUS =''''REJECTED'''')>0',
'THEN ''''REJECTED''''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''''VOUCHER'''' AND STATUS !=''''APPROVED'''')>0',
'THEN ''''PENDING''''',
'ELSE ''''APPROVED''''',
'END STATUS,VOUCHER_VALUE, raised_by',
'FROM XXCLM.XXCLM_OTHER_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXCLM.XXCLM_CLAIMS_VOUCHER v',
'where R.company_code=:SS_COMPANY_CODE',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'and v.request_id=r.REQUEST_ID',
'',
'and voucher_id=:P17_REQ_ID''  INTO V_SQLi FROM  dual;',
'  RETURN V_SQLi;',
'',
'END ;'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM XXCLM.XXCLM_CLAIMS_VOUCHER V, XXHRMS.XXHRMS_APPROVAL_TAB A',
'WHERE V.VOUCHER_ID=A.TRANS_ID',
'AND voucher_id=:P17_REQ_ID',
'AND CLAIMS_ID=''OTHER''',
'AND :P17_ACTION=''VOUCHER'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(27410171751758108)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27410213511758109)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27410376637758110)
,p_query_column_id=>3
,p_column_alias=>'REQUEST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Request Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27410416111758111)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27410532467758112)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27410694483758113)
,p_query_column_id=>6
,p_column_alias=>'CERTIFICATION_BODY'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27410778577758114)
,p_query_column_id=>7
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'Company Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48581182525701704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27410817485758115)
,p_query_column_id=>8
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Request for '
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27410973532758116)
,p_query_column_id=>9
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>15
,p_column_heading=>'Created Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411004185758117)
,p_query_column_id=>10
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411135411758118)
,p_query_column_id=>11
,p_column_alias=>'REQUEST_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Request Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and lower(lookup_code) = lower(''other_req'')',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where lower(lookup_code) = lower(''other_req'')',
'ORDER BY 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411212276758119)
,p_query_column_id=>12
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>11
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411305875758120)
,p_query_column_id=>13
,p_column_alias=>'STATUS'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411401412758121)
,p_query_column_id=>14
,p_column_alias=>'VOUCHER_VALUE'
,p_column_display_sequence=>13
,p_column_heading=>'Voucher Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411515650758122)
,p_query_column_id=>15
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>14
,p_column_heading=>'Raised By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(28213272398350332)
,p_name=>'Voucher Detail'
,p_region_name=>'vouchers'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CT NUMBER;',
'   V_SQL VARCHAR2(32000)  ;',
'    V_SQLi VARCHAR2(32000);',
'BEGIN',
'',
'SELECT ''select r.REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,',
'case TRIP_CATEGORY ',
'when ''''multi''''   THEN (SELECT listagg(INITCAP(LOCATION),''''<br/>'''') within group (order by ID )',
'     FROM XXCLM.XXCLM_MULTI_LOCATIONS Q',
'                                   WHERE Q.REQUEST_ID=R.REQUEST_ID',
'                                  )',
'     else ARRIVAL_LOCATION',
'     END ARRIVAL_LOCATION,',
'     ',
'VOUCHER_ID,	CLAIMS_ID,	v.DATE_CREATED,	VOUCHER_VALUE,V.EMP_ID,RAISED_BY,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''''VOUCHER'''' AND STATUS =''''REJECTED'''')>0',
'THEN ''''REJECTED''''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''''VOUCHER'''' AND STATUS !=''''APPROVED'''')>0',
'THEN ''''PENDING''''',
'ELSE ''''APPROVED''''',
'END STATUS,',
'CASE',
'WHEN r.REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME)||''''- Amount:''''||to_char((ITEM_QUANTITY*q.ITEM_RATE),''''999G999G999G999G990D00''''),''''<br/>'''')',
'      ',
'within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS,',
'CASE',
'WHEN r.REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(L.ITEM_NAME)||''''- Amount:''''||to_char((Q.TRAVEL_REQ_VALUE-(ITEM_QUANTITY*X.ITEM_RATE)),''''999G999G999G999G990D00''''),''''<br/>'''')',
'      ',
'within group (order by Q.ID )',
'     FROM XXCLM.XXCLM_REIMBURSEMENT_REQ_ITEM Q, XXCLM.XXCLM_ITEM_LIST L,XXCLM.XXCLM_TRIP_REQUEST_ITEMS X',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=P.ID',
'     AND X.ITEM_ID=Q.ITEM_ID',
'     AND X.REQUEST_ID=R.REQUEST_ID)',
'     END NEW_ITEMS',
'',
'',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXCLM.XXCLM_CLAIMS_VOUCHER v,',
'                    XXCLM.XXCLM_REIMBURSEMENT_REQUESTS P',
'where R.company_code=:SS_COMPANY_CODE',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'and v.request_id=P.ID',
'AND R.REQUEST_ID=P.TRAVEL_REQUEST_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'',
'and voucher_id=:P17_REQ_ID''  INTO V_SQLi FROM  dual;',
'  RETURN V_SQLi;',
'',
'END ;'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM XXCLM.XXCLM_CLAIMS_VOUCHER V, XXHRMS.XXHRMS_APPROVAL_TAB A',
'WHERE V.VOUCHER_ID=A.TRANS_ID',
'AND voucher_id=:P17_REQ_ID',
'AND CLAIMS_ID=''REIMBURSEMENT''',
'AND :P17_ACTION=''VOUCHER'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(28213490285350334)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28213566461350335)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28306430958945102)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28306502543945103)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>6
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(27892164151428213)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28306640655945104)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28306737474945105)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28306897415945106)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>9
,p_column_heading=>'Departure Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28307217791945110)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Arrival Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28307533264945113)
,p_query_column_id=>9
,p_column_alias=>'VOUCHER_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28307616816945114)
,p_query_column_id=>10
,p_column_alias=>'CLAIMS_ID'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28307165314945109)
,p_query_column_id=>11
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>16
,p_column_heading=>'Date Created'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28307775807945115)
,p_query_column_id=>12
,p_column_alias=>'VOUCHER_VALUE'
,p_column_display_sequence=>14
,p_column_heading=>'Voucher Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28214188552350341)
,p_query_column_id=>13
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Request for '
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28307865821945116)
,p_query_column_id=>14
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>15
,p_column_heading=>'Raised By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28307950202945117)
,p_query_column_id=>15
,p_column_alias=>'STATUS'
,p_column_display_sequence=>17
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28214592668350345)
,p_query_column_id=>16
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28311120233945149)
,p_query_column_id=>17
,p_column_alias=>'NEW_ITEMS'
,p_column_display_sequence=>13
,p_column_heading=>'New Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29220476216244438)
,p_plug_name=>'Comments'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'SUP_BUDGET:BUDGET'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31450994213571017)
,p_plug_name=>'Personal Information Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'EMP_APPROVAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31451161247571019)
,p_name=>'Current Record'
,p_parent_plug_id=>wwv_flow_imp.id(31450994213571017)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct b.person_id PERSON, a.* FROM XXHRMS.XXHRMS_PEOPLE a, xxhrms.XXHRMS_PEOPLE_F_UPDATE b',
'WHERE A.PERSON_ID = B.PERSON_ID',
'and a.company_code  = b.company_code ',
'and a.company_code = :AP_COMPANY_CODE',
'AND B.REQUEST_ID = :P17_REQ_ID',
'AND TRUNC(sysdate) between TRUNC(a.effective_start_date) AND NVL(a.effective_end_date, sysdate)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31871553307863925)
,p_query_column_id=>1
,p_column_alias=>'PERSON'
,p_column_display_sequence=>75
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31451244126571020)
,p_query_column_id=>2
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>1
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31451306460571021)
,p_query_column_id=>3
,p_column_alias=>'VACANCY_NO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31451480376571022)
,p_query_column_id=>4
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31451534351571023)
,p_query_column_id=>5
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31451652370571024)
,p_query_column_id=>6
,p_column_alias=>'MIDDLE_NAME'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31451786170571025)
,p_query_column_id=>7
,p_column_alias=>'TITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Title'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48583501704701709)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31451876448571026)
,p_query_column_id=>8
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31451990488571027)
,p_query_column_id=>9
,p_column_alias=>'NATIONALITY'
,p_column_display_sequence=>8
,p_column_heading=>'Nationality'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESC d, VALUE_CODE r',
'from xxhrms.XXHRMS_LOOKUP_COUNTRY_V'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452007205571028)
,p_query_column_id=>10
,p_column_alias=>'LOCAL_GOVT_AREA'
,p_column_display_sequence=>9
,p_column_heading=>'Local Govt Area'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'select DESCRIPTION D, LOCAL_GOVT_CODE R FROM xxhrms.XXHRMS_LOCAL_GOVT_CODES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452118204571029)
,p_query_column_id=>11
,p_column_alias=>'STATE_OF_ORIGIN'
,p_column_display_sequence=>10
,p_column_heading=>'State Of Origin'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, state_code r',
'from xxhrms.XXHRMS_STATES'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452256346571030)
,p_query_column_id=>12
,p_column_alias=>'POSTAL_ADDRESS'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452343649571031)
,p_query_column_id=>13
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452447388571032)
,p_query_column_id=>14
,p_column_alias=>'TELEPHONE1'
,p_column_display_sequence=>14
,p_column_heading=>'Telephone1'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452529547571033)
,p_query_column_id=>15
,p_column_alias=>'TELEPHONE2'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452622041571034)
,p_query_column_id=>16
,p_column_alias=>'RESIDENCE_ADDRESS'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452762589571035)
,p_query_column_id=>17
,p_column_alias=>'BIRTH_DATE'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452876041571036)
,p_query_column_id=>18
,p_column_alias=>'SEX'
,p_column_display_sequence=>18
,p_column_heading=>'Sex'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31452930746571037)
,p_query_column_id=>19
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>19
,p_column_heading=>'Marital Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453050043571038)
,p_query_column_id=>20
,p_column_alias=>'NO_OF_CHILDREN'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453153153571039)
,p_query_column_id=>21
,p_column_alias=>'HOBBIES'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453280622571040)
,p_query_column_id=>22
,p_column_alias=>'CV'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453340670571041)
,p_query_column_id=>23
,p_column_alias=>'CONTINENT'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453452586571042)
,p_query_column_id=>24
,p_column_alias=>'ACCEPTANCE_FLAG'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453511411571043)
,p_query_column_id=>25
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453682484571044)
,p_query_column_id=>26
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453743093571045)
,p_query_column_id=>27
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453872121571046)
,p_query_column_id=>28
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31453938868571047)
,p_query_column_id=>29
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31454045309571048)
,p_query_column_id=>30
,p_column_alias=>'EMPLOYMENT_STATUS'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31454178912571049)
,p_query_column_id=>31
,p_column_alias=>'MOTHERS_MAIDEN_NAME'
,p_column_display_sequence=>31
,p_column_heading=>'Mothers Maiden Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31454225828571050)
,p_query_column_id=>32
,p_column_alias=>'ATTRIBUTE_CATEGORY'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31833920669846001)
,p_query_column_id=>33
,p_column_alias=>'ATTRIBUTE1'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834099935846002)
,p_query_column_id=>34
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834126572846003)
,p_query_column_id=>35
,p_column_alias=>'ATTRIBUTE3'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834262716846004)
,p_query_column_id=>36
,p_column_alias=>'ATTRIBUTE4'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834335211846005)
,p_query_column_id=>37
,p_column_alias=>'ATTRIBUTE5'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834447679846006)
,p_query_column_id=>38
,p_column_alias=>'ATTRIBUTE6'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834530513846007)
,p_query_column_id=>39
,p_column_alias=>'ATTRIBUTE7'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834655416846008)
,p_query_column_id=>40
,p_column_alias=>'ATTRIBUTE8'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834796001846009)
,p_query_column_id=>41
,p_column_alias=>'ATTRIBUTE9'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834836976846010)
,p_query_column_id=>42
,p_column_alias=>'ATTRIBUTE10'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31834916490846011)
,p_query_column_id=>43
,p_column_alias=>'ATTRIBUTE11'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835045654846012)
,p_query_column_id=>44
,p_column_alias=>'ATTRIBUTE12'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835197863846013)
,p_query_column_id=>45
,p_column_alias=>'ATTRIBUTE13'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835251693846014)
,p_query_column_id=>46
,p_column_alias=>'ATTRIBUTE14'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835320614846015)
,p_query_column_id=>47
,p_column_alias=>'ATTRIBUTE15'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835419855846016)
,p_query_column_id=>48
,p_column_alias=>'ATTRIBUTE16'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835552014846017)
,p_query_column_id=>49
,p_column_alias=>'ATTRIBUTE17'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835613277846018)
,p_query_column_id=>50
,p_column_alias=>'ATTRIBUTE18'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835749484846019)
,p_query_column_id=>51
,p_column_alias=>'ATTRIBUTE19'
,p_column_display_sequence=>51
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835894636846020)
,p_query_column_id=>52
,p_column_alias=>'ATTRIBUTE20'
,p_column_display_sequence=>52
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31835991976846021)
,p_query_column_id=>53
,p_column_alias=>'ATTRIBUTE21'
,p_column_display_sequence=>53
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836070683846022)
,p_query_column_id=>54
,p_column_alias=>'ATTRIBUTE22'
,p_column_display_sequence=>54
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836156384846023)
,p_query_column_id=>55
,p_column_alias=>'ATTRIBUTE23'
,p_column_display_sequence=>55
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836294458846024)
,p_query_column_id=>56
,p_column_alias=>'ATTRIBUTE24'
,p_column_display_sequence=>56
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836380098846025)
,p_query_column_id=>57
,p_column_alias=>'ATTRIBUTE25'
,p_column_display_sequence=>57
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836456927846026)
,p_query_column_id=>58
,p_column_alias=>'ATTRIBUTE26'
,p_column_display_sequence=>58
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836563077846027)
,p_query_column_id=>59
,p_column_alias=>'ATTRIBUTE27'
,p_column_display_sequence=>59
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836624620846028)
,p_query_column_id=>60
,p_column_alias=>'ATTRIBUTE28'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836793854846029)
,p_query_column_id=>61
,p_column_alias=>'ATTRIBUTE29'
,p_column_display_sequence=>61
,p_column_heading=>'Place of Birth'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836849961846030)
,p_query_column_id=>62
,p_column_alias=>'ATTRIBUTE30'
,p_column_display_sequence=>62
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31836984952846031)
,p_query_column_id=>63
,p_column_alias=>'EFFECTIVE_START_DATE'
,p_column_display_sequence=>63
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837067975846032)
,p_query_column_id=>64
,p_column_alias=>'EFFECTIVE_END_DATE'
,p_column_display_sequence=>64
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837130339846033)
,p_query_column_id=>65
,p_column_alias=>'UPDATED_COLUMNS'
,p_column_display_sequence=>65
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837271843846034)
,p_query_column_id=>66
,p_column_alias=>'LATEST_START_DATE'
,p_column_display_sequence=>66
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837359089846035)
,p_query_column_id=>67
,p_column_alias=>'EMAIL2'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837432709846036)
,p_query_column_id=>68
,p_column_alias=>'RESIDENCE_CITY'
,p_column_display_sequence=>67
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837551049846037)
,p_query_column_id=>69
,p_column_alias=>'RESIDENCE_STATE'
,p_column_display_sequence=>68
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837641386846038)
,p_query_column_id=>70
,p_column_alias=>'RESIDENCE_COUNTRY'
,p_column_display_sequence=>69
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837771709846039)
,p_query_column_id=>71
,p_column_alias=>'GENOTYPE'
,p_column_display_sequence=>70
,p_column_heading=>'Genotype'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837807806846040)
,p_query_column_id=>72
,p_column_alias=>'BLOOD_GROUP'
,p_column_display_sequence=>71
,p_column_heading=>'Blood Group'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31837967312846041)
,p_query_column_id=>73
,p_column_alias=>'NATIONAL_ID'
,p_column_display_sequence=>72
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31838062518846042)
,p_query_column_id=>74
,p_column_alias=>'OTHER_ID'
,p_column_display_sequence=>73
,p_column_heading=>'Other Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31838120871846043)
,p_query_column_id=>75
,p_column_alias=>'OBJECT_VERSION_NUMBER'
,p_column_display_sequence=>74
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61989300784740602)
,p_query_column_id=>76
,p_column_alias=>'ASS_STATUS'
,p_column_display_sequence=>76
,p_column_heading=>'Ass Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31838586109846047)
,p_name=>'Update Request'
,p_parent_plug_id=>wwv_flow_imp.id(31450994213571017)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct',
'    case',
'    when a.PERSON_ID != b.PERSON_ID then ''<font color = RED>''||a.PERSON_ID||''</font>''',
'    else  a.PERSON_ID',
'    end PERSON_ID,',
'     case',
'    when a.TITLE != b.TITLE then ''<font color = RED>''||a.TITLE||''</font>''',
'    else  a.TITLE',
'    end TITLE,',
'     case',
'    when a.FULL_NAME != b.FULL_NAME then ''<font color = RED>''||a.FIRST_NAME|| '' '' ||a.LAST_NAME||''</font>''',
'    else  a.FULL_NAME',
'    end FULL_NAME,',
'    case',
'    when a.NATIONALITY != b.NATIONALITY then ''<font color = RED>''||a.NATIONALITY||''</font>''',
'    else  a.NATIONALITY',
'    end NATIONALITY,',
'    case',
'    when a.LOCAL_GOVT_AREA != b.LOCAL_GOVT_AREA then ''<font color = RED>''||a.LOCAL_GOVT_AREA||''</font>''',
'    else  a.LOCAL_GOVT_AREA',
'    end LOCAL_GOVT_AREA,',
'	case',
'    when a.STATE_OF_ORIGIN != b.STATE_OF_ORIGIN then a.STATE_OF_ORIGIN',
'    else  a.STATE_OF_ORIGIN',
'    end STATE_OF_ORIGIN,',
'	case',
'    when a.EMAIL != b.EMAIL then ''<font color = RED>''||a.EMAIL||''</font>''',
'    else  a.EMAIL',
'    end EMAIL,',
'	case',
'    when a.TELEPHONE1 != b.TELEPHONE1 then ''<font color = RED>''||a.TELEPHONE1||''</font>''',
'    else  a.TELEPHONE1',
'    end TELEPHONE_PHONE,',
'/*	case',
'    when a.BIRTH_DATE != TO_dATE(b.BIRTH_DATE,''DD/MON/YYYY'') then ''<font color = RED>''||a.BIRTH_DATE||''</font>''',
'    else  a.BIRTH_DATE',
'    end BIRTH_DATE,',
'*/',
'	case',
'    when a.SEX != b.SEX then ''<font color = RED>''||a.SEX||''</font>''',
'    else  a.SEX',
'    end SEX,',
'	case',
'    when a.MOTHERS_MAIDEN_NAME != b.MOTHERS_MAIDEN_NAME then ''<font color = RED>''||a.MOTHERS_MAIDEN_NAME||''</font>''',
'    else  a.MOTHERS_MAIDEN_NAME',
'    end MOTHERS_MAIDEN_NAME,',
'	case',
'    when a.MARITAL_STATUS != b.MARITAL_STATUS then ''<font color = RED>''||a.MARITAL_STATUS||''</font>''',
'    else  a.MARITAL_STATUS',
'    end MARITAL_STATUS,',
'	case',
'    when a.GENOTYPE != b.GENOTYPE then ''<font color = RED>''||a.GENOTYPE||''</font>''',
'    else  a.GENOTYPE',
'    end GENOTYPE,',
'	case',
'    when a.BLOOD_GROUP != b.BLOOD_GROUP then ''<font color = RED>''||a.BLOOD_GROUP||''</font>''',
'    else  a.BLOOD_GROUP',
'    end BLOOD_GROUP,',
'	case',
'    when a.OTHER_ID != b.OTHER_ID then ''<font color = RED>''||a.OTHER_ID||''</font>''',
'    else  a.OTHER_ID',
'    end OTHER_ID,',
'	case',
'    when a.ATTRIBUTE29 != b.ATTRIBUTE29 then ''<font color = RED>''||a.ATTRIBUTE29||''</font>''',
'    else  a.ATTRIBUTE29',
'    end ATTRIBUTE29,b.INS_BY REQUESTER',
'/*    case',
'    when   TO_CHAR(trunc(a.EFFECTIVE_START_DATE),''DD-MON-YYYY'') !=  TO_CHAR(trunc(b.EFFECTIVE_START_DATE),''DD-MON-YYYY'') then ''<font color = RED>''||a.EFFECTIVE_START_DATE||''</font>''',
'    else  a.EFFECTIVE_START_DATE',
'    end EFFECTIVE_START_DATE',
'*/',
' --    TO_CHAR(a.EFFECTIVE_START_DATE,''DD-MON-YYYY'')',
'',
'FROM XXHRMS.XXHRMS_PEOPLE_F_UPDATE a, xxhrms.xxhrms_people_f b',
'WHERE a.person_id = b.person_id',
'and a.company_code  = b.company_code ',
'and a.company_code = :AP_COMPANY_CODE',
'and a.REQUEST_ID = :P17_REQ_ID',
'AND TRUNC(sysdate) between TRUNC(b.effective_start_date) AND NVL(b.effective_end_date, sysdate)',
'--FETCH FIRST 1 ROWS ONLY; '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31838636265846048)
,p_query_column_id=>1
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>1
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31864350677863903)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Title'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48583501704701709)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31864441034863904)
,p_query_column_id=>3
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31864510920863905)
,p_query_column_id=>4
,p_column_alias=>'NATIONALITY'
,p_column_display_sequence=>4
,p_column_heading=>'Nationality'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESC d, VALUE_CODE r',
'from xxhrms.XXHRMS_LOOKUP_COUNTRY_V'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31864665478863906)
,p_query_column_id=>5
,p_column_alias=>'LOCAL_GOVT_AREA'
,p_column_display_sequence=>5
,p_column_heading=>'Local Govt Area'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'select DESCRIPTION D, LOCAL_GOVT_CODE R FROM xxhrms.XXHRMS_LOCAL_GOVT_CODES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31864765479863907)
,p_query_column_id=>6
,p_column_alias=>'STATE_OF_ORIGIN'
,p_column_display_sequence=>6
,p_column_heading=>'State Of Origin'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, state_code r',
'from xxhrms.XXHRMS_STATES'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31864913731863909)
,p_query_column_id=>7
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31776665227167937)
,p_query_column_id=>8
,p_column_alias=>'TELEPHONE_PHONE'
,p_column_display_sequence=>15
,p_column_heading=>'Telephone Phone'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31865421954863914)
,p_query_column_id=>9
,p_column_alias=>'SEX'
,p_column_display_sequence=>8
,p_column_heading=>'Sex'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31866738653863927)
,p_query_column_id=>10
,p_column_alias=>'MOTHERS_MAIDEN_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Mothers Maiden Name'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31865599669863915)
,p_query_column_id=>11
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Marital Status'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31870771917863917)
,p_query_column_id=>12
,p_column_alias=>'GENOTYPE'
,p_column_display_sequence=>12
,p_column_heading=>'Genotype'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31870884670863918)
,p_query_column_id=>13
,p_column_alias=>'BLOOD_GROUP'
,p_column_display_sequence=>13
,p_column_heading=>'Blood Group'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31871083124863920)
,p_query_column_id=>14
,p_column_alias=>'OTHER_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Other Id'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31869766787863907)
,p_query_column_id=>15
,p_column_alias=>'ATTRIBUTE29'
,p_column_display_sequence=>11
,p_column_heading=>'Place of Birth'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31776738902167938)
,p_query_column_id=>16
,p_column_alias=>'REQUESTER'
,p_column_display_sequence=>16
,p_column_heading=>'Requester'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(30110881455904351)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32810498844317307)
,p_plug_name=>'Person Information Approval'
,p_parent_plug_id=>wwv_flow_imp.id(31450994213571017)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(32810545334317308)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(31450994213571017)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''EMP_APPROVAL'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32810835135317311)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32810978851317312)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32810751009317310)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32810651556317309)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33158785939522330)
,p_plug_name=>'Leave Requests'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'LEAVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(29717212930658247)
,p_name=>'Leave Request'
,p_region_name=>'leave'
,p_parent_plug_id=>wwv_flow_imp.id(33158785939522330)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.*,APEX_PAGE.GET_URL(',
'    p_page=>0,',
'    p_items=>''FILE_ID'',',
'    p_values=> l.HANDOVER_ID,',
'    p_request=> ''APPLICATION_PROCESS=PERVIEW_DOCUMENT'') as  DOWNLOAD,',
'    APEX_PAGE.GET_URL(',
'    p_page=>0,',
'    p_items=>''FILE_ID'',',
'    p_values=> l.HANDOVER_ID,',
'    p_request=> ''APPLICATION_PROCESS=PERVIEW_DOCUMENT'') as  preview',
'     from xxhrms.XXHRMS_SS_LEAVE l',
'where ID = :P17_REQ_ID '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29717324649658248)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29717426344658249)
,p_query_column_id=>2
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Staff Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29717584653658250)
,p_query_column_id=>3
,p_column_alias=>'LEAVE_TYPE_CODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30031348835845001)
,p_query_column_id=>4
,p_column_alias=>'LEAVE_TYPE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Leave Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30031475915845002)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30031586010845003)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30031632308845004)
,p_query_column_id=>7
,p_column_alias=>'PENDING_LEAVE_DAYS'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30031721963845005)
,p_query_column_id=>8
,p_column_alias=>'REPLACEMENT'
,p_column_display_sequence=>8
,p_column_heading=>'Replacement'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30031876942845006)
,p_query_column_id=>9
,p_column_alias=>'CONTACT_ADDRESS'
,p_column_display_sequence=>9
,p_column_heading=>'Contact Address'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30031914779845007)
,p_query_column_id=>10
,p_column_alias=>'CONTACT_NUMBER'
,p_column_display_sequence=>10
,p_column_heading=>'Contact Number'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032007564845008)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'Created By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(30110881455904351)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032137731845009)
,p_query_column_id=>12
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032269318845010)
,p_query_column_id=>13
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032391170845011)
,p_query_column_id=>14
,p_column_alias=>'UPDATED_DATE'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032498797845012)
,p_query_column_id=>15
,p_column_alias=>'WORKFLOW_STATUS'
,p_column_display_sequence=>16
,p_column_heading=>'Workflow Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032512640845013)
,p_query_column_id=>16
,p_column_alias=>'LEAVE_DAYS'
,p_column_display_sequence=>7
,p_column_heading=>'Leave Days'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032612679845014)
,p_query_column_id=>17
,p_column_alias=>'REQUEST_LEAVE_DAYS'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032759948845015)
,p_query_column_id=>18
,p_column_alias=>'REQUEST_START_DATE'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032888906845016)
,p_query_column_id=>19
,p_column_alias=>'REQUEST_END_DATE'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30032926493845017)
,p_query_column_id=>20
,p_column_alias=>'APPROVAL_COUNT'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30033035515845018)
,p_query_column_id=>21
,p_column_alias=>'LEAVE_RTN_STATUS'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30033122303845019)
,p_query_column_id=>22
,p_column_alias=>'LEAVE_RTN_DATE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30033276074845020)
,p_query_column_id=>23
,p_column_alias=>'LEAVE_RTN_COMMENT'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30033369643845021)
,p_query_column_id=>24
,p_column_alias=>'LEAVE_ALLOW_REQUEST'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30033446009845022)
,p_query_column_id=>25
,p_column_alias=>'LEAVE_PERIOD'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30033540805845023)
,p_query_column_id=>26
,p_column_alias=>'LEAVE_PERIOD2'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30033618899845024)
,p_query_column_id=>27
,p_column_alias=>'HANDOVER_ID'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from xxhrms.XXHRMS_LEAVE_SETUP',
'where ABSENCE_ID = (select LEAVE_TYPE_CODE from xxhrms.XXHRMS_SS_LEAVE',
'                        where ID = :P17_REQ_ID  )',
'and company_code = :AP_COMPANY_CODE',
'AND UPLOAD_HANDOVER = ''Y''',
''))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611619630778824)
,p_query_column_id=>28
,p_column_alias=>'LEAVE_PAID'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611795490778825)
,p_query_column_id=>29
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611808123778826)
,p_query_column_id=>30
,p_column_alias=>'DOWNLOAD'
,p_column_display_sequence=>57
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40611976963778827)
,p_query_column_id=>31
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>67
,p_column_heading=>'Handover Note'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class= "cc-action-column" >',
'    <span>',
'        <a href="#DOWNLOAD#" aria-hidden="true" class="fa fa-download t-Button t-Button--primary t-Button--simple cc-download-btn" data-id= "HANDOVER_ID">Download</a>',
'        </span>',
'        <span data-file-url="#PREVIEW#" aria-hidden="true" class=" fa fa-eye t-Button t-Button--primary t-button--simple cc-preview-pdf">Preview</span>',
'      ',
'',
'</div>',
'',
''))
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40612313669778831)
,p_query_column_id=>31
,p_column_alias=>'PREVIEW'
,p_column_display_sequence=>77
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30033769232845025)
,p_plug_name=>'Leave Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33158785939522330)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P17_STATUS'
,p_plug_display_when_cond2=>'APPROVED'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_read_only_when=>'P17_STATUS'
,p_plug_read_only_when2=>'PENDING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37962071504622816)
,p_plug_name=>'Leave Recall'
,p_parent_plug_id=>wwv_flow_imp.id(33158785939522330)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_STATUS'
,p_plug_display_when_cond2=>'APPROVED'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40612076648778828)
,p_plug_name=>'Preview'
,p_region_name=>'filePreviewContainer'
,p_parent_plug_id=>wwv_flow_imp.id(33158785939522330)
,p_region_css_classes=>'js-dialog-size900x800'
,p_region_template_options=>'js-modal:js-draggable:js-resizable:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(2505830901224066)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- <iframe',
' src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=PERVIEW_DOCUMENT:NO:#zoom=58&navpanes=0"',
' width="100%" height="950">',
'</iframe> -->',
'<object id="embeddedFile" data="" class="cc-object-style"  width="100%" height="600"></object>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(95556547812415017)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(33158785939522330)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''LEAVE'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31777735477167948)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31777503684167946)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26560031233561082)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26559609776561079)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33158870506522331)
,p_plug_name=>'Loan Requests'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'LOAN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492503556039820)
,p_plug_name=>'Loan Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33158870506522331)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33159901756522342)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(33158870506522331)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''LOAN'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33160256147522345)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33160352177522346)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33160164119522344)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33160068640522343)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(98964815196153994)
,p_name=>'Loan Repayment Schedule'
,p_parent_plug_id=>wwv_flow_imp.id(33158870506522331)
,p_template=>wwv_flow_imp.id(2507973594224067)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from TABLE(xxhrms.xxhrms_loans_pkg.loan_appl_sched(:P17_REQ_ID))'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26615362515809059)
,p_query_column_id=>1
,p_column_alias=>'LOAN_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Loan Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26615768346809063)
,p_query_column_id=>2
,p_column_alias=>'DEDUCT_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Deduction Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26616123491809065)
,p_query_column_id=>3
,p_column_alias=>'DEDUCT_AMOUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26616599519809067)
,p_query_column_id=>4
,p_column_alias=>'DEDUCT_INTEREST'
,p_column_display_sequence=>4
,p_column_heading=>'Interest'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26616944953809070)
,p_query_column_id=>5
,p_column_alias=>'DEDUCT_NET_AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Net Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26617392836809072)
,p_query_column_id=>6
,p_column_alias=>'NET_TO_DATE_AMOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Net To Date'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26617791532809073)
,p_query_column_id=>7
,p_column_alias=>'OUT_BALANCE_AMOUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Outstanding Balance'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26618168206809075)
,p_query_column_id=>8
,p_column_alias=>'DEDUCT_TO_DATE_AMOUNT'
,p_column_display_sequence=>8
,p_column_heading=>'Deduction To Date'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26618549862809078)
,p_query_column_id=>9
,p_column_alias=>'REPAYMENT_AMOUNT'
,p_column_display_sequence=>9
,p_column_heading=>'Repayment Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(121972969298577190)
,p_name=>'Loan Request Details'
,p_parent_plug_id=>wwv_flow_imp.id(33158870506522331)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>8
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from xxhrms.xxhrms_ss_loans',
'where ID = :P17_REQ_ID'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(3490767230039802)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3490820289039803)
,p_query_column_id=>2
,p_column_alias=>'LOAN_TYPE_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Loan Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11759109133029866)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3490960496039804)
,p_query_column_id=>3
,p_column_alias=>'LOAN_TYPE_NAME'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491079308039805)
,p_query_column_id=>4
,p_column_alias=>'REQUEST_AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Request Amount'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491154664039806)
,p_query_column_id=>5
,p_column_alias=>'MAX_ELIGIBLE'
,p_column_display_sequence=>6
,p_column_heading=>'Max Eligible'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491255119039807)
,p_query_column_id=>6
,p_column_alias=>'REQUEST_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Request Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491324175039808)
,p_query_column_id=>7
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Employee Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491496671039809)
,p_query_column_id=>8
,p_column_alias=>'LOAN_REASON'
,p_column_display_sequence=>8
,p_column_heading=>'Loan Reason'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491509673039810)
,p_query_column_id=>9
,p_column_alias=>'DATE_REPAYMENT'
,p_column_display_sequence=>9
,p_column_heading=>'Repayment Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491625728039811)
,p_query_column_id=>10
,p_column_alias=>'DURATION_REPAYMENT'
,p_column_display_sequence=>10
,p_column_heading=>'Repayment Duration'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491793897039812)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Created By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491881490039813)
,p_query_column_id=>12
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Created Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3491939453039814)
,p_query_column_id=>13
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3492076907039815)
,p_query_column_id=>14
,p_column_alias=>'UPDATED_DATE'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3492106574039816)
,p_query_column_id=>15
,p_column_alias=>'WORKFLOW_STATUS'
,p_column_display_sequence=>15
,p_column_heading=>'Workflow Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3492209236039817)
,p_query_column_id=>16
,p_column_alias=>'AUTH_LEVEL'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3492373177039818)
,p_query_column_id=>17
,p_column_alias=>'PAYMENT_STATUS'
,p_column_display_sequence=>17
,p_column_heading=>'Payment Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3492497657039819)
,p_query_column_id=>18
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33159080417522333)
,p_plug_name=>'Expenditure Requests'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'EXPENDITURE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27413502405758142)
,p_plug_name=>'Comments'
,p_parent_plug_id=>wwv_flow_imp.id(33159080417522333)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>240
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(28308137022945119)
,p_name=>'Expenditure Request'
,p_region_name=>'expend'
,p_parent_plug_id=>wwv_flow_imp.id(33159080417522333)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>230
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXP_REQ_ID,EXP_NAME,EXP_DESCRIPTION,r.COMPANY_CODE,r.CREATED_DATE,INITCAP(VENDOR_NAME)  ,PROJECT_NAME',
'',
'from XXPBG.XXPBG_EXPENDITURE_REQUESTS r, XXPBG.XXPBG_VENDORS_LIST v,XXPBG.XXPBG_PROJECTS P',
'where r.company_code = :SS_COMPANY_CODE',
'and v.VENDOR_ID=r.vendor',
'AND R.PROJECT_ID=P.PROJECT_ID',
'AND EXP_REQ_ID=:P17_REQ_ID'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(28308241804945120)
,p_query_column_id=>1
,p_column_alias=>'EXP_REQ_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28308387466945121)
,p_query_column_id=>2
,p_column_alias=>'EXP_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Request Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28308441171945122)
,p_query_column_id=>3
,p_column_alias=>'EXP_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28308596940945123)
,p_query_column_id=>4
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Company Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48581182525701704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28308681510945124)
,p_query_column_id=>5
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Created Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28308743405945125)
,p_query_column_id=>6
,p_column_alias=>'INITCAP(VENDOR_NAME)'
,p_column_display_sequence=>6
,p_column_heading=>'Vendor'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28308808579945126)
,p_query_column_id=>7
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33160402901522347)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(33159080417522333)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>250
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''EXPENDITURE'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33160767055522350)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33349365146631701)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33160644017522349)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33160571707522348)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33159168977522334)
,p_plug_name=>'Travel Requests'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'TRAVEL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11200112278966440)
,p_plug_name=>'No Deliverables'
,p_parent_plug_id=>wwv_flow_imp.id(33159168977522334)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'The employee has not provided any deliverables for this travel request. You will not be able to approve this request. Kindly contact the employee to provide the deliverables for this request.'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxclm.XXCLM_DELIVERABLES_UPDATE',
'where REQUEST_ID = :P17_REQ_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26524645522400316)
,p_plug_name=>'Comments'
,p_parent_plug_id=>wwv_flow_imp.id(33159168977522334)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxclm.XXCLM_DELIVERABLES_UPDATE',
'where REQUEST_ID = :P17_REQ_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33349453699631702)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(33159168977522334)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''TRAVEL''',
'order by APR_LVL'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33349736505631705)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33349888038631706)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33349648685631704)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33349536488631703)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(103462191037339206)
,p_name=>'Travel Request Details'
,p_region_name=>'travel'
,p_parent_plug_id=>wwv_flow_imp.id(33159168977522334)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>6
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,',
'case TRIP_CATEGORY ',
'when ''multi''   THEN (SELECT LISTAGG(ROWNUM||''. ''|| ',
'                           CASE WHEN LOCATION = ''Others'' THEN OTHER_START_LOC ELSE LOCATION END || ''-'' ||',
'                           CASE WHEN END_LOCATION = ''Others'' THEN OTHER_END_LOC ELSE END_LOCATION END, ''   '') ',
'                                    FROM XXCLM.XXCLM_MULTI_LOCATIONS Q',
'                                    WHERE Q.REQUEST_ID = R.REQUEST_ID',
'                                  )',
'     else CASE',
'           WHEN (select COUNT(*) from XXHRMS.XXHRMS_DEP_LOCATION where DEPARTURE_LOCATION=CODE)>0',
'           THEN',
'           (select name from XXHRMS.XXHRMS_DEP_LOCATION where DEPARTURE_LOCATION=CODE )',
'           ELSE lower(DEPARTURE_LOCATION)',
'           END           ',
'           ||'' - ''||',
'           CASE',
'            WHEN (select COUNT(*) from XXHRMS.XXHRMS_DEP_LOCATION where ARRIVAL_LOCATION=CODE)>0',
'           THEN',
'           (select name from XXHRMS.XXHRMS_DEP_LOCATION where ARRIVAL_LOCATION=code)',
'           else',
'           lower (ARRIVAL_LOCATION)',
'           end',
'     END ARRIVAL_LOCATION,',
'--''<a class="edit_deliv" href="javascript:void(null);"data-id=''||REQUEST_ID||''>''||PROJECT_DELIVERABLES||''   ',
'--<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""></a>''PROJECT_DELIVERABLES,',
'case ',
'when request_id is not null then (SELECT LISTAGG(rn || ''. '' || DELIVERABLES, ''<br/> '')WITHIN GROUP (ORDER BY rn) AS deliverables_list',
'    FROM (SELECT ROWNUM AS rn, t.DELIVERABLES',
'             FROM (SELECT DELIVERABLES',
'                        FROM XXCLM.XXCLM_DELIVERABLES_UPDATE WHERE request_id = r.REQUEST_ID ORDER BY id',
'                    ) t',
'          ))',
'end',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,EMP_ID,R.DATE_CREATED,CATEGORY_NAME,PROJECT_NAME,',
'Case',
'when (select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P5_TRAVEL_ID_LISTING)>1 then',
'''<a class="vouch_det" href="javascript:void(null);">''||(select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where ',
'                                                        REQUEST_ID=:P5_TRAVEL_ID_LISTING)||',
''' vouchers raised</a>''',
'',
'when (select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where REQUEST_ID=:P5_TRAVEL_ID_LISTING)=1 then',
'''<a class="vouch_det" href="javascript:void(null);">''||(select Count(*) from XXCLM.XXCLM_CLAIMS_VOUCHER where ',
'                                                       REQUEST_ID=:P5_TRAVEL_ID_LISTING)||',
''' voucher raised </a>''',
'else ''No voucher Raised''',
'end voucher,',
'',
'CASE',
'WHEN REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P',
'where R.company_code=:SS_COMPANY_CODE',
'--where R.company_code in (select column_value from xxadm.xxadm_password P, table(apex_string.split(p_str => nvl(null,P.company_code), p_sep => '':'')) where  P.staff_id = :AP_STAFF_ID)',
'and R.REQUEST_ID=:P17_REQ_ID',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND R.PROJECT_ID=P.PROJECT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P17_TRAVEL_ID_LISTING'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26664083474597031)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26664491848597032)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26664886101597034)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26665287790597035)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>8
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(27892164151428213)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26665610574597037)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26666020598597038)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26666818142597042)
,p_query_column_id=>7
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>9
,p_column_heading=>'Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26667203455597043)
,p_query_column_id=>8
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>12
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26663278662597027)
,p_query_column_id=>9
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26667659141597045)
,p_query_column_id=>10
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>13
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26663605646597029)
,p_query_column_id=>11
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>14
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26668025208597047)
,p_query_column_id=>12
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26668425051597048)
,p_query_column_id=>13
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30598891888398617)
,p_query_column_id=>14
,p_column_alias=>'VOUCHER'
,p_column_display_sequence=>15
,p_column_heading=>'Voucher'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26668845493597050)
,p_query_column_id=>15
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>3
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33159271312522335)
,p_plug_name=>'Reimbursement Requests'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'REIMBURSEMENT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27509898852611114)
,p_name=>'Reimbursement Request'
,p_region_name=>'expend'
,p_parent_plug_id=>wwv_flow_imp.id(33159271312522335)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>250
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,',
' x.ID,CLAIM_VALUE,x.DATE_CREATED,REQUEST_TYPE,',
'case TRIP_CATEGORY ',
'when ''multi''   THEN (SELECT listagg(INITCAP(LOCATION),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_MULTI_LOCATIONS Q',
'                                   WHERE Q.REQUEST_ID=R.REQUEST_ID',
'                                  )',
'     else ARRIVAL_LOCATION',
'     END ARRIVAL_LOCATION,',
'     case ',
'when request_id is not null then (select listagg(DELIVERABLES,''<br/> '') within group (order by id ) from ',
'                                  XXCLM.XXCLM_DELIVERABLES_UPDATE u',
'where u.request_id=r.REQUEST_ID)',
'end',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,r.EMP_ID,CATEGORY_NAME,PROJECT_NAME,',
'',
'CASE',
'WHEN REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(ITEM_NAME),''<br/>'') within group (order by ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS',
'     ',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXCLM.XXCLM_REIMBURSEMENT_REQUESTS x',
'where R.company_code=:SS_COMPANY_CODE',
'--where R.company_code in (select column_value from xxadm.xxadm_password P, table(apex_string.split(p_str => nvl(null,P.company_code), p_sep => '':'')) where  P.staff_id = :AP_STAFF_ID) -- =:SS_COMPANY_CODE',
'and x.ID=:P17_REQ_ID',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'and x.TRAVEL_REQUEST_ID=r.request_id',
''))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(28308952893945127)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309062214945128)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309168838945129)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309287031945130)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>3
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(27892164151428213)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309390795945131)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309460783945132)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309564042945133)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>6
,p_column_heading=>'Departure Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309601370945134)
,p_query_column_id=>8
,p_column_alias=>'ID'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309781551945135)
,p_query_column_id=>9
,p_column_alias=>'CLAIM_VALUE'
,p_column_display_sequence=>7
,p_column_heading=>'Claim Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309828672945136)
,p_query_column_id=>10
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>8
,p_column_heading=>'Date Created'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28309966017945137)
,p_query_column_id=>11
,p_column_alias=>'REQUEST_TYPE'
,p_column_display_sequence=>9
,p_column_heading=>'Request Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28310093431945138)
,p_query_column_id=>12
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Arrival Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28310177704945139)
,p_query_column_id=>13
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>11
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27510296270611118)
,p_query_column_id=>14
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>14
,p_column_heading=>'Company Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48581182525701704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28310284664945140)
,p_query_column_id=>15
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>1
,p_column_heading=>'EMPLOYEE'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28310358727945141)
,p_query_column_id=>16
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27510504373611121)
,p_query_column_id=>17
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28310443174945142)
,p_query_column_id=>18
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>13
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28310505556945143)
,p_plug_name=>'Comments'
,p_parent_plug_id=>wwv_flow_imp.id(33159271312522335)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>270
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33349917488631707)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(33159271312522335)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>280
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''TRAVEL'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33350229826631710)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33350317373631711)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33350128018631709)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33350018524631708)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33159344739522336)
,p_plug_name=>'Voucher Requests'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'VOUCHER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26916127079688023)
,p_plug_name=>'Comments'
,p_parent_plug_id=>wwv_flow_imp.id(33159344739522336)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26916501111688027)
,p_name=>'Voucher Details'
,p_region_name=>'vouchers'
,p_parent_plug_id=>wwv_flow_imp.id(33159344739522336)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>8
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CT NUMBER;',
'   V_SQL VARCHAR2(32000)  ;',
'    V_SQLi VARCHAR2(32000);',
'BEGIN',
'   SELECT ''select r.REQUEST_ID,R.CATEGORY_ID,R.PROJECT_ID,TRIP_CATEGORY,DEPARTURE_DATE,ARRIVAL_DATE,DEPARTURE_LOCATION,ARRIVAL_LOCATION,',
'PROJECT_DELIVERABLES,',
'R.COMPANY_CODE,r.EMP_ID,R.DATE_CREATED,CATEGORY_NAME,PROJECT_NAME,',
'CASE',
'WHEN r.REQUEST_ID IS NOT NULL',
'THEN (SELECT listagg(INITCAP(l.ITEM_NAME)||'''' @''''||q.ITEM_RATE||'''' qty: ''''||q.ITEM_QUANTITY||'''' Total: ''''||q.ITEM_RATE*q.ITEM_QUANTITY,''''<br/>'''') within group (order by q.ID )',
'     FROM XXCLM.XXCLM_TRIP_REQUEST_ITEMS Q, XXCLM.XXCLM_ITEM_LIST L',
'     WHERE Q.ITEM_ID=L.ITEM_ID',
'     AND Q.REQUEST_ID=R.REQUEST_ID)',
'     END ITEMS,',
'	 CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''''VOUCHER'''' AND STATUS =''''REJECTED'''')>0',
'THEN ''''REJECTED''''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''''VOUCHER'''' AND STATUS !=''''APPROVED'''')>0',
'THEN ''''PENDING''''',
'ELSE ''''APPROVED''''',
'END STATUS,VOUCHER_VALUE, raised_by',
'from XXCLM.XXCLM_TRAVEL_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C,XXPBG.XXPBG_PROJECTS P,XXCLM.XXCLM_CLAIMS_VOUCHER v',
'where R.company_code=:SS_COMPANY_CODE',
'',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'and v.request_id=r.REQUEST_ID',
'AND R.PROJECT_ID=P.PROJECT_ID',
'and voucher_id=:P17_REQ_ID''  INTO V_SQL FROM  dual;',
'',
'RETURN V_SQL ;',
'END ;',
'--where R.company_code in (select column_value from xxadm.xxadm_password P, table(apex_string.split(p_str => nvl(null,P.company_code), p_sep => '':'')) where  P.staff_id = :AP_STAFF_ID) -- =:SS_COMPANY_CODE'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(27259658698387742)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27259713461387743)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411656724758123)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411775105758124)
,p_query_column_id=>4
,p_column_alias=>'TRIP_CATEGORY'
,p_column_display_sequence=>12
,p_column_heading=>'Trip Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(27892164151428213)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411808268758125)
,p_query_column_id=>5
,p_column_alias=>'DEPARTURE_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Departure Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27411952809758126)
,p_query_column_id=>6
,p_column_alias=>'ARRIVAL_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'Arrival Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27412028210758127)
,p_query_column_id=>7
,p_column_alias=>'DEPARTURE_LOCATION'
,p_column_display_sequence=>15
,p_column_heading=>'Departure Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27412149553758128)
,p_query_column_id=>8
,p_column_alias=>'ARRIVAL_LOCATION'
,p_column_display_sequence=>16
,p_column_heading=>'Arrival Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27412233985758129)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_DELIVERABLES'
,p_column_display_sequence=>17
,p_column_heading=>'Project Deliverables'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27260290201387748)
,p_query_column_id=>10
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Company Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48581182525701704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27260372429387749)
,p_query_column_id=>11
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Request for'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27412361820758130)
,p_query_column_id=>12
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>18
,p_column_heading=>'Date Created'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27409448138758101)
,p_query_column_id=>13
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27412489156758131)
,p_query_column_id=>14
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27409644766758103)
,p_query_column_id=>15
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>7
,p_column_heading=>'Items'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27409717566758104)
,p_query_column_id=>16
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27409810395758105)
,p_query_column_id=>17
,p_column_alias=>'VOUCHER_VALUE'
,p_column_display_sequence=>9
,p_column_heading=>'Voucher Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27409925606758106)
,p_query_column_id=>18
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Raised By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33351123770631719)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(33159344739522336)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>155
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''VOUCHER'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33351483003631722)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33351564623631723)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33351399488631721)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33351244171631720)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33350420174631712)
,p_plug_name=>'Other Requests'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'OTHER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26954319343659544)
,p_name=>'Other Request'
,p_region_name=>'other'
,p_parent_plug_id=>wwv_flow_imp.id(33350420174631712)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>210
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST_ID,R.CATEGORY_ID,TRAINING_REQUEST,CERTIFICATION_REQUEST,REQUEST_NAME,DESCRIPTION,START_DATE,END_DATE,',
'LOCATION,CERTIFICATION_BODY,R.COMPANY_CODE,EMP_ID,R.CREATED_DATE,CATEGORY_NAME,REQUEST_TYPE,',
'CASE',
'WHEN TRAINING_REQUEST IS NOT NULL',
'THEN REQUEST_NAME',
'END TRAINING,',
'CASE',
'WHEN CERTIFICATION_REQUEST IS NOT NULL',
'THEN REQUEST_NAME',
'END CERTIFICATION',
'',
'FROM XXCLM.XXCLM_OTHER_REQUEST R, XXCLM.XXCLM_CLAIMS_ITEMS_CATEGORY C',
'where R.company_code=:SS_COMPANY_CODE',
'--where R.company_code in (select column_value from xxadm.xxadm_password P, table(apex_string.split(p_str => nvl(null,P.company_code), p_sep => '':'')) where  P.staff_id = :AP_STAFF_ID)',
'AND R.CATEGORY_ID=C.CATEGORY_ID',
'AND REQUEST_ID=:P17_REQ_ID'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(26954471572659545)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26954502295659546)
,p_query_column_id=>2
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26954605228659547)
,p_query_column_id=>3
,p_column_alias=>'TRAINING_REQUEST'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26954798580659548)
,p_query_column_id=>4
,p_column_alias=>'CERTIFICATION_REQUEST'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26954857551659549)
,p_query_column_id=>5
,p_column_alias=>'REQUEST_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Request Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26954949133659550)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>8
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27067382184280701)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27067442982280702)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27067551444280703)
,p_query_column_id=>9
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27067645841280704)
,p_query_column_id=>10
,p_column_alias=>'CERTIFICATION_BODY'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27067745669280705)
,p_query_column_id=>11
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>13
,p_column_heading=>'Company Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48581182525701704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27067893684280706)
,p_query_column_id=>12
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Request By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27067933496280707)
,p_query_column_id=>13
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>15
,p_column_heading=>'Created Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27068076829280708)
,p_query_column_id=>14
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Category Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27068177304280709)
,p_query_column_id=>15
,p_column_alias=>'REQUEST_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Request Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11759109133029866)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27068208116280710)
,p_query_column_id=>16
,p_column_alias=>'TRAINING'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27068358142280711)
,p_query_column_id=>17
,p_column_alias=>'CERTIFICATION'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27069018125280718)
,p_plug_name=>'Comments'
,p_parent_plug_id=>wwv_flow_imp.id(33350420174631712)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>220
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33350559172631713)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(33350420174631712)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>230
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''OTHER''',
'order by APR_LVL asc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33350863379631716)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33350931943631717)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33350779444631715)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33350605585631714)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33351049385631718)
,p_plug_name=>'Expenditure Voucher'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'VOUCHERS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27412703220758134)
,p_name=>'Expenditure Voucher Details'
,p_region_name=>'expend'
,p_parent_plug_id=>wwv_flow_imp.id(33351049385631718)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>170
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VOUCHER_ID,V.VENDOR_ID,VENDOR_NAME,V.PROJECT_ID,PROJECT_NAME,',
'EXPENDITURE_ID,EXP_NAME,AMOUNT,V.COMPANY_CODE,V.CREATED_DATE,RAISED_BY,',
'CASE',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''VOUCHERS'' AND STATUS =''REJECTED'')>0',
'THEN ''REJECTED''',
'WHEN (SELECT COUNT(*) FROM XXHRMS.XXHRMS_APPROVAL_TAB WHERE TRANS_ID=VOUCHER_ID AND TRANS_TYPE=''VOUCHERS'' AND STATUS !=''APPROVED'')>0',
'THEN ''PENDING''',
'ELSE ''APPROVED''',
'END STATUS',
'',
'FROM XXPBG.XXPBG_VOUCHER V, XXPBG.XXPBG_VENDORS_LIST L, XXPBG.XXPBG_PROJECTS P,XXPBG.XXPBG_EXPENDITURE_REQUESTS R',
'WHERE V.VENDOR_ID=L.VENDOR_ID',
'AND V.PROJECT_ID=P.PROJECT_ID',
'AND V.EXPENDITURE_ID=R.EXP_REQ_ID',
'AND V.voucher_ID=:P17_REQ_ID'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(27510600152611122)
,p_query_column_id=>1
,p_column_alias=>'VOUCHER_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27510748810611123)
,p_query_column_id=>2
,p_column_alias=>'VENDOR_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27510820447611124)
,p_query_column_id=>3
,p_column_alias=>'VENDOR_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Vendor'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27510947598611125)
,p_query_column_id=>4
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27413475444758141)
,p_query_column_id=>5
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Project Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27511075574611126)
,p_query_column_id=>6
,p_column_alias=>'EXPENDITURE_ID'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27412907400758136)
,p_query_column_id=>7
,p_column_alias=>'EXP_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Request Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27511119851611127)
,p_query_column_id=>8
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>9
,p_column_heading=>'Value'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27413161587758138)
,p_query_column_id=>9
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Company Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48581182525701704)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27413273599758139)
,p_query_column_id=>10
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Created Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27511454581611130)
,p_query_column_id=>11
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Raised By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27511249515611128)
,p_query_column_id=>12
,p_column_alias=>'STATUS'
,p_column_display_sequence=>12
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27511515460611131)
,p_plug_name=>'Comments'
,p_parent_plug_id=>wwv_flow_imp.id(33351049385631718)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>190
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33351606752631724)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(33351049385631718)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>195
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''VOUCHERS'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33351945342631727)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33352042834631728)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33351898606631726)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33351778315631725)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34395659393713909)
,p_plug_name=>'Recruitment Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>190
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'JOB_REQUISITION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34395783521713910)
,p_name=>'Recruitment Requisition'
,p_parent_plug_id=>wwv_flow_imp.id(34395659393713909)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>8
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select * from XXREC.XXREC_JOB_DETAILS ',
'where ID = :P17_REQ_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34395801376713911)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34395915184713912)
,p_query_column_id=>2
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Department'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, DEPT_ID r',
'from XXHRMS.XXHRMS_DEPARTMENT',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and STATUS = ''ACTIVE'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396049341713913)
,p_query_column_id=>3
,p_column_alias=>'LOCATION_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, CODE r',
'from XXHRMS.XXHRMS_DEP_LOCATION',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and STATUS = ''ACTIVE'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396144627713914)
,p_query_column_id=>4
,p_column_alias=>'DATE_LISTED'
,p_column_display_sequence=>8
,p_column_heading=>'Date Listed'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396249109713915)
,p_query_column_id=>5
,p_column_alias=>'EXPERIENCE'
,p_column_display_sequence=>9
,p_column_heading=>'Minimum Years of Experience'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396378536713916)
,p_query_column_id=>6
,p_column_alias=>'EDUCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Minimum Qualification'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''EDU_QUAL''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''EDU_QUAL'' ',
'ORDER BY 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396439663713917)
,p_query_column_id=>7
,p_column_alias=>'SALARY_FROM'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396529194713918)
,p_query_column_id=>8
,p_column_alias=>'SALARY_TO'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396644698713919)
,p_query_column_id=>9
,p_column_alias=>'CURRENCY_ID'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396761299713920)
,p_query_column_id=>10
,p_column_alias=>'EMPLOYMENT_ID'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396855516713921)
,p_query_column_id=>11
,p_column_alias=>'INDUSTRY_ID'
,p_column_display_sequence=>15
,p_column_heading=>'Industry'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''RECRUITMENT INDUSTRY''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''RECRUITMENT INDUSTRY''',
'ORDER BY 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34396956245713922)
,p_query_column_id=>12
,p_column_alias=>'JOB_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Job Title'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, JOB_CODE r',
'from XXHRMS.XXHRMS_JOBS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and STATUS = ''ACTIVE''',
'order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397028872713923)
,p_query_column_id=>13
,p_column_alias=>'JOB_REQUIREMENTS'
,p_column_display_sequence=>16
,p_column_heading=>'Job Requirements'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397154501713924)
,p_query_column_id=>14
,p_column_alias=>'JOB_DESCRIPTION'
,p_column_display_sequence=>17
,p_column_heading=>'Job Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397248741713925)
,p_query_column_id=>15
,p_column_alias=>'JOB_BENEFITS'
,p_column_display_sequence=>18
,p_column_heading=>'Job Benefits'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397301092713926)
,p_query_column_id=>16
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>19
,p_column_heading=>'Created By'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(30110881455904351)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397467145713927)
,p_query_column_id=>17
,p_column_alias=>'MANAGERS_ID'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397528421713928)
,p_query_column_id=>18
,p_column_alias=>'REC_SOURCE_ID'
,p_column_display_sequence=>21
,p_column_heading=>'Recruitment Source'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_USER_LOOKUPS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and LOOKUP_CODE = ''RECRUITMENT SOURCE''',
'union',
'select MEANING d, LOOKUP_TYPE_CODE r',
'from xxhrms.XXHRMS_SEEDED_LOOKUPS',
'where LOOKUP_CODE = ''RECRUITMENT SOURCE''',
'ORDER BY 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397675563713929)
,p_query_column_id=>19
,p_column_alias=>'VACANCY_REQUIRED'
,p_column_display_sequence=>6
,p_column_heading=>'Available Vacancies'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397740266713930)
,p_query_column_id=>20
,p_column_alias=>'LISTING_CODE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397887262713931)
,p_query_column_id=>21
,p_column_alias=>'CONTRACT_PERIOD'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34397926989713932)
,p_query_column_id=>22
,p_column_alias=>'JOB_POSITION'
,p_column_display_sequence=>2
,p_column_heading=>'Position'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME d, POSITION_CODE r',
'from XXHRMS.XXHRMS_POSITIONS',
'where COMPANY_CODE = :SS_COMPANY_CODE',
'and STATUS = ''ACTIVE''',
'order by 1'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398099473713933)
,p_query_column_id=>23
,p_column_alias=>'WF_STATUS'
,p_column_display_sequence=>24
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398118261713934)
,p_query_column_id=>24
,p_column_alias=>'EXPIRY_DATE'
,p_column_display_sequence=>25
,p_column_heading=>'Expiry Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398223627713935)
,p_query_column_id=>25
,p_column_alias=>'INTERVIEW_TEMPLATE'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398316581713936)
,p_query_column_id=>26
,p_column_alias=>'OFFER_TEMPLATE'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398449328713937)
,p_query_column_id=>27
,p_column_alias=>'GRADE'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398580397713938)
,p_query_column_id=>28
,p_column_alias=>'GRADE_STEP'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398657317713939)
,p_query_column_id=>29
,p_column_alias=>'ANNUAL_SAL'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398710991713940)
,p_query_column_id=>30
,p_column_alias=>'MONTHLY_SAL'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398891830713941)
,p_query_column_id=>31
,p_column_alias=>'REQUIRED_VACANCY'
,p_column_display_sequence=>7
,p_column_heading=>'Number Required'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34398969194713942)
,p_query_column_id=>32
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40612975419778837)
,p_query_column_id=>33
,p_column_alias=>'SUB_ORGANIZATION_ID'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40613010657778838)
,p_query_column_id=>34
,p_column_alias=>'RECRUITMENT_TYPE'
,p_column_display_sequence=>52
,p_column_heading=>'Recruitment Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40613136663778839)
,p_query_column_id=>35
,p_column_alias=>'JOB_CODE'
,p_column_display_sequence=>62
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34399064535713943)
,p_plug_name=>'Approval'
,p_parent_plug_id=>wwv_flow_imp.id(34395659393713909)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34399467420713947)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(34395659393713909)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''JOB_REQUISITION'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34399792966713950)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34485006648186401)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34399655819713949)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34399570355713948)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36763287082395830)
,p_plug_name=>'Items Deliverables for &P17_EXIT_STAFF.'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>290
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'EXIT_DELIVERABLES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36763374383395831)
,p_plug_name=>'Deliverables'
,p_parent_plug_id=>wwv_flow_imp.id(36763287082395830)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_kn varchar2(100);',
'v_kt number;',
'p_item number;',
'BEGIN',
'',
'    HTP.p (''<div class="container" id="custom-form">'');',
'    ',
'     HTP.p(''<div class="row">'' ||',
'             ''<div class="col col-12">'' ||',
'                ''<p style="color:red;">Kindly tick all returned deliverables</p>''',
'        ); ',
'   HTP.p(''<div class="t-Form-fieldContainer rel-col  apex-item-wrapper apex-item-wrapper--checkbox ">'');',
'    HTP.p(''<div class="t-Form-inputContainer">'');',
'   HTP.p(''<div class="t-Form-itemWrapper">'');',
'    HTP.p(''<div class="checkbox_group form-group apex-item-group apex-item-checkbox">'');',
'    ',
'    SELECT 1',
'    into p_item FROM DUAL;',
'    ',
'    FOR i IN (',
'        SELECT A.ITEM_ID,',
'             A.ITEM, RANK() OVER (ORDER BY A.ITEM_ID) RK',
'        FROM XXHRMS.XXHRMS_DELIVERABLE_ITEMS A, XXHRMS.XXHRMS_DELIV_ITEMS_STG B, XXHRMS.XXHRMS_DELIVE_EXIT C',
'        WHERE A.COMPANY_CODE = :AP_COMPANY_CODE',
'        AND A.ID = B.ID',
'		and A.ID = C.CLEARANCE_ID',
'		and :P17_REQ_ID = C.TRANS_ID',
'        AND B.APPR_ID = :AP_STAFF_ID',
'        --AND EXITING_STAFF = :',
'        union',
'        SELECT A.ITEM_ID,',
'             A.ITEM, RANK() OVER (ORDER BY A.ITEM_ID) RK',
'        FROM XXHRMS.XXHRMS_DELIVERABLE_ITEMS A, XXHRMS.XXHRMS_DELIV_ITEMS_STG B, XXHRMS.XXHRMS_DELIVE_EXIT C',
'        WHERE A.COMPANY_CODE in (select column_value from xxadm.xxadm_password P, table(apex_string.split(p_str => nvl(null,P.company_code), p_sep => '':'')) where  P.staff_id = :AP_STAFF_ID)',
'        AND A.ID = B.ID',
'        AND B.APPR_ID = :AP_STAFF_ID',
'		and A.ID = C.CLEARANCE_ID',
'		and :P17_REQ_ID = C.TRANS_ID',
'        ',
'        ORDER BY ITEM_ID)',
'    LOOP',
'    HTP.p(',
'		   ''<div class="form-group">'' ||',
'               ''<div class="form-check">'' ||',
'                      ''<input  class="form-check-input" type="checkbox"  value="''||i.ITEM_ID||''" id="''||i.ITEM_ID||''_''||i.ITEM_ID||''" name="''||i.ITEM_ID||''">'' ||',
'                      ''<label class="form-check-label" for = "''||i.ITEM_ID||''">''||i.ITEM || ''</label>'' ||',
'                ''</div>'' ||',
'           ''</div>''',
'    );  ',
'   ',
'        END LOOP;',
'     HTP.p(''</div>'');',
'    HTP.p(''</div>'');',
'   HTP.p(''</div>'');',
'    HTP.p(''</div>'');',
'   HTP.p(''</div>''); --',
'    HTP.p(''</div>'');',
'    HTP.p(''</div>'');',
'    ',
'    HTP.p(''<div class="row">''); --Row 2',
'        HTP.p (''<div class="col col-12">'');',
'        HTP.p(''<div class="t-Form-fieldContainer rel-col  apex-item-wrapper apex-item-wrapper--textarea">'');',
'        HTP.p(''<div class="t-Form-inputContainer">'');',
'        HTP.p(''<div class="t-Form-itemWrapper">'');',
'            HTP.p(''<div class="apex-item-group apex-item-group--textarea form-group" style="width:100%; ">'');',
'                HTP.p(''<textarea  class="textarea apex-item-textarea form-control" type="textarea" placeholder="Comment" id= "tes"  name="tes" rows="5" columns="15" style="width:100%;"></textarea>'');',
'            HTP.p(''</div>'');',
'        HTP.p(''</div>'');',
'        HTP.p(''</div>'');',
'        HTP.p(''</div>'');',
'        HTP.p(''</div>'');',
'    HTP.p(''</div>''); --Close Row 2',
'    ',
'    HTP.p(''</div>'');-- Close Container',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_LEVEL'
,p_plug_display_when_cond2=>'Level 1'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44881421740091515)
,p_plug_name=>'Deliverables'
,p_parent_plug_id=>wwv_flow_imp.id(36763287082395830)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select z.*, q.value as "comment"',
'from ',
'(select distinct d.item,',
'a.staff_id,',
'c.fullname,',
'(select fullname from xxhrms_assignments where staff_id = B.APPR_ID) CONFIRMED_BY,',
'(select q.name from xxhrms_department q, xxhrms_assignments k where q.dept_id = k.dept_code and k.staff_id = b.appr_id ) Department,',
'b.appr_id,',
'case',
'When d.item_id is null then ''Not Returned''',
'else ''Returned''',
'end Status',
'from XXHRMS.XXHRMS_RESPONSE_JSON_V a, XXHRMS.xxhrms_delive_exit b,  xxhrms_assignments c, XXHRMS.XXHRMS_DELIVERABLE_ITEMS d, XXHRMS.XXHRMS_DELIV_ITEMS_STG e',
'where to_char(question (+))= to_char(item_id)',
'and a.staff_id = b.exiting_staff',
'and c.staff_id = a.staff_id',
'and a.APPR_ID = e.APPR_ID',
'and e.department = b.unit_id',
'and e.second_approver = :AP_STAFF_ID',
'--and b.company_code = :AP_COMPANY_CODE',
' and b.company_code in (select column_value from xxadm.xxadm_password P, table(apex_string.split(p_str => nvl(null,P.company_code), p_sep => '':'')) where  P.staff_id = :AP_STAFF_ID)',
'and a.appr_id = b.appr_id',
'AND a.staff_id = :P17_EXIT_STAFF_ID) z, ',
'',
'(select ',
'value, staff_id, appr_id',
'from XXHRMS.XXHRMS_RESPONSE_JSON_V',
'where staff_id = :P17_EXIT_STAFF_ID',
'--and APPR_ID = :AP_STAFF_ID',
'and question = ''tes'') q',
'where q.staff_id = z.staff_id',
'and q.appr_id = z.appr_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_LEVEL'
,p_plug_display_when_cond2=>'Level 2'
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
 p_id=>wwv_flow_imp.id(44881613794091517)
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
,p_owner=>'TADEDAPO'
,p_internal_uid=>44881613794091517
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44881736565091518)
,p_db_column_name=>'ITEM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44881863408091519)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44881933782091520)
,p_db_column_name=>'FULLNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fullname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44882038007091521)
,p_db_column_name=>'CONFIRMED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Confirmed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44882139013091522)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44882256673091523)
,p_db_column_name=>'APPR_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Appr Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44882389743091524)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44882463856091525)
,p_db_column_name=>'comment'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Comment'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47088909855901647)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'470890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEM:STAFF_ID:FULLNAME:CONFIRMED_BY:DEPARTMENT:APPR_ID:STATUS:comment'
,p_break_on=>'comment:0:0:0:0:0'
,p_break_enabled_on=>'comment:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36764389619395841)
,p_plug_name=>'Exit Request Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>280
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'TERMINATION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36764467112395842)
,p_name=>'Exit Request'
,p_parent_plug_id=>wwv_flow_imp.id(36764389619395841)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>7
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.REQUEST_ID	',
', a.EMPLOYEE_ID	',
', b.full_name',
', a.EFFECTIVE_DATE	',
', a.COMMENTS',
'',
'from xxhrms.XXHRMS_EXIT_REQUESTS a , xxhrms.xxhrms_people b',
'where a.EMPLOYEE_ID=b.person_id',
'and a.REQUEST_ID=:P17_REQ_ID',
'and a.company_code =b.company_code',
'and b.company_code = :AP_COMPANY_CODE'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(36764582612395843)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Request Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36764667867395844)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Employee Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36764704262395845)
,p_query_column_id=>3
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36764838640395846)
,p_query_column_id=>4
,p_column_alias=>'EFFECTIVE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Effective Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36764901449395847)
,p_query_column_id=>5
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>5
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36765190028395849)
,p_name=>'Exit Attachment'
,p_parent_plug_id=>wwv_flow_imp.id(36764389619395841)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       STAFF_ID,',
'       FILENAME,',
'       FILE_DESCRIPTION',
'  from XXHRMS.XXHRMS_EXIT_DOCUMENTS',
'  where staff_id  =(select a.EMPLOYEE_ID	',
'                    from xxhrms.XXHRMS_EXIT_REQUESTS a , xxhrms.xxhrms_people b',
'                    where a.EMPLOYEE_ID=b.person_id',
'                    and a.REQUEST_ID=:P17_REQ_ID',
'                    and b.company_code = :AP_COMPANY_CODE',
'                    and a.company_code =b.company_code)'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       STAFF_ID,',
'       FILENAME,',
'       FILE_DESCRIPTION',
'  from XXHRMS.XXHRMS_EXIT_DOCUMENTS',
'  where staff_id  =(select a.EMPLOYEE_ID	',
'                    from xxhrms.XXHRMS_EXIT_REQUESTS a , xxhrms.xxhrms_people b',
'                    where a.EMPLOYEE_ID=b.person_id',
'                    and a.REQUEST_ID=:P17_REQ_ID',
'                    and a.company_code =b.company_code)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(36765243297395850)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>4
,p_column_heading=>'&nbsp'
,p_column_format=>'DOWNLOAD:XXHRMS_EXIT_DOCUMENTS:BLOB_CONTENT:ID::MIME_TYPE:FILENAME:LAST_UPDATED:CHARACTER_SET:attachment:Download:XXHRMS'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38855083695493801)
,p_query_column_id=>2
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Staff Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38855144714493802)
,p_query_column_id=>3
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Filename'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38855277763493803)
,p_query_column_id=>4
,p_column_alias=>'FILE_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'File Description'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38855348236493804)
,p_plug_name=>'Exit Request Approval'
,p_parent_plug_id=>wwv_flow_imp.id(36764389619395841)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P17_STATUS'
,p_plug_display_when_cond2=>'APPROVED'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_read_only_when=>'P17_STATUS'
,p_plug_read_only_when2=>'PENDING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(38855760637493808)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(36764389619395841)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''TERMINATION'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(38855858999493809)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38855915441493810)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38856014018493811)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38856195023493812)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39294460042541512)
,p_plug_name=>'Assignment Information Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'ASSGNMT_APRVL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39294595635541513)
,p_name=>'Current Record'
,p_parent_plug_id=>wwv_flow_imp.id(39294460042541512)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.person_id PERSON, a.*',
'FROM XXHRMS.XXHRMS_ASSIGNMENTS_F a, xxhrms.XXHRMS_ASSIGNMENTS_UPDATE b',
'WHERE A.PERSON_ID = B.PERSON_ID',
'AND B.REQUEST_ID = :P17_REQ_ID',
'and a.company_code  = b.company_code ',
'and a.company_code = :AP_COMPANY_CODE',
' AND TRUNC(sysdate) between TRUNC(a.effective_start_date) AND NVL(a.effective_end_date, sysdate)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39294680584541514)
,p_query_column_id=>1
,p_column_alias=>'PERSON'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39294789385541515)
,p_query_column_id=>2
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39378899297023815)
,p_query_column_id=>3
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39378961719023816)
,p_query_column_id=>4
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>6
,p_column_heading=>'&AP_JOBTITLE_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, JOB_CODE r',
'from XXHRMS.XXHRMS_JOBS',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379069641023817)
,p_query_column_id=>5
,p_column_alias=>'GRADE'
,p_column_display_sequence=>14
,p_column_heading=>'Grade'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GRADE d, ID r',
'from XXHRMS.XXHRMS_GRADES',
'--where ORGANISATION = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379152194023818)
,p_query_column_id=>6
,p_column_alias=>'STAFF_CATEGORY'
,p_column_display_sequence=>11
,p_column_heading=>'Staff Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48585902018701711)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379290412023819)
,p_query_column_id=>7
,p_column_alias=>'DEPT_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'&AP_DEPARTMENT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, DEPT_ID r',
'from XXHRMS.XXHRMS_DEPARTMENT',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379301350023820)
,p_query_column_id=>8
,p_column_alias=>'DEPT_LOCATION'
,p_column_display_sequence=>8
,p_column_heading=>'&AP_LOCATION_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, CODE r',
'from XXHRMS.XXHRMS_DEP_LOCATION',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379445619023821)
,p_query_column_id=>9
,p_column_alias=>'ASSIGNMENT_STATUS'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379521996023822)
,p_query_column_id=>10
,p_column_alias=>'EMP_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Employment Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(39632694319659644)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379646842023823)
,p_query_column_id=>11
,p_column_alias=>'SSN'
,p_column_display_sequence=>43
,p_column_heading=>'Tax State'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, STATE_CODE r',
'from XXHRMS.XXHRMS_STATES'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379763142023824)
,p_query_column_id=>12
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379870198023825)
,p_query_column_id=>13
,p_column_alias=>'BANK_NAME'
,p_column_display_sequence=>16
,p_column_heading=>'Bank Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BANK_NAME d, BANK_CODE r',
'from XXHRMS.XXHRMS_BANKS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39379925260023826)
,p_query_column_id=>14
,p_column_alias=>'BANK_BRANCH'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380003096023827)
,p_query_column_id=>15
,p_column_alias=>'ACC_TYPE'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380149257023828)
,p_query_column_id=>16
,p_column_alias=>'ACC_NO'
,p_column_display_sequence=>17
,p_column_heading=>'Account No'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380228179023829)
,p_query_column_id=>17
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>13
,p_column_heading=>'Supervisor'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380320464023830)
,p_query_column_id=>18
,p_column_alias=>'EMP_DUTIES'
,p_column_display_sequence=>9
,p_column_heading=>'Unit'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UNIT_NAME d, UNIT_ID r',
'from XXHRMS.XXHRMS_UNITS',
'where ORGANIZATION_CODE = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380497915023831)
,p_query_column_id=>19
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39374998856023726)
,p_query_column_id=>20
,p_column_alias=>'EFFECTIVE_START_DATE'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39375005484023727)
,p_query_column_id=>21
,p_column_alias=>'EFFECTIVE_END_DATE'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380531721023832)
,p_query_column_id=>22
,p_column_alias=>'ABSENCE_TYPE'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380642686023833)
,p_query_column_id=>23
,p_column_alias=>'PROBATION'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380738225023834)
,p_query_column_id=>24
,p_column_alias=>'PROBATION_DATE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380895090023835)
,p_query_column_id=>25
,p_column_alias=>'CURRENCY'
,p_column_display_sequence=>51
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39380973269023836)
,p_query_column_id=>26
,p_column_alias=>'ANNUAL_SAL'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381077313023837)
,p_query_column_id=>27
,p_column_alias=>'FULLNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381160407023838)
,p_query_column_id=>28
,p_column_alias=>'P_MODE'
,p_column_display_sequence=>52
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381218650023839)
,p_query_column_id=>29
,p_column_alias=>'PAID_SALARY'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381309127023840)
,p_query_column_id=>30
,p_column_alias=>'GRADE_STEP'
,p_column_display_sequence=>15
,p_column_heading=>'Grade Step'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381464456023841)
,p_query_column_id=>31
,p_column_alias=>'ABSENCE_ID'
,p_column_display_sequence=>53
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381532752023842)
,p_query_column_id=>32
,p_column_alias=>'JOBLEVEL'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381694291023843)
,p_query_column_id=>33
,p_column_alias=>'POSITION'
,p_column_display_sequence=>12
,p_column_heading=>'Position'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME d, POSITION_CODE r',
'from XXHRMS.XXHRMS_POSITIONS',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381740108023844)
,p_query_column_id=>34
,p_column_alias=>'SSF_CONTRIBUTER'
,p_column_display_sequence=>54
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39297047633541538)
,p_query_column_id=>35
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39297152437541539)
,p_query_column_id=>36
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39297279553541540)
,p_query_column_id=>37
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39297335064541541)
,p_query_column_id=>38
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39297432315541542)
,p_query_column_id=>39
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381810080023845)
,p_query_column_id=>40
,p_column_alias=>'PROBATION_END_DATE'
,p_column_display_sequence=>55
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39381912329023846)
,p_query_column_id=>41
,p_column_alias=>'TAX_PAYER'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39382069238023847)
,p_query_column_id=>42
,p_column_alias=>'PROJECT_NO'
,p_column_display_sequence=>56
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39382165889023848)
,p_query_column_id=>43
,p_column_alias=>'PFA_ADMINS'
,p_column_display_sequence=>18
,p_column_heading=>'PFA'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PFA_NAME d, PFADMIN_ID r',
'from XXHRMS.XXHRMS_PFA_ADMIN',
'--where COMPANY_CODE = :SS_COMPANY_CODE',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39382258447023849)
,p_query_column_id=>44
,p_column_alias=>'PIN_NO'
,p_column_display_sequence=>19
,p_column_heading=>'PFA Pin'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39382301841023850)
,p_query_column_id=>45
,p_column_alias=>'TAX_ID'
,p_column_display_sequence=>26
,p_column_heading=>'Tax ID'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39375182090023728)
,p_query_column_id=>46
,p_column_alias=>'UPDATED_COLUMNS'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39414966571072901)
,p_query_column_id=>47
,p_column_alias=>'TRANS_TYPE'
,p_column_display_sequence=>57
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415051316072902)
,p_query_column_id=>48
,p_column_alias=>'VERSION_NUMBER'
,p_column_display_sequence=>58
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415137885072903)
,p_query_column_id=>49
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>59
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39297719543541545)
,p_query_column_id=>50
,p_column_alias=>'ATTRIBUTE_CATEGORY'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39297842369541546)
,p_query_column_id=>51
,p_column_alias=>'ATTRIBUTE1'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39297998811541547)
,p_query_column_id=>52
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39298063535541548)
,p_query_column_id=>53
,p_column_alias=>'ATTRIBUTE3'
,p_column_display_sequence=>82
,p_column_heading=>'BVN'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39298184416541549)
,p_query_column_id=>54
,p_column_alias=>'ATTRIBUTE4'
,p_column_display_sequence=>83
,p_column_heading=>'Incremental Month'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:January;JAN,February;FEB,March;MAR,April;APR,May;MAY,June;JUN,July;JUL,August;AUG,September;SEP,October;OCT,November;NOV,December;DEC'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39298242681541550)
,p_query_column_id=>55
,p_column_alias=>'ATTRIBUTE5'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39372464692023701)
,p_query_column_id=>56
,p_column_alias=>'ATTRIBUTE6'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39372508569023702)
,p_query_column_id=>57
,p_column_alias=>'ATTRIBUTE7'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39372678776023703)
,p_query_column_id=>58
,p_column_alias=>'ATTRIBUTE8'
,p_column_display_sequence=>20
,p_column_heading=>'HMO'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HOSPITAL_NAME d, HOSPITAL_CODE r',
'from XXHRMS.XXHRMS_HOSPITALS',
'--where COMPANY_CODE = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39372740549023704)
,p_query_column_id=>59
,p_column_alias=>'ATTRIBUTE9'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417763700072929)
,p_query_column_id=>60
,p_column_alias=>'ATTRIBUTE10'
,p_column_display_sequence=>61
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417858844072930)
,p_query_column_id=>61
,p_column_alias=>'ATTRIBUTE11'
,p_column_display_sequence=>62
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417930509072931)
,p_query_column_id=>62
,p_column_alias=>'ATTRIBUTE12'
,p_column_display_sequence=>63
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418060553072932)
,p_query_column_id=>63
,p_column_alias=>'ATTRIBUTE13'
,p_column_display_sequence=>64
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418181139072933)
,p_query_column_id=>64
,p_column_alias=>'ATTRIBUTE14'
,p_column_display_sequence=>65
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418275157072934)
,p_query_column_id=>65
,p_column_alias=>'ATTRIBUTE15'
,p_column_display_sequence=>66
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418365576072935)
,p_query_column_id=>66
,p_column_alias=>'ATTRIBUTE16'
,p_column_display_sequence=>67
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418429217072936)
,p_query_column_id=>67
,p_column_alias=>'ATTRIBUTE17'
,p_column_display_sequence=>68
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418508018072937)
,p_query_column_id=>68
,p_column_alias=>'ATTRIBUTE18'
,p_column_display_sequence=>69
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418613147072938)
,p_query_column_id=>69
,p_column_alias=>'ATTRIBUTE19'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418753939072939)
,p_query_column_id=>70
,p_column_alias=>'ATTRIBUTE20'
,p_column_display_sequence=>71
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415216470072904)
,p_query_column_id=>71
,p_column_alias=>'SUB_ORGANIZATION_CODE'
,p_column_display_sequence=>5
,p_column_heading=>'&AP_SUBORG_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, CODE r',
'from XXHRMS.XXHRMS_SUB_ORGANIZATION',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418883243072940)
,p_query_column_id=>72
,p_column_alias=>'ATTRIBUTE21'
,p_column_display_sequence=>72
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39418958163072941)
,p_query_column_id=>73
,p_column_alias=>'ATTRIBUTE22'
,p_column_display_sequence=>73
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39419020713072942)
,p_query_column_id=>74
,p_column_alias=>'ATTRIBUTE23'
,p_column_display_sequence=>74
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39419112385072943)
,p_query_column_id=>75
,p_column_alias=>'ATTRIBUTE24'
,p_column_display_sequence=>75
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39419272985072944)
,p_query_column_id=>76
,p_column_alias=>'ATTRIBUTE25'
,p_column_display_sequence=>76
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39419327466072945)
,p_query_column_id=>77
,p_column_alias=>'ATTRIBUTE26'
,p_column_display_sequence=>77
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39419422878072946)
,p_query_column_id=>78
,p_column_alias=>'ATTRIBUTE27'
,p_column_display_sequence=>78
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39419512522072947)
,p_query_column_id=>79
,p_column_alias=>'ATTRIBUTE28'
,p_column_display_sequence=>79
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39419675729072948)
,p_query_column_id=>80
,p_column_alias=>'ATTRIBUTE29'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39419701551072949)
,p_query_column_id=>81
,p_column_alias=>'ATTRIBUTE30'
,p_column_display_sequence=>81
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39376112479023738)
,p_query_column_id=>82
,p_column_alias=>'OBJECT_VERSION_NUMBER'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415371620072905)
,p_query_column_id=>83
,p_column_alias=>'LAST_PROMOTION_DATE'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39376230252023739)
,p_name=>'Update Request'
,p_parent_plug_id=>wwv_flow_imp.id(39294460042541512)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    case',
'    when a.PERSON_ID != b.PERSON_ID then ''<font color = RED>''||a.PERSON_ID||''</font>''',
'    else  a.PERSON_ID',
'    end PERSON_ID,',
'    case',
'    when a.SUB_ORGANIZATION_CODE != b.SUB_ORGANIZATION_CODE then ''<font color = RED>''||a.SUB_ORGANIZATION_CODE||''</font>''',
'    else  a.SUB_ORGANIZATION_CODE',
'    end SUB_ORGANIZATION_CODE,',
'     case',
'    when a.JOB_ID != b.JOB_ID then ''<font color = RED>''||a.JOB_ID||''</font>''',
'    else  a.JOB_ID',
'    end JOB_ID,',
'     case',
'    when a.FULLNAME != b.FULLNAME then ''<font color = RED>''||a.FULLNAME||''</font>''',
'    else  a.FULLNAME',
'    end FULL_NAME,',
'    case',
'    when a.DEPT_CODE != b.DEPT_CODE then ''<font color = RED>''||a.DEPT_CODE||''</font>''',
'    else  a.DEPT_CODE',
'    end DEPT_CODE,',
'    case',
'    when a.DEPT_LOCATION != b.DEPT_LOCATION then ''<font color = RED>''|| (select NAME from XXHRMS.XXHRMS_DEP_LOCATION where code = a.DEPT_LOCATION and company_code = :AP_COMPANY_CODE) ||''</font>''',
'    else  a.DEPT_LOCATION',
'    end DEPT_LOCATION,',
'	case',
'    when a.EMP_TYPE != b.EMP_TYPE then ''<font color = RED>''||a.EMP_TYPE||''</font>''',
'    else  a.EMP_TYPE',
'    end EMP_TYPE,',
'	case',
'    when a.BANK_NAME != b.BANK_NAME then ''<font color = RED>''|| (select BANK_NAME from XXHRMS.XXHRMS_BANKS where BANK_CODE =a.BANK_NAME) ||''</font>''',
'    else  a.BANK_NAME',
'    end BANK_NAME,',
'	case',
'    when a.EMP_DUTIES != b.EMP_DUTIES then ''<font color = RED>''||a.EMP_DUTIES||''</font>''',
'    else  a.EMP_DUTIES',
'    end EMP_DUTIES,',
'/*	case',
'    when a.BIRTH_DATE != TO_dATE(b.BIRTH_DATE,''DD/MON/YYYY'') then ''<font color = RED>''||a.BIRTH_DATE||''</font>''',
'    else  a.BIRTH_DATE',
'    end BIRTH_DATE,',
'*/',
'	case',
'    when a.GRADE != b.GRADE then ''<font color = RED>''||a.GRADE||''</font>''',
'    else  a.GRADE',
'    end GRADE,',
'    case',
'    when a.GRADE_STEP != b.GRADE_STEP then ''<font color = RED>''||a.GRADE_STEP||''</font>''',
'    else  a.GRADE_STEP',
'    end GRADE_STEP,',
'	case',
'    when a.PFA_ADMINS != b.PFA_ADMINS then ''<font color = RED>''||(select PFA_NAME from XXHRMS.XXHRMS_PFA_ADMIN WHERE PFADMIN_ID = a.PFA_ADMINS)||''</font>''',
'    else  a.PFA_ADMINS',
'    end PFA_ADMINS,',
'	case',
'    when a.PIN_NO != b.PIN_NO then ''<font color = RED>''||a.PIN_NO||''</font>''',
'    else  a.PIN_NO',
'    end PIN_NO,',
'	case',
'    when a.SUPERVISOR != b.SUPERVISOR then ''<font color = RED>''||a.SUPERVISOR||''</font>''',
'    else  a.SUPERVISOR',
'    end SUPERVISOR,',
'	case',
'    when a.ATTRIBUTE3 != b.ATTRIBUTE3 then ''<font color = RED>''||a.ATTRIBUTE3||''</font>''',
'    else  a.ATTRIBUTE3',
'    end ATTRIBUTE3,',
'	case',
'    when a.ATTRIBUTE4 != b.ATTRIBUTE4 then ''<font color = RED>''||a.ATTRIBUTE4||''</font>''',
'    else  a.ATTRIBUTE4',
'    end ATTRIBUTE4,',
'	case',
'    when a.ATTRIBUTE6 != b.ATTRIBUTE6 then ''<font color = RED>''||a.ATTRIBUTE6||''</font>''',
'    else  a.ATTRIBUTE6',
'    end ATTRIBUTE6,',
'	case',
'    when a.ATTRIBUTE7 != b.ATTRIBUTE7 then ''<font color = RED>''||a.ATTRIBUTE7||''</font>''',
'    else  a.ATTRIBUTE7',
'    end ATTRIBUTE7,',
'	case',
'    when a.ATTRIBUTE8 != b.ATTRIBUTE8 then ''<font color = RED>''||a.ATTRIBUTE8||''</font>''',
'    else  a.ATTRIBUTE8',
'    end ATTRIBUTE8,',
'	case',
'    when a.ATTRIBUTE9 != b.ATTRIBUTE9 then ''<font color = RED>''||a.ATTRIBUTE9||''</font>''',
'    else  a.ATTRIBUTE9',
'    end ATTRIBUTE9, ',
'    case',
'    when a.ACC_NO != b.ACC_NO then ''<font color = RED>''||a.ACC_NO||''</font>''',
'    else  a.ACC_NO',
'    end ACC_NO, ',
'     case',
'    when a.POSITION != b.POSITION then ''<font color = RED>''||a.POSITION||''</font>''',
'    else  a.POSITION',
'    end POSITION, ',
'     case',
'    when a.STAFF_CATEGORY != b.STAFF_CATEGORY then ''<font color = RED>''||a.STAFF_CATEGORY||''</font>''',
'    else  a.STAFF_CATEGORY',
'    end STAFF_CATEGORY, ',
' /*   case',
'    when TRUNC(a.PROBATION_DATE) != TRUNC(b.PROBATION_DATE) then ''<font color = RED>''|| TRUNC(a.PROBATION_DATE)||''</font>''',
'    else  TRUNC(a.PROBATION_DATE)',
'    end PROBATION_DATE,',
'      case',
'    when a.PROBATION_END_DATE != b.PROBATION_END_DATE then ''<font color = RED>''||a.PROBATION_END_DATE||''</font>''',
'    else  a.PROBATION_END_DATE',
'    end PROBATION_END_DATE,  */',
'    case',
'    when a.SSN != b.SSN then ''<font color = RED>''||a.SSN||''</font>''',
'    else  a.SSN',
'    end SSN,',
'    case',
'    when a.TAX_ID != b.TAX_ID then ''<font color = RED>''||a.TAX_ID||''</font>''',
'    else  a.TAX_ID',
'    end TAX_ID,',
'	',
'	a.INS_BY REQUESTER',
'/*    case',
'    when   TO_CHAR(trunc(a.EFFECTIVE_START_DATE),''DD-MON-YYYY'') !=  TO_CHAR(trunc(b.EFFECTIVE_START_DATE),''DD-MON-YYYY'') then ''<font color = RED>''||a.EFFECTIVE_START_DATE||''</font>''',
'    else  a.EFFECTIVE_START_DATE',
'    end EFFECTIVE_START_DATE',
'*/',
' --    TO_CHAR(a.EFFECTIVE_START_DATE,''DD-MON-YYYY'')',
'',
'FROM XXHRMS.XXHRMS_ASSIGNMENTS_UPDATE a, xxhrms.XXHRMS_ASSIGNMENTS_F b',
'WHERE a.person_id = b.person_id',
'and a.REQUEST_ID = :P17_REQ_ID',
'AND TRUNC(sysdate) between TRUNC(b.effective_start_date) AND NVL(b.effective_end_date, sysdate)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39376573102023742)
,p_query_column_id=>1
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>1
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417088902072922)
,p_query_column_id=>2
,p_column_alias=>'SUB_ORGANIZATION_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'&AP_SUBORG_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, CODE r',
'from XXHRMS.XXHRMS_SUB_ORGANIZATION',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415414235072906)
,p_query_column_id=>3
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>4
,p_column_heading=>'&AP_JOBTITLE_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, JOB_CODE r',
'from XXHRMS.XXHRMS_JOBS',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39376717218023744)
,p_query_column_id=>4
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415587414072907)
,p_query_column_id=>5
,p_column_alias=>'DEPT_CODE'
,p_column_display_sequence=>5
,p_column_heading=>'&AP_DEPARTMENT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, DEPT_ID r',
'from XXHRMS.XXHRMS_DEPARTMENT',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415699333072908)
,p_query_column_id=>6
,p_column_alias=>'DEPT_LOCATION'
,p_column_display_sequence=>6
,p_column_heading=>'&AP_LOCATION_LABEL.'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME d, CODE r',
'from XXHRMS.XXHRMS_DEP_LOCATION',
'--where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415709386072909)
,p_query_column_id=>7
,p_column_alias=>'EMP_TYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Employment Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(39632694319659644)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415823229072910)
,p_query_column_id=>8
,p_column_alias=>'BANK_NAME'
,p_column_display_sequence=>14
,p_column_heading=>'Bank Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BANK_NAME d, BANK_CODE r',
'from XXHRMS.XXHRMS_BANKS',
'where COMPANY_CODE = :AP_COMPANY_CODE',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415999864072911)
,p_query_column_id=>9
,p_column_alias=>'EMP_DUTIES'
,p_column_display_sequence=>7
,p_column_heading=>'Unit'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UNIT_NAME d, UNIT_ID r',
'from XXHRMS.XXHRMS_UNITS',
'where ORGANIZATION_CODE = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416072670072912)
,p_query_column_id=>10
,p_column_alias=>'GRADE'
,p_column_display_sequence=>12
,p_column_heading=>'Grade'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GRADE d, ID r',
'from XXHRMS.XXHRMS_GRADES',
'--where ORGANISATION = :SS_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417143442072923)
,p_query_column_id=>11
,p_column_alias=>'GRADE_STEP'
,p_column_display_sequence=>13
,p_column_heading=>'Grade Step'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416165285072913)
,p_query_column_id=>12
,p_column_alias=>'PFA_ADMINS'
,p_column_display_sequence=>16
,p_column_heading=>'PFA'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PFA_NAME d, PFADMIN_ID r',
'from XXHRMS.XXHRMS_PFA_ADMIN',
'--where COMPANY_CODE = :SS_COMPANY_CODE',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416221668072914)
,p_query_column_id=>13
,p_column_alias=>'PIN_NO'
,p_column_display_sequence=>17
,p_column_heading=>'PFA Pin'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416388494072915)
,p_query_column_id=>14
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>11
,p_column_heading=>'Supervisor'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416470842072916)
,p_query_column_id=>15
,p_column_alias=>'ATTRIBUTE3'
,p_column_display_sequence=>24
,p_column_heading=>'BVN'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416599751072917)
,p_query_column_id=>16
,p_column_alias=>'ATTRIBUTE4'
,p_column_display_sequence=>25
,p_column_heading=>'Incremental Month'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:January;JAN,February;FEB,March;MAR,April;APR,May;MAY,June;JUN,July;JUL,August;AUG,September;SEP,October;OCT,November;NOV,December;DEC'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416655435072918)
,p_query_column_id=>17
,p_column_alias=>'ATTRIBUTE6'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416707159072919)
,p_query_column_id=>18
,p_column_alias=>'ATTRIBUTE7'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416860670072920)
,p_query_column_id=>19
,p_column_alias=>'ATTRIBUTE8'
,p_column_display_sequence=>18
,p_column_heading=>'HMO'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HOSPITAL_NAME d, HOSPITAL_CODE r',
'from XXHRMS.XXHRMS_HOSPITALS',
'--where COMPANY_CODE = :SS_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39416900731072921)
,p_query_column_id=>20
,p_column_alias=>'ATTRIBUTE9'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417292149072924)
,p_query_column_id=>21
,p_column_alias=>'ACC_NO'
,p_column_display_sequence=>15
,p_column_heading=>'Account No'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417316053072925)
,p_query_column_id=>22
,p_column_alias=>'POSITION'
,p_column_display_sequence=>10
,p_column_heading=>'Position'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME d, POSITION_CODE r',
'from XXHRMS.XXHRMS_POSITIONS',
'where company_code = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417460008072926)
,p_query_column_id=>23
,p_column_alias=>'STAFF_CATEGORY'
,p_column_display_sequence=>9
,p_column_heading=>'Staff Category'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48585902018701711)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417591176072927)
,p_query_column_id=>24
,p_column_alias=>'SSN'
,p_column_display_sequence=>23
,p_column_heading=>'Tax State'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION d, STATE_CODE r',
'from XXHRMS.XXHRMS_STATES'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417698263072928)
,p_query_column_id=>25
,p_column_alias=>'TAX_ID'
,p_column_display_sequence=>22
,p_column_heading=>'Tax ID'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39376441093023741)
,p_query_column_id=>26
,p_column_alias=>'REQUESTER'
,p_column_display_sequence=>26
,p_column_heading=>'Requester'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(30110881455904351)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39377972872023806)
,p_plug_name=>'Assignment Information Approval'
,p_parent_plug_id=>wwv_flow_imp.id(39294460042541512)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39378398704023810)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(39294460042541512)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''ASSGNMT_APRVL'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39378664616023813)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39378703888023814)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39378506091023812)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39378416411023811)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40660343139972405)
,p_plug_name=>'Deductions Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>200
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'VAR_LOAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40660516442972407)
,p_plug_name=>'Deductions Upload'
,p_parent_plug_id=>wwv_flow_imp.id(40660343139972405)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.rowid row_id,a.* ',
'from xxsbs.xxsbs_deductions_upload a',
'where TRANS_ID = :P17_REQ_ID'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(40660603914972408)
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
,p_internal_uid=>40660603914972408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40660949094972411)
,p_db_column_name=>'REF_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ref Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661057899972412)
,p_db_column_name=>'DEDUCTION_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Deduction Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(20162880087080928)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661182714972413)
,p_db_column_name=>'AMOUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661239675972414)
,p_db_column_name=>'PROC_FLAG'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Proc Flag'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661390826972415)
,p_db_column_name=>'PROC_TIME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Proc Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661403075972416)
,p_db_column_name=>'MESSAGE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661689030972418)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Staff'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661770589972419)
,p_db_column_name=>'INS_TIME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ins Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661877508972420)
,p_db_column_name=>'UPDATE_VERSION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Update Version'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40661989794972421)
,p_db_column_name=>'BATCH_FILE_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Batch File Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662051323972422)
,p_db_column_name=>'INS_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662122022972423)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662201428972424)
,p_db_column_name=>'UPDATE_TIME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Update Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662393516972425)
,p_db_column_name=>'START_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662473892972426)
,p_db_column_name=>'END_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662505738972427)
,p_db_column_name=>'VARIATION_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Variation Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662635389972428)
,p_db_column_name=>'OTHER_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Other Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662758848972429)
,p_db_column_name=>'TRANS_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Trans Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662861687972430)
,p_db_column_name=>'COMPANY_CODE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(281875835807653817)
,p_db_column_name=>'ROW_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(281875916485653818)
,p_db_column_name=>'SCN'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Scn'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(281876043940653819)
,p_db_column_name=>'STATUS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(281876173508653820)
,p_db_column_name=>'PROCESS_FLAG'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Process'
,p_column_link=>'javascript:  var flag = ''#PROCESS_FLAG#'';  $s("P17_ROW_ID",''#ROW_ID#''); if ( flag == ''ENABLED'')  	{ 	$s("P17_PROCESS",''DISABLED''); }  else  	{ 	$s("P17_PROCESS",''ENABLED''); }'
,p_column_linktext=>'#PROCESS_FLAG#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(40790705474528217)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'407908'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REF_ID:DEDUCTION_NAME:AMOUNT:PROC_FLAG:PROC_TIME:MESSAGE:STAFF_ID:INS_TIME:UPDATE_VERSION:BATCH_FILE_NAME:INS_BY:UPDATED_BY:UPDATE_TIME:START_DATE:END_DATE:VARIATION_ID:OTHER_ID:TRANS_ID:COMPANY_CODE:ROW_ID:STATUS:PROCESS_FLAG'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(281498319119918337)
,p_plug_name=>'Deduction Approval'
,p_parent_plug_id=>wwv_flow_imp.id(40660343139972405)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(281498434996918338)
,p_plug_name=>'Approval'
,p_parent_plug_id=>wwv_flow_imp.id(281498319119918337)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(281498636602918340)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(281498319119918337)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''VAR_LOAD'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(281498783300918341)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(281498890197918342)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Apr Id'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(281498955441918343)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(281499036589918344)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40660418969972406)
,p_plug_name=>'Allowance Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>210
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'BEN_LOAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40660768941972409)
,p_plug_name=>'Allowance Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(40660418969972406)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.rowid row_id, U.*',
'from xxsbs.xxsbs_allowance_upload U',
'where TRANS_ID = :P17_REQ_ID'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(40660897546972410)
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
,p_internal_uid=>40660897546972410
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(281629760615044902)
,p_db_column_name=>'PROCESS_FLAG'
,p_display_order=>10
,p_column_identifier=>'V'
,p_column_label=>'Process'
,p_column_link=>'javascript:  var flag = ''#PROCESS_FLAG#'';  $s("P17_ROW_ID",''#ROW_ID#''); if ( flag == ''ENABLED'')  	{ 	$s("P17_PROCESS",''DISABLED''); }  else  	{ 	$s("P17_PROCESS",''ENABLED''); }'
,p_column_linktext=>'#PROCESS_FLAG#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40662924840972431)
,p_db_column_name=>'REF_ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Ref Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663048919972432)
,p_db_column_name=>'ALLOWANCE_NAME'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Allowance Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(20162880087080928)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663172872972433)
,p_db_column_name=>'AMOUNT'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663281566972434)
,p_db_column_name=>'PROC_FLAG'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'PROC_FLAG'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663312691972435)
,p_db_column_name=>'PROC_TIME'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Proc Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663445246972436)
,p_db_column_name=>'MESSAGE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663672778972438)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Staff Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663735171972439)
,p_db_column_name=>'INS_TIME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ins Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663807178972440)
,p_db_column_name=>'UPDATE_VERSION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Update Version'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40663924506972441)
,p_db_column_name=>'BATCH_FILE_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Batch File Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664077572972442)
,p_db_column_name=>'INS_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ins By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664129471972443)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664217689972444)
,p_db_column_name=>'UPDATE_TIME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Update Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664315325972445)
,p_db_column_name=>'START_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664499948972446)
,p_db_column_name=>'END_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664500824972447)
,p_db_column_name=>'VARIATION_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Variation Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664671396972448)
,p_db_column_name=>'OTHER_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Other Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664792055972449)
,p_db_column_name=>'TRANS_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Trans Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40664897062972450)
,p_db_column_name=>'COMPANY_CODE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(281629693574044901)
,p_db_column_name=>'SCN'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Scn'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(281874385245653802)
,p_db_column_name=>'ROW_ID'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(40791807074532832)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'407919'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROCESS_FLAG:STAFF_ID:ALLOWANCE_NAME:AMOUNT:START_DATE:END_DATE:INS_BY:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40796456587551001)
,p_plug_name=>'Allowance Upload'
,p_parent_plug_id=>wwv_flow_imp.id(40660418969972406)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(40798652711551023)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(40796456587551001)
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>250
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''BEN_LOAD'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Approval has been made on this Leave Request'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40798996611551026)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>3
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40799090471551027)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name d, person_id r',
'from xxhrms.XXHRMS_PEOPLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40798811990551025)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(40798774614551024)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40799162219551028)
,p_plug_name=>'Approval'
,p_parent_plug_id=>wwv_flow_imp.id(40796456587551001)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41351730658173924)
,p_plug_name=>'Assignment Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>220
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'ASS_LOAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(37546294390335432)
,p_name=>'Assignment Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(41351730658173924)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.STAFF_ID EMPLOYEE_ID, A.STAFF_ID EMPLOYEE_NAME , A.UPDATED_COLUMNS UPDATES, A.ATTRIBUTE2 REASON, A.INS_TIME DATE_UPLOADED,',
'A.INS_BY UPLOADED_BY, A.*',
'from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(41352148518173928)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41352291285173929)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Employee Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41352356151173930)
,p_query_column_id=>3
,p_column_alias=>'UPDATES'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41351117701173918)
,p_query_column_id=>4
,p_column_alias=>'REASON'
,p_column_display_sequence=>10
,p_column_heading=>'Reason For Upload'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41351273914173919)
,p_query_column_id=>5
,p_column_alias=>'DATE_UPLOADED'
,p_column_display_sequence=>13
,p_column_heading=>'Date Uploaded'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41352430405173931)
,p_query_column_id=>6
,p_column_alias=>'UPLOADED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Uploaded By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41352554962173932)
,p_query_column_id=>7
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37546434592335434)
,p_query_column_id=>8
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41352694156173933)
,p_query_column_id=>9
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>17
,p_column_heading=>'&AP_JOBTITLE_LABEL.'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.JOB_ID is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48584727251701710)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41352757774173934)
,p_query_column_id=>10
,p_column_alias=>'GRADE'
,p_column_display_sequence=>5
,p_column_heading=>'Grade'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.GRADE is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'select GRADE, ID from xxhrms.xxhrms_grades'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41352808799173935)
,p_query_column_id=>11
,p_column_alias=>'STAFF_CATEGORY'
,p_column_display_sequence=>18
,p_column_heading=>'Staff Category'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.STAFF_CATEGORY is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(48585902018701711)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41352995775173936)
,p_query_column_id=>12
,p_column_alias=>'DEPT_CODE'
,p_column_display_sequence=>19
,p_column_heading=>'&AP_DEPARTMENT_LABEL.'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.DEPT_CODE  is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353085134173937)
,p_query_column_id=>13
,p_column_alias=>'DEPT_LOCATION'
,p_column_display_sequence=>20
,p_column_heading=>'&AP_LOCATION_LABEL.'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.DEPT_LOCATION is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353145533173938)
,p_query_column_id=>14
,p_column_alias=>'ASSIGNMENT_STATUS'
,p_column_display_sequence=>21
,p_column_heading=>'Assignment Status'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ASSIGNMENT_STATUS is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353262070173939)
,p_query_column_id=>15
,p_column_alias=>'EMP_TYPE'
,p_column_display_sequence=>22
,p_column_heading=>'Employee Type'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.EMP_TYPE is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(39632694319659644)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353322302173940)
,p_query_column_id=>16
,p_column_alias=>'SSN'
,p_column_display_sequence=>23
,p_column_heading=>'Tax State'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.SSN is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353451645173941)
,p_query_column_id=>17
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353576653173942)
,p_query_column_id=>18
,p_column_alias=>'BANK_NAME'
,p_column_display_sequence=>25
,p_column_heading=>'Bank Name'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.BANK_NAME is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353656627173943)
,p_query_column_id=>19
,p_column_alias=>'BANK_BRANCH'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353706768173944)
,p_query_column_id=>20
,p_column_alias=>'ACC_TYPE'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353860013173945)
,p_query_column_id=>21
,p_column_alias=>'ACC_NO'
,p_column_display_sequence=>28
,p_column_heading=>'Account Number'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ACC_NO is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41353918144173946)
,p_query_column_id=>22
,p_column_alias=>'SUPERVISOR'
,p_column_display_sequence=>29
,p_column_heading=>'Supervisor'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.SUPERVISOR is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41354071182173947)
,p_query_column_id=>23
,p_column_alias=>'EMP_DUTIES'
,p_column_display_sequence=>30
,p_column_heading=>'Units'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.EMP_DUTIES is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41354141945173948)
,p_query_column_id=>24
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>31
,p_column_heading=>'Hire Date'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.HIRE_DATE is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41354238096173949)
,p_query_column_id=>25
,p_column_alias=>'EFFECTIVE_START_DATE'
,p_column_display_sequence=>32
,p_column_heading=>'Effective Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41354360077173950)
,p_query_column_id=>26
,p_column_alias=>'EFFECTIVE_END_DATE'
,p_column_display_sequence=>33
,p_column_heading=>'Effective End Date'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.EFFECTIVE_END_DATE is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427009380669701)
,p_query_column_id=>27
,p_column_alias=>'ABSENCE_TYPE'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427153688669702)
,p_query_column_id=>28
,p_column_alias=>'PROBATION'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427244891669703)
,p_query_column_id=>29
,p_column_alias=>'PROBATION_DATE'
,p_column_display_sequence=>36
,p_column_heading=>'Probation Date'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.PROBATION_DATE is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427311590669704)
,p_query_column_id=>30
,p_column_alias=>'CURRENCY'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427446588669705)
,p_query_column_id=>31
,p_column_alias=>'ANNUAL_SAL'
,p_column_display_sequence=>7
,p_column_heading=>'Annual Salary'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ANNUAL_SAL is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41345164085173808)
,p_query_column_id=>32
,p_column_alias=>'FULLNAME'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427557676669706)
,p_query_column_id=>33
,p_column_alias=>'P_MODE'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427672473669707)
,p_query_column_id=>34
,p_column_alias=>'PAID_SALARY'
,p_column_display_sequence=>8
,p_column_heading=>'Paid Salary'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.PAID_SALARY is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427702410669708)
,p_query_column_id=>35
,p_column_alias=>'GRADE_STEP'
,p_column_display_sequence=>6
,p_column_heading=>'Grade Step'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.GRADE_STEP is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427818359669709)
,p_query_column_id=>36
,p_column_alias=>'ABSENCE_ID'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41427920125669710)
,p_query_column_id=>37
,p_column_alias=>'JOBLEVEL'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428081804669711)
,p_query_column_id=>38
,p_column_alias=>'POSITION'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428119920669712)
,p_query_column_id=>39
,p_column_alias=>'SSF_CONTRIBUTER'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428279663669713)
,p_query_column_id=>40
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428337892669714)
,p_query_column_id=>41
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428433034669715)
,p_query_column_id=>42
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41346238595173819)
,p_query_column_id=>43
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428583671669716)
,p_query_column_id=>44
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428604035669717)
,p_query_column_id=>45
,p_column_alias=>'PROBATION_END_DATE'
,p_column_display_sequence=>47
,p_column_heading=>'Probation End Date'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.PROBATION_END_DATE is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428750175669718)
,p_query_column_id=>46
,p_column_alias=>'TAX_PAYER'
,p_column_display_sequence=>48
,p_column_heading=>'Tax Payer'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.TAX_PAYER is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428840405669719)
,p_query_column_id=>47
,p_column_alias=>'PROJECT_NO'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.PROJECT_NO is not null'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41428962370669720)
,p_query_column_id=>48
,p_column_alias=>'PFA_ADMINS'
,p_column_display_sequence=>50
,p_column_heading=>'PFA Name'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.PFA_ADMINS is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429050888669721)
,p_query_column_id=>49
,p_column_alias=>'PIN_NO'
,p_column_display_sequence=>51
,p_column_heading=>'Pin No'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.PIN_NO is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429109175669722)
,p_query_column_id=>50
,p_column_alias=>'TAX_ID'
,p_column_display_sequence=>52
,p_column_heading=>'Tax Id'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.TAX_ID is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41347060818173827)
,p_query_column_id=>51
,p_column_alias=>'UPDATED_COLUMNS'
,p_column_display_sequence=>9
,p_column_heading=>'Updated Columns'
,p_column_html_expression=>'<font color = ''green''><b>#UPDATED_COLUMNS#</font></b>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.UPDATED_COLUMNS is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429274580669723)
,p_query_column_id=>52
,p_column_alias=>'TRANS_TYPE'
,p_column_display_sequence=>53
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429337516669724)
,p_query_column_id=>53
,p_column_alias=>'VERSION_NUMBER'
,p_column_display_sequence=>54
,p_column_heading=>'Version Number'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.VERSION_NUMBER is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429464809669725)
,p_query_column_id=>54
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>55
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429571702669726)
,p_query_column_id=>55
,p_column_alias=>'ATTRIBUTE_CATEGORY'
,p_column_display_sequence=>56
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429681777669727)
,p_query_column_id=>56
,p_column_alias=>'ATTRIBUTE1'
,p_column_display_sequence=>57
,p_column_heading=>'Attribute1'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE1 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429773586669728)
,p_query_column_id=>57
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>58
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429841693669729)
,p_query_column_id=>58
,p_column_alias=>'ATTRIBUTE3'
,p_column_display_sequence=>59
,p_column_heading=>'BVN'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE3 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41429920251669730)
,p_query_column_id=>59
,p_column_alias=>'ATTRIBUTE4'
,p_column_display_sequence=>60
,p_column_heading=>'Incremental Month'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE4 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430003371669731)
,p_query_column_id=>60
,p_column_alias=>'ATTRIBUTE5'
,p_column_display_sequence=>61
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430143991669732)
,p_query_column_id=>61
,p_column_alias=>'ATTRIBUTE6'
,p_column_display_sequence=>62
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430296296669733)
,p_query_column_id=>62
,p_column_alias=>'ATTRIBUTE7'
,p_column_display_sequence=>63
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430321980669734)
,p_query_column_id=>63
,p_column_alias=>'ATTRIBUTE8'
,p_column_display_sequence=>64
,p_column_heading=>'HMO'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE8 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430425815669735)
,p_query_column_id=>64
,p_column_alias=>'ATTRIBUTE9'
,p_column_display_sequence=>65
,p_column_heading=>'HMO Number'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE9 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430521391669736)
,p_query_column_id=>65
,p_column_alias=>'ATTRIBUTE10'
,p_column_display_sequence=>66
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430674451669737)
,p_query_column_id=>66
,p_column_alias=>'ATTRIBUTE11'
,p_column_display_sequence=>67
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430704595669738)
,p_query_column_id=>67
,p_column_alias=>'ATTRIBUTE12'
,p_column_display_sequence=>68
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430809939669739)
,p_query_column_id=>68
,p_column_alias=>'ATTRIBUTE13'
,p_column_display_sequence=>69
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41430928602669740)
,p_query_column_id=>69
,p_column_alias=>'ATTRIBUTE14'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431093458669741)
,p_query_column_id=>70
,p_column_alias=>'ATTRIBUTE15'
,p_column_display_sequence=>71
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431133438669742)
,p_query_column_id=>71
,p_column_alias=>'ATTRIBUTE16'
,p_column_display_sequence=>72
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431239738669743)
,p_query_column_id=>72
,p_column_alias=>'ATTRIBUTE17'
,p_column_display_sequence=>73
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431346985669744)
,p_query_column_id=>73
,p_column_alias=>'ATTRIBUTE18'
,p_column_display_sequence=>74
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431453354669745)
,p_query_column_id=>74
,p_column_alias=>'ATTRIBUTE19'
,p_column_display_sequence=>75
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431513213669746)
,p_query_column_id=>75
,p_column_alias=>'ATTRIBUTE20'
,p_column_display_sequence=>76
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431621232669747)
,p_query_column_id=>76
,p_column_alias=>'SUB_ORGANIZATION_CODE'
,p_column_display_sequence=>77
,p_column_heading=>'&AP_SUBORG_LABEL.'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.SUB_ORGANIZATION_CODE is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431764672669748)
,p_query_column_id=>77
,p_column_alias=>'ATTRIBUTE21'
,p_column_display_sequence=>78
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431831234669749)
,p_query_column_id=>78
,p_column_alias=>'ATTRIBUTE22'
,p_column_display_sequence=>79
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41431972366669750)
,p_query_column_id=>79
,p_column_alias=>'ATTRIBUTE23'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432067346669701)
,p_query_column_id=>80
,p_column_alias=>'ATTRIBUTE24'
,p_column_display_sequence=>81
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432124421669702)
,p_query_column_id=>81
,p_column_alias=>'ATTRIBUTE25'
,p_column_display_sequence=>82
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432280808669703)
,p_query_column_id=>82
,p_column_alias=>'ATTRIBUTE26'
,p_column_display_sequence=>83
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432343991669704)
,p_query_column_id=>83
,p_column_alias=>'ATTRIBUTE27'
,p_column_display_sequence=>84
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432405699669705)
,p_query_column_id=>84
,p_column_alias=>'ATTRIBUTE28'
,p_column_display_sequence=>85
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432520608669706)
,p_query_column_id=>85
,p_column_alias=>'ATTRIBUTE29'
,p_column_display_sequence=>86
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432623516669707)
,p_query_column_id=>86
,p_column_alias=>'ATTRIBUTE30'
,p_column_display_sequence=>87
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432771835669708)
,p_query_column_id=>87
,p_column_alias=>'OBJECT_VERSION_NUMBER'
,p_column_display_sequence=>88
,p_column_heading=>'Object Version Number'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.OBJECT_VERSION_NUMBER is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432896478669709)
,p_query_column_id=>88
,p_column_alias=>'DATETRACK'
,p_column_display_sequence=>89
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41432996066669710)
,p_query_column_id=>89
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41433069772669711)
,p_query_column_id=>90
,p_column_alias=>'BATCH_ID'
,p_column_display_sequence=>91
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41433117910669712)
,p_query_column_id=>91
,p_column_alias=>'STATUS'
,p_column_display_sequence=>92
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(42931985924257512)
,p_query_column_id=>92
,p_column_alias=>'PROCESS_FLAG'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283156021043541426)
,p_query_column_id=>93
,p_column_alias=>'MSG'
,p_column_display_sequence=>93
,p_column_heading=>'Msg'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(281495840823918312)
,p_plug_name=>'Assignment Upload'
,p_parent_plug_id=>wwv_flow_imp.id(41351730658173924)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41351305026173920)
,p_plug_name=>'Assignment Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(281495840823918312)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(281495190683918305)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(41351305026173920)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''ASS_LOAD'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(281495262077918306)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(281495331651918307)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(281495465288918308)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(281495553946918309)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41899963443272625)
,p_plug_name=>'Payroll Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>260
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'PAYROLL_APPRVL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15699666807272539)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(41899963443272625)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level",  p.full_name, COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab app',
'join xxhrms.xxhrms_people p on app.apr_id = p.person_id',
'WHERE TRANS_ID = :P17_REQ_ID',
'and p.company_code = :AP_COMPANY_CODE',
'and trans_type = ''PAYROLL_APPRVL'''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P17_REQ_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(15699732101272540)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(49069504728515901)
,p_query_column_id=>2
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15699989709272542)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>2
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15700011121272543)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41900071717272626)
,p_name=>'Payroll Approval Details'
,p_parent_plug_id=>wwv_flow_imp.id(41899963443272625)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>8
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM XXHRMS.XXHRMS_PAYROLL_APPR_TBL ',
'WHERE ',
'company_code in ((select COLUMN_VALUE from xxadm.xxadm_password a, table(apex_string.split(p_str => nvl(null,a.company_code), p_sep => '':'')) where upper(a.LOGNAME )= upper(:AP_USERNAME))) and ',
'APR_ID =:P17_REQ_ID',
'--WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'--and APR_ID =:P17_REQ_ID',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P17_REQ_ID'
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
 p_id=>wwv_flow_imp.id(41900150771272627)
,p_query_column_id=>1
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_APP_GRP_CODE,P6_GROUP_TYPE,P6_PMONTH,P6_APPR_ID,P6_PAYRUN,P6_COMPANY_CODE:#APPROVAL_GROUP_CODE#,#GROUP_TYPE#,#PAYMONTH_CODE#,#APR_ID#,#PAYRUN#,#COMPANY_CODE#'
,p_column_linktext=>'Click to View Details'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41900217371272628)
,p_query_column_id=>2
,p_column_alias=>'PAYMONTH_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Paymonth Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(20164086390080931)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41900332520272629)
,p_query_column_id=>3
,p_column_alias=>'PAYRUN'
,p_column_display_sequence=>3
,p_column_heading=>'Payrun'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(56821259516888231)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41900420289272630)
,p_query_column_id=>4
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41900515632272631)
,p_query_column_id=>5
,p_column_alias=>'APPROVAL_GROUP'
,p_column_display_sequence=>5
,p_column_heading=>'Approval Group'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41900607475272632)
,p_query_column_id=>6
,p_column_alias=>'APPROVAL_LEVEL'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41900734831272633)
,p_query_column_id=>7
,p_column_alias=>'APPROVAL_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Approval Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41900897563272634)
,p_query_column_id=>8
,p_column_alias=>'APPROVAL_TIME'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41900919590272635)
,p_query_column_id=>9
,p_column_alias=>'APPROVED_BY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901015771272636)
,p_query_column_id=>10
,p_column_alias=>'EMP_COUNT'
,p_column_display_sequence=>10
,p_column_heading=>'No. of Employees'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901106335272637)
,p_query_column_id=>11
,p_column_alias=>'INITIATOR'
,p_column_display_sequence=>17
,p_column_heading=>'Initiator'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901245961272638)
,p_query_column_id=>12
,p_column_alias=>'INITIATE_TIME'
,p_column_display_sequence=>18
,p_column_heading=>'Initiate Time'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901319743272639)
,p_query_column_id=>13
,p_column_alias=>'TOTAL_GROSS'
,p_column_display_sequence=>11
,p_column_heading=>'Total Gross'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901415712272640)
,p_query_column_id=>14
,p_column_alias=>'TOTAL_DEDUCTIONS'
,p_column_display_sequence=>12
,p_column_heading=>'Total Deductions'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901535553272641)
,p_query_column_id=>15
,p_column_alias=>'TOTAL_TAX'
,p_column_display_sequence=>13
,p_column_heading=>'Total Tax'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901680481272642)
,p_query_column_id=>16
,p_column_alias=>'TOTAL_NETPAY'
,p_column_display_sequence=>14
,p_column_heading=>'Total Netpay'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901752795272643)
,p_query_column_id=>17
,p_column_alias=>'APPROVAL_GROUP_CODE'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41901820195272644)
,p_query_column_id=>18
,p_column_alias=>'GROUP_TYPE'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42932602156257519)
,p_plug_name=>'Approval Comment'
,p_parent_plug_id=>wwv_flow_imp.id(41899963443272625)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(82716650703367871)
,p_name=>'Budgets Details'
,p_region_name=>'budget_rep'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>140
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUDGET_ID,initcap(BUDGET_NAME),BUDGET_ACCOUNT_TYPE, BUDGET_START_DATE,BUDGET_END_DATE,BUDGET_VALUE,CREATED_DATE,',
'COMPANY_CODE,PROJECT_ID, NULL DEL,',
'case',
'when (select count(*) from xxpbg.XXPBG_BUDGET_SUPPLEMENTARY s where s.budget_id=b.budget_id)=0',
'then BUDGET_VALUE',
'else (select sum(s.budget_value) + b.budget_value from xxpbg.XXPBG_BUDGET_SUPPLEMENTARY s where budget_id=:P17_REQ_ID)',
'END BUDGE',
'FROM XXPBG.XXPBG_BUDGET b',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND BUDGET_ID=:P17_REQ_ID'))
,p_display_when_condition=>'P17_ACTION'
,p_display_when_cond2=>'SUP_BUDGET:BUDGET'
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P17_REQ_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29352235991778653)
,p_query_column_id=>1
,p_column_alias=>'BUDGET_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29350639682778647)
,p_query_column_id=>2
,p_column_alias=>'INITCAP(BUDGET_NAME)'
,p_column_display_sequence=>2
,p_column_heading=>'Budget Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29352663022778655)
,p_query_column_id=>3
,p_column_alias=>'BUDGET_ACCOUNT_TYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29351080619778648)
,p_query_column_id=>4
,p_column_alias=>'BUDGET_START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Budget Start Date'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29353010972778656)
,p_query_column_id=>5
,p_column_alias=>'BUDGET_END_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Budget End Date'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29353476324778659)
,p_query_column_id=>6
,p_column_alias=>'BUDGET_VALUE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29353801812778660)
,p_query_column_id=>7
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29349801790778643)
,p_query_column_id=>8
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'Organization'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Company_name d, company_code r',
'from xxhrms.xxhrms_companyinfo'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29350285183778645)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Project'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP(PROJECT_NAME) D, PROJECT_ID R',
'FROM XXPBG.XXPBG_PROJECTS'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29351479917778650)
,p_query_column_id=>10
,p_column_alias=>'DEL'
,p_column_display_sequence=>11
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete_bud" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#BUDGET_ID#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29351803025778651)
,p_query_column_id=>11
,p_column_alias=>'BUDGE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116460096364432760)
,p_plug_name=>'Supplementary Budget'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>180
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'SUP_BUDGET'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141691594744901927)
,p_plug_name=>'Assets Supplementary'
,p_parent_plug_id=>wwv_flow_imp.id(116460096364432760)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P17_BUDGET_ID_LISTING',
'and coa=001'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(87771631623419044)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87771631623419044
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29374864613784112)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29375258328784113)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29375679411784114)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29376064931784115)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29376404027784115)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29376854928784116)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29377294784784117)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29377672976784118)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29378066144784119)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32311776330582954)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'323118'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUP_BUDGET_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:CREATED_DATE:BUDGET_VALUE:APPROVAL_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141693051097901942)
,p_plug_name=>'Liability suplementary'
,p_parent_plug_id=>wwv_flow_imp.id(116460096364432760)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P17_BUDGET_ID_LISTING',
'and coa=005'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(87860048047799645)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87860048047799645
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29378751082784121)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29379126249784122)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
end;
/
begin
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29379541340784122)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29379993230784123)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29380334653784124)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29380759585784125)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29381177882784126)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29381523148784127)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29381983385784127)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32312353289582960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'323124'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUP_BUDGET_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:CREATED_DATE:BUDGET_VALUE:APPROVAL_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141694233109901953)
,p_plug_name=>'Ownership Supplementary'
,p_parent_plug_id=>wwv_flow_imp.id(116460096364432760)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P17_BUDGET_ID_LISTING',
'and coa=003'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(87859121225799635)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87859121225799635
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29382678291784129)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29383057352784130)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29383467873784131)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29383847841784132)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29384212084784132)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29384622466784133)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29385032619784134)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29385465877784135)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29385875793784136)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32313059679582963)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'323131'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUP_BUDGET_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:CREATED_DATE:BUDGET_VALUE:APPROVAL_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141747328034963914)
,p_plug_name=>'Revenue Supplementary'
,p_parent_plug_id=>wwv_flow_imp.id(116460096364432760)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P17_BUDGET_ID_LISTING',
'and coa=002'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(87858102409799625)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87858102409799625
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29386591297784138)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29386957322784138)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29387350623784139)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29387755270784140)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29388125677784141)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29388577401784142)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29388906303784142)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29389392758784143)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29389766753784144)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32313711337582967)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'323138'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUP_BUDGET_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:CREATED_DATE:BUDGET_VALUE:APPROVAL_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141748348936963925)
,p_plug_name=>'Expense Supplementary'
,p_parent_plug_id=>wwv_flow_imp.id(116460096364432760)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUP_BUDGET_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,CREATED_DATE,budget_value,APPROVAL_STATUS',
'from XXPBG.XXPBG_BUDGET_SUPPLEMENTARY',
'where BUDGET_ID=:P17_BUDGET_ID_LISTING',
'and coa=004'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(87773690620419065)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87773690620419065
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29390436413784146)
,p_db_column_name=>'SUP_BUDGET_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sup Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29390823939784147)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29391252731784148)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29391634513784149)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29392051164784149)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29392422663784150)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29392854240784151)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'RR-MON-DD'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29393252353784152)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29393692167784153)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approval Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32314446086582970)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'323145'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUP_BUDGET_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:CREATED_DATE:BUDGET_VALUE:APPROVAL_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141569048921071005)
,p_plug_name=>'Initial Budgets'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'BUDGET'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141420199323250307)
,p_plug_name=>'Initial Budget Details'
,p_parent_plug_id=>wwv_flow_imp.id(141569048921071005)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(140756241369253333)
,p_plug_name=>'Assets'
,p_parent_plug_id=>wwv_flow_imp.id(141420199323250307)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P17_REQ_ID',
'and coa=001'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_BUDGET_ID_LISTING'
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
 p_id=>wwv_flow_imp.id(87738098033100355)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87738098033100355
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29355138914781536)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29355593012781538)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29355992403781539)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29356353265781542)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29356791977781545)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29357152081781547)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29357588523781549)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29357978218781550)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(87748401376405633)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'293583'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141455998074573335)
,p_plug_name=>'Liability'
,p_parent_plug_id=>wwv_flow_imp.id(141420199323250307)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P17_REQ_ID',
'and coa=005'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(87739004219100364)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87739004219100364
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29359031334781556)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29359491223781557)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29359861171781558)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29360266608781558)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29360656991781559)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29361024470781560)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29361467082781561)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29361859027781562)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(87785566507426334)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'293622'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141518622734624498)
,p_plug_name=>'Ownership'
,p_parent_plug_id=>wwv_flow_imp.id(141420199323250307)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P17_REQ_ID',
'and coa=003'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(87739103224100365)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87739103224100365
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29362925350781564)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29363336956781565)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29363774662781566)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29364150566781567)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29364598611781567)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29364951178781568)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29365333092781569)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29365753442781570)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(87786168699426339)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'293661'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141518707607624499)
,p_plug_name=>'Revenue'
,p_parent_plug_id=>wwv_flow_imp.id(141420199323250307)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P17_REQ_ID',
'and coa=002'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_REQ_ID'
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
 p_id=>wwv_flow_imp.id(87739204351100366)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87739204351100366
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29366805107781573)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29367274972781573)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29367665653781574)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29368059362781575)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29368402285781576)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29368874556781576)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29369201552781577)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29369662144781578)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(87786911761426343)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'293700'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141518838802624500)
,p_plug_name=>'Expense'
,p_parent_plug_id=>wwv_flow_imp.id(141420199323250307)
,p_region_css_classes=>'init_budg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUD_INITIAL_ID,BUDGET_ID,COA,ACCOUNT,DESCRIPTION,STATUS,DATE_CREATED,budget_value',
'from XXPBG.XXPBG_BUDGET_INITIAL',
'where BUDGET_ID=:P17_REQ_ID',
'and coa=004'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P17_REQ_ID'
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
 p_id=>wwv_flow_imp.id(87739282005100367)
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
,p_owner=>'KUNLE'
,p_internal_uid=>87739282005100367
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29370787584781582)
,p_db_column_name=>'BUD_INITIAL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Bud Initial Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29371196597781583)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Budget Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29371515943781586)
,p_db_column_name=>'COA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29371938596781589)
,p_db_column_name=>'ACCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(29336841737771460)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29372302878781591)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29372688923781591)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29373056092781592)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29373471404781593)
,p_db_column_name=>'BUDGET_VALUE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(87787625715426348)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'293738'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUD_INITIAL_ID:BUDGET_ID:COA:ACCOUNT:DESCRIPTION:STATUS:DATE_CREATED:BUDGET_VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(282132785975388315)
,p_plug_name=>'People Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>230
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'PEOPLE_LOAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(282342312168787010)
,p_name=>'People Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(282132785975388315)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.PERSON_ID EMPLOYEE_ID, NVL(A.FULL_NAME,B.FULL_NAME)EMPLOYEE_NAME , A.UPDATED_COLUMNS UPDATES, A.ATTRIBUTE2 REASON, A.INS_TIME DATE_UPLOADED,',
'A.INS_BY UPLOADED_BY, A.*',
'from xxsbs.xxsbs_people_f A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.PERSON_ID = B.PERSON_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(282342664725787013)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282342763045787014)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Employee Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282342816654787015)
,p_query_column_id=>3
,p_column_alias=>'UPDATES'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282351030640797447)
,p_query_column_id=>4
,p_column_alias=>'REASON'
,p_column_display_sequence=>50
,p_column_heading=>'Reason For Upload'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282351184249797448)
,p_query_column_id=>5
,p_column_alias=>'DATE_UPLOADED'
,p_column_display_sequence=>51
,p_column_heading=>'Date Uploaded'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282342931583787016)
,p_query_column_id=>6
,p_column_alias=>'UPLOADED_BY'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282343017448787017)
,p_query_column_id=>7
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282352774976797414)
,p_query_column_id=>8
,p_column_alias=>'VACANCY_NO'
,p_column_display_sequence=>53
,p_column_heading=>'Vacancy No'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282352898668797415)
,p_query_column_id=>9
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>54
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282352954467797416)
,p_query_column_id=>10
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>55
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353058224797417)
,p_query_column_id=>11
,p_column_alias=>'MIDDLE_NAME'
,p_column_display_sequence=>56
,p_column_heading=>'Middle Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353192935797418)
,p_query_column_id=>12
,p_column_alias=>'TITLE'
,p_column_display_sequence=>57
,p_column_heading=>'Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353296362797419)
,p_query_column_id=>13
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>58
,p_column_heading=>'Full Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353358519797420)
,p_query_column_id=>14
,p_column_alias=>'NATIONALITY'
,p_column_display_sequence=>59
,p_column_heading=>'Nationality'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353420837797421)
,p_query_column_id=>15
,p_column_alias=>'LOCAL_GOVT_AREA'
,p_column_display_sequence=>60
,p_column_heading=>'Local Govt Area'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353589125797422)
,p_query_column_id=>16
,p_column_alias=>'STATE_OF_ORIGIN'
,p_column_display_sequence=>61
,p_column_heading=>'State Of Origin'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353642183797423)
,p_query_column_id=>17
,p_column_alias=>'POSTAL_ADDRESS'
,p_column_display_sequence=>62
,p_column_heading=>'Postal Address'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353728583797424)
,p_query_column_id=>18
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>3
,p_column_heading=>'Email'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353883506797425)
,p_query_column_id=>19
,p_column_alias=>'TELEPHONE1'
,p_column_display_sequence=>4
,p_column_heading=>'Telephone1'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282353953475797426)
,p_query_column_id=>20
,p_column_alias=>'TELEPHONE2'
,p_column_display_sequence=>5
,p_column_heading=>'Telephone2'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354068246797427)
,p_query_column_id=>21
,p_column_alias=>'RESIDENCE_ADDRESS'
,p_column_display_sequence=>6
,p_column_heading=>'Residence Address'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354105256797428)
,p_query_column_id=>22
,p_column_alias=>'BIRTH_DATE'
,p_column_display_sequence=>63
,p_column_heading=>'Birth Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354228307797429)
,p_query_column_id=>23
,p_column_alias=>'SEX'
,p_column_display_sequence=>64
,p_column_heading=>'Sex'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354368547797430)
,p_query_column_id=>24
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>65
,p_column_heading=>'Marital Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354490329797431)
,p_query_column_id=>25
,p_column_alias=>'NO_OF_CHILDREN'
,p_column_display_sequence=>66
,p_column_heading=>'No Of Children'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354568751797432)
,p_query_column_id=>26
,p_column_alias=>'HOBBIES'
,p_column_display_sequence=>67
,p_column_heading=>'Hobbies'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354635848797433)
,p_query_column_id=>27
,p_column_alias=>'CV'
,p_column_display_sequence=>68
,p_column_heading=>'Cv'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354757057797434)
,p_query_column_id=>28
,p_column_alias=>'CONTINENT'
,p_column_display_sequence=>69
,p_column_heading=>'Continent'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354889218797435)
,p_query_column_id=>29
,p_column_alias=>'ACCEPTANCE_FLAG'
,p_column_display_sequence=>70
,p_column_heading=>'Acceptance Flag'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282346312529787050)
,p_query_column_id=>30
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282346433233797401)
,p_query_column_id=>31
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282346522941797402)
,p_query_column_id=>32
,p_column_alias=>'UPDATED_TIME'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282346192781787048)
,p_query_column_id=>33
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282346647720797403)
,p_query_column_id=>34
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282354987695797436)
,p_query_column_id=>35
,p_column_alias=>'EMPLOYMENT_STATUS'
,p_column_display_sequence=>71
,p_column_heading=>'Employment Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355043929797437)
,p_query_column_id=>36
,p_column_alias=>'MOTHERS_MAIDEN_NAME'
,p_column_display_sequence=>72
,p_column_heading=>'Mothers Maiden Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282347771807797414)
,p_query_column_id=>37
,p_column_alias=>'ATTRIBUTE_CATEGORY'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282347852668797415)
,p_query_column_id=>38
,p_column_alias=>'ATTRIBUTE1'
,p_column_display_sequence=>19
,p_column_heading=>'Attribute1'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE1 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282347914932797416)
,p_query_column_id=>39
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348052438797417)
,p_query_column_id=>40
,p_column_alias=>'ATTRIBUTE3'
,p_column_display_sequence=>21
,p_column_heading=>'BVN'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE3 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348179066797418)
,p_query_column_id=>41
,p_column_alias=>'ATTRIBUTE4'
,p_column_display_sequence=>22
,p_column_heading=>'Incremental Month'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE4 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348207133797419)
,p_query_column_id=>42
,p_column_alias=>'ATTRIBUTE5'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348315889797420)
,p_query_column_id=>43
,p_column_alias=>'ATTRIBUTE6'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348401272797421)
,p_query_column_id=>44
,p_column_alias=>'ATTRIBUTE7'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348532770797422)
,p_query_column_id=>45
,p_column_alias=>'ATTRIBUTE8'
,p_column_display_sequence=>26
,p_column_heading=>'HMO'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE8 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348644188797423)
,p_query_column_id=>46
,p_column_alias=>'ATTRIBUTE9'
,p_column_display_sequence=>27
,p_column_heading=>'HMO Number'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.ATTRIBUTE9 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348793835797424)
,p_query_column_id=>47
,p_column_alias=>'ATTRIBUTE10'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348862726797425)
,p_query_column_id=>48
,p_column_alias=>'ATTRIBUTE11'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282348963676797426)
,p_query_column_id=>49
,p_column_alias=>'ATTRIBUTE12'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349015063797427)
,p_query_column_id=>50
,p_column_alias=>'ATTRIBUTE13'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349116670797428)
,p_query_column_id=>51
,p_column_alias=>'ATTRIBUTE14'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349261965797429)
,p_query_column_id=>52
,p_column_alias=>'ATTRIBUTE15'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349369872797430)
,p_query_column_id=>53
,p_column_alias=>'ATTRIBUTE16'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349420835797431)
,p_query_column_id=>54
,p_column_alias=>'ATTRIBUTE17'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349596772797432)
,p_query_column_id=>55
,p_column_alias=>'ATTRIBUTE18'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349682656797433)
,p_query_column_id=>56
,p_column_alias=>'ATTRIBUTE19'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349774008797434)
,p_query_column_id=>57
,p_column_alias=>'ATTRIBUTE20'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282349999630797436)
,p_query_column_id=>58
,p_column_alias=>'ATTRIBUTE21'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350063665797437)
,p_query_column_id=>59
,p_column_alias=>'ATTRIBUTE22'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350170419797438)
,p_query_column_id=>60
,p_column_alias=>'ATTRIBUTE23'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350278544797439)
,p_query_column_id=>61
,p_column_alias=>'ATTRIBUTE24'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350334918797440)
,p_query_column_id=>62
,p_column_alias=>'ATTRIBUTE25'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350482199797441)
,p_query_column_id=>63
,p_column_alias=>'ATTRIBUTE26'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350557955797442)
,p_query_column_id=>64
,p_column_alias=>'ATTRIBUTE27'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350670127797443)
,p_query_column_id=>65
,p_column_alias=>'ATTRIBUTE28'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350725794797444)
,p_query_column_id=>66
,p_column_alias=>'ATTRIBUTE29'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350839827797445)
,p_query_column_id=>67
,p_column_alias=>'ATTRIBUTE30'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282344798729787034)
,p_query_column_id=>68
,p_column_alias=>'EFFECTIVE_START_DATE'
,p_column_display_sequence=>15
,p_column_heading=>'Effective Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282344818023787035)
,p_query_column_id=>69
,p_column_alias=>'EFFECTIVE_END_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'Effective End Date'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.EFFECTIVE_END_DATE is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282346989488797406)
,p_query_column_id=>70
,p_column_alias=>'UPDATED_COLUMNS'
,p_column_display_sequence=>17
,p_column_heading=>'Updated Columns'
,p_column_html_expression=>'<font color = ''green''><b>#UPDATED_COLUMNS#</font></b>'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.UPDATED_COLUMNS is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355130661797438)
,p_query_column_id=>71
,p_column_alias=>'LATEST_START_DATE'
,p_column_display_sequence=>73
,p_column_heading=>'Latest Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355213464797439)
,p_query_column_id=>72
,p_column_alias=>'EMAIL2'
,p_column_display_sequence=>74
,p_column_heading=>'Email2'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355382493797440)
,p_query_column_id=>73
,p_column_alias=>'RESIDENCE_CITY'
,p_column_display_sequence=>75
,p_column_heading=>'Residence City'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355427065797441)
,p_query_column_id=>74
,p_column_alias=>'RESIDENCE_STATE'
,p_column_display_sequence=>76
,p_column_heading=>'Residence State'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355545251797442)
,p_query_column_id=>75
,p_column_alias=>'RESIDENCE_COUNTRY'
,p_column_display_sequence=>77
,p_column_heading=>'Residence Country'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355609006797443)
,p_query_column_id=>76
,p_column_alias=>'GENOTYPE'
,p_column_display_sequence=>78
,p_column_heading=>'Genotype'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355724562797444)
,p_query_column_id=>77
,p_column_alias=>'BLOOD_GROUP'
,p_column_display_sequence=>79
,p_column_heading=>'Blood Group'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355882358797445)
,p_query_column_id=>78
,p_column_alias=>'NATIONAL_ID'
,p_column_display_sequence=>80
,p_column_heading=>'National Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282355938685797446)
,p_query_column_id=>79
,p_column_alias=>'OTHER_ID'
,p_column_display_sequence=>81
,p_column_heading=>'Other Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282350915857797446)
,p_query_column_id=>80
,p_column_alias=>'OBJECT_VERSION_NUMBER'
,p_column_display_sequence=>49
,p_column_heading=>'Object Version Number'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxsbs.XXSBS_ASSIGNMENTS_UPDATE A, XXHRMS.XXHRMS_PEOPLE B',
'where BATCH_ID = :P17_REQ_ID',
'and A.STAFF_ID = B.PERSON_ID',
'and a.OBJECT_VERSION_NUMBER is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282351438429797401)
,p_query_column_id=>81
,p_column_alias=>'BATCH_ID'
,p_column_display_sequence=>52
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(282351760319797404)
,p_plug_name=>'People Upload'
,p_parent_plug_id=>wwv_flow_imp.id(282132785975388315)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_column=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(282351807722797405)
,p_plug_name=>'People Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(282351760319797404)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(282352286394797409)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(282351807722797405)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''PEOPLE_LOAD'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(282352578810797412)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282352673426797413)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282352308906797410)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(282352406411797411)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(283068052539758003)
,p_plug_name=>'Termination Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>240
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'TERM_LOAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(283068121262758004)
,p_name=>'Termination Upload Details'
,p_parent_plug_id=>wwv_flow_imp.id(283068052539758003)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from XXHRMS.XXHRMS_TERMINATE_UPLOAD ',
'where COMPANY_CODE = :AP_COMPANY_CODE ',
'and BATCH_ID = :P17_REQ_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(283069515069758018)
,p_query_column_id=>1
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>1
,p_column_heading=>'&AP_STAFF_ID.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283069601021758019)
,p_query_column_id=>2
,p_column_alias=>'TERMINATE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Terminate Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283069748149758020)
,p_query_column_id=>3
,p_column_alias=>'TERMINATE_REASON'
,p_column_display_sequence=>3
,p_column_heading=>'Terminate Reason'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283069869341758021)
,p_query_column_id=>4
,p_column_alias=>'UPLOADED_BY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283069953798758022)
,p_query_column_id=>5
,p_column_alias=>'PROC_FLAG'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283070073623758023)
,p_query_column_id=>6
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>9
,p_column_heading=>'Message'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283070192155758024)
,p_query_column_id=>7
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>10
,p_column_heading=>'Upload Time'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283068285409758005)
,p_query_column_id=>8
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283070273360758025)
,p_query_column_id=>9
,p_column_alias=>'UPLOAD_VERSION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283070311190758026)
,p_query_column_id=>10
,p_column_alias=>'APPROVED_BY'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283068781753758010)
,p_query_column_id=>11
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>5
,p_column_heading=>'Comment'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283069476912758017)
,p_query_column_id=>12
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283070498762758027)
,p_query_column_id=>13
,p_column_alias=>'BATCH_ID'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283070530041758028)
,p_query_column_id=>14
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(283071352654758036)
,p_plug_name=>'Termination Upload'
,p_parent_plug_id=>wwv_flow_imp.id(283068052539758003)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(283155514976541421)
,p_name=>'Approval Histroy'
,p_parent_plug_id=>wwv_flow_imp.id(283071352654758036)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''TERM_LOAD'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(283155691566541422)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283155725011541423)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Aprrover'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283155866750541424)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283155974902541425)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(283156163387541427)
,p_plug_name=>'Reinstate Upload Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>250
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'REIN_LOAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(283156203025541428)
,p_name=>'Reinstate Upload Details'
,p_parent_plug_id=>wwv_flow_imp.id(283156163387541427)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum ,',
'        x.STAFF_ID,',
'     --  x.STAFF_ID full_name,',
'       REINSTATE_DATE,',
'       UPLOADED_BY,',
'       PROC_FLAG,',
'       MESSAGE,',
'       ID',
'  from XXHRMS.XXHRMS_REINSTATE_UPLOAD x',
'  where       x.batch_id = :P17_REQ_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(283157971698541445)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>1
,p_column_heading=>'S/N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283156382909541429)
,p_query_column_id=>2
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>2
,p_column_heading=>'&AP_STAFF_ID_LABEL.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283156549235541431)
,p_query_column_id=>3
,p_column_alias=>'REINSTATE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Reinstate Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283156643103541432)
,p_query_column_id=>4
,p_column_alias=>'UPLOADED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'Uploaded By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283156729692541433)
,p_query_column_id=>5
,p_column_alias=>'PROC_FLAG'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283156856098541434)
,p_query_column_id=>6
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>6
,p_column_heading=>'Message'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283156917500541435)
,p_query_column_id=>7
,p_column_alias=>'ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(283157037192541436)
,p_plug_name=>'Reinstate Upload'
,p_parent_plug_id=>wwv_flow_imp.id(283156163387541427)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(283157418620541440)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(283157037192541436)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Level''||'' ''||APR_LVL "Level", APR_ID,COMMENTS,STATUS FROM XXHRMS.xxhrms_approval_tab ',
'WHERE TRANS_ID = :P17_REQ_ID	',
'and trans_type = ''REIN_LOAD'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2531516329224084)
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
 p_id=>wwv_flow_imp.id(283157542164541441)
,p_query_column_id=>1
,p_column_alias=>'Level'
,p_column_display_sequence=>1
,p_column_heading=>'Level'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283157617809541442)
,p_query_column_id=>2
,p_column_alias=>'APR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Approver'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283157732639541443)
,p_query_column_id=>3
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>3
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(283157819051541444)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(305483177416930912)
,p_plug_name=>'Web Clock Approval'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>270
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P17_ACTION'
,p_plug_display_when_cond2=>'WEB_CLOCK'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72255985254353620)
,p_plug_name=>'Workshift Acitivies'
,p_parent_plug_id=>wwv_flow_imp.id(305483177416930912)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>270
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * ',
'from XXHRMS.XXHRMS_SS_TASK_LIST',
'where CLOCKIN_ID = :P17_REQ_ID ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from XXHRMS.XXHRMS_SS_TASK_LIST',
'where CLOCKIN_ID = :P17_REQ_ID ;'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72256309854353624)
,p_name=>'TASK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Task Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(72256466831353625)
,p_name=>'TASK_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Task Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>25
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72256919147353630)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72257155320353632)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72257234684353633)
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
 p_id=>wwv_flow_imp.id(72256084723353621)
,p_internal_uid=>72256084723353621
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
 p_id=>wwv_flow_imp.id(83351339802688363)
,p_interactive_grid_id=>wwv_flow_imp.id(72256084723353621)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(83351459380688363)
,p_report_id=>wwv_flow_imp.id(83351339802688363)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83351991703688359)
,p_view_id=>wwv_flow_imp.id(83351459380688363)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(72256309854353624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83352461815688354)
,p_view_id=>wwv_flow_imp.id(83351459380688363)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(72256466831353625)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83352962368688352)
,p_view_id=>wwv_flow_imp.id(83351459380688363)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(72256919147353630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83353436677688350)
,p_view_id=>wwv_flow_imp.id(83351459380688363)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(72257155320353632)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(305483221368930913)
,p_name=>'Web clock Request'
,p_parent_plug_id=>wwv_flow_imp.id(305483177416930912)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>250
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.* from xxhrms.xxhrms_ss_wclockin a',
'where ID = :P17_REQ_ID '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305483419804930915)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485149521930932)
,p_query_column_id=>2
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Staff Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26312049180422727)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485273575930933)
,p_query_column_id=>3
,p_column_alias=>'CLOCK_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Clock Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:Clock In;1,Clock Out;0'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485305546930934)
,p_query_column_id=>4
,p_column_alias=>'ATTENDANCE_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Attendance Time'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485456005930935)
,p_query_column_id=>5
,p_column_alias=>'WORKFLOW_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Workflow Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485557693930936)
,p_query_column_id=>6
,p_column_alias=>'APPROVAL_COUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Approval Count'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485668911930937)
,p_query_column_id=>7
,p_column_alias=>'HR_LOCATION_ID'
,p_column_display_sequence=>8
,p_column_heading=>'HR Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485787465930938)
,p_query_column_id=>8
,p_column_alias=>'PRJ_LOCATION_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Project Location'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(17243330479717410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305484161858930922)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485830150930939)
,p_query_column_id=>10
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Created Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305484324936930924)
,p_query_column_id=>11
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305485908927930940)
,p_query_column_id=>12
,p_column_alias=>'UPDATED_DATE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305486074389930941)
,p_query_column_id=>13
,p_column_alias=>'WORKSHIFT_ID'
,p_column_display_sequence=>13
,p_column_heading=>'Workshift Id'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(18262482241671147)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305486158570930942)
,p_query_column_id=>14
,p_column_alias=>'UNASSIGN_WK'
,p_column_display_sequence=>14
,p_column_heading=>'Unassign Wk'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66579462666631129)
,p_query_column_id=>15
,p_column_alias=>'CLOCK_IN_COMMENT'
,p_column_display_sequence=>15
,p_column_heading=>'Clock IN Comment'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from xxhrms.xxhrms_ss_wclockin',
'where ID = :P17_REQ_ID AND CLOCK_IN_COMMENT IS NOT NULL'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(305483348892930914)
,p_plug_name=>'Web Clock Approval'
,p_parent_plug_id=>wwv_flow_imp.id(305483177416930912)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>260
,p_plug_new_grid_row=>false
,p_plug_display_column=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P17_STATUS'
,p_plug_display_when_cond2=>'APPROVED'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_read_only_when=>'P17_STATUS'
,p_plug_read_only_when2=>'PENDING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(306399728728540250)
,p_name=>'KPI Details'
,p_parent_plug_id=>wwv_flow_imp.id(33352241592631730)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BUDGET_ID,initcap(BUDGET_NAME),BUDGET_ACCOUNT_TYPE, BUDGET_START_DATE,BUDGET_END_DATE,BUDGET_VALUE,CREATED_DATE,',
'COMPANY_CODE,PROJECT_ID, NULL DEL,',
'case',
'when (select count(*) from xxpbg.XXPBG_BUDGET_SUPPLEMENTARY s where s.budget_id=b.budget_id)=0',
'then BUDGET_VALUE',
'else (select sum(s.budget_value) + b.budget_value from xxpbg.XXPBG_BUDGET_SUPPLEMENTARY s where budget_id=:P17_REQ_ID)',
'END BUDGE',
'FROM XXPBG.XXPBG_BUDGET b',
'WHERE COMPANY_CODE=:SS_COMPANY_CODE',
'AND BUDGET_ID=:P17_REQ_ID'))
,p_required_role=>wwv_flow_imp.id(204683753670572)
,p_display_when_condition=>'P17_ACTION'
,p_display_when_cond2=>'PERF_UPDATE_TEST'
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P17_REQ_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2526138889224081)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616165808063701)
,p_query_column_id=>1
,p_column_alias=>'BUDGET_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616224477063702)
,p_query_column_id=>2
,p_column_alias=>'INITCAP(BUDGET_NAME)'
,p_column_display_sequence=>2
,p_column_heading=>'Budget Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616363347063703)
,p_query_column_id=>3
,p_column_alias=>'BUDGET_ACCOUNT_TYPE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616406055063704)
,p_query_column_id=>4
,p_column_alias=>'BUDGET_START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Budget Start Date'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616516012063705)
,p_query_column_id=>5
,p_column_alias=>'BUDGET_END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Budget End Date'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616656064063706)
,p_query_column_id=>6
,p_column_alias=>'BUDGET_VALUE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616744797063707)
,p_query_column_id=>7
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Date Created'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616833060063708)
,p_query_column_id=>8
,p_column_alias=>'COMPANY_CODE'
,p_column_display_sequence=>8
,p_column_heading=>'Organization'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Company_name d, company_code r',
'from xxhrms.xxhrms_companyinfo'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307616985244063709)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Project'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP(PROJECT_NAME) D, PROJECT_ID R',
'FROM XXPBG.XXPBG_PROJECTS'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307617058323063710)
,p_query_column_id=>10
,p_column_alias=>'DEL'
,p_column_display_sequence=>10
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete_bud" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#BUDGET_ID#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(307617149741063711)
,p_query_column_id=>11
,p_column_alias=>'BUDGE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26524409032400314)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26524645522400316)
,p_button_name=>'APPROVE_TRAVEL_REQUEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26916396353688025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26916127079688023)
,p_button_name=>'APPROVE_VOUCHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27069215183280720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27069018125280718)
,p_button_name=>'APPROVE_OTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27413764712758144)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27413502405758142)
,p_button_name=>'APPROVE_EXP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27511747829611133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27511515460611131)
,p_button_name=>'APPROVE_VOUCHERS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28310725460945145)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28310505556945143)
,p_button_name=>'APPROVE_REIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29220690750244440)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29220476216244438)
,p_button_name=>'APPROVE_INIT_BUDGET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36763975508395837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36763374383395831)
,p_button_name=>'Submit'
,p_button_static_id=>'rbutton'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38855597661493806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38855348236493804)
,p_button_name=>'Reject_Exit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject '
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39378113711023808)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39377972872023806)
,p_button_name=>'AssignmentApproval'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40799391170551030)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40799162219551028)
,p_button_name=>'ALLOWANCE_APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44882560693091526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44881421740091515)
,p_button_name=>'Approve_clearance'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(281499252265918346)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(281498434996918338)
,p_button_name=>'DEDUCTION_APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(282352057479797407)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(282351807722797405)
,p_button_name=>'APPROVE_UPLOADPEOPLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(283071616503758039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(283071352654758036)
,p_button_name=>'APPROVE_TERM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(283157280874541438)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(283157037192541436)
,p_button_name=>'REIN_APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26524540556400315)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26524645522400316)
,p_button_name=>'REJECT_TRAVEL_REQUEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26916443833688026)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26916127079688023)
,p_button_name=>'REJECT_VOUCHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27069330259280721)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27069018125280718)
,p_button_name=>'REJECT_OTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27413873016758145)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27413502405758142)
,p_button_name=>'REJECT_EXP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27511885874611134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27511515460611131)
,p_button_name=>'REJECT_VOUCHERS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28310823137945146)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28310505556945143)
,p_button_name=>'REJECT_REIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29220798065244441)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29220476216244438)
,p_button_name=>'REJECT_INIT_BUDGET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38855617868493807)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38855348236493804)
,p_button_name=>'Approve_Exit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39378230936023809)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(39377972872023806)
,p_button_name=>'AssignmentReject'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40799432699551031)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40799162219551028)
,p_button_name=>'ALLOWANCE_REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42931670616257509)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(42932602156257519)
,p_button_name=>'APPROVE_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(281499383133918347)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(281498434996918338)
,p_button_name=>'DEDUCTION_REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(282352197077797408)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(282351807722797405)
,p_button_name=>'REJECT_UPLOADPEOPLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(283071725946758040)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(283071352654758036)
,p_button_name=>'REJECT_TERM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(283157350098541439)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(283157037192541436)
,p_button_name=>'REIN_REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41351990603173926)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(41351305026173920)
,p_button_name=>'REJECT_UPLOADASS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42931796693257510)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(42932602156257519)
,p_button_name=>'REJECT_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41351818102173925)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41351305026173920)
,p_button_name=>'APPROVE_UPLOADASS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3492998195039824)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3492503556039820)
,p_button_name=>'REJECT_LOAN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Reject Loan'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31777984992167950)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30033769232845025)
,p_button_name=>'RejectLeave'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32811127551317314)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32810498844317307)
,p_button_name=>'PersonReject'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34399324122713946)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34399064535713943)
,p_button_name=>'JOB_REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Reject'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305484957212930930)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(305483348892930914)
,p_button_name=>'Reject_Webclock'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Reject '
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37962231207622818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37962071504622816)
,p_button_name=>'RECALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Recall'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305484802431930929)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(305483348892930914)
,p_button_name=>'Approve_Webclock'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve '
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3492879972039823)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3492503556039820)
,p_button_name=>'Approve_LOAN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve Loan'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31777894002167949)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(30033769232845025)
,p_button_name=>'ApproveLeave'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32811015939317313)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(32810498844317307)
,p_button_name=>'PersonApproval'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34399267786713945)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(34399064535713943)
,p_button_name=>'JOB_APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_STATUS'
,p_button_condition2=>'PENDING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26563126226561130)
,p_branch_name=>'Go Back'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26523889581400308)
,p_name=>'P17_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26560569018561096)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26524331538400313)
,p_name=>'P17_REQ_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26560569018561096)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26524788116400317)
,p_name=>'P17_TRAVEL_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26524645522400316)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26548151270561006)
,p_name=>'P17_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29717212930658247)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26548571806561019)
,p_name=>'P17_STAFF_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29717212930658247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26556992838561049)
,p_name=>'P17_COMMENT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30033769232845025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26612230370807208)
,p_name=>'P17_CREATED_BY_1'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(121972969298577190)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26612689547807211)
,p_name=>'P17_UPDATED_BY_1'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(121972969298577190)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26613090508807212)
,p_name=>'P17_PRV'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(121972969298577190)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26613430348807214)
,p_name=>'P17_AUTH_LEVEL_1'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(121972969298577190)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26613857787807215)
,p_name=>'P17_MAX_LEVEL_1'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(121972969298577190)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26614270378807217)
,p_name=>'P17_APR_CNT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(121972969298577190)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26614672330807218)
,p_name=>'P17_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3492503556039820)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26916264501688024)
,p_name=>'P17_VOUCHER_COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26916127079688023)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27069158191280719)
,p_name=>'P17_OTHER_COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27069018125280718)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27413633936758143)
,p_name=>'P17_EXP_COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27413502405758142)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27511633378611132)
,p_name=>'P17_VOUCHER_COMMENT_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27511515460611131)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28310639158945144)
,p_name=>'P17_REIM_COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28310505556945143)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29220587831244439)
,p_name=>'P17_BUDGET_COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29220476216244438)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2561101067224107)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31776834226167939)
,p_name=>'P17_INS_BY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26560569018561096)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32811247267317315)
,p_name=>'P17_PEP_COMMENT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32810498844317307)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33352112856631729)
,p_name=>'P17_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26560569018561096)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34399120841713944)
,p_name=>'P17_JOB_COMMENT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34399064535713943)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36763461067395832)
,p_name=>'P17_JSON_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36763374383395831)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36763589170395833)
,p_name=>'P17_EXIT_STAFF_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36763374383395831)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.EXITING_STAFF',
'    from XXHRMS.XXHRMS_DELIVE_EXIT a, XXHRMS.XXHRMS_APPROVAL_TAB b , xxhrms_assignments c',
'    where a.trans_id = b.trans_id',
'    and a.APPR_ID = :AP_STAFF_ID',
'    and a.exiting_staff = c.staff_id',
'    and b.trans_id = :P17_REQ_ID',
'    and a.company_code = :AP_COMPANY_CODE;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36763690493395834)
,p_name=>'P17_EXIT_STAFF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36763374383395831)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct INITCAP(c.fullname)',
'    from XXHRMS.XXHRMS_DELIVE_EXIT a, XXHRMS.XXHRMS_APPROVAL_TAB b , xxhrms_assignments c',
'    where a.trans_id = b.trans_id',
'    and a.APPR_ID = :AP_STAFF_ID',
'    and a.exiting_staff = c.staff_id',
'    and b.trans_id = :P17_REQ_ID',
'    --and a.company_code = :AP_COMPANY_CODE;',
'     and a.company_code = B.COMPANY_CODE;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36763753127395835)
,p_name=>'P17_CHK_STAFF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36763374383395831)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36763896597395836)
,p_name=>'P17_TEST_DATA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36763374383395831)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36765033300395848)
,p_name=>'P17_CREATEDBY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36764467112395842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37962106269622817)
,p_name=>'P17_RECALL_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37962071504622816)
,p_prompt=>'Recall Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_date', '&P17_LEAVE_END.',
  'min_date', '&P17_LEAVE_START.',
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37962326495622819)
,p_name=>'P17_LEAVE_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29717212930658247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37962402602622820)
,p_name=>'P17_LEAVE_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29717212930658247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38855457486493805)
,p_name=>'P17_COMMENT_EXIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38855348236493804)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comment'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39378095676023807)
,p_name=>'P17_ASS_COMMENT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39377972872023806)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40799212802551029)
,p_name=>'P17_ALLOWANCE_COMM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40799162219551028)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41351439377173921)
,p_name=>'P17_UPLOADASS_COMMENT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41351305026173920)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42932266325257515)
,p_name=>'P17_ASSGN_PROC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37546294390335432)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42932786354257520)
,p_name=>'P17_PAYROLL_COMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42932602156257519)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44881165742091512)
,p_name=>'P17_EXITSTAFF_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36764467112395842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44881302788091514)
,p_name=>'P17_CHK_STAFF_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36763374383395831)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44881547186091516)
,p_name=>'P17_LEVEL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36763374383395831)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281499147575918345)
,p_name=>'P17_DEDU_COMMENT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(281498434996918338)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281630370237044908)
,p_name=>'P17_ALLOWANCE_PROC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40660768941972409)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281630617020044911)
,p_name=>'P17_STAFF_IDS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(40660768941972409)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281874672221653805)
,p_name=>'P17_ROW_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26560569018561096)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281874709157653806)
,p_name=>'P17_PROCESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26560569018561096)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(282342476155787011)
,p_name=>'P17_ASSGN_PROC_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(282342312168787010)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(282351999788797406)
,p_name=>'P17_UPLOADPEOPLE_COMMENT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(282351807722797405)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(283071415714758037)
,p_name=>'P17_TERM_COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(283071352654758036)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(283157179842541437)
,p_name=>'P17_REIN_COMMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(283157037192541436)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305484795378930928)
,p_name=>'P17_COMMENT_WEBCLK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(305483348892930914)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comment'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(26918671074688048)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P17_TRAVEL_COMMENTS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Comment can''t be empty.'
,p_validation_condition=>'P17_ACTION'
,p_validation_condition2=>'TRAVEL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(26524788116400317)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(26918745550688049)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'P17_VOUCHER_COMMENT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Comment can''t be empty.'
,p_validation_condition=>'P17_ACTION'
,p_validation_condition2=>'VOUCHER'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(26916264501688024)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26523935747400309)
,p_name=>'HIDE'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26524144076400311)
,p_event_id=>wwv_flow_imp.id(26523935747400309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#leave,#loan_req,#loan_rep,#travel,#travel,#approval,#reimbursement,#other'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26524049766400310)
,p_event_id=>wwv_flow_imp.id(26523935747400309)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P17_ACTION'')==''LEAVE''){',
'    $(''#leave'').show();',
'    $(''#loan_req'').hide();',
'    $(''#loan_rep'').hide();',
'    $(''#travel'').hide();',
'    $(''#approval'').hide();',
'    $(''#reimbursement'').hide();',
'    $(''#other'').hide();',
'    $(''#voucher'').hide();',
'    $(''#vouchers'').hide();',
'    $(''#other'').hide();',
'}',
'else if ($v(''P17_ACTION'')==''TRAVEL''){',
'    $(''#leave'').hide();',
'    $(''#other'').hide();',
'    $(''#loan_req'').hide();',
'    $(''#loan_rep'').hide();',
'    $(''#travel'').show();',
'    $(''#approval'').hide();',
'    $(''#reimbursement'').hide();',
'    $(''#other'').hide();',
'     $(''#voucher'').hide();',
'    $(''#vouchers'').hide();',
'}',
'else if ($v(''P17_ACTION'')==''OTHER''){',
'    $(''#leave'').hide();',
'    $(''#loan_req'').hide();',
'    $(''#loan_rep'').hide();',
'    $(''#travel'').hide();',
'    $(''#approval'').hide();',
'    $(''#reimbursement'').hide();',
'    $(''#other'').hide();',
'     $(''#voucher'').hide();',
'    $(''#vouchers'').hide();',
'    $(''#other'').show();',
'}',
'',
'else if ($v(''P17_ACTION'')==''VOUCHER''){',
'    $(''#leave'').hide();',
'    $(''#other'').hide();',
'    $(''#loan_req'').hide();',
'    $(''#loan_rep'').hide();',
'    $(''#travel'').hide();',
'    $(''#approval'').hide();',
'    $(''#reimbursement'').hide();',
'    $(''#other'').hide();',
'     //$(''#voucher'').hide();',
'    //$(''#vouchers'').show();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42932026657257513)
,p_name=>'Change Assignment Status'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chg_status'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42932139831257514)
,p_event_id=>wwv_flow_imp.id(42932026657257513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_ASSGN_PROC'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42932300206257516)
,p_event_id=>wwv_flow_imp.id(42932026657257513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'ct varchar2(50);',
'l_proc  varchar2(50);',
'begin',
'select PROCESS_FLAG into ct from  XXSBS.XXSBS_ASSIGNMENTS_UPDATE where request_id=:P17_ASSGN_PROC;',
'if ct=''ENABLED''',
'THEN',
'l_proc := ''DISABLED'';',
'ELSE ',
'l_proc := ''ENABLED'';',
'END IF;',
'',
'update XXSBS.XXSBS_ASSIGNMENTS_UPDATE',
'set PROCESS_FLAG=l_proc',
'WHERE request_id=:P17_ASSGN_PROC;',
'END;'))
,p_attribute_02=>'P17_ASSGN_PROC'
,p_attribute_03=>'P17_ASSGN_PROC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42932417549257517)
,p_event_id=>wwv_flow_imp.id(42932026657257513)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37546294390335432)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42932582436257518)
,p_event_id=>wwv_flow_imp.id(42932026657257513)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41351305026173920)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37962720754622823)
,p_name=>'RECALL'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37962231207622818)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37963053513622826)
,p_event_id=>wwv_flow_imp.id(37962720754622823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you certain you want to recall this employee from leave?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37962884900622824)
,p_event_id=>wwv_flow_imp.id(37962720754622823)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_DAYS NUMBER;',
'BEGIN',
'',
' SELECT COUNT(1) INTO V_DAYS',
'    FROM (SELECT rownum - 1 + to_date(:P17_LEAVE_START, ''DD-MON-RR'') wk_Date, TO_CHAR(rownum - 1 + TO_DATE(:P17_LEAVE_START, ''DD-MON-RR''),''DY'') wk_day',
'	    FROM all_objects',
'	   WHERE rownum < TO_DATE(:P17_RECALL_DATE,''DD-MON-RR'') - TO_DATE(:P17_LEAVE_START, ''DD-MON-RR'') +2) aa',
'   WHERE wk_Day NOT IN (''SAT'',''SUN'')       ',
'     AND NOT EXISTS (SELECT 1 FROM xxhrms.xxhrms_ss_holidays',
'   WHERE aa.wk_date = holiday_date',
'     AND status=''ACTIVE'');',
'',
'INSERT INTO XXTEST VALUES(:P17_REQ_ID||''-V_DAYS-''||V_DAYS||''-P17_RECALL_DATE-''||:P17_RECALL_DATE);',
'UPDATE XXHRMS.XXHRMS_SS_LEAVE',
'SET END_DATE  = TO_DATE(:P17_RECALL_DATE,''DD-MON-RR'') ,',
'    LEAVE_DAYS = V_DAYS,',
'    PENDING_LEAVE_DAYS = PENDING_LEAVE_DAYS+(LEAVE_DAYS-V_DAYS)',
'WHERE  id = :P17_REQ_ID;',
'',
'END;'))
,p_attribute_02=>'P17_LEAVE_START,P17_RECALL_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37962972334622825)
,p_event_id=>wwv_flow_imp.id(37962720754622823)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37963203705622828)
,p_event_id=>wwv_flow_imp.id(37962720754622823)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("Recall Successful")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(281875026457653809)
,p_name=>'allowanceUploadStatus'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_PROCESS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P17_ACTION'
,p_display_when_cond2=>'BEN_LOAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281875198349653810)
,p_event_id=>wwv_flow_imp.id(281875026457653809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'    update xxsbs_allowance_upload ',
'    set PROCESS_FLAG=NVL(:P17_PROCESS,''ENABLED'')',
'    where rowid=:P17_ROW_ID;',
'',
'end;'))
,p_attribute_02=>'P17_PROCESS,P17_ROW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281875214096653811)
,p_event_id=>wwv_flow_imp.id(281875026457653809)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40660768941972409)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(281875490827653813)
,p_name=>'deductionUploadStatus'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_PROCESS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P17_ACTION'
,p_display_when_cond2=>'VAR_LOAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281875516877653814)
,p_event_id=>wwv_flow_imp.id(281875490827653813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'    update XXSBS_DEDUCTIONS_UPLOAD ',
'    set PROCESS_FLAG=NVL(:P17_PROCESS,''ENABLED'')',
'    where rowid=:P17_ROW_ID;',
'    ',
'end;'))
,p_attribute_02=>'P17_PROCESS,P17_ROW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281875695481653815)
,p_event_id=>wwv_flow_imp.id(281875490827653813)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40660516442972407)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36764043018395838)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36763975508395837)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36764156118395839)
,p_event_id=>wwv_flow_imp.id(36764043018395838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let hasErrors = false;',
'let question_answers = [];',
'// let fields = $(''form #custom-form'').find(''select, textarea, input'').serializeArray();',
'let q = document.getElementById("tes").value;',
'',
'//hide alert if exist',
'hideAlert();',
'',
'',
'let fields = $(''form #custom-form'').find(''select, textarea, input'').serializeArray();',
'console.log(fields);',
'   ',
'    $.each(fields, (i, field) => {',
'        //field by name',
'          let fieldElem = $(`[name=${field.name}]`);',
'        let type = fieldElem.attr(''type'');',
'',
'            if(type == ''radio'' && fieldElem.is('':checked'')){',
'                 question_answers.push({question: field.name, value: field.value});',
'             }else if(type == ''textarea'' && q.value){',
'                 question_answers.push({question: q.name, value: q.value});',
'            }else if(type == ''text'' && field.value){',
'                 question_answers.push({question: field.name, value: field.value});',
'            }else if(type == ''checkbox'' && field.value){',
'                 question_answers.push({question: field.name, value: field.value});',
'            //}else if(type == ''SelectList'' && field.selected){',
'             }else if(type == ''SelectList''){',
'                 question_answers.push({question: field.name, value: field.value});',
'            }else{',
'                question_answers.push({question: ''field.name'', value: ''field.value''});',
'            }   ',
'            ',
'    ',
'    });',
'',
'   question_answers.push({question: ''tes'', value: q});',
'    ',
'    ',
'   ',
'    $s(''P17_TEST_DATA'', JSON.stringify(question_answers));',
'    ',
'    console.log(JSON.stringify(question_answers));',
'    $( "#custom-form" ).submit();',
'    $(window).off(''beforeunload'');',
'  var href = ''f?p=2000004:1:&SESSION.:::NO::P12_STAFF_ID:''; ',
'   window.location = href;',
'     show_notification0(''Submitted Successfully'');',
'   // $( "#custom-form" ).submit();',
'    /* }else{',
'        $s(''P17_TEST_DATA'', null);',
'       window.alert(''All fields are required'');',
'    } */',
'',
' ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36764231673395840)
,p_event_id=>wwv_flow_imp.id(36764043018395838)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_pr varchar2(200);',
'l_body varchar2(3000);',
'V_APPR_ID_2 varchar2(400);',
'V_APPR_ID_2_chk number;',
'V_UNIT_ID varchar2(400);',
'V_STATUS VARCHAR2(200);',
'V_STATUS_ALL VARCHAR2(200);',
'V_COMPANY_CODE VARCHAR2(50);',
'BEGIN',
'    --insert json data into json table',
'    IF :P17_TEST_DATA IS NOT NULL THEN',
'       INSERT INTO XXHRMS.XXHRMS_QUESTION_JSON(STAFF_ID, RESPONSE_JSON, APPR_ID)',
'       VALUES(:P17_EXIT_STAFF_ID, :P17_TEST_DATA, :AP_STAFF_ID);',
'    END IF;',
'    ',
'    -- update approval table',
'    UPDATE XXHRMS.XXHRMS_APPROVAL_TAB ',
'    SET STATUS = ''APPROVED''',
'    WHERE TRANS_ID = :P17_REQ_ID;',
'    ',
'    UPDATE XXHRMS.XXHRMS_DELIVE_EXIT',
'    SET STATUS = ''APPROVED''',
'    WHERE TRANS_ID = :P17_REQ_ID;',
'    -- select company code for cross org approval',
'    SELECT DISTINCT COMPANY_CODE INTO V_COMPANY_CODE',
'    FROM XXHRMS.XXHRMS_DELIVE_EXIT',
'    WHERE TRANS_ID = :P17_REQ_ID;',
'    ',
'    SELECT COUNT(1) INTO V_APPR_ID_2_chk',
'    FROM',
'    (SELECT SECOND_APPROVER, DEPARTMENT',
'    FROM XXHRMS.XXHRMS_DELIV_ITEMS_STG',
'    WHERE APPR_ID = :AP_STAFF_ID',
'    AND COMPANY_CODE = V_COMPANY_CODE);',
'     ',
'    IF V_APPR_ID_2_chk > 0 THEN',
'    ',
'    SELECT SECOND_APPROVER, DEPARTMENT',
'    INTO V_APPR_ID_2, V_UNIT_ID',
'    FROM',
'    (SELECT SECOND_APPROVER, DEPARTMENT',
'    FROM XXHRMS.XXHRMS_DELIV_ITEMS_STG',
'    WHERE APPR_ID = :AP_STAFF_ID',
'    AND COMPANY_CODE = V_COMPANY_CODE) ;',
'    ',
'    ',
'    IF V_APPR_ID_2 IS NOT NULL THEN ',
'        INSERT INTO XXHRMS.XXHRMS_APPROVAL_TAB(TRANS_TYPE, TRANS_ID, APR_LVL, APR_ID, STATUS,CREATED_BY, NEXTS )',
'        VALUES(''EXIT_DELIVERABLES'', XXHRMS.XXHRMS_TRANS_SEQ.NEXTVAL, 2, V_APPR_ID_2, ''PENDING'', :APP_USER, ''Y'');             ',
'',
'        INSERT INTO XXHRMS.XXHRMS_DELIVE_EXIT(TRANS_ID, APPR_ID, EXITING_STAFF, INS_STAFF_ID,UNIT_ID, APPR_LEVEL, STATUS)',
'        VALUES(XXHRMS.XXHRMS_TRANS_SEQ.CURRVAL, V_APPR_ID_2, :P17_EXIT_STAFF_ID, :AP_STAFF_ID, V_UNIT_ID, ''2'', ''PENDING'' );  ',
'',
'        UPDATE XXHRMS.XXHRMS_QUESTION_JSON',
'        SET TRANS_ID = XXHRMS.XXHRMS_TRANS_SEQ.CURRVAL',
'        WHERE APPR_ID = :AP_STAFF_ID',
'        AND STAFF_ID = :P17_EXIT_STAFF_ID;',
'    END IF;',
'    END IF;',
'    ',
'    SELECT COUNT(EXITING_STAFF)',
'    INTO V_STATUS',
'    FROM XXHRMS.XXHRMS_DELIVE_EXIT',
'    WHERE STATUS = ''APPROVED''',
'    AND EXITING_STAFF = :P17_EXIT_STAFF_ID',
'     AND APPR_LEVEL = ''1''',
'     AND COMPANY_CODE = V_COMPANY_CODE',
'     --AND COMPANY_CODE = :AP_COMPANY_CODE;',
'    ;',
'    ',
'    SELECT COUNT(EXITING_STAFF)',
'    INTO V_STATUS_ALL',
'    FROM XXHRMS.XXHRMS_DELIVE_EXIT',
'    WHERE EXITING_STAFF = :P17_EXIT_STAFF_ID',
'    AND APPR_LEVEL = ''1''',
'    AND COMPANY_CODE = V_COMPANY_CODE;',
'    --AND COMPANY_CODE = :AP_COMPANY_CODE;',
'   ',
'   IF(V_STATUS_ALL = V_STATUS) THEN',
'        UPDATE XXHRMS.XXHRMS_EXIT_REQUESTS',
'        SET EXIT_CLEARANCE = ''P'',',
'            WF_STATUS = ''H''',
'        WHERE EMPLOYEE_ID = :P17_EXIT_STAFF_ID',
'        AND COMPANY_CODE = V_COMPANY_CODE',
'        --AND COMPANY_CODE = :AP_COMPANY_CODE',
'        AND WF_STATUS NOT IN (''R'',''C'');',
'   END IF;',
'                ',
'    XXHRMS.XXHRMS_NOTIFICATION_ALRT.Approved_Clearance(:P17_EXIT_STAFF_ID, :AP_sTAFF_ID, V_COMPANY_CODE);',
'    ',
'  commit;',
'',
'END;'))
,p_attribute_02=>'P17_REQ_ID,P17_EXIT_STAFF_ID,P17_TEST_DATA,AP_STAFF_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39138223685528601)
,p_name=>'New_1'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39138384582528602)
,p_event_id=>wwv_flow_imp.id(39138223685528601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select 1',
'into :P17_CHK_STAFF',
'from XXHRMS.XXHRMS_QUESTION_JSON',
'where APPR_ID = :AP_STAFF_ID',
'and staff_id = :P17_EXIT_STAFF_ID;',
'',
'exception ',
'when no_data_found then',
'null;',
'end;'))
,p_attribute_02=>'P17_REQ_ID'
,p_attribute_03=>'P17_CHK_STAFF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44881268971091513)
,p_event_id=>wwv_flow_imp.id(39138223685528601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select 1',
'into :P17_CHK_STAFF_1',
'from XXHRMS.XXHRMS_QUESTION_JSON',
'where SECOND_APPROVER = :AP_STAFF_ID',
'and staff_id = :P17_EXIT_STAFF_ID;',
'',
'exception ',
'when no_data_found then',
'null;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39138447404528603)
,p_event_id=>wwv_flow_imp.id(39138223685528601)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let nitem = apex.item("P17_CHK_STAFF").getValue();',
'let qitem = apex.item("P17_CHK_STAFF_1").getValue();',
'console.log(nitem);',
'if(nitem === ''1'' || qitem === ''1'') {',
'     window.alert(''Items has been submitted for this staff'');',
'        $("#rbutton").addClass("apex_disabled");',
'    $("#rbutton").attr("disabled", true);',
'    ',
'       $("#qbutton").addClass("apex_disabled");',
'    $("#qbutton").attr("disabled", true);',
'}',
'',
'if (nitem === '''' || nitem === null || nitem === undefined) {',
'     $("#rbutton").removeClass("apex_disabled");',
'    $("#rbutton").attr("disabled", false);',
'} ',
'',
'if (qitem === '''' || qitem === null || qitem === undefined) {',
'     $("#qbutton").removeClass("apex_disabled");',
'    $("#qbutton").attr("disabled", false);',
'} ',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40612150311778829)
,p_name=>'PreviewFile'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.cc-preview-pdf'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40612251477778830)
,p_event_id=>wwv_flow_imp.id(40612150311778829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'js Code for preview'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).on(''click'', ''.cc-preview-pdf'', function () {',
'    const fileUrl = $(this).attr(''data-file-url'');',
'   console.log("Previewing URL:", fileUrl); ',
'',
'    if (!fileUrl || fileUrl.includes("undefined")) {',
'        alert("Missing or invalid file URL.");',
'        return;',
'    }',
'',
'    fetch(fileUrl)',
'        .then(response => {',
'            if (!response.ok) {',
'                throw new Error(`Failed to fetch file: ${response.status}`);',
'            }',
'            return response.blob();',
'        })',
'        .then(file => {',
'            const src = URL.createObjectURL(file);',
'            $(''#embeddedFile'').attr(''data'', src);',
'            $(''#filePreviewContainer'').dialog(''open'');',
'        })',
'        .catch(error => {',
'            console.error("Error loading file:", error);',
'            alert("Unable to load the file preview.");',
'        });',
'});',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26561417762561119)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_records'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CURSOR c_rec IS',
'SELECT',
'    w.staff_id, v.full_name, t.leave_name, TO_CHAR(w.start_date,''DD-MON-YYYY''),',
'    TO_CHAR(w.end_date,''DD-MON-YYYY''), s.full_name, UPPER(w.contact_address), ',
'    w.contact_number, w.leave_days, w.pending_leave_days, w.workflow_status,',
'    w.updated_by, TO_CHAR(w.created_date,''DD-MON-YYYY''), approval_count, w.leave_period',
' FROM xxhrms.xxhrms_ss_leave w, xxhrms.xxhrms_people v, xxhrms.xxhrms_people s, xxhrms_leave_setup t',
'WHERE w.staff_id = v.person_id ',
'  AND w.replacement = s.person_id(+)',
'  and w.leave_type_code = t.absence_id ',
'  AND w.id = :P17_ID;',
'--',
'CURSOR c_auth IS',
'SELECT auth_level',
'  FROM xxhrms.xxhrms_authourisation xx, xxhrms.xxhrms_staff_auth yy',
' WHERE xx.authorisation_type = ''LEAVE''',
'   AND xx.auth_group = yy.auth_group',
'   AND xx.staff_id = :AP_STAFF_ID',
'   AND yy.staff_id = :P17_STAFF_ID;',
'--',
'CURSOR c_max IS',
'SELECT MAX(auth_level)',
'  FROM xxhrms.xxhrms_authourisation xx, xxhrms.xxhrms_staff_auth yy',
' WHERE xx.authorisation_type = ''LEAVE''',
'   AND xx.auth_group = yy.auth_group',
'   AND yy.staff_id = :P17_STAFF_ID;',
'--  ',
'BEGIN',
'  OPEN c_rec;',
'  FETCH c_rec ',
'   INTO :P17_STAFF_ID, :P17_STAFF_NAME, :P17_LEAVE_TYPE_NAME, :P17_START_DATE, ',
'   :P17_END_DATE, :P17_REPLACEMENT_NAME, :P17_CONTACT_ADDRESS, :P17_CONTACT_NUMBER,    ',
'   :P17_LEAVE_DAYS, :P17_PENDING_LEAVE_DAYS, :P17_WORKFLOW_STATUS, :P17_UPDATED_BY, ',
'   :P17_CREATED_DATE, :P17_APPR_COUNT, :P17_LEAVE_PERIOD;',
'  CLOSE c_rec;',
'  --',
'  OPEN c_auth;',
'  FETCH c_auth INTO :P17_AUTH_LEVEL;',
'  CLOSE c_auth;',
'  :P17_AUTH_LEVEL := NVL(:P17_AUTH_LEVEL,0);',
'  --',
'  OPEN c_max;',
'  FETCH c_max INTO :P17_MAX_LEVEL;',
'  CLOSE c_max;',
'  :P17_MAX_LEVEL := NVL(:P17_MAX_LEVEL,0);',
'  --',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>26561417762561119
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31776918006167940)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Requester'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    select nvl(a.ins_by,''HR Manager'') into :P17_INS_BY ',
'    FROM XXHRMS.XXHRMS_PEOPLE_F_UPDATE a',
'    where a.REQUEST_ID = :P17_REQ_ID;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>31776918006167940
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32516335604319240)
,p_process_sequence=>70
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AUTH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'        p_name  => ''AP_AUTH_STAFF''',
'      , p_value => :AP_STAFF_ID);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32516335604319240
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37962542846622821)
,p_process_sequence=>80
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LEAVE_DATES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT START_DATE, END_DATE INTO :P17_LEAVE_START, :P17_LEAVE_END',
' FROM XXHRMS.XXHRMS_SS_LEAVE',
'WHERE id = :P17_REQ_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P17_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'LEAVE'
,p_internal_uid=>37962542846622821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44881030786091511)
,p_process_sequence=>90
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Staff id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'    select distinct a.EXITING_STAFF',
'    INTO :P17_EXIT_STAFF_ID',
'    from XXHRMS.XXHRMS_DELIVE_EXIT a, XXHRMS.XXHRMS_APPROVAL_TAB b , xxhrms_assignments c',
'    where a.trans_id = b.trans_id',
'    and a.APPR_ID = :AP_STAFF_ID',
'    and a.exiting_staff = c.staff_id',
'    and b.trans_id = :P17_REQ_ID',
'    --and a.company_code = :AP_COMPANY_CODE;',
'    AND A.COMPANY_CODE = B.COMPANY_CODE;',
'    ',
'    select CREATED_BY',
'    INTO :P17_EXITSTAFF_ID',
'    from XXHRMS.XXHRMS_APPROVAL_TAB',
'    where ID = :P17_ID',
'    AND TRANS_TYPE = :P17_ACTION;',
'EXCEPTION',
' when no_Data_found then',
' null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44881030786091511
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48192027023027510)
,p_process_sequence=>100
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Request Staff id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'    select b.staff_id',
'    INTO :P17_EXITSTAFF_ID',
'    from XXHRMS.XXHRMS_APPROVAL_TAB a,  xxadm.xxadm_password b',
'    where a.trans_id = :P17_REQ_ID',
'    AND a.TRANS_TYPE = :P17_ACTION',
'    and trim(a.CREATED_BY) =  trim(b.LOGNAME);',
'EXCEPTION',
' when no_Data_found then',
' null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P17_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'TERMINATION'
,p_internal_uid=>48192027023027510
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26524812335400318)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Travel Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_max number;',
'v_cur number;',
'v_lvl number;',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''TRAVEL'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''TRAVEL'';',
'    --',
'    ',
'BEGIN',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_TRAVEL_COMMENTS,''N/A''),',
'        STATUS = ''APPROVED''',
'    where trim(ID) = trim(:P17_ID)',
'    and trans_type = ''TRAVEL'';',
'    ',
'    --',
'    If (v_cur = v_max) Then',
'      ',
'        BEGIN',
'		XXCLM.XXCLM_CLAIMS_PKG.approve_request(',
'		p_status =>''APPROVED'',',
'		p_comment =>:P17_TRAVEL_COMMENTS,',
'		p_apr_id =>:AP_AUTH_STAFF,',
'		p_trans_type =>:P17_ACTION,',
'		p_trans_id=>:P17_REQ_ID,',
'		p_id=> :P17_ID);',
'        ',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TRAVEL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_TRAVEL_COMMENTS',
'                                                );',
'         END;',
'         --send notification',
'    xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'             p_TRANS_TYPE=> ''TRAVEL'',',
'             p_tansaction_action=> '' Approved By '',',
'              p_transaction_id  => :P17_REQ_ID',
'                                        );',
'    Else',
'     ',
'    --Send Mail',
'                    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TRAVEL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_TRAVEL_COMMENTS',
'                                                );',
'    End if;',
'    ---',
'  select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and APR_ID	= :AP_STAFF_ID',
'  and trans_type = ''TRAVEL'';',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and APR_LVL  = v_lvl',
'  and trans_type = ''TRAVEL'';',
'  End IF;',
'    ',
'    commit;',
'exception',
'  when others then',
'  raise_application_error(-20007,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26524409032400314)
,p_process_success_message=>'Travel Request Approved'
,p_internal_uid=>26524812335400318
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26524980505400319)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Travel Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.reject_request(',
'     p_status =>''REJECTED'',',
'    p_comment =>:P17_TRAVEL_COMMENTS,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'   ',
'                                         --send notification',
'    xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'             p_TRANS_TYPE=> ''TRAVEL'',',
'             p_tansaction_action=> '' Rejected By '',',
'              p_transaction_id  => :P17_REQ_ID',
'                                        );',
'   --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TRAVEL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_TRAVEL_COMMENTS',
'                                                );',
'  ',
'  ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26524540556400315)
,p_process_success_message=>'Travel Request Rejected'
,p_internal_uid=>26524980505400319
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3492665058039821)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Loan Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_max number;',
'v_cur number;',
'v_lvl number;',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''LOAN'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''LOAN'';',
'    --',
'    ',
'BEGIN',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_COMMENTS,'' ''),',
'        STATUS = ''APPROVED''',
'    where trim(ID) = trim(:P17_ID)',
'    and trans_type = ''LOAN'';',
'    ',
'    --',
'    If (v_cur = v_max) Then',
'      ',
'        Update xxhrms.xxhrms_ss_loans',
'        set WORKFLOW_STATUS = ''APPROVED''',
'        WHERE ID = :P17_REQ_ID;',
'          --send notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''LOAN'',',
'             p_tansaction_action=> ''Approved By'',',
'    p_transaction_id  => :P17_REQ_ID',
'            ',
'                                        );',
'                                        ',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''LOAN'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'                                                --send notification',
'    xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'             p_TRANS_TYPE=> ''LOAN'',',
'             p_tansaction_action=> '' Approved By '',',
'              p_transaction_id  => :P17_REQ_ID',
'                                        );',
'    Else',
'        Update xxhrms.xxhrms_ss_loans',
'        set WORKFLOW_STATUS = ''PENDING''',
'        WHERE ID = :P17_REQ_ID;',
'    --Send Mail',
'                    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''LOAN'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'    End if;',
'    ---',
'      select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and APR_ID	= :AP_STAFF_ID',
'  and rownum=1;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'    ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3492879972039823)
,p_process_success_message=>'Loan Request Approved'
,p_internal_uid=>3492665058039821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3492727230039822)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Loan Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_COMMENTS,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and STATUS = ''PENDING''',
'    and trans_type = ''LOAN'';',
'    ',
'        Update xxhrms.xxhrms_ss_loans',
'        set WORKFLOW_STATUS = ''REJECTED''',
'        WHERE ID = :P17_REQ_ID;',
'        ',
'          --send notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''LOAN'',',
'             p_tansaction_action=> ''Rejected By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        ',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''LOAN'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_COMMENTS',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3492998195039824)
,p_process_success_message=>'Loan Request Rejected'
,p_internal_uid=>3492727230039822
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26918467258688046)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve voucher'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare ',
'v_lvl number;',
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.approve_request(',
'     p_status =>''APPROVED'',',
'    p_comment =>:P17_VOUCHER_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'  ',
'  XXCLM.XXCLM_CLAIMS_PKG.push_softpay_staging_table(',
'    p_apprv_id =>:P17_ID,',
'    p_voucher_id => :P17_REQ_ID,',
'      p_tran_type => :P17_ACTION,',
'      p_company_code =>:SS_COMPANY_CODE',
');',
'  select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and APR_ID	= :AP_STAFF_ID;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'  --',
'  COMMIT;',
'',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26916396353688025)
,p_process_success_message=>'Voucher Approved'
,p_internal_uid=>26918467258688046
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26918578964688047)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Voucher'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.reject_request(',
'     p_status =>''REJECTED'',',
'    p_comment =>:P17_VOUCHER_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26916443833688026)
,p_process_success_message=>'Voucher Rejected'
,p_internal_uid=>26918578964688047
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27069436400280722)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve OTHER REQUEST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_lvl number;',
'',
'',
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.approve_request(',
'     p_status =>''APPROVED'',',
'    p_comment =>:P17_OTHER_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'  --',
'    select max(APR_LVL+1) into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and NEXTS = ''Y''',
'  and APR_ID	= :AP_STAFF_ID;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'  --',
'  COMMIT;',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27069215183280720)
,p_process_success_message=>'Other Request Approved'
,p_internal_uid=>27069436400280722
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27069588261280723)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject OTHER REQUEST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.reject_request(',
'     p_status =>''REJECTED'',',
'    p_comment =>:P17_OTHER_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27069330259280721)
,p_process_success_message=>'Other Request Rejected'
,p_internal_uid=>27069588261280723
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27413989942758146)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Expenditure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_lvl number;',
'BEGIN',
'  XXPBG.XXPBG_PROJECT_BUDGET.approve_request(',
'     p_status =>''APPROVED'',',
'    p_comment =>:P17_OTHER_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'  --',
'  select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and APR_ID	= :AP_STAFF_ID',
'  and  trans_type =:P17_ACTION;',
'  --',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and APR_LVL  = v_lvl',
'  and  trans_type =:P17_ACTION;',
'  End IF;',
'  --',
'  COMMIT;',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27413764712758144)
,p_process_success_message=>'Expenditure Request Approved'
,p_internal_uid=>27413989942758146
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27414031445758147)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Expenditure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXPBG.XXPBG_PROJECT_BUDGET.reject_request(',
'     p_status =>''REJECTED'',',
'    p_comment =>:P17_OTHER_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27413873016758145)
,p_process_success_message=>'Expenditure Request Rejected'
,p_internal_uid=>27414031445758147
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27511927514611135)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Expenditure Voucher'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_lvl number;',
'BEGIN',
'  XXPBG.XXPBG_PROJECT_BUDGET.approve_request(',
'     p_status =>''APPROVED'',',
'    p_comment =>:P17_VOUCHER_COMMENT_1,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'  XXCLM.XXCLM_CLAIMS_PKG.push_softpay_staging_table(',
'    p_apprv_id =>:P17_ID,',
'    p_voucher_id => :P17_REQ_ID,',
'      p_tran_type => :P17_ACTION,',
'      p_company_code =>:SS_COMPANY_CODE',
');',
'--',
'  select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and APR_ID	= :AP_STAFF_ID',
'  and trans_type =:P17_ACTION;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'  --',
'  COMMIT;',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27511747829611133)
,p_process_success_message=>'Voucher Approved'
,p_internal_uid=>27511927514611135
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27512018232611136)
,p_process_sequence=>190
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Expenditure Vouchers'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXPBG.XXPBG_PROJECT_BUDGET.reject_request(',
'     p_status =>''REJECTED'',',
'    p_comment =>:P17_VOUCHER_COMMENT_1,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27511885874611134)
,p_process_success_message=>'Voucher Approved'
,p_internal_uid=>27512018232611136
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28310940753945147)
,p_process_sequence=>200
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve REIM Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_lvl number;',
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.approve_request(',
'     p_status =>''APPROVED'',',
'    p_comment =>:P17_REIM_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'  --',
'    select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and APR_ID	= :AP_STAFF_ID;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'  --',
'  COMMIT;',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(28310725460945145)
,p_internal_uid=>28310940753945147
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28311071077945148)
,p_process_sequence=>210
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject REIM Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.reject_request(',
'     p_status =>''REJECTED'',',
'    p_comment =>:P17_REIM_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(28310823137945146)
,p_internal_uid=>28311071077945148
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29220856496244442)
,p_process_sequence=>220
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Initital Budget'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_lvl number;',
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.approve_request(',
'     p_status =>''APPROVED'',',
'    p_comment =>:P17_BUDGET_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'  --',
'    select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and APR_ID	= :AP_STAFF_ID;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and trans_type = :P17_ACTION',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'  --',
'  COMMIT;',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(29220690750244440)
,p_process_success_message=>'&P17_ACTION. Approved'
,p_internal_uid=>29220856496244442
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29220956343244443)
,p_process_sequence=>230
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Initital Budget'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  XXCLM.XXCLM_CLAIMS_PKG.reject_request(',
'     p_status =>''REJECTED'',',
'    p_comment =>:P17_BUDGET_COMMENT,',
'    p_apr_id =>:AP_AUTH_STAFF,',
'    p_trans_type =>:P17_ACTION,',
'    p_trans_id=>:P17_REQ_ID,',
'  p_id=> :P17_ID); ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(29220798065244441)
,p_process_success_message=>'Initial Budget Rejected'
,p_internal_uid=>29220956343244443
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32809972645317302)
,p_process_sequence=>240
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Leave Approval Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_max number;',
'v_cur number;',
'v_lvl number;',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''LEAVE'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''LEAVE'';',
'    --',
'    ',
'BEGIN',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_COMMENT,''''),',
'        STATUS = ''APPROVED''',
'    where trim(ID) = trim(:P17_ID)',
'    and trans_type = ''LEAVE'';',
'    ',
'    --',
'    If (v_cur = v_max) Then',
'      ',
'        Update xxhrms.xxhrms_SS_LEAVE',
'        set WORKFLOW_STATUS = ''APPROVED''',
'        WHERE ID = :P17_REQ_ID;',
'        --send notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''LEAVE'',',
'             p_tansaction_action=> '' Approved By '',',
'              p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''LEAVE'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'    Else',
'        Update xxhrms.xxhrms_SS_LEAVE',
'        set WORKFLOW_STATUS = ''PENDING''',
'        WHERE ID = :P17_REQ_ID;',
'    --Send Mail',
'                    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''LEAVE'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'    End if;',
'    ---',
'      select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and APR_ID	= :AP_STAFF_ID;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'    ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31777894002167949)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>32809972645317302
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32810048640317303)
,p_process_sequence=>250
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Leave Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and STATUS = ''PENDING''',
'    and trans_type = ''LEAVE'';',
'    ',
'        Update xxhrms.xxhrms_SS_LEAVE',
'        set WORKFLOW_STATUS = ''REJECTED''',
'        WHERE ID = :P17_REQ_ID;',
'          --send notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''LEAVE'',',
'             p_tansaction_action=> '' Rejected By '',',
'              p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        ',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''LEAVE'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31777984992167950)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>32810048640317303
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32853763515753936)
,p_process_sequence=>260
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SavePersonl_Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_row xxhrms.XXHRMS_PEOPLE_F_UPDATE%ROWTYPE;',
'  v_date date := sysdate;',
'  v_updated VARCHAR2(2000);',
'  ',
'  v_eff_date date :=trunc(sysdate);',
'  p_validate boolean := FALSE;',
'  p_datetrack_update_mode varchar2(50);',
'  p_effective_start_date  date := trunc(sysdate);',
'  p_effective_end_date    date;-- := trunc(sysdate + 100);',
'  v_company_code varchar2(50);',
'  --',
'  v_max number;',
'v_cur number;',
'v_lvl number;',
'--',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''EMP_APPROVAL''',
'    and ID = :P17_ID;',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_id = :P17_REQ_ID',
'    and trans_type = ''EMP_APPROVAL'';',
'    --',
'  ',
'  ',
'  CURSOR c_row IS ',
'    SELECT     distinct *',
'      FROM xxhrms.XXHRMS_PEOPLE_F_UPDATE',
'     WHERE REQUEST_ID = :P17_REQ_ID',
'      AND TRUNC(sysdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, sysdate)',
'      ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'',
'  --',
'BEGIN',
' OPEN c_row;',
'  FETCH c_row INTO v_row;',
'  CLOSE c_row;',
'  --',
'  Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'  --',
'',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'     set comments = nvl(:P17_PEP_COMMENT,''test''),',
'        STATUS = ''APPROVED''',
'     where trim(ID) = trim(:P17_ID)',
'     and trans_id = :P17_REQ_ID',
'     and trans_type = ''EMP_APPROVAL'';',
'	 --',
'    If (v_cur = v_max) Then',
'	v_company_code:= :AP_COMPANY_CODE;',
'  ',
'  APEX_UTIL.SET_SESSION_STATE (''AP_COMPANY_CODE'',v_row.company_code);',
'    -- Call the function',
'	p_datetrack_update_mode := xxhrms.xxhrms_person_api.fn_is_update_or_ins(x_effective_date => v_eff_date,',
'                                                                       x_person_id => v_row.person_id);',
'                                                                       ',
'--insert into xxhrms.xxtest values(''p_datetrack_update_mode-''||p_datetrack_update_mode||''v_EFF_DATE-''||v_eff_date);',
' -- Call the update person procedure',
'      xxhrms.xxhrms_person_api.update_person(p_validate => p_validate,',
'                                      p_effective_date => v_eff_date,',
'                                      p_datetrack_update_mode => p_datetrack_update_mode,',
'                                      p_person_id => v_row.person_id,',
'                                      p_object_version_number => v_row.object_version_number,',
'                                      vacancy_no => v_row.vacancy_no,',
'                                      last_name => v_row.last_name,',
'                                      first_name => v_row.first_name,',
'                                      middle_name => v_row.middle_name,',
'                                      title => v_row.title,',
'                                      full_name => v_row.full_name,',
'                                      nationality => v_row.nationality,',
'                                      local_govt_area => v_row.local_govt_area,',
'                                      state_of_origin => v_row.state_of_origin,',
'                                      postal_address => v_row.postal_address,',
'                                      email => v_row.email,',
'                                      telephone1 => v_row.telephone1,',
'                                      telephone2 => v_row.telephone2,',
'                                      residence_address => v_row.residence_address,',
'                                      birth_date => v_row.birth_date,',
'                                      sex => v_row.sex,',
'                                      marital_status => v_row.marital_status,',
'                                      no_of_children => v_row.no_of_children,',
'                                      hobbies => v_row.hobbies,',
'                                      cv => v_row.cv,',
'                                      continent => v_row.continent,',
'                                      acceptance_flag => v_row.acceptance_flag,',
'                                      ins_time => v_row.ins_time,',
'                                      ins_by => v_row.ins_by,',
'                                      updated_time => SYSDATE,',
'                                      updated_by => :APP_USER,',
'                                      company_code => v_row.company_code,',
'                                      employment_status => v_row.employment_status,',
'                                      mothers_maiden_name => v_row.mothers_maiden_name,',
'                                      attribute_category => v_row.attribute_category,',
'                                      attribute1 => v_row.attribute1,',
'                                      attribute2 => v_row.attribute2,',
'                                      attribute3 => v_row.attribute3,',
'                                      attribute4 => v_row.attribute4,',
'                                      attribute5 => v_row.attribute5,',
'                                      attribute6 => v_row.attribute6,',
'                                      attribute7 => v_row.attribute7,',
'                                      attribute8 => v_row.attribute8,',
'                                      attribute9 => v_row.attribute9,',
'                                      attribute10 => v_row.attribute10,',
'                                      attribute11 => v_row.attribute11,',
'                                      attribute12 => v_row.attribute12,',
'                                      attribute13 => v_row.attribute13,',
'                                      attribute14 => v_row.attribute14,',
'                                      attribute15 => v_row.attribute15,',
'                                      attribute16 => v_row.attribute16,',
'                                      attribute17 => v_row.attribute17,',
'                                      attribute18 => v_row.attribute18,',
'                                      attribute19 => v_row.attribute19,',
'                                      attribute20 => v_row.attribute20,',
'                                      attribute21 => v_row.attribute21,',
'                                      attribute22 => v_row.attribute22,',
'                                      attribute23 => v_row.attribute23,',
'                                      attribute24 => v_row.attribute24,',
'                                      attribute25 => v_row.attribute25,',
'                                      attribute26 => v_row.attribute26,',
'                                      attribute27 => v_row.attribute27,',
'                                      attribute28 => v_row.attribute28,',
'                                      attribute29 => v_row.attribute29,',
'                                      attribute30 => v_row.attribute30,',
'                                      effective_start_date => p_effective_start_date,',
'                                      effective_end_date => p_effective_end_date,',
'                                      updated_columns => v_row.updated_columns,',
'                                      latest_start_date => v_row.latest_start_date,',
'                                      email2 => v_row.email2,',
'                                      residence_city => v_row.residence_city,',
'                                      residence_state => v_row.residence_state,',
'                                      residence_country => v_row.residence_country,',
'                                      genotype => v_row.genotype,',
'                                      blood_group => v_row.blood_group,',
'                                      national_id => v_row.national_id,',
'                                      other_id => v_row.other_id);',
'                                      ',
'      APEX_UTIL.SET_SESSION_STATE (''AP_COMPANY_CODE'',v_company_code);                                ',
'    INSERT INTO xxhrms.xxhrms_people_archive',
'    SELECT * FROM xxhrms.xxhrms_people_f',
'     WHERE person_id = v_row.PERSON_ID',
'     AND TO_DATE(sysdate,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(sysdate,''DD-MON-RR''));',
'    ',
' ',
'    UPDATE xxhrms.xxhrms_people_archive',
'      SET effective_end_date  =  NVL(effective_end_date,sysdate),',
'        updated_time = sysdate,',
'        updated_by = :app_user',
'    WHERE person_id = v_row.PERSON_ID;',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''EMP_APPROVAL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_PEP_COMMENT',
'                                                );',
'    Else',
'    --Send Mail',
'                    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''EMP_APPROVAL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_PEP_COMMENT',
'                                                );',
'    End if;',
'    ---',
'   select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and ID  = :P17_ID',
'  and APR_ID	= :AP_STAFF_ID;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'    ',
'    commit;',
'  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32811015939317313)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>32853763515753936
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39581292032504203)
,p_process_sequence=>270
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject PersonalInfo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and STATUS = ''PENDING''',
'    and trans_type = ''EMP_APPROVAL'';',
'    ',
'        Update xxhrms.XXHRMS_PEOPLE_F_UPDATE',
'        set status = ''REJECTED''',
'        WHERE REQUEST_ID = :P17_REQ_ID;',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''EMP_APPROVAL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32811127551317314)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>39581292032504203
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39581134916504202)
,p_process_sequence=>280
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' ',
'  v_row_assign xxhrms.XXHRMS_ASSIGNMENTS_UPDATE%ROWTYPE;',
'  p_validate boolean := FALSE;',
'--   v_date date := sysdate;',
'  p_result VARCHAR2(2000);',
'       ',
' ',
'  --',
'  v_eff_date date :=trunc(sysdate);',
' ',
'  p_datetrack_update_mode varchar2(50);',
'  p_effective_start_date  date := trunc(sysdate);',
'  p_effective_end_date    date;',
'  v_company_code varchar2(50);',
'  ',
'  --',
'',
' --',
'  --',
'  v_max number;',
'v_cur number;',
'v_lvl number;',
'--',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''ASSGNMT_APRVL'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''ASSGNMT_APRVL'';',
'    --',
' ',
'  CURSOR c_row_assign',
'  IS ',
'  SELECT * FROM xxhrms.XXHRMS_ASSIGNMENTS_UPDATE',
'  WHERE REQUEST_ID = :P17_REQ_ID',
'  AND TRUNC(sysdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, sysdate)',
'  ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'  --',
'begin',
' -- :P84_SUB := ''2'';',
' --',
'   Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'  --',
'',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'     set comments = nvl(:P17_ASS_COMMENT,''test''),',
'        STATUS = ''APPROVED''',
'     where trim(ID) = trim(:P17_ID)',
'     and trans_type = ''ASSGNMT_APRVL'';',
'     --',
'     ',
' --',
'  ',
'   OPEN c_row_assign;',
'        FETCH c_row_assign INTO v_row_assign;',
'        CLOSE c_row_assign;',
'        ',
'  v_eff_date  :=trunc(v_row_assign.EFFECTIVE_START_DATE);',
'',
'  ',
'  IF (v_cur = v_max)  THEN',
'  v_company_code:= :AP_COMPANY_CODE;',
'  ',
'  APEX_UTIL.SET_SESSION_STATE (''AP_COMPANY_CODE'',v_row_assign.company_code);',
'  ',
'       p_datetrack_update_mode := xxhrms.xxhrms_assignment_api.fn_is_update_or_ins(x_effective_date => v_eff_date,',
'                                                                       x_person_id =>v_row_assign.staff_id );',
'    ',
'        -- Call the update assignment procedure',
'      xxhrms.xxhrms_assignment_api.update_rec(p_person_id => v_row_assign.staff_id,',
'                                           p_staff_id => v_row_assign.staff_id,',
'                                           p_job_id => v_row_assign.job_id,',
'                                           p_grade => v_row_assign.grade,',
'                                           p_staff_category => v_row_assign.staff_category,',
'                                           p_dept_code => v_row_assign.dept_code,',
'                                           p_dept_location => v_row_assign.dept_location,',
'                                           p_assignment_status => v_row_assign.assignment_status,',
'                                           p_emp_type => v_row_assign.emp_type,',
'                                           p_ssn => v_row_assign.ssn,',
'                                           p_payment_type => v_row_assign.payment_type,',
'                                           p_bank_name => v_row_assign.bank_name,',
'                                           p_bank_branch => v_row_assign.bank_branch,',
'                                           p_acc_type => v_row_assign.acc_type,',
'                                           p_acc_no => v_row_assign.acc_no,',
'                                           p_supervisor => v_row_assign.supervisor,',
'                                           p_emp_duties => v_row_assign.emp_duties,',
'                                           p_hire_date => v_row_assign.hire_date,',
'                                           p_effective_start_date => p_effective_start_date,',
'                                           p_effective_end_date => p_effective_end_date,',
'                                           p_absence_type => v_row_assign.absence_type,',
'                                           p_probation => v_row_assign.probation,',
'                                           p_probation_date => v_row_assign.probation_date,',
'                                           p_currency => v_row_assign.currency,',
'                                           p_annual_sal => v_row_assign.annual_sal,',
'                                           p_fullname => v_row_assign.fullname,',
'                                           p_p_mode => v_row_assign.p_mode,',
'                                           p_paid_salary => v_row_assign.paid_salary,',
'                                           p_grade_step => v_row_assign.grade_step,',
'                                           p_absence_id => v_row_assign.absence_id,',
'                                           p_joblevel => v_row_assign.joblevel,',
'                                           p_position => v_row_assign.position,',
'                                           p_ssf_contributer => v_row_assign.ssf_contributer,',
'                                           p_ins_time => v_row_assign.ins_time,',
'                                           p_ins_by => v_row_assign.ins_by,',
'                                           p_updated_time => SYSDATE,',
'                                           p_updated_by => :APP_USER,',
'                                           p_company_code => v_row_assign.company_code,',
'                                           p_probation_end_date => v_row_assign.probation_end_date,',
'                                           p_tax_payer => v_row_assign.tax_payer,',
'                                           p_project_no => v_row_assign.project_no,',
'                                           p_pfa_admins => v_row_assign.pfa_admins,',
'                                           p_pin_no => v_row_assign.pin_no,',
'                                           p_tax_id => v_row_assign.tax_id,',
'                                           p_updated_columns => v_row_assign.updated_columns,',
'                                           p_trans_type => v_row_assign.trans_type,',
'                                           p_version_number => v_row_assign.version_number,',
'                                           p_start_date => v_row_assign.start_date,',
'                                           p_attribute_category => v_row_assign.attribute_category,',
'                                           p_attribute1 => v_row_assign.attribute1,',
'                                           p_attribute2 => v_row_assign.attribute2,',
'                                           p_attribute3 => v_row_assign.attribute3,',
'                                           p_attribute4 => v_row_assign.attribute4,',
'                                           p_attribute5 => v_row_assign.attribute5,',
'                                           p_attribute6 => v_row_assign.attribute6,',
'                                           p_attribute7 => v_row_assign.attribute7,',
'                                           p_attribute8 => v_row_assign.attribute8,',
'                                           p_attribute9 => v_row_assign.attribute9,',
'                                           p_attribute10 => v_row_assign.attribute10,',
'                                           p_attribute11 => v_row_assign.attribute11,',
'                                           p_attribute12 => v_row_assign.attribute12,',
'                                           p_attribute13 => v_row_assign.attribute13,',
'                                           p_attribute14 => v_row_assign.attribute14,',
'                                           p_attribute15 => v_row_assign.attribute15,',
'                                           p_attribute16 => v_row_assign.attribute16,',
'                                           p_attribute17 => v_row_assign.attribute17,',
'                                           p_attribute18 => v_row_assign.attribute18,',
'                                           p_attribute19 => v_row_assign.attribute19,',
'                                           p_attribute20 => v_row_assign.attribute20,',
'                                           p_sub_organization_code => v_row_assign.sub_organization_code,',
'                                           p_attribute21 => v_row_assign.attribute21,',
'                                           p_attribute22 => v_row_assign.attribute22,',
'                                           p_attribute23 => v_row_assign.attribute23,',
'                                           p_attribute24 => v_row_assign.attribute24,',
'                                           p_attribute25 => v_row_assign.attribute25,',
'                                           p_attribute26 => v_row_assign.attribute26,',
'                                           p_attribute27 => v_row_assign.attribute27,',
'                                           p_attribute28 => v_row_assign.attribute28,',
'                                           p_attribute29 => v_row_assign.attribute29,',
'                                           p_attribute30 => v_row_assign.attribute30,',
'                                           p_object_version_number => v_row_assign.object_version_number,',
'                                           p_effective_date => v_eff_date,',
'                                           p_datetrack_mode => p_datetrack_update_mode,',
'                                           p_validate => p_validate);',
'		---',
'		APEX_UTIL.SET_SESSION_STATE (''AP_COMPANY_CODE'',v_company_code);',
'		 --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''ASSGNMT_APRVL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_ASS_COMMENT',
'                                               );',
'                                                ',
'            INSERT INTO xxhrms.XXHRMS_ASSIGNMENTS_ARCHIVE',
'        SELECT * FROM xxhrms.XXHRMS_ASSIGNMENTS_F',
'   --  WHERE person_id = :P84_PERSON_ID',
'    -- AND TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(:AP_GLOBAL_DATE,''DD-MON-RR''));',
'	 WHERE person_id = v_row_assign.PERSON_ID',
'     AND TO_DATE(sysdate,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(sysdate,''DD-MON-RR''));',
'                                                      ',
'	--',
'',
'           ',
'    Else',
'    --Send Mail',
'                   XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''ASSGNMT_APRVL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_ASS_COMMENT',
'                                                );',
'                                                ',
'                                              --  NULL;',
'                                         ',
'    End if;',
'    ---',
'          select APR_LVL + 1 into v_lvl ',
'		  from xxhrms.XXHRMS_APPROVAL_TAB ',
'		  where TRANS_ID = :P17_REQ_ID',
'		  and APR_ID	= :AP_STAFF_ID',
'          and ID = :P17_ID;',
'		  ',
'		  IF v_lvl IS NOT NULL THEN ',
'		  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'		  set NEXTS = ''Y''',
'		  Where TRANS_ID = :P17_REQ_ID',
'		  and APR_LVL  = v_lvl;',
'		  End IF;',
'		 ',
'			',
'      ',
'    COMMIT;        ',
'    Exception when others then',
'    rollback;',
'    raise_application_error(-20001, sqlerrm||dbms_utility.format_error_backtrace);',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(39378113711023808)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>39581134916504202
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39581366307504204)
,p_process_sequence=>290
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_ASS_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and ID = :P17_ID',
'    and STATUS = ''PENDING''',
'    and trans_type = ''ASSGNMT_APRVL'';',
'    ',
'        Update xxhrms.XXHRMS_ASSIGNMENTS_UPDATE',
'        set status = ''REJECTED''',
'        WHERE REQUEST_ID = :P17_REQ_ID;',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''ASSGNMT_APRVL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_ASS_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(39378230936023809)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>39581366307504204
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34485139959186402)
,p_process_sequence=>300
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'JOB_REQ_APPROVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_max number;',
'v_cur number;',
'v_lvl number;',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''JOB_REQUISITION'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''JOB_REQUISITION'';',
'    --',
'    ',
'BEGIN',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_JOB_COMMENT,''test''),',
'        STATUS = ''APPROVED''',
'    where trim(ID) = trim(:P17_ID)',
'    and trans_type = ''JOB_REQUISITION'';',
'    ',
'    --',
'    If (v_cur = v_max) Then',
'      ',
'        Update XXREC.XXREC_JOB_DETAILS',
'        set WF_STATUS = ''APPROVED''',
'        WHERE ID = :P17_REQ_ID;',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''JOB_REQUISITION'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_JOB_COMMENT',
'                                                );',
'    Else',
'        Update XXREC.XXREC_JOB_DETAILS',
'        set WF_STATUS = ''PENDING''',
'        WHERE ID = :P17_REQ_ID;',
'    --Send Mail',
'                    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''JOB_REQUISITION'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_JOB_COMMENT',
'                                                );',
'    End if;',
'    ---',
'      select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and APR_ID	= :AP_STAFF_ID;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'    ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34399267786713945)
,p_internal_uid=>34485139959186402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34485212406186403)
,p_process_sequence=>310
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'JOB_REQ_REJECT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_JOB_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and STATUS = ''PENDING''',
'    and trans_type = ''JOB_REQUISITION'';',
'    ',
'        Update XXREC.XXREC_JOB_DETAILS',
'        set WF_STATUS = ''REJECTED''',
'        WHERE ID = :P17_REQ_ID;',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''JOB_REQUISITION'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_JOB_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34399324122713946)
,p_internal_uid=>34485212406186403
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40799550763551032)
,p_process_sequence=>320
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve_ALLOWANCE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_max number;',
'v_cur number;',
'v_lvl number;',
'--',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''BEN_LOAD'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''BEN_LOAD'';',
'    --',
'',
'begin',
'   -- NULL;',
'     --',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'     --',
'     Update xxhrms.xxhrms_approval_tab ',
'     set comments = nvl(:P17_ALLOWANCE_COMM,''APPROVED''),',
'        STATUS = ''APPROVED''',
'     where ID = :P17_ID',
'     and trans_type = ''BEN_LOAD'';',
'     ---',
'     ',
'      IF (v_cur = v_max)  THEN',
'      ',
'      XXHRMS.XXHRMS_BENEFITS_UPLOAD_PK.allowanceUpdates_a(:P17_REQ_ID);',
'      ',
'       XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''BEN_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_ALLOWANCE_COMM',
'                                                );',
'                                                ',
'       Else',
'    --Send Mail',
'                   XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''BEN_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_ALLOWANCE_COMM',
'                                                );',
'                                                ',
'                                         ',
'      ',
'      End if;',
'      --',
'      select APR_LVL + 1 into v_lvl ',
'		  from xxhrms.XXHRMS_APPROVAL_TAB ',
'		  where TRANS_ID = :P17_REQ_ID',
'		  and APR_ID	= :AP_STAFF_ID',
'          and ID = :P17_ID;',
'		  ',
'		  IF v_lvl IS NOT NULL THEN ',
'		  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'		  set NEXTS = ''Y''',
'		  Where TRANS_ID = :P17_REQ_ID',
'		  and APR_LVL  = v_lvl;',
'		  End IF;',
'		 ',
'			',
'      ',
'    COMMIT;        ',
'    Exception when others then',
'    rollback;',
'    raise_application_error(-20001, sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(40799391170551030)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>40799550763551032
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(281499689095918350)
,p_process_sequence=>330
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve_Deduction'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_max number;',
'v_cur number;',
'v_lvl number;',
'--',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''VAR_LOAD'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''VAR_LOAD'';',
'    --',
'',
'begin',
'   -- NULL;',
'     --',
'',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'     --',
'',
'     Update xxhrms.xxhrms_approval_tab ',
'     set comments = nvl(:P17_DEDU_COMMENT,''APPROVED''),',
'        STATUS = ''APPROVED''',
'     where ID = :P17_ID',
'     and trans_type = ''VAR_LOAD'';',
'     ---',
'',
'      IF (v_cur = v_max)  THEN',
'      ',
'      xxhrms.xxhrms_deduction_update_pk.deductionUpdates_a(:P17_REQ_ID);',
'      ',
'       XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''VAR_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_DEDU_COMMENT',
'                                                );',
'                                                ',
'       Else',
'    --Send Mail',
'    ',
'                   XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''VAR_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_DEDU_COMMENT',
'                                                );',
'                                                ',
'                                         ',
'      ',
'      End if;',
'      --',
'   ',
'      select APR_LVL + 1 into v_lvl ',
'		  from xxhrms.XXHRMS_APPROVAL_TAB ',
'		  where TRANS_ID = :P17_REQ_ID',
'		  and APR_ID	= :AP_STAFF_ID',
'          and ID = :P17_ID;',
'',
'		  IF v_lvl IS NOT NULL THEN ',
'		  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'		  set NEXTS = ''Y''',
'		  Where TRANS_ID = :P17_REQ_ID',
'		  and APR_LVL  = v_lvl;',
'		  End IF;',
'		 ',
'			',
'      ',
'    COMMIT;        ',
'    Exception when others then',
'    rollback;',
'     raise_application_error(-20001, sqlerrm);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(281499252265918346)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>281499689095918350
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(281874226560653801)
,p_process_sequence=>340
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject_Deduction'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_DEDU_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where TRANS_ID = :P17_REQ_ID',
'    and ID = :P17_ID',
'    and STATUS = ''PENDING''',
'    and trans_type = ''VAR_LOAD'';',
'    ',
'        Update xxsbs_deductions_upload',
'        set status = ''REJECTED''',
'        WHERE TRANS_ID = :P17_REQ_ID;',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''VAR_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_DEDU_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(281499383133918347)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>281874226560653801
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41352098194173927)
,p_process_sequence=>350
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ASS_UPLOAD_APPROVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' ',
'  v_row_assign xxsbs.XXSBS_ASSIGNMENTS_UPDATE%ROWTYPE;',
'  v_row_assign_f xxhrms.XXHRMS_ASSIGNMENTS_F%ROWTYPE;',
'  p_validate boolean := FALSE;',
'--   v_date date := sysdate;',
'  p_result VARCHAR2(2000);',
'    v_hire_date date;',
'       ',
' ',
'  --',
' -- v_eff_date date :=trunc(sysdate);',
' ',
'  p_datetrack_update_mode varchar2(50);',
'  p_effective_start_date  date;',
'  p_effective_end_date    date;',
'  ',
'  --',
'   v_max number;',
'    v_cur number;',
'    v_lvl number;',
'--',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab t, XXSBS.XXSBS_ASSIGNMENTS_UPDATE  u',
'    where t.trans_id = :P17_REQ_ID',
'    and t.TRANS_ID=u.batch_id',
'    and t.trans_type = ''ASS_LOAD''',
'    and u.PROCESS_FLAG=''ENABLED'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab t, XXSBS.XXSBS_ASSIGNMENTS_UPDATE  u',
'    where t.trans_id = :P17_REQ_ID',
'    and t.ID = :P17_ID',
'    and t.TRANS_ID=u.batch_id',
'    and t.trans_type = ''ASS_LOAD''',
'    and u.PROCESS_FLAG=''ENABLED'';',
'  --------------NOT SURE EFFECTIVE START DATE',
'  ',
'   CURSOR c_row_assign_f (p_staff_id varchar2, p_effdate date)',
'  IS ',
'  SELECT * FROM XXHRMS.XXHRMS_ASSIGNMENTS_F',
'  WHERE  TRUNC(p_effdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, p_effdate)',
'  and staff_id = p_staff_id',
'  --and effective_start_date = p_effdate',
'  ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'  ',
'  --',
'BEGIN',
'  ',
' --',
'     Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'  --',
'',
'    --',
'     Update xxhrms.xxhrms_approval_tab T',
'     set comments = nvl(:P17_UPLOADASS_COMMENT,''No Comment''),',
'        STATUS = ''APPROVED''',
'     where trim(ID) = trim(:P17_ID)',
'     and trans_type = ''ASS_LOAD''',
'     AND EXISTS (SELECT * FROM XXSBS.XXSBS_ASSIGNMENTS_UPDATE U',
'                 WHERE T.TRANS_ID=u.batch_id',
'                 and u.PROCESS_FLAG=''ENABLED'');',
'   ',
'		',
'  IF (v_cur = v_max)  THEN',
'		--',
' ',
'                      FOR i IN (SELECT * FROM XXSBS.XXSBS_ASSIGNMENTS_UPDATE',
'                                WHERE BATCH_ID = :P17_REQ_ID',
'                                AND BATCH_ID IS NOT NULL',
'                                AND PROCESS_FLAG=''ENABLED''',
'                                )',
'                      LOOP',
'',
'                    ---',
'                       OPEN c_row_assign_f(i.staff_id, i.effective_start_date);',
'                            FETCH c_row_assign_f INTO v_row_assign_f;',
'                            CLOSE c_row_assign_f;',
'                            ',
'                             IF NVL(to_char(v_row_assign_f.hire_date),''-x'') <> NVL(to_char(i.hire_date),''-x'') THEN',
'                                  if NVL(xxadm.get_profile_option(''UPDT_BIRTH_HIRE_DT'',v(''AP_COMPANY_CODE'')),''N'')=''Y'' then --allow Update of DOB',
'                                      v_hire_date:=i.hire_date;',
'',
'                                   else',
'                                       v_hire_date:=v_row_assign_f.hire_date;',
'                                   end if;',
'                             END IF;',
'',
'                           p_datetrack_update_mode := xxhrms.xxhrms_assignment_api.fn_is_update_or_ins(x_effective_date => i.effective_start_date,',
'                                                                                           x_person_id =>i.staff_id );',
'',
'                            -- Call the update assignment procedure',
'                          xxhrms.xxhrms_assignment_api.update_rec(p_person_id => i.staff_id,',
'                                                               p_staff_id => i.staff_id,',
'                                                               p_job_id => nvl(i.job_id,v_row_assign_f.job_id),',
'                                                               p_grade => nvl(i.grade,v_row_assign_f.grade),',
'                                                               p_staff_category => nvl(i.staff_category,v_row_assign_f.staff_category),',
'                                                               p_dept_code => nvl(i.dept_code,v_row_assign_f.dept_code),',
'                                                               p_dept_location => nvl(i.dept_location,v_row_assign_f.dept_location),',
'                                                               p_assignment_status => nvl(i.assignment_status,v_row_assign_f.assignment_status),',
'                                                               p_emp_type => nvl(i.emp_type,v_row_assign_f.emp_type),',
'                                                               p_ssn => nvl(i.ssn,v_row_assign_f.ssn),',
'                                                               p_payment_type => nvl(i.payment_type,v_row_assign_f.payment_type),',
'                                                               p_bank_name => nvl(i.bank_name,v_row_assign_f.bank_name),',
'                                                               p_bank_branch => nvl(i.bank_branch,v_row_assign_f.bank_branch),',
'                                                               p_acc_type => nvl(i.acc_type,v_row_assign_f.acc_type),',
'                                                               p_acc_no => nvl(i.acc_no,v_row_assign_f.acc_no),',
'                                                               p_supervisor => nvl(i.supervisor,v_row_assign_f.supervisor),',
'                                                               p_emp_duties => nvl(i.emp_duties,v_row_assign_f.emp_duties),',
'                                                               p_hire_date => nvl(v_hire_date,v_row_assign_f.hire_date),',
'                                                               p_effective_start_date => i.effective_start_date,',
'                                                               p_effective_end_date => p_effective_end_date,',
'                                                               p_absence_type => nvl(i.absence_type,v_row_assign_f.absence_type),',
'                                                               p_probation => nvl(i.probation,v_row_assign_f.probation),',
'                                                               p_probation_date => nvl(i.probation_date,v_row_assign_f.probation_date),',
'                                                               p_currency => nvl(i.currency,v_row_assign_f.currency),',
'                                                               p_annual_sal => nvl(i.annual_sal,v_row_assign_f.annual_sal),',
'                                                               p_fullname => nvl(i.fullname,v_row_assign_f.fullname),',
'                                                               p_p_mode => nvl(i.p_mode,v_row_assign_f.p_mode),',
'                                                               p_paid_salary => nvl(i.paid_salary,v_row_assign_f.paid_salary),',
'                                                               p_grade_step => nvl(i.grade_step,v_row_assign_f.grade_step),',
'                                                               p_absence_id => nvl(i.absence_id,v_row_assign_f.absence_id),',
'                                                               p_joblevel => nvl(i.joblevel,v_row_assign_f.joblevel),',
'                                                               p_position => nvl(i.position,v_row_assign_f.position),',
'                                                               p_ssf_contributer => nvl(i.ssf_contributer,v_row_assign_f.ssf_contributer),',
'                                                               p_ins_time => nvl(i.ins_time,v_row_assign_f.ins_time),',
'                                                               p_ins_by => nvl(i.ins_by,v_row_assign_f.ins_by),',
'                                                               p_updated_time => SYSDATE,',
'                                                               p_updated_by => :APP_USER,',
'                                                               p_company_code => v_row_assign_f.company_code, --nvl(i.company_code,v_row_assign_f.company_code),',
'                                                               p_probation_end_date => nvl(i.probation_end_date,v_row_assign_f.probation_end_date),',
'                                                               p_tax_payer => nvl(i.tax_payer,v_row_assign_f.tax_payer),',
'                                                               p_project_no => nvl(i.project_no,v_row_assign_f.project_no),',
'                                                               p_pfa_admins => nvl(i.pfa_admins,v_row_assign_f.pfa_admins),',
'                                                               p_pin_no => nvl(i.pin_no,v_row_assign_f.pin_no),',
'                                                               p_tax_id => nvl(i.tax_id,v_row_assign_f.tax_id),',
'                                                               p_updated_columns => nvl(i.updated_columns,v_row_assign_f.updated_columns),',
'                                                               p_trans_type => nvl(i.trans_type,v_row_assign_f.trans_type),',
'                                                               p_version_number => nvl(i.version_number,v_row_assign_f.version_number),',
'                                                               p_start_date => nvl(i.start_date,v_row_assign_f.start_date),',
'                                                               p_attribute_category => nvl(i.attribute_category,v_row_assign_f.attribute_category),',
'                                                               p_attribute1 => nvl(i.attribute1,v_row_assign_f.attribute1),',
'                                                               p_attribute2 => nvl(i.attribute2,v_row_assign_f.attribute2),',
'                                                               p_attribute3 => nvl(i.attribute3,v_row_assign_f.attribute3),',
'                                                               p_attribute4 => nvl(i.attribute4,v_row_assign_f.attribute4),',
'                                                               p_attribute5 => nvl(i.attribute5,v_row_assign_f.attribute5),',
'                                                               p_attribute6 => nvl(i.attribute6,v_row_assign_f.attribute6),',
'                                                               p_attribute7 => nvl(i.attribute7,v_row_assign_f.attribute7),',
'                                                               p_attribute8 => nvl(i.attribute8,v_row_assign_f.attribute8),',
'                                                               p_attribute9 => nvl(i.attribute9,v_row_assign_f.attribute9),',
'                                                               p_attribute10 => nvl(i.attribute10,v_row_assign_f.attribute10),',
'                                                               p_attribute11 => nvl(i.attribute11,v_row_assign_f.attribute11),',
'                                                               p_attribute12 => nvl(i.attribute12,v_row_assign_f.attribute12),',
'                                                               p_attribute13 => nvl(i.attribute13,v_row_assign_f.attribute13),',
'                                                               p_attribute14 => nvl(i.attribute14,v_row_assign_f.attribute14),',
'                                                               p_attribute15 => nvl(i.attribute15,v_row_assign_f.attribute15),',
'                                                               p_attribute16 => nvl(i.attribute16,v_row_assign_f.attribute16),',
'                                                               p_attribute17 => nvl(i.attribute17,v_row_assign_f.attribute17),',
'                                                               p_attribute18 => nvl(i.attribute18,v_row_assign_f.attribute18),',
'                                                               p_attribute19 => nvl(i.attribute19,v_row_assign_f.attribute19),',
'                                                               p_attribute20 => nvl(i.attribute20,v_row_assign_f.attribute20),',
'                                                               p_sub_organization_code => nvl(i.sub_organization_code,v_row_assign_f.sub_organization_code),',
'                                                               p_attribute21 => nvl(i.attribute21,v_row_assign_f.attribute21),',
'                                                               p_attribute22 => nvl(i.attribute22,v_row_assign_f.attribute22),',
'                                                               p_attribute23 => nvl(i.attribute23,v_row_assign_f.attribute23),',
'                                                               p_attribute24 => nvl(i.attribute24,v_row_assign_f.attribute24),',
'                                                               p_attribute25 => nvl(i.attribute25,v_row_assign_f.attribute25),',
'                                                               p_attribute26 => nvl(i.attribute26,v_row_assign_f.attribute26),',
'                                                               p_attribute27 => nvl(i.attribute27,v_row_assign_f.attribute27),',
'                                                               p_attribute28 => nvl(i.attribute28,v_row_assign_f.attribute28),',
'                                                               p_attribute29 => nvl(i.attribute29,v_row_assign_f.attribute29),',
'                                                               p_attribute30 => nvl(i.attribute30,v_row_assign_f.attribute30),',
'                                                               p_object_version_number => v_row_assign_f.object_version_number,',
'                                                               p_effective_date => nvl(i.effective_start_date,v_row_assign_f.effective_start_date),',
'                                                               p_datetrack_mode => p_datetrack_update_mode,',
'                                                               p_validate => p_validate);',
'                            ---',
'                        ',
'',
'                                        INSERT INTO xxhrms.XXHRMS_ASSIGNMENTS_ARCHIVE',
'                                        SELECT * FROM xxhrms.XXHRMS_ASSIGNMENTS_F',
'                                     WHERE person_id = i.staff_id',
'                                     AND TO_DATE(i.effective_start_date,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(i.effective_start_date,''DD-MON-RR''));   ',
'                             --------        ',
'                                     INSERT INTO xxhrms.XXHRMS_ASSIGNMENTS_UPDATE',
'                                    (PERSON_ID,STAFF_ID,JOB_ID,GRADE,STAFF_CATEGORY,DEPT_CODE,DEPT_LOCATION,ASSIGNMENT_STATUS,EMP_TYPE,SSN,BANK_NAME,ACC_NO,SUPERVISOR,EMP_DUTIES,EFFECTIVE_START_DATE,',
'                                     EFFECTIVE_END_DATE,PROBATION,PROBATION_DATE,ANNUAL_SAL,FULLNAME,PAID_SALARY,GRADE_STEP,JOBLEVEL,POSITION,INS_TIME,INS_BY,UPDATED_TIME,UPDATED_BY,COMPANY_CODE,',
'                                     PROBATION_END_DATE,PFA_ADMINS,PIN_NO,TAX_ID,UPDATED_COLUMNS,ATTRIBUTE3,ATTRIBUTE4,ATTRIBUTE6,ATTRIBUTE7,ATTRIBUTE8,ATTRIBUTE9,SUB_ORGANIZATION_CODE,REQUEST_ID)',
'                                    VALUES',
'                                    (i.PERSON_ID,i.STAFF_ID,i.JOB_ID,i.GRADE,i.STAFF_CATEGORY,i.DEPT_CODE,i.DEPT_LOCATION,i.ASSIGNMENT_STATUS,i.EMP_TYPE,i.SSN,i.BANK_NAME,i.ACC_NO,i.SUPERVISOR,i.EMP_DUTIES,',
'                                     i.EFFECTIVE_START_DATE,i.EFFECTIVE_END_DATE,i.PROBATION,i.PROBATION_DATE,i.ANNUAL_SAL,i.FULLNAME,i.PAID_SALARY,i.GRADE_STEP,i.JOBLEVEL,i.POSITION,i.INS_TIME,i.INS_BY,',
'                                     i.UPDATED_TIME,i.UPDATED_BY,i.COMPANY_CODE,i.PROBATION_END_DATE,i.PFA_ADMINS,i.PIN_NO,i.TAX_ID,i.UPDATED_COLUMNS,i.ATTRIBUTE3,i.ATTRIBUTE4,i.ATTRIBUTE6,i.ATTRIBUTE7,',
'                                     i.ATTRIBUTE8,i.ATTRIBUTE9,i.SUB_ORGANIZATION_CODE,i.REQUEST_ID);',
'                                        --',
'                                     delete xxsbs.XXSBS_ASSIGNMENTS_UPDATE',
'                                     where REQUEST_ID = i.REQUEST_ID',
'                                     AND PROCESS_FLAG=''ENABLED'';',
'                    --',
'                         XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''ASS_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_UPLOADASS_COMMENT',
'                                                );',
'                    --                                                ',
'                        End Loop;	',
'                    --',
'     ELSE ',
'',
'      XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''ASS_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_UPLOADASS_COMMENT',
'                                                );',
'                                                ',
'                                              --  NULL;',
'                                         ',
'    End if;',
'    ---',
'    ',
'          select APR_LVL + 1 into v_lvl ',
'		  from xxhrms.XXHRMS_APPROVAL_TAB ',
'		  where TRANS_ID = :P17_REQ_ID',
'		  and APR_ID	= :AP_STAFF_ID',
'          and ID = :P17_ID;',
'		  ',
'		  IF v_lvl IS NOT NULL THEN ',
'		  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'		  set NEXTS = ''Y''',
'		  Where TRANS_ID = :P17_REQ_ID',
'		  and APR_LVL  = v_lvl;',
'		  End IF;',
'	',
'      ',
'  COMMIT;        ',
'    Exception when others then',
'    rollback;',
'    commit;',
'    raise_application_error(-20001, sqlerrm);',
'End;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(41351818102173925)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>41352098194173927
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41433229138669713)
,p_process_sequence=>360
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ASS_UPLOAD_REJECT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_UPLOADASS_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and ID = :P17_ID',
'    and STATUS = ''PENDING''',
'    and trans_type = ''ASS_LOAD'';',
'    ',
'        Update xxhrms.XXHRMS_ASSIGNMENTS_UPDATE',
'        set status = ''REJECTED''',
'        WHERE REQUEST_ID = :P17_REQ_ID;',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''ASS_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_UPLOADASS_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(41351990603173926)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>41433229138669713
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(282356191411797448)
,p_process_sequence=>370
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PEOPLE UPLOAD APPROAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' ',
'  v_row_assign xxsbs.xxsbs_people_f%ROWTYPE;',
'  v_row_assign_f xxhrms.xxhrms_people_f%ROWTYPE;',
'  p_validate boolean := FALSE;',
'--   v_date date := sysdate;',
'  p_result VARCHAR2(2000);',
'  v_updated varchar2(4000);',
'  v_last_name varchar2(100);',
' ',
'  p_datetrack_update_mode varchar2(50);',
'  p_effective_start_date  date;',
'  p_effective_end_date    date;',
'  v_birth_date date; ',
'  --',
'   v_max number;',
'    v_cur number;',
'    v_lvl number;',
'--',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab t, XXSBS.xxsbs_people_f  u',
'    where t.trans_id = :P17_REQ_ID',
'    and t.TRANS_ID=u.batch_id',
'    and t.trans_type = ''PEOPLE_LOAD'';',
'    --and u.PROCESS_FLAG=''ENABLED'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab t, XXSBS.xxsbs_people_f  u',
'    where t.trans_id = :P17_REQ_ID',
'    and t.ID = :P17_ID',
'    and t.TRANS_ID=u.batch_id',
'    and t.trans_type = ''PEOPLE_LOAD'';',
'   -- and u.PROCESS_FLAG=''ENABLED'';',
'  --------------NOT SURE EFFECTIVE START DATE',
'  ',
'   CURSOR c_row_assign_f (p_staff_id varchar2, p_effdate date)',
'  IS ',
'  SELECT * FROM XXHRMS.xxhrms_people_f',
'  WHERE  TRUNC(p_effdate) between TRUNC(effective_start_date) AND NVL(effective_end_date, p_effdate)',
'  and person_id = p_staff_id',
'  --and effective_start_date = p_effdate',
'  ORDER BY NVL(ins_time,''01-JAN-1990'') DESC;',
'  ',
'  --',
'BEGIN',
'  ',
' --',
'     Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'  --',
'',
'    --',
'     Update xxhrms.xxhrms_approval_tab T',
'     set comments = nvl(:P17_UPLOADPEOPLE_COMMENT,''No Comment''),',
'        STATUS = ''APPROVED''',
'     where trim(ID) = trim(:P17_ID)',
'     and trans_type = ''PEOPLE_LOAD''',
'     AND EXISTS (SELECT * FROM XXSBS.xxsbs_people_f U',
'                 WHERE T.TRANS_ID=u.batch_id',
'                 --and u.PROCESS_FLAG=''ENABLED''',
'				 );',
'   ',
'		',
'  IF (v_cur = v_max)  THEN',
'		--',
' ',
'                      FOR i IN (SELECT * FROM XXSBS.xxsbs_people_f',
'                                WHERE BATCH_ID = :P17_REQ_ID',
'                                AND BATCH_ID IS NOT NULL',
'                                --AND PROCESS_FLAG=''ENABLED''',
'                                )',
'                      LOOP',
'',
'                    ---',
'                       OPEN c_row_assign_f(i.person_id, i.effective_start_date);',
'                            FETCH c_row_assign_f INTO v_row_assign_f;',
'                        CLOSE c_row_assign_f;',
'                        ',
'                       IF NVL(to_char(v_row_assign_f.birth_date),''-x'') <> NVL(to_char(i.birth_date),''-x'') THEN',
'                          if NVL(xxadm.get_profile_option(''UPDT_BIRTH_HIRE_DT'',v(''AP_COMPANY_CODE'')),''N'')=''Y'' then --allow Update of DOB',
'                              v_birth_date:=i.birth_date;',
'                            v_updated := v_updated||''"Date of Birth" '';',
'                           else',
'                               v_birth_date:=v_row_assign_f.birth_date;',
'                           end if;',
'                      END IF;',
'                      ',
'                           p_datetrack_update_mode := xxhrms.xxhrms_person_api.fn_is_update_or_ins(x_effective_date => i.effective_start_date,',
'                                                                                           x_person_id =>i.person_id );',
'																						   ',
'					',
'                            -- Call the update people procedure',
'                            IF NVL(v_row_assign_f.last_name,''-x'') <> NVL(i.last_name,''-x'') THEN',
'    v_updated := ''"Surname" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.middle_name,''-x'') <> NVL(i.middle_name,''-x'') THEN',
'    v_updated := v_updated||''"Middle Name" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.first_name,''-x'') <> NVL(i.first_name,''-x'') THEN',
'    v_updated := v_updated||''"First Name" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.sex,''-x'') <> NVL(i.sex,''-x'') THEN',
'    v_updated := v_updated||''"Gender" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.marital_status,''-x'') <> NVL(i.marital_status,''-x'') THEN',
'    v_updated := v_updated||''Marital Status '';',
'  END IF;',
'  /*IF NVL(to_char(v_row_assign_f.birth_date),''-x'') <> NVL(to_char(i.birth_date),''-x'') THEN',
'    v_updated := v_updated||''"Date of Birth" '';',
'  END IF;*/',
'  IF NVL(v_row_assign_f.title,''-x'') <> NVL(i.title,''-x'') THEN',
'    v_updated := v_updated||''"Title" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.state_of_origin,''-x'') <> NVL(i.state_of_origin,''-x'') THEN',
'    v_updated := v_updated||''"State of Origin"" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.local_govt_area,''-x'') <> NVL(i.local_govt_area,''-x'') THEN',
'    v_updated := v_updated||''"Local Govt." '';',
'  END IF;',
'  IF NVL(v_row_assign_f.nationality,''-x'') <> NVL(i.nationality,''-x'') THEN',
'    v_updated := v_updated||''"Nationality" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.genotype,''-x'') <> NVL(i.genotype,''-x'') THEN',
'    v_updated := v_updated||''"Genotype" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.national_id,''-x'') <> NVL(i.national_id,''-x'') THEN',
'    v_updated := v_updated||''"National ID No." '';',
'  END IF;',
'  IF NVL(v_row_assign_f.other_id,''-x'') <> NVL(i.other_id,''-x'') THEN',
'    v_updated := v_updated||''"Other ID No." '';',
'  END IF;',
'  IF NVL(v_row_assign_f.blood_group,''-x'') <> NVL(i.blood_group,''-x'') THEN',
'    v_updated := v_updated||''"Blood Group" '';',
'  END IF;',
'  IF NVL(v_row_assign_f.mothers_maiden_name,''-x'') <> NVL(i.mothers_maiden_name,''-x'') THEN',
'    v_updated := v_updated||''"Mothers Maiden Name" '';',
'  END IF;',
' /* IF NVL(v_row_assign_f.full_name,''-x'') <> NVL(i.surname||'' ''||i.first_name||'' ''||i.mid_name,''-x'') THEN',
'    v_updated := v_updated||''"Full Name" '';',
'  END IF;',
'  */',
'  IF NVL(v_row_assign_f.attribute29,''-x'') <> NVL(i.attribute29,''-x'') THEN',
'    v_updated := v_updated||''"Place of Birth" ''; --   attribute3 ',
'  END IF;',
'   IF NVL(v_row_assign_f.attribute6,''-x'') <> NVL(i.attribute6,''-x'') THEN',
'    v_updated := v_updated||''"Union" ''; --   attribute3 ',
'  END IF;',
'   IF NVL(v_row_assign_f.attribute3,''-x'') <> NVL(i.attribute3,''-x'') THEN',
'    v_updated := v_updated||''"Religion" ''; --    ',
'  END IF;',
'  ',
'  v_updated := REPLACE(REPLACE(TRIM(v_updated),''" '',''", ''),''"'','''');',
'  v_last_name := nvl(i.last_name,v_row_assign_f.last_name);',
'',
'xxhrms.xxhrms_person_api.update_person(p_validate => p_validate,',
'                                      p_effective_date => nvl(i.effective_start_date,v_row_assign_f.effective_start_date),',
'                                      p_datetrack_update_mode => p_datetrack_update_mode,',
'                                      p_person_id => i.person_id,',
'                                      p_object_version_number => i.object_version_number,',
'                                      vacancy_no => nvl(i.vacancy_no,v_row_assign_f.vacancy_no),',
'                                      --last_name => v_row_assign_f.last_name,',
'                                       last_name => v_last_name,',
'                                      first_name => nvl(i.first_name,v_row_assign_f.first_name),',
'                                      middle_name => nvl(i.middle_name,v_row_assign_f.middle_name),',
'                                      title => nvl(i.title,v_row_assign_f.title),',
'                                      full_name => v_row_assign_f.full_name,',
'                                      nationality => nvl(i.nationality,v_row_assign_f.nationality),',
'                                      local_govt_area => nvl(i.local_govt_area,v_row_assign_f.local_govt_area),',
'                                      state_of_origin => nvl(i.state_of_origin,v_row_assign_f.state_of_origin),',
'                                      postal_address => nvl(i.postal_address,v_row_assign_f.postal_address),',
'                                      email => nvl(i.email,v_row_assign_f.email),',
'                                      telephone1 => nvl(i.telephone1,v_row_assign_f.telephone1),',
'                                      telephone2 => nvl(i.telephone2,v_row_assign_f.telephone2),',
'                                      residence_address => nvl(i.residence_address,v_row_assign_f.residence_address),',
'                                      birth_date => nvl(v_birth_date,v_row_assign_f.birth_date),',
'                                      sex => nvl(i.sex,v_row_assign_f.sex),',
'                                      marital_status => nvl(i.marital_status,v_row_assign_f.marital_status),',
'                                      no_of_children => nvl(i.no_of_children,v_row_assign_f.no_of_children),',
'                                      hobbies => nvl(i.hobbies,v_row_assign_f.hobbies),',
'                                      cv => nvl(i.cv,v_row_assign_f.cv),',
'                                      continent => nvl(i.continent,v_row_assign_f.continent),',
'                                      acceptance_flag => nvl(i.acceptance_flag,v_row_assign_f.acceptance_flag),',
'                                      ins_time => nvl(i.ins_time,v_row_assign_f.ins_time),',
'                                      ins_by => nvl(i.ins_by,v_row_assign_f.ins_by),',
'                                      updated_time => SYSDATE,',
'                                      updated_by => :APP_USER,',
'                                      company_code => v_row_assign_f.company_code, --nvl(i.company_code,v_row_assign_f.company_code),',
'                                      employment_status => nvl(i.employment_status,v_row_assign_f.employment_status),',
'                                      mothers_maiden_name => nvl(i.mothers_maiden_name,v_row_assign_f.mothers_maiden_name),',
'                                      attribute_category => nvl(i.attribute_category,v_row_assign_f.mothers_maiden_name),',
'                                      attribute1 => nvl(i.attribute1,v_row_assign_f.attribute1),',
'									   attribute2 => nvl(i.attribute2,v_row_assign_f.attribute2),',
'									   attribute3 => nvl(i.attribute3,v_row_assign_f.attribute3),',
'									   attribute4 => nvl(i.attribute4,v_row_assign_f.attribute4),',
'									   attribute5 => nvl(i.attribute5,v_row_assign_f.attribute5),',
'									   attribute6 => nvl(i.attribute6,v_row_assign_f.attribute6),',
'									   attribute7 => nvl(i.attribute7,v_row_assign_f.attribute7),',
'									   attribute8 => nvl(i.attribute8,v_row_assign_f.attribute8),',
'									   attribute9 => nvl(i.attribute9,v_row_assign_f.attribute9),',
'									   attribute10 => nvl(i.attribute10,v_row_assign_f.attribute10),',
'									   attribute11 => nvl(i.attribute11,v_row_assign_f.attribute11),',
'									   attribute12 => nvl(i.attribute12,v_row_assign_f.attribute12),',
'									   attribute13 => nvl(i.attribute13,v_row_assign_f.attribute13),',
'									   attribute14 => nvl(i.attribute14,v_row_assign_f.attribute14),',
'									   attribute15 => nvl(i.attribute15,v_row_assign_f.attribute15),',
'									   attribute16 => nvl(i.attribute16,v_row_assign_f.attribute16),',
'									   attribute17 => nvl(i.attribute17,v_row_assign_f.attribute17),',
'									   attribute18 => nvl(i.attribute18,v_row_assign_f.attribute18),',
'									   attribute19 => nvl(i.attribute19,v_row_assign_f.attribute19),',
'									   attribute20 => nvl(i.attribute20,v_row_assign_f.attribute20),',
'									   attribute21 => nvl(i.attribute21,v_row_assign_f.attribute21),',
'									   attribute22 => nvl(i.attribute22,v_row_assign_f.attribute22),',
'									   attribute23 => nvl(i.attribute23,v_row_assign_f.attribute23),',
'									   attribute24 => nvl(i.attribute24,v_row_assign_f.attribute24),',
'									   attribute25 => nvl(i.attribute25,v_row_assign_f.attribute25),',
'									   attribute26 => nvl(i.attribute26,v_row_assign_f.attribute26),',
'									   attribute27 => nvl(i.attribute27,v_row_assign_f.attribute27),',
'									   attribute28 => nvl(i.attribute28,v_row_assign_f.attribute28),',
'									   attribute29 => nvl(i.attribute29,v_row_assign_f.attribute29),',
'									   attribute30 => nvl(i.attribute30,v_row_assign_f.attribute30),',
'                                      effective_start_date => i.effective_start_date,',
'                                      effective_end_date => p_effective_end_date,',
'                                      updated_columns => nvl(v_updated,v_row_assign_f.updated_columns),',
'                                      latest_start_date => nvl(i.latest_start_date,v_row_assign_f.latest_start_date),',
'                                      email2 => nvl(i.email2,v_row_assign_f.email2),',
'                                      residence_city => nvl(i.residence_city,v_row_assign_f.residence_city),',
'                                      residence_state => nvl(i.residence_state,v_row_assign_f.residence_state),',
'                                      residence_country => nvl(i.residence_country,v_row_assign_f.residence_country),',
'                                      genotype => nvl(i.genotype,v_row_assign_f.genotype),',
'                                      blood_group => nvl(i.blood_group,v_row_assign_f.blood_group),',
'                                      national_id => nvl(i.national_id,v_row_assign_f.national_id),',
'                                      other_id => nvl(i.other_id,v_row_assign_f.other_id)',
'									  );',
'                                      ',
'                                      ',
'							INSERT INTO xxhrms.xxhrms_people_archive',
'							SELECT * FROM xxhrms.xxhrms_people_f',
'							 WHERE person_id = i.PERSON_ID',
'							 AND TO_DATE(sysdate,''DD-MON-RR'') between TRUNC(effective_start_date) AND NVL(effective_end_date, TO_DATE(sysdate,''DD-MON-RR''));',
'    ',
'				 INSERT INTO xxhrms.XXHRMS_PEOPLE_F_UPDATE( PERSON_ID,	VACANCY_NO,	LAST_NAME,	FIRST_NAME,	MIDDLE_NAME, TITLE, FULL_NAME,	',
'											NATIONALITY	,LOCAL_GOVT_AREA, STATE_OF_ORIGIN, POSTAL_ADDRESS,	EMAIL,	TELEPHONE1,	',
'											TELEPHONE2,	RESIDENCE_ADDRESS, BIRTH_DATE,	SEX, MARITAL_STATUS,	NO_OF_CHILDREN,	',
'											HOBBIES, CV, CONTINENT,	ACCEPTANCE_FLAG, INS_TIME, INS_BY,	UPDATED_TIME,	',
'											UPDATED_BY,	COMPANY_CODE, EMPLOYMENT_STATUS, MOTHERS_MAIDEN_NAME, ATTRIBUTE_CATEGORY,	',
'											ATTRIBUTE1,	ATTRIBUTE2,	ATTRIBUTE3,	ATTRIBUTE4,	ATTRIBUTE5,	ATTRIBUTE6,	ATTRIBUTE7,	',
'											ATTRIBUTE8,	ATTRIBUTE9,	ATTRIBUTE10, ATTRIBUTE11, ATTRIBUTE12, ATTRIBUTE13, ATTRIBUTE14	,',
'											ATTRIBUTE15, ATTRIBUTE16, ATTRIBUTE17, ATTRIBUTE18,	ATTRIBUTE19, ATTRIBUTE20, ATTRIBUTE21,	',
'											ATTRIBUTE22, ATTRIBUTE23, ATTRIBUTE24, ATTRIBUTE25, ATTRIBUTE26, ATTRIBUTE27, ATTRIBUTE28,	',
'											ATTRIBUTE29, ATTRIBUTE30, EFFECTIVE_START_DATE,	EFFECTIVE_END_DATE,	UPDATED_COLUMNS,	',
'											LATEST_START_DATE, EMAIL2, RESIDENCE_CITY, RESIDENCE_STATE,	RESIDENCE_COUNTRY,',
'											GENOTYPE, BLOOD_GROUP, NATIONAL_ID, OTHER_ID, OBJECT_VERSION_NUMBER, REQUEST_ID )',
'			VALUES( i.PERSON_ID,i.VACANCY_NO,i.LAST_NAME,i.FIRST_NAME,i.MIDDLE_NAME,i.TITLE,i.FULL_NAME,	',
'			i.NATIONALITY,i.LOCAL_GOVT_AREA,i.STATE_OF_ORIGIN,i.POSTAL_ADDRESS,i.EMAIL,i.TELEPHONE1,	',
'			i.TELEPHONE2,i.RESIDENCE_ADDRESS,i.BIRTH_DATE,i.SEX,i.MARITAL_STATUS,i.NO_OF_CHILDREN,	',
'			i.HOBBIES,i.CV,	i.CONTINENT,i.ACCEPTANCE_FLAG,i.INS_TIME,i.INS_BY,i.UPDATED_TIME,	',
'			i.UPDATED_BY,i.COMPANY_CODE,i.EMPLOYMENT_STATUS,i.MOTHERS_MAIDEN_NAME,i.ATTRIBUTE_CATEGORY,	',
'			i.ATTRIBUTE1,i.ATTRIBUTE2,i.ATTRIBUTE3,i.ATTRIBUTE4,i.ATTRIBUTE5,i.ATTRIBUTE6,i.ATTRIBUTE7,	',
'			i.ATTRIBUTE8,i.ATTRIBUTE9,i.ATTRIBUTE10,i.ATTRIBUTE11,i.ATTRIBUTE12,i.ATTRIBUTE13,i.ATTRIBUTE14	,',
'			i.ATTRIBUTE15,	i.ATTRIBUTE16,	i.ATTRIBUTE17,	i.ATTRIBUTE18,	i.ATTRIBUTE19,	i.ATTRIBUTE20,	i.ATTRIBUTE21,	',
'			i.ATTRIBUTE22,i.ATTRIBUTE23,i.ATTRIBUTE24,i.ATTRIBUTE25,i.ATTRIBUTE26,i.ATTRIBUTE27,i.ATTRIBUTE28,	',
'			i.ATTRIBUTE29,i.ATTRIBUTE30,i.EFFECTIVE_START_DATE,i.EFFECTIVE_END_DATE,i.UPDATED_COLUMNS,	',
'			i.LATEST_START_DATE,i.EMAIL2,i.RESIDENCE_CITY,i.RESIDENCE_STATE,i.RESIDENCE_COUNTRY,',
'			i.GENOTYPE,i.BLOOD_GROUP,i.NATIONAL_ID,i.OTHER_ID,i.OBJECT_VERSION_NUMBER,i.BATCH_ID);',
'',
'				 ',
'				UPDATE xxhrms.xxhrms_people_archive',
'				  SET effective_end_date  =  NVL(effective_end_date,sysdate),',
'					updated_time = sysdate,',
'					updated_by = :app_user',
'				WHERE person_id = i.PERSON_ID;',
'              --',
'                                     delete xxsbs.xxsbs_people_f',
'                                     where BATCH_ID = i.BATCH_ID',
'                                    -- AND PROCESS_FLAG=''ENABLED''',
'									 ;',
'                                     --',
'                         XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''PEOPLE_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_UPLOADPEOPLE_COMMENT',
'                                                ); ',
'                    --                                                ',
'                        End Loop;	',
'                    --',
'     ELSE ',
'		',
'      XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''PEOPLE_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_UPLOADPEOPLE_COMMENT',
'                                                ); ',
'                                                ',
'		NULL;',
'                                         ',
'    End if;',
'    ---',
'    ',
'          select APR_LVL + 1 into v_lvl ',
'		  from xxhrms.XXHRMS_APPROVAL_TAB ',
'		  where TRANS_ID = :P17_REQ_ID',
'		  and APR_ID	= :AP_STAFF_ID',
'          and ID = :P17_ID;',
'		  ',
'		  IF v_lvl IS NOT NULL THEN ',
'		  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'		  set NEXTS = ''Y''',
'		  Where TRANS_ID = :P17_REQ_ID',
'		  and APR_LVL  = v_lvl;',
'		  End IF;',
'	',
'      ',
'  COMMIT;        ',
'    Exception when others then',
'    rollback;',
'   -- commit;',
'    raise_application_error(-20001, sqlerrm);',
'End;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(282352057479797407)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>282356191411797448
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(282356284497797449)
,p_process_sequence=>380
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PEOPLE UPLOAD REJECT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_UPLOADPEOPLE_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and ID = :P17_ID',
'    and STATUS = ''PENDING''',
'    and trans_type = ''PEOPLE_LOAD'';',
'    ',
'        Update xxhrms.XXHRMS_PEOPLE_F_UPDATE',
'        set status = ''REJECTED''',
'        WHERE REQUEST_ID = :P17_REQ_ID;',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''PEOPLE_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_UPLOADPEOPLE_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(282352197077797408)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>282356284497797449
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42932892841257521)
,p_process_sequence=>390
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Payroll'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_max number;',
'v_cur number;',
'v_lvl number;',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''PAYROLL_APPRVL'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''PAYROLL_APPRVL'';',
'    --',
'    ',
'BEGIN',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_PAYROLL_COMENT,''Approved''),',
'        STATUS = ''APPROVED''',
'    where trim(ID) = trim(:P17_ID)',
'    and trans_type = ''PAYROLL_APPRVL'';',
'    ',
'    --',
'    If (v_cur = v_max) Then',
'      ',
'        Update xxhrms.XXHRMS_PAYROLL_APPR_TBL',
'        set APPROVAL_STATUS = ''APPROVED'',',
'        APPROVAL_TIME=sysdate',
'        WHERE APR_ID = :P17_REQ_ID;',
'        ---send notification ',
'         xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''PAYROLL_APPRVL'',',
'              p_tansaction_action=> ''Approved By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        ',
'     XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''PAYROLL_APPRVL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_PAYROLL_COMENT',
'                                                );',
'        ',
'    Else',
'        Update xxhrms.XXHRMS_PAYROLL_APPR_TBL',
'        set APPROVAL_STATUS = ''PENDING''',
'        WHERE APR_ID = :P17_REQ_ID;',
'    --Send Mail',
'    ',
'    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''PAYROLL_APPRVL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_PAYROLL_COMENT',
'                                                );',
'                        ',
'    End if;',
'    ---',
'      select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and APR_ID	= :AP_STAFF_ID',
'  and trans_type = ''PAYROLL_APPRVL'';',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and APR_LVL  = v_lvl',
'  and trans_type = ''PAYROLL_APPRVL'';',
'  End IF;',
'    ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(42931670616257509)
,p_process_success_message=>'Payroll approval successful.'
,p_internal_uid=>42932892841257521
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42933046990257523)
,p_process_sequence=>400
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Payroll'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_PAYROLL_COMENT,''Rejected''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and STATUS = ''PENDING''',
'    and trans_type = ''PAYROLL_APPRVL'';',
'    ',
'     ',
'        Update xxhrms.XXHRMS_PAYROLL_APPR_TBL',
'        set APPROVAL_STATUS = ''REJECTED''',
'        WHERE APR_ID = :P17_REQ_ID; ',
'    commit;',
'    --send notification ',
'     xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''PAYROLL_APPRVL'',',
'             p_tansaction_action=> ''Rejected By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'    --Send Mail',
'                   XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''PAYROLL_APPRVL'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_PAYROLL_COMENT',
'                                                );',
'    ',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(42931796693257510)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>42933046990257523
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(283071822347758041)
,p_process_sequence=>410
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Termination Upload'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_max number;',
'v_cur number;',
'v_lvl number;',
'v_count     NUMBER;',
'vBatchID    NUMBER;',
'vTermID     VARCHAR2(100);',
'v_msg        VARCHAR2(500);',
'--',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''TERM_LOAD'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''TERM_LOAD'';',
'    --',
'',
'begin',
'     --',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'     --',
'',
'     Update xxhrms.xxhrms_approval_tab ',
'     set comments = nvl(:P17_DEDU_COMMENT,''APPROVED''),',
'        STATUS = ''APPROVED''',
'     where ID = :P17_ID',
'     and trans_type = ''TERM_LOAD'';',
'     ---',
'',
'      IF (v_cur = v_max)  THEN',
'      ',
'	  begin',
'				for c0 in (select a.rowid row_id, a.*,b.fullname  from xxhrmS.XXHRMS_TERMINATE_UPLOAD a, XXHRMS.XXHRMS_ASSIGNMENTS b',
'									  where a.staff_id = b.person_id',
'									   and nvl(PROC_FLAG,''N'') = ''N''',
'										and BATCH_ID=:P17_REQ_ID',
'									   AND A.COMPANY_CODE = :AP_COMPANY_CODE',
'						)',
'',
'				loop',
'',
'				BEGIN  ',
'					SELECT count(1) ',
'					  INTO v_count ',
'					  FROM xxhrms.xxhrms_termination',
'					 WHERE staff_id = c0.STAFF_ID',
'					   AND date_terminated < SYSDATE;',
'				  IF v_count > 0 THEN ',
'					 update XXHRMS.XXHRMS_TERMINATE_UPLOAD ',
'					 set MESSAGE = ''The Employee is already terminated'', PROC_FLAG = ''Y'' where rowid = c0.row_id;',
'				   commit;',
'				Continue;',
'				  END IF;',
'				  vTermID  :=xxhrms.xxhrms_termination_seq.NEXTVAL;',
'				  xxhrms.xxhrms_utils_pkg.terminate_employee(c0.staff_id,c0.TERMINATE_DATE, c0.UPLOADED_BY, vTermID, v_msg, vBatchID);',
'				  IF v_msg = ''SUCCESS'' THEN',
'					  UPDATE xxhrms.xxhrms_termination',
'					   set company_code =:AP_COMPANY_CODE,-- (SELECT company_code FROM xxadm.xxadm_password WHERE logname = :app_user),',
'						  fullname = c0.FULLNAME,',
'						  REASON = c0.TERMINATE_REASON,',
'						  comments = c0.TERMINATE_REASON,',
'						  DATE_TERMINATED =c0.TERMINATE_DATE,',
'						  APPROVED_BY = c0.APPROVED_BY,',
'						  DATE_APPROVED = c0.TERMINATE_DATE',
'					 WHERE termination_id = vTermID ;',
'					 ',
'					 UPDATE xxadm.xxadm_password',
'						  set EDATE = c0.TERMINATE_DATE',
'						  where STAFF_ID = c0.STAFF_ID;',
'					 update XXHRMS.XXHRMS_TERMINATE_UPLOAD ',
'					 set MESSAGE = v_msg, PROC_FLAG = ''Y'' where rowid = c0.row_id;',
'					  ',
'				  ELSE',
'					  update XXHRMS.XXHRMS_TERMINATE_UPLOAD ',
'					 set MESSAGE = v_msg, PROC_FLAG = ''N'' where rowid = c0.row_id;',
'				  END IF;',
'				  COMMIT;  ',
'				 exception ',
'				   when others then',
'					rollback;',
'					v_msg := SQLERRM;',
'					update XXHRMS.XXHRMS_TERMINATE_UPLOAD ',
'					 set MESSAGE = v_msg, PROC_FLAG = ''N'' where rowid = c0.row_id;',
'				COMMIT;',
'				END;',
'				End loop;',
'				END;',
'      ',
'      --send notification ',
'       xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''TERM_LOAD'',',
'              p_tansaction_action=> ''Approved By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'       XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TERM_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_DEDU_COMMENT',
'                                                );',
'                                                ',
'       Else',
'    --Send Mail',
'    ',
'                   XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TERM_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_DEDU_COMMENT',
'                                                );',
'                                                ',
'                                         ',
'      ',
'      End if;',
'      --',
'   ',
'      select APR_LVL + 1 into v_lvl ',
'		  from xxhrms.XXHRMS_APPROVAL_TAB ',
'		  where TRANS_ID = :P17_REQ_ID',
'		  and APR_ID	= :AP_STAFF_ID',
'          and ID = :P17_ID;',
'',
'		  IF v_lvl IS NOT NULL THEN ',
'		  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'		  set NEXTS = ''Y''',
'		  Where TRANS_ID = :P17_REQ_ID',
'		  and APR_LVL  = v_lvl;',
'		  End IF;',
'		 ',
'			',
'      ',
'    COMMIT;        ',
'    Exception when others then',
'    rollback;',
'     raise_application_error(-20001, sqlerrm);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(283071616503758039)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>283071822347758041
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(283071910270758042)
,p_process_sequence=>420
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Termination Upload'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_TERM_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and ID = :P17_ID',
'    and STATUS = ''PENDING''',
'    and trans_type = ''TERM_LOAD'';',
'    ',
'      --  Update xxhrms.XXHRMS_TERMINATE_UPLOAD',
'      --  set status = ''REJECTED''',
'       -- WHERE REQUEST_ID = :P17_REQ_ID;',
'       ----send notification',
'       ',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''TERM_LOAD'',',
'             p_tansaction_action=> ''Rejected By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TERM_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_TERM_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(283071725946758040)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>283071910270758042
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(283252646580632717)
,p_process_sequence=>430
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Reinstate Upload'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_max number;',
'v_cur number;',
'v_lvl number;',
'v_count     NUMBER;',
'vBatchID    NUMBER;',
'vTermID     VARCHAR2(100);',
'v_msg        VARCHAR2(500);',
'v_PROC_FLAG VARCHAR2(10);',
'-----',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''REIN_LOAD'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''REIN_LOAD'';',
'    --',
'Begin',
'     --',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'     --',
'',
'     Update xxhrms.xxhrms_approval_tab ',
'     set comments = nvl(:P17_DEDU_COMMENT,''APPROVED''),',
'        STATUS = ''APPROVED''',
'     where ID = :P17_ID',
'     and trans_type = ''REIN_LOAD'';',
'     ---',
'',
'      IF (v_cur = v_max)  THEN',
'      ',
'	  Begin',
'			for c0 in',
'  (select  x.STAFF_ID,',
'		   y.full_name,',
'		   REINSTATE_DATE,',
'		   UPLOADED_BY,',
'		   PROC_FLAG,',
'		   MESSAGE,',
'		   ID',
'	  from XXHRMS.XXHRMS_REINSTATE_UPLOAD x, ',
'			xxhrms.xxhrms_people y, xxhrms.xxhrms_reins_upload_version z',
'	  where x.staff_id = person_id',
'		and x.staff_id = z.staff_id',
'		and x.upload_version = z.max_version',
'       and x.BATCH_ID = :P17_REQ_ID',
'		--and uploaded_by = :APP_USER',
'		--and x.staff_id not in (select staff_id from xxhrms.xxhrms_termination)',
'		and nvl(x.proc_flag,''I'') != ''Y'')',
'		 loop',
'		 begin',
'		 update xxhrms.xxhrms_people_f ',
'		   set employment_status = ''Active Employee''',
'		  where person_id = c0.staff_id',
'		  and sysdate between effective_start_date and effective_end_date;',
'		 update xxhrms.xxhrms_assignments_f',
'			set assignment_status = ''ACTIVE''',
'		  where person_id = c0.staff_id',
'		  and sysdate between effective_start_date and effective_end_date;',
'		   v_msg:=''Activated'';',
'		   v_PROC_FLAG:=''Y'';',
'		   exception ',
'			 when others then',
'			 rollback;',
'			   v_msg:=sqlerrm;',
'			   v_PROC_FLAG:=''E'';',
'		  end;',
'		 update XXHRMS.XXHRMS_REINSTATE_UPLOAD',
'		   set PROC_FLAG = v_PROC_FLAG,',
'				MESSAGE = v_msg',
'		 where staff_id = c0.staff_id and BATCH_ID = :P17_REQ_ID;',
'		 commit;',
'		 end loop;',
'		 commit;',
'      END;',
'      ---send notification ',
'       xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''REIN_LOAD'',',
'              p_tansaction_action=> ''Approved By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'      ',
'      ----send mail',
'       XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''REIN_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_DEDU_COMMENT',
'                                                );',
'                                                ',
'       Else',
'   ',
'                   XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''REIN_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_DEDU_COMMENT',
'                                                );',
'                                                ',
'                                         ',
'      ',
'      End if;',
'      --',
'   ',
'      select APR_LVL + 1 into v_lvl ',
'		  from xxhrms.XXHRMS_APPROVAL_TAB ',
'		  where TRANS_ID = :P17_REQ_ID',
'		  and APR_ID	= :AP_STAFF_ID',
'          and ID = :P17_ID;',
'',
'		  IF v_lvl IS NOT NULL THEN ',
'		  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'		  set NEXTS = ''Y''',
'		  Where TRANS_ID = :P17_REQ_ID',
'		  and APR_LVL  = v_lvl;',
'		  End IF;',
'		 ',
'			',
'      ',
'    COMMIT;        ',
'    Exception when others then',
'    rollback;',
'     raise_application_error(-20001, sqlerrm);',
'',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(283157280874541438)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>283252646580632717
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(283252750638632718)
,p_process_sequence=>440
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Reinstate Upload'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_TERM_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and ID = :P17_ID',
'    and STATUS = ''PENDING''',
'    and trans_type = ''REIN_LOAD'';',
'    ',
'      --  Update xxhrms.XXHRMS_TERMINATE_UPLOAD',
'      --  set status = ''REJECTED''',
'       -- WHERE REQUEST_ID = :P17_REQ_ID;',
'       --- notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''REIN_LOAD'',',
'             p_tansaction_action=> ''Rejected By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''REIN_LOAD'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_TERM_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(283157350098541439)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>283252750638632718
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305485065516930931)
,p_process_sequence=>450
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Web clock Approval'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_max number;',
'v_cur number;',
'v_lvl number;',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''WEB_CLOCK'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''WEB_CLOCK'';',
'    --',
'    ',
'BEGIN',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'    set COMMENTS = nvl(:P17_COMMENT_WEBCLK,''test''),',
'        STATUS = ''APPROVED''',
'    where trim(ID) = trim(:P17_ID)',
'    and trans_type = ''WEB_CLOCK'';',
'    ',
'    --',
'    If (v_cur = v_max) Then',
'      ',
'        Update xxhrms.xxhrms_ss_wclockin',
'        set WORKFLOW_STATUS = ''APPROVED''',
'        WHERE ID = :P17_REQ_ID;',
'        ',
'        ',
'        INSERT INTO xxta.xxta_emp_attendance(employee_id,clock_type,attendance_time,device_id,hr_location_id,prj_location_id,clock_method,workshift_id, COMPANY_CODE, clock_in_id,CLOCKOUT_TIME)',
'        select staff_id,clock_type,attendance_time,0,hr_location_id,prj_location_id,''W'',workshift_id, v(''AP_COMPANY_CODE''),ID,ATTENDANCE_TIMEOUT',
'                from xxhrms.xxhrms_ss_wclockin',
'                WHERE ID = :P17_REQ_ID',
'                and workflow_status =''APPROVED'';  ',
'                ',
'                  --send notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''WEB_CLOCK'',',
'             p_tansaction_action=> ''Approved By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        ',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''WEB_CLOCK'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_COMMENT_WEBCLK',
'                                                );',
'    Else',
'        Update xxhrms.xxhrms_ss_wclockin',
'        set WORKFLOW_STATUS = ''PENDING''',
'        WHERE ID = :P17_REQ_ID;',
'    --Send Mail',
'                    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''WEB_CLOCK'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_COMMENT_WEBCLK',
'                                                );',
'    End if;',
'    ---',
'      select APR_LVL + 1 into v_lvl ',
'  from xxhrms.XXHRMS_APPROVAL_TAB ',
'  where TRANS_ID = :P17_REQ_ID',
'  and APR_ID	= :AP_STAFF_ID;',
'  ',
'  IF v_lvl IS NOT NULL THEN ',
'  Update xxhrms.XXHRMS_APPROVAL_TAB ',
'  set NEXTS = ''Y''',
'  Where TRANS_ID = :P17_REQ_ID',
'  and APR_LVL  = v_lvl;',
'  End IF;',
'    ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(305484802431930929)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>305485065516930931
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305486260660930943)
,p_process_sequence=>460
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Web Clock request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_COMMENT_WEBCLK,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and STATUS = ''PENDING''',
'    and trans_type = ''WEB_CLOCK'';',
'    ',
'        Update xxhrms.xxhrms_ss_wclockin',
'        set WORKFLOW_STATUS = ''REJECTED''',
'        WHERE ID = :P17_REQ_ID;',
'        ',
'         --send notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''WEB_CLOCK'',',
'             p_tansaction_action=> ''Rejected By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''WEB_CLOCK'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'  ',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(305484957212930930)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>305486260660930943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38856233762493813)
,p_process_sequence=>470
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Exit Approval Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_max number;',
'v_cur number;',
'v_lvl number;',
'    Cursor max_cur',
'    is',
'    select max(APR_LVL)',
'    from xxhrms.xxhrms_approval_tab ',
'    where trans_id = :P17_REQ_ID',
'    and trans_type = ''TERMINATION'';',
'    --',
'    Cursor cur_lvl',
'    is',
'    select APR_LVL ',
'    from xxhrms.xxhrms_approval_tab ',
'    where ID = :P17_ID',
'    and trans_type = ''TERMINATION'';',
'    --',
'    ',
'BEGIN',
'    Open max_cur;',
'    Fetch max_cur into v_max;',
'    close max_Cur;',
'    --',
'    open cur_lvl;',
'    fetch cur_lvl into v_cur;',
'    close cur_lvl;',
'    --',
'     Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_COMMENT,'' ''),',
'        STATUS = ''APPROVED''',
'    where trim(ID) = trim(:P17_ID)',
'    and trans_type = ''TERMINATION'';',
'    ',
'    --',
'    If (v_cur = v_max) Then',
'      ',
'        Update xxhrms.XXHRMS_EXIT_REQUESTS ',
'        set WF_STATUS = ''S''',
'        WHERE REQUEST_ID = :P17_REQ_ID;',
'        ',
'         --send notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''TERMINATION'',',
'             p_tansaction_action=> ''Approved By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TERMINATION'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''FINAL'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'                                                ',
'         xxhrms.XXHRMS_NOTIFICATION_ALRT.Approved_ExitReq(:P17_EXITSTAFF_ID, :AP_STAFF_ID, :AP_COMPANY_CODE);',
'    Else',
'       -- Update xxhrms.XXHRMS_EXIT_REQUESTS',
'      --  set WF_STATUS = ''P''',
'       -- WHERE REQUEST_ID = :P17_REQ_ID;',
'    --Send Mail',
'                    XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TERMINATION'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''APPROVAL'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'    End if;',
'    ---',
'      select APR_LVL + 1 into v_lvl ',
'      from xxhrms.XXHRMS_APPROVAL_TAB ',
'      where TRANS_ID = :P17_REQ_ID',
'      and APR_ID	= :AP_STAFF_ID;',
'',
'      IF v_lvl IS NOT NULL THEN ',
'          Update xxhrms.XXHRMS_APPROVAL_TAB ',
'          set NEXTS = ''Y''',
'          Where TRANS_ID = :P17_REQ_ID',
'          and APR_LVL  = v_lvl;',
'      End IF;',
'    ',
'    commit;',
' Exception ',
'   when others then',
'       rollback;',
'       --raise_application_error(-20001,DBMS_UTILITY.format_error_backtrace|| '' ''||sqlerrm);',
'       raise_application_error(-20001,sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38855617868493807)
,p_process_success_message=>'Request Approved Successfully'
,p_internal_uid=>38856233762493813
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38856312964493814)
,p_process_sequence=>480
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Exit Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'BEGIN',
'    Update xxhrms.xxhrms_approval_tab ',
'    set comments = nvl(:P17_COMMENT,''''),',
'        STATUS = ''REJECTED''',
'    where trim(TRANS_ID) = trim(:P17_REQ_ID)',
'    and STATUS = ''PENDING''',
'    and trans_type = ''TERMINATION'';',
'    ',
'        Update xxhrms.XXHRMS_EXIT_REQUESTS ',
'        set WF_STATUS = ''R''',
'        WHERE REQUEST_ID = :P17_REQ_ID;',
'        ',
'        XXHRMS.XXHRMS_NOTIFICATION_ALRT.Rejected_ExitReq(:P17_EXITSTAFF_ID, :AP_STAFF_ID, :AP_COMPANY_CODE);',
'        ',
'         --send notification',
'        xxhrms.XXHRMS_APPROVAL.MOBILE_APP_NOTIFICATION_APPROVEE(',
'        p_TRANS_TYPE=> ''TERMINATION'',',
'             p_tansaction_action=> ''Rejected By'',',
'    p_transaction_id  => :P17_REQ_ID',
'                                        );',
'        ',
'        --Send Final Mail',
'        XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(',
'                                                 pTYPE=> ''TERMINATION'',',
'                                                 pTRANS_ID => :P17_REQ_ID,',
'                                                 pNOTETPYE => ''REJECT'',',
'                                                 pCOMMENT => :P17_COMMENT',
'                                                );',
'   ',
'        --delete attachments',
'    ',
'    delete from XXHRMS.XXHRMS_EXIT_DOCUMENTS',
'    where staff_id  =(select a.EMPLOYEE_ID	',
'                    from xxhrms.XXHRMS_EXIT_REQUESTS a , xxhrms.xxhrms_people b',
'                    where a.EMPLOYEE_ID=b.person_id',
'                    and a.REQUEST_ID=:P17_REQ_ID',
'                    and a.company_code =b.company_code);',
'    commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38855597661493806)
,p_process_success_message=>'Request Rejected Successfully'
,p_internal_uid=>38856312964493814
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44882695395091527)
,p_process_sequence=>490
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit aprroved clearance for second approver'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_APPR_ID VARCHAR2(300);',
'V_SEC_APPR VARCHAR2(300);',
'BEGIN',
'      ',
'    --insert json data into json table',
'       UPDATE XXHRMS.XXHRMS_QUESTION_JSON',
'       SET SECOND_APPROVER = :AP_STAFF_ID',
'       WHERE STAFF_ID = :P17_EXIT_STAFF_ID ',
'       AND TRANS_ID = :P17_REQ_ID;',
'    ',
'    -- update approval table',
'        UPDATE XXHRMS.XXHRMS_APPROVAL_TAB ',
'        SET STATUS = ''APPROVED''',
'        WHERE TRANS_ID = :P17_REQ_ID;',
'        ',
'     -- update deliverables table',
'        UPDATE XXHRMS.XXHRMS_DELIVE_EXIT',
'        SET STATUS = ''APPROVED''',
'        WHERE TRANS_ID = :P17_REQ_ID;',
'',
'    -- send mail',
'    ',
'   -- XXHRMS.XXHRMS_NOTIFICATION_ALRT.Approved_Clearance(:P17_EXIT_STAFF_ID, :AP_COMPANY_cODE);',
'  commit;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(44882560693091526)
,p_internal_uid=>44882695395091527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26561882131561119)
,p_process_sequence=>500
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'17'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26561882131561119
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72257376639353634)
,p_process_sequence=>510
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(72255985254353620)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Workshift Acitivies - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>72257376639353634
);
wwv_flow_imp.component_end;
end;
/
