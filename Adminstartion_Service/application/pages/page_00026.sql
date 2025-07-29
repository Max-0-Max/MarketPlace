prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Marketplace'
,p_alias=>'YB33'
,p_step_title=>'Marketplace'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const redirectToMainPageFunc = (pageID) => {',
'        var url = `f?p=#APP_ID#:${pageID}:#SESSION#::NO:RP,${pageID}:`;',
'        //var url = "f?p=#APP_ID#:"+''201''+":#SESSION#::NO:RP,201:";',
'        url = url.replace("#APP_ID#",&APP_ID.);',
'',
'        url = url.replace("#SESSION#", &SESSION.);',
'        ',
'        apex.server.process("PREPARE_URL", {',
'',
'                    x01: url',
'',
'        }, {',
'',
'        success: function(pData) {',
'',
'        if (pData.success === true) {',
'',
'                apex.navigation.redirect(pData.url);',
'',
'        } else {',
'',
'                console.log("FALSE");',
'',
'        }',
'',
'        },',
'',
'        error: function(request, status, error) {',
'',
unistr('               console.log("status\2014" + status + " error\2014-" + error);'),
'',
'        }',
'',
'    });',
'    ',
'    ',
'            return false;',
'        ',
'};',
'',
'',
'const redirectToModal = (pageID, compID) => {',
'        var url = `f?p=#APP_ID#:${pageID}:#SESSION#::NO:RP,${pageID}`; //''f?p='' || l_app || '':''||apex_application.g_x01||'':''||l_session||''::NO::''||l_item_name||'':''||apex_application.g_x02,',
'        //var url = "f?p=#APP_ID#:"+''201''+":#SESSION#::NO:RP,201:";',
'        url = url.replace("#APP_ID#",&APP_ID.);',
'',
'        url = url.replace("#SESSION#", &SESSION.);',
'        ',
'        apex.server.process("PREPARE_URL", {',
'',
'                    x01: url',
'',
'        }, {',
'',
'        success: function(pData) {',
'',
'        if (pData.success === true) {',
'',
'                apex.navigation.redirect(pData.url);',
'',
'        } else {',
'',
'                console.log("FALSE");',
'',
'        }',
'',
'        },',
'',
'        error: function(request, status, error) {',
'',
unistr('               console.log("status\2014" + status + " error\2014-" + error);'),
'',
'        }',
'',
'    });',
'    ',
'    ',
'            return false;',
'        ',
'};',
'',
'const redirectFunc = (product_id) => {',
'        var x = product_id;',
'        var url = "f?p=#APP_ID#:"+''39''+":#SESSION#::NO:RP,39:P39_COMPANY_ID:#PARA1#";',
'        url = url.replace("#APP_ID#",&APP_ID.);',
'',
'        url = url.replace("#SESSION#", &SESSION.);',
'',
'        url = url.replace("#PARA1#", x);',
'',
'        apex.server.process("PREPARE_URL", {',
'',
'                    x01: url',
'',
'        }, {',
'',
'        success: function(pData) {',
'',
'        if (pData.success === true) {',
'',
'                apex.navigation.redirect(pData.url);',
'',
'        } else {',
'',
'                console.log("FALSE");',
'',
'        }',
'',
'        },',
'',
'        error: function(request, status, error) {',
'',
unistr('               console.log("status\2014" + status + " error\2014-" + error);'),
'',
'        }',
'',
'    });',
'    ',
'    ',
'            return false;',
'        ',
'};',
'',
'const redirectToAnotherPage = (newPage) => {',
'        var url = newPage + ":#SESSION#::NO:";',
'    ',
'        url = url.replace("#SESSION#", &SESSION.);',
'',
'        apex.server.process("PREPARE_URL", {',
'',
'                    x01: url',
'',
'        }, {',
'',
'        success: function(pData) {',
'',
'        if (pData.success === true) {',
'',
'                apex.navigation.redirect(pData.url);',
'',
'        } else {',
'',
'                console.log("FALSE");',
'',
'        }',
'',
'        },',
'',
'        error: function(request, status, error) {',
'',
unistr('               console.log("status\2014" + status + " error\2014-" + error);'),
'',
'        }',
'',
'    });',
'    ',
'    ',
'            return false;',
'        ',
'};',
'',
'function setItem(item, value){',
' apex.server.process(',
'        "SET_SESSION_STATE", // The name of the APEX process to be called',
'        {  ',
'            x01: item,',
'            x02: value',
'        },',
'        {',
'            async: true, // Asynchronous request',
'            dataType: "text", // Expecting text as the return type',
'            success: function(pdata) {',
'                console.log("Session state set successfully for " + item);',
'            },',
'            error: function(jqXHR, textStatus, errorThrown) {',
'                console.error("Error setting session state: " + textStatus + " - " + errorThrown);',
'            }',
'        }',
'    );  ',
'}',
'',
'function closeSubmitDialog(){',
' let product_id = $v(''P26_PRODUCT_ID'');',
' apex.server.process(',
'        "GET_REDIRECT_URL", // The name of the APEX process to be called',
'        {  ',
'            x01: product_id',
'        },',
'        {',
'            async: true, // Asynchronous request',
'            dataType: "text", // Expecting text as the return type',
'            success: function(pdata) {',
'                console.log(pdata);',
'                if(pdata == 1) {',
'                     javascript:closeModal(''submitted-modal'');',
'                     location.reload();',
'                     setItem(''P26_PRODUCT_ID'', '' '');',
'                }else{',
'                     redirectToAnotherPage(pdata);',
'                    setItem(''P26_PRODUCT_ID'', '' '');',
'                };',
'            },',
'            error: function(jqXHR, textStatus, errorThrown) {',
'                console.error("Error setting session state: " + textStatus + " - " + errorThrown);',
'            }',
'        }',
'    );  ',
'',
'    return false;',
'}',
'',
'',
'function open_dialog(){',
' $(''#submitted-modal'').dialog(''open''); //calling region id here to open',
'    return false;',
'}',
'',
'',
'function confirmAction(service, company_id, id){',
'setItem(''P26_COMPANY_ID'', company_id);',
' $s(''P26_COMPANY_ID'', company_id);',
' $s(''P26_ID'', id);',
' if(service == 1){',
'     $(''#confirm-action'').dialog(''open''); //calling region id here to open',
' }else{',
'     $(''#deactivate-confirm-action'').dialog(''open''); //calling region id here to open',
' }',
'    return false;',
'}',
'',
'function closeInlineModal(){',
'     $(''#confirm-action'').dialog(''close''); //calling region id here to open',
'    $(''#deactivate-confirm-action'').dialog(''close''); //calling region id here to open',
'    return false;',
'}',
'',
'function completeAction(action){',
'    let company_id = $v(''P26_COMPANY_ID'');',
'    let id = $v(''P26_ID'');',
'    if(action == 1){ // 1 means activate',
'      apex.server.process("COMPLETE_ACTION", {',
'        x01:  ''A'',',
'        x02:  company_id,',
'      }, {',
'',
'        dataType: ''text'',',
'        success: function(pData) {',
'            if(pData == 1){ // 1 means successful',
'                //$(`#${id}`).addClass("control-btn");',
'               // $(`#deactivate-btn-${product_id}`).removeClass("control-btn");',
'                $(''#confirm-action'').dialog(''close''); //calling region id here to open',
'                $(''#submitted-modal'').dialog(''open''); //calling region id here to open',
'            }else{ ',
'                $(''#confirm-action'').dialog(''close''); //calling region id here to open',
'                $(''#failed-modal'').dialog(''open''); //calling region id here to open',
'            }',
'        }',
'      });',
'    }else{',
'        apex.server.process("COMPLETE_ACTION", {',
'            x01:  ''I'',',
'            x02:  company_id,',
'          }, {',
'',
'            dataType: ''text'',',
'            success: function(pData) {',
'                if(pData == 1){ // 1 means successful',
'                    //$(`#${id}`).addClass("control-btn");',
'                   // $(`#activate-btn-${product_id}`).removeClass("control-btn");',
'                    $(''#deactivate-confirm-action'').dialog(''close''); ',
'                    $(''#deactivate-submitted-modal'').dialog(''open''); ',
'                }else{ ',
'                    $(''#confirm-action'').dialog(''close'');',
'                    $(''#failed-modal'').dialog(''open''); ',
'                }',
'            }',
'          });',
'    }',
'    return false;',
'}',
'',
'',
'function openSubmittedModal(){',
'    $(document).ready(function() {',
'       $(''#submitted-modal'').dialog(''open'');',
'    });',
'}',
'',
'',
'let x = apex.jQuery(''#myButton'')[0].id;',
'',
'',
'const get_search_val = (service) => {',
'        $(document).ready(function(){',
'            let input = document.getElementById(`searchbar${service}`).value',
'            input = input.toLowerCase();',
'            console.log(input);',
'            let y = document.getElementsByClassName(''flex-container'');',
'            ',
'             for (i = 0; i < y.length; i++) {',
'                 if (!y[i].innerText.toLowerCase().includes(input)) {',
'                        y[i].style.display = "none";',
'                    }',
'                    else {',
'                        y[i].style.display = "flex";',
'                    }',
'             }',
'',
'',
'        });',
'    }',
'',
'    $.expr[":"].contains = $.expr.createPseudo(function(arg) {',
'',
'    return function( elem ) {',
'',
'    return $(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0;',
'',
'    };',
'',
'    });',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Tabs{',
'    border-bottom: 1px solid #E5E5E5;',
'}',
'',
'.t-Body .t-Tabs--simple .t-Tabs-link{',
'        color:#7A7A7A;',
'}',
'',
'',
'#my-btn{',
'    color:#7A7A7A;',
'}',
'',
'.t-MediaList-title{',
'    color: #2C2E2F;',
'font:Helvetica;',
'}',
'',
'.t-MediaList-desc{',
'    color: #868686;',
'    font:Helvetica;',
'}',
'',
'.flex-container {',
'  display: flex;',
'  justify-content: space-between;',
'  flex-wrap: wrap;',
'  align-items: center;',
'  margin: 15px 0px;',
'}',
'',
'.flex-item-left {',
'  padding: 10px;',
'  flex: 50%;',
'}',
'',
'.flex-item-right {',
'  padding: 10px;',
'  flex: 50%;',
'  text-align:right;',
'  gap: 20px; ',
'  align-items: center',
'}',
'',
'.internal-flex{',
'  display: flex;',
'  flex-wrap: wrap;',
'  align-items:center;',
'}',
'',
'.img-div{',
'    padding: 4px;',
'    width: 48px;         /* Set the width of the div */',
'    height: 48px;       /* Set the height of the div */',
'    overflow: hidden; ',
'    margin-right:16px;',
'    border-radius: 4px;',
'    opacity: 0px;',
'    border: 1px solid #DDDDDD;',
'    position: relative;',
'}',
'',
'.prod-img{',
'   width: 100%;         /* Ensures the image width is 100% of the div */',
'    height: 100%;        /* Ensures the image height is 100% of the div */',
'    object-fit: cover;   /* The image will cover the div while maintaining its aspect ratio */',
'     max-width: 100%;  /* Image will never exceed the width of its container */',
'     box-sizing: border-box; /* Ensures padding is taken into account */',
'}',
'',
'',
'/* Responsive layout - makes a one column-layout instead of a two-column layout */',
'@media (max-width: 800px) {',
'  .flex-item-right, .flex-item-left {',
'    flex: 100%;',
'  }',
'}',
'',
'.success-button{',
'    background-color:#348BEF;',
'    border: none;',
'    padding: 12px;',
'    border-radius: 4px;',
'    color: #FFFFFF;',
'    cursor:pointer;',
'    font-family: Helvetica;',
'    font-size: 13px;',
'    font-weight: 700;',
'    text-align: left;',
'    gap: 8px;',
'    opacity: 0px;',
'}',
'',
'',
'.btn{',
'    background-color:#348BEF;',
'    border: none;',
'    padding: 12px;',
'    border-radius: 4px;',
'    color: #FFFFFF;',
'    cursor:pointer;',
'    font-family: Helvetica;',
'    font-size: 13px;',
'    font-weight: 700;',
'    text-align: left;',
'    gap: 8px;',
'    opacity: 0px;',
'}',
'',
'.view-details{',
'    color:#348BEF;',
'    font: Helvetica;',
'    font-weight: 700;',
'    font-size:14px;',
'    padding-right: 12px;',
'}',
'',
'.ebioverify {',
'     margin: 0px; ',
'    padding: 0px;',
'    line-height:1.5;',
'}',
'',
'p  {',
'     margin: 0;',
'}',
'',
'.text-set{',
'    gap:12px;',
'}',
'.text-set .ebioverify{',
'      font-family: Helvetica;',
'    font-size: 16px;',
'    font-weight: 700;',
'    line-height: 1.5;',
'    text-align: left;',
'    color: #2C2E2F;',
'    margin-right: 10px;',
'}',
'.text-set .details{',
'    font-weight:400;',
'    color: #868686;',
'    font-family: Helvetica;',
'    font-size: 13px;',
'    line-height: 18.2px;',
'    text-align: left;',
'}',
'.text-set span{',
'    background-color:#F2F4F7;',
'    width: Hug (62px)px;',
'    height: Hug (22px)px;',
'    padding: 2px 8px;',
'    gap: 0px;',
'    border-radius: 16px;',
'    opacity: 0px;',
'    font-size: 12px;',
'    font-weight: 500;',
'    text-align: center;',
'    color:#344054;',
'    font-weight: 500;',
'    line-height: 18px;',
'}',
'',
'.span-container{',
'    display: flex;',
'    flex-direction: row;',
'    gap: 10px; ',
'    align-items: center;',
'}',
'',
'/*Modal Page Css*/',
'#modalWindow {',
'  position: fixed;',
'  top: 0;',
'  bottom: 0;',
'  left: 0;',
'  right: 0;',
'  background: rgba(0, 0, 0, 0.7);',
'  margin: auto;',
'  padding: 10px;',
'  width: 500px;',
'  font-family: arial;',
'  font-size: 14px;',
'  text-align: center;',
'}',
'',
'',
'/*.ui-dialog.modal-dialog--pullout{',
'   border-radius: 10px;',
'}*/',
'',
'.ui-dialog-titlebar{',
'    align-items: center;',
'    text-align: center;',
'} ',
'',
'/*** Testing my original modal***/',
'',
'.ui-dialog--inline{',
'    border-radius:12px!important;',
'    width: 400px!important;',
'}',
'',
'.submitted{',
'  margin: 25px;',
'   display:block;',
'    align-items:center;',
'    text-align:center;',
'justify-content:center;',
'}',
'',
'.inner p{',
'    font-family: Helvetica;',
'    font-size: 24px;',
'    font-weight: 400;',
'    line-height: 27.6px;',
'    text-align: center;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'    padding: 25px 0px;',
'}',
'',
'.inner button{',
'    width: 100%;',
'    height: auto;',
'    gap: 0px;',
'    border-radius: 6px;',
'    opacity: 0px;',
'    text-align:center;',
'}',
'',
'.submitted img{',
'    width: 60px;',
'    height:60px;',
'}',
'',
'.t-DialogRegion-body{',
'    width:auto;',
'    align-items: center;',
'}',
'',
'/**confirmation dialog **/',
'/*#confirm-action{',
'    width: 489px!important;',
'    height: 280px!important;',
'    border-radius: 12px!important;',
'}*/',
'',
'.ui-dialog--inline #confirm-action{',
'    border-radius:12px!important;',
'    width: 400px!important;',
'    height: 230px!important;',
'}',
'',
'.ui-dialog--inline #deactivate-confirm-action{',
'    border-radius:12px!important;',
'    width: 400px!important;',
'    height: 230px!important;',
'}',
'',
'',
'.inline-modal-header{',
'     display: flex;',
'  flex-wrap: wrap;',
'  align-items:center;',
'  justify-content:space-between;',
'}',
'',
'.inline-modal-header img{',
'   width:65%;',
'   height:auto;',
'   object-fit:cover;',
'   object-position:50% 50%;',
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
'/*Inline dialog buttons*/',
'.inline-submit{',
'    display: flex;',
'  flex-wrap: wrap;',
'  align-items:center;',
'  justify-content:space-between;',
'  margin-top: 30px;',
'    padding: 0px;',
'}',
'',
'.cancel-button{',
'    width: Fixed (210px)px;',
'    height: Fixed (48px)px;',
'    padding: 8px 45px;',
'    gap: 0px;',
'    border-radius: 4px;',
'    border: 1px solid #7D7D7D;',
'    font-family: Helvetica;',
'    font-size: 14px;',
'    font-weight: 700;',
'    line-height: 16.1px;',
'    letter-spacing: -0.01em;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'    color: #7D7D7D;',
'    cursor: pointer;',
'}',
'',
'.submit-button{',
'    width: 100%;',
'    height: Fixed (48px)px;',
'    padding: 8px 45px;',
'    gap: 0px;',
'    border-radius: 4px;',
'    border: none;',
'    background: #348BEF;',
'    color:#FFFFFF;',
'    font-family: Helvetica;',
'    font-size: 14px;',
'    font-weight: 700;',
'    line-height: 16.1px;',
'    letter-spacing: -0.01em;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'    cursor:pointer;',
'}',
'',
'.control-btn{',
'    display:none;',
'}',
'',
'.control-status{',
'    background: #ECFDF3;',
'}',
'',
'.remove-control-btn{',
'    display:flex;',
'}',
'',
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
'  padding: 10px 15px;',
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
'  width: 40%;',
'  height: 56px;',
'}',
'',
'',
'/* Styling the input field */',
'.search-input {',
'  width: 100%;',
'  height: 100%;',
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
'',
'    @media (max-width: 600px) {',
'  .flex-container {',
'    flex-direction: column;',
'    align-items: flex-start;',
'  }',
'',
'  .flex-item-right {',
'    width: 100%;',
'    text-align: left;',
'  }',
'',
'  .view-details,',
'  .btn {',
'    margin-top: 10px;',
'    width: 100%;',
'    text-align: center;',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98785040333831203)
,p_plug_name=>'Marketplace'
,p_icon_css_classes=>'fa-clipboard-list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98785103880831204)
,p_plug_name=>'&nbsp'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98785483814831207)
,p_plug_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(5459483568166704)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98785551917831208)
,p_plug_name=>'All'
,p_parent_plug_id=>wwv_flow_imp.id(98785483814831207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(98787452903831227)
,p_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(98785551917831208)
,p_template=>wwv_flow_imp.id(5431341835166684)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-MediaList--stack'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_ID,',
'       PRODUCT_NAME as list_title,',
'       PRODUCT_DESCRIPTION as list_text,',
'       ''fa fa-user'' as icon_class,',
'       ''view details''         as edit_link,',
'       PRODUCT_STATUS          as list_badge,',
'       INS_TIME,',
'       INS_BY,',
'       LAST_UPDATE_DATE,',
'       LAST_UPDATED_BY',
'  from XXSBS_MRKT_PRODUCTS_LISTS',
'  ',
'  '))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P26_CONFIRMED'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(5465020286166708)
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
 p_id=>wwv_flow_imp.id(98787514889831228)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Product Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98788344287831236)
,p_query_column_id=>2
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>6
,p_column_heading=>'List Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98788480327831237)
,p_query_column_id=>3
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'List Text'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98788591967831238)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>8
,p_column_heading=>'Icon Class'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98788621378831239)
,p_query_column_id=>5
,p_column_alias=>'EDIT_LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Edit Link'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98788792322831240)
,p_query_column_id=>6
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98787977365831232)
,p_query_column_id=>7
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>2
,p_column_heading=>'Ins Time'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98788024219831233)
,p_query_column_id=>8
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Ins By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98788196878831234)
,p_query_column_id=>9
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Last Update Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(98788268710831235)
,p_query_column_id=>10
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>5
,p_column_heading=>'Last Updated By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98788965238831242)
,p_plug_name=>'All Services'
,p_parent_plug_id=>wwv_flow_imp.id(98785551917831208)
,p_region_css_classes=>'all-services'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431341835166684)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_activate number := 1;',
'    l_deactivate number := 0;',
'begin',
'    -- Start wrapper container for all cards',
'    htp.p(''<div id="cards-wrapper">'');',
'',
'    FOR i in (',
'        SELECT ',
'          company_id,',
'          company_name,',
'          company_desc,',
'          company_type,',
'          decode(company_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'          img_url,',
'          CREATION_DATE',
'        FROM XXMRKT.XXMRKT_COMPANY_LIST ',
'        WHERE COMPANY_cODE = :AP_cOMPANY_cODE',
'        ORDER BY CREATION_DATE DESC',
'    ) LOOP',
'        htp.p(''',
'            <div class="flex-container">',
'              <div class="flex-item-left">',
'                <div class="internal-flex">',
'                  <div class="img-div">',
'                    <img class="prod-img" src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/'' || i.company_id || ''" alt="group">',
'                  </div>',
'                  <div class="text-set">',
'                    <div class="span-container">',
'                      <p class="ebioverify">'' || i.company_name || ''</p>''',
'        );',
'',
'        if i.status = ''Active'' then',
'            htp.p(''<span style="background:#D1FADF; color:#027A48;">'' || i.status || ''</span>'');',
'        else',
'            htp.p(''<span style="background:#FEE4E2; color:#B42318;">'' || i.status || ''</span>'');',
'        end if;',
'',
'        htp.p(''',
'                    </div>',
'                    <p class="details">'' || i.company_type || ''</p>',
'                  </div>',
'                </div>',
'              </div>',
'              <div class="flex-item-right">',
'                <a href="#" onclick="return redirectFunc('' || i.company_id || '')" class="view-details">View Details</a>''',
'        );',
'',
'        if i.status = ''Inactive'' then',
'            htp.p(''<button class="btn" id="activate-btn-'' || i.company_id || ''" onclick="return confirmAction('' || l_activate || '', '' || i.company_id || '', this.id)">Activate Service</button>'');',
'        else',
'            htp.p(''<button class="btn" id="deactivate-btn-'' || i.company_id || ''" onclick="return confirmAction('' || l_deactivate || '', '' || i.company_id || '', this.id)">Deactivate Service</button>'');',
'        end if;',
'',
'        htp.p(''',
'              </div>',
'            </div>',
'        '');',
'    END LOOP;',
'',
'    -- Close wrapper container',
'    htp.p(''</div>'');',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99369415204672434)
,p_plug_name=>'Search Loans'
,p_parent_plug_id=>wwv_flow_imp.id(98785551917831208)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_type varchar2(30) := ''''''all'''''';',
'BEGIN',
'htp.p(',
'          ''<div class="top-region">',
'                <div class="search-container">',
'                    <input id="searchbarall" ',
'                       class="search-input"',
'                       onkeyup="get_search_val(''||v_type||'')" ',
'                       type="text" name="search" ',
'                       placeholder="Search for services">',
'                   <img src="#APP_IMAGES#Search.png" alt="Search" class="search-icon">',
'                </div>',
'                <div class="add-product">',
'                      <button class="add-product-button" onclick="return redirectToMainPageFunc(37)">',
'                        <img src="https://img.icons8.com/ios-filled/50/ffffff/plus-math.png" alt="Add Icon" style="background-color: #1A73E8; padding: 4px;">',
'                        Add New Company',
'                      </button>',
'                </div>',
'            </div>    ',
'        ''',
'        );',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98785611498831209)
,p_plug_name=>'Insurance'
,p_parent_plug_id=>wwv_flow_imp.id(98785483814831207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98789145608831244)
,p_plug_name=>'Insurance Services'
,p_parent_plug_id=>wwv_flow_imp.id(98785611498831209)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431341835166684)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_content clob;',
'    q_content clob;',
'    v_data clob;',
'    l_activate number := 1;',
'    l_deactivate number := 0;',
'begin',
'    FOR i in (SELECT ',
'              product_id,',
'              product_name,',
'              product_description,',
'              decode(product_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'              img_url',
'             FROM XXSBS_MRKT_PRODUCTS_LISTS',
'             WHERE PRODUCT_CATEGORY = ''Insurance_services''',
'             AND COMPANY_cODE = :AP_cOMPANY_cODE',
'             ORDER BY 1) LOOP',
'    ',
'    htp.p(''<html>  ',
'              <body>',
'                        <div class="flex-container">',
'                            <div class="flex-item-left">',
'                                 <div class="internal-flex">',
'                                    <div class="img-div">',
'                                        <img class ="prod-img" src="''||i.img_url||''" alt="group">',
'                                    </div>',
'                                    <div class="text-set">',
'                                        <div class="span-container">',
'                                             <p class="ebioverify">''||i.product_name||''</p>'');',
'                                       if i.status = ''Active'' then',
'                                            htp.p(''<span style="background:#D1FADF; color:#027A48;">'' || i.status || ''</span>'');',
'                                        else',
'                                            htp.p(''<span style="background:#FEE4E2; color:#B42318;">'' || i.status || ''</span>'');',
'                                        end if;',
'                                     htp.p(''</div>',
'                                        <p class="details">''||i.product_description||''</p>',
'                                    </div>',
'                                 </div>',
'                            </div>',
'                            <div class="flex-item-right">',
'                                <a href="" onclick="return redirectFunc(''||i.product_id||'')" class="view-details">View Details</a>',
'                           '');',
'                            if i.status = ''Inactive'' then',
'                                htp.p(''<button class="btn" id="activate-btn-''||i.product_id||''" onclick="return confirmAction(''||l_activate||'', ''||i.product_id||'', this.id)">Activate Service</button>'');',
'                            else ',
'                               htp.p(''<button class="btn" id="deactivate-btn-''||i.product_id||''" onclick="return confirmAction(''||l_deactivate||'', ''||i.product_id||'', this.id)">Deactivate Service</button>'');',
'                            end if;',
'                          htp.p(''</div>',
'                  </div>',
'              </body>',
'          </html>',
'     '');',
'',
'    END LOOP;',
'    ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99368982707672429)
,p_plug_name=>'Search Loans'
,p_parent_plug_id=>wwv_flow_imp.id(98785611498831209)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_type VARCHAR2(30) := ''''''ins'''''';',
'BEGIN',
'htp.p(',
'          ''<div class="top-region">',
'                <div class="search-container">',
'                    <input id="searchbarins" ',
'                       class="search-input"',
'                       onkeyup="get_search_val(v_type)" ',
'                       type="text" name="search" ',
'                       placeholder="Search for services">',
'                   <img src="#APP_IMAGES#Search.png" alt="Search" class="search-icon">',
'                </div>',
'                <div class="add-product">',
'                      <button class="add-product-button" onclick="return redirectToMainPageFunc(37)">',
'                        <img src="https://img.icons8.com/ios-filled/50/ffffff/plus-math.png" alt="Add Icon" style="background-color: #1A73E8; padding: 4px;">',
'                        Add New Company',
'                      </button>',
'                </div>',
'            </div>    ',
'        ''',
'        );',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98785706025831210)
,p_plug_name=>'Loan Services'
,p_parent_plug_id=>wwv_flow_imp.id(98785483814831207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98789095627831243)
,p_plug_name=>'Loan Services'
,p_parent_plug_id=>wwv_flow_imp.id(98785706025831210)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431341835166684)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_content clob;',
'    q_content clob;',
'    v_data clob;',
'    l_activate number := 1;',
'    l_deactivate number := 0;',
'begin',
'    FOR i in (SELECT ',
'              company_id,',
'              company_name,',
'              company_desc,',
'              company_type,',
'              decode(company_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'              img_url,',
'              CREATION_DATE',
'             FROM XXMRKT.XXMRKT_COMPANY_LIST ',
'             WHERE company_type = ''Loan Services''',
'             AND COMPANY_cODE = :AP_cOMPANY_cODE',
'             ORDER BY CREATION_DATE DESC) LOOP',
'        htp.p(''',
'                <div class="flex-container">',
'                  <div class="flex-item-left">',
'                    <div class="internal-flex">',
'                      <div class="img-div">',
'                        <img class="prod-img" src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||i.company_id||''" alt="group">',
'                      </div>',
'                      <div class="text-set">',
'                        <div class="span-container">',
'                          <p class="ebioverify">''||i.company_name||''</p>'');',
'',
'                if i.status = ''Active'' then',
'            htp.p(''<span style="background:#D1FADF; color:#027A48;">'' || i.status || ''</span>'');',
'        else',
'            htp.p(''<span style="background:#FEE4E2; color:#B42318;">'' || i.status || ''</span>'');',
'        end if;',
'',
'                htp.p(''</div>',
'                        <p class="details">''||i.company_type||''</p>',
'                      </div>',
'                    </div>',
'                  </div>',
'                  <div class="flex-item-right">',
'                    <a href="#" onclick="return redirectFunc(''||i.company_id||'')" class="view-details">View Details</a>'');',
'',
'                if i.status = ''Inactive'' then',
'                  htp.p(''<button class="btn" id="activate-btn-''||i.company_id||''" onclick="return confirmAction(''||l_activate||'', ''||i.company_id||'', this.id)">Activate Service</button>'');',
'                else',
'                  htp.p(''<button class="btn" id="deactivate-btn-''||i.company_id||''" onclick="return confirmAction(''||l_deactivate||'', ''||i.company_id||'', this.id)">Deactivate Service</button>'');',
'                end if;',
'',
'        htp.p(''</div>',
'        </div>'');',
'',
'    END LOOP;',
'    ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99369209953672432)
,p_plug_name=>'Search Loans'
,p_parent_plug_id=>wwv_flow_imp.id(98785706025831210)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_type varchar2(30) := ''''''loan'''''';',
'BEGIN',
'htp.p(',
'          ''<div class="top-region">',
'                <div class="search-container">',
'                    <input id="searchbarloan" ',
'                       class="search-input"',
'                       onkeyup="get_search_val(''||v_type||'')"',
'                       type="text" name="search" ',
'                       placeholder="Search for services">',
'                   <img src="#APP_IMAGES#Search.png" alt="Search" class="search-icon">',
'                </div>',
'                <div class="add-product">',
'                      <button class="add-product-button" onclick="return redirectToMainPageFunc(37)">',
'                        <img src="https://img.icons8.com/ios-filled/50/ffffff/plus-math.png" alt="Add Icon" style="background-color: #1A73E8; padding: 4px;">',
'                        Add New Company',
'                      </button>',
'                </div>',
'            </div>    ',
'        ''',
'        );',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98785863044831211)
,p_plug_name=>'Payment Services'
,p_parent_plug_id=>wwv_flow_imp.id(98785483814831207)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(5452712612166699)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98789231922831245)
,p_plug_name=>'Payment Services'
,p_parent_plug_id=>wwv_flow_imp.id(98785863044831211)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431341835166684)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_content clob;',
'    q_content clob;',
'    v_data clob;',
'    l_activate number := 1;',
'    l_deactivate number := 0;',
'begin',
'    FOR i in (SELECT ',
'              company_id,',
'              company_name,',
'              company_desc,',
'              company_type,',
'              decode(company_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'              img_url',
'             FROM XXMRKT.XXMRKT_COMPANY_LIST ',
'             WHERE company_type = ''Payment Services''',
'             AND COMPANY_cODE = :AP_cOMPANY_cODE',
'             ORDER BY 1) LOOP',
'        htp.p(''',
'                <div class="flex-container">',
'                  <div class="flex-item-left">',
'                    <div class="internal-flex">',
'                      <div class="img-div">',
'                        <img class="prod-img" src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||i.company_id||''" alt="group">',
'                      </div>',
'                      <div class="text-set">',
'                        <div class="span-container">',
'                          <p class="ebioverify">''||i.company_name||''</p>'');',
'',
'                if i.status = ''Active'' then',
'            htp.p(''<span style="background:#D1FADF; color:#027A48;">'' || i.status || ''</span>'');',
'        else',
'            htp.p(''<span style="background:#FEE4E2; color:#B42318;">'' || i.status || ''</span>'');',
'        end if;',
'',
'                htp.p(''</div>',
'                        <p class="details">''||i.company_type||''</p>',
'                      </div>',
'                    </div>',
'                  </div>',
'                  <div class="flex-item-right">',
'                    <a href="#" onclick="return redirectFunc(''||i.company_id||'')" class="view-details">View Details</a>'');',
'',
'                if i.status = ''Inactive'' then',
'                  htp.p(''<button class="btn" id="activate-btn-''||i.company_id||''" onclick="return confirmAction(''||l_activate||'', ''||i.company_id||'', this.id)">Activate Service</button>'');',
'                else',
'                  htp.p(''<button class="btn" id="deactivate-btn-''||i.company_id||''" onclick="return confirmAction(''||l_deactivate||'', ''||i.company_id||'', this.id)">Deactivate Service</button>'');',
'                end if;',
'',
'        htp.p(''</div>',
'        </div>'');',
'',
'    END LOOP;',
'    ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99369376671672433)
,p_plug_name=>'Search Loans'
,p_parent_plug_id=>wwv_flow_imp.id(98785863044831211)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(',
'          ''<div class="top-region">',
'                <div class="search-container">',
'                    <input id="searchbar" ',
'                       class="search-input"',
'                       onkeyup="get_search_val()" ',
'                       type="text" name="search" ',
'                       placeholder="Search for services">',
'                   <img src="#APP_IMAGES#Search.png" alt="Search" class="search-icon">',
'                </div>',
'                <div class="add-product">',
'                      <button class="add-product-button" onclick="return redirectToMainPageFunc(37)">',
'                        <img src="https://img.icons8.com/ios-filled/50/ffffff/plus-math.png" alt="Add Icon" style="background-color: #1A73E8; padding: 4px;">',
'                        Add New Company',
'                      </button>',
'                </div>',
'            </div>    ',
'        ''',
'        );'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99208667714392001)
,p_plug_name=>'success inline Dialog'
,p_region_name=>'submitted-modal'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5449458935166697)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'      htp.p('' <html>',
'               <body>',
'                <div class="submitted">',
'                    <div class="inner">',
'                        <img src="#APP_IMAGES#success.png" />',
'                        <p>Activation Successful</p>',
'                        <button class="success-button" onclick="return closeSubmitDialog()">Close</button>',
'                    </div>',
'                </div>',
'            </body>',
'          </html>',
'       '');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99209649444392011)
,p_plug_name=>'confirmation inline dialog'
,p_region_name=>'confirm-action'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5449458935166697)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'      htp.p('' <html>',
'               <body>',
'                <div class="bb">',
'                    <div class="modal-body1">',
'                      <p class="light-p">Confirm Activation<p>',
'                      <p class="dark-p">Are you sure you want to activate this Company?</p>',
'                    </div>',
'                    <div class="inline-submit">',
'                            <div>',
'                                <button id="myBu" class="cancel-button" onclick="return closeInlineModal()">No, Cancel</button>',
'                            </div>           ',
'                            <div>',
'                                 <button id="myButton" class="submit-button" onclick="return completeAction(1)">Yes, Activate</button>',
'                            </div>',
'                    </div>',
'                   ',
'             </div>',
'            </body>',
'          </html>',
'       '');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99209880838392013)
,p_plug_name=>'failed inline Dialog'
,p_region_name=>'failed-modal'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5449458935166697)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'      htp.p('' <html>',
'               <body>',
'                <div class="submitted">',
'                    <div class="inner">',
'                        <img src="#APP_IMAGES#failed.png" />',
'                        <p>Unsuccessful Third-Party Activation</p>',
'                        <button class="btn" onclick=" return closeSubmitDialog()">Close</button>',
'                    </div>',
'                </div>',
'            </body>',
'          </html>',
'       '');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99210025529392015)
,p_plug_name=>'deactivate confirmation inline dialog'
,p_region_name=>'deactivate-confirm-action'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5449458935166697)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'      htp.p('' <html>',
'               <body>',
'                <div class="bb">',
'                    <div class="modal-body1">',
'                      <p class="light-p">Confirm Deactivation<p>',
'                      <p class="dark-p">Are you sure you want to deactivate this Company?</p>',
'                    </div>',
'                    <div class="inline-submit">',
'                            <div>',
'                                <button id="myBu" class="cancel-button" onclick="return closeInlineModal()">No, Cancel</button>',
'                            </div>           ',
'                            <div>',
'                                 <button id="myButton" class="submit-button" onclick="return completeAction(0)">Yes, Deactivate</button>',
'                            </div>',
'                    </div>',
'                   ',
'             </div>',
'            </body>',
'          </html>',
'       '');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99366115960672401)
,p_plug_name=>'deactivate success inline Dialog'
,p_region_name=>'deactivate-submitted-modal'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5449458935166697)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'      htp.p('' <html>',
'               <body>',
'                <div class="submitted">',
'                    <div class="inner">',
'                        <img src="#APP_IMAGES#success.png" />',
'                        <p>Deactivation Successful</p>',
'                        <button class="btn" onclick=" return closeSubmitDialog()">Close</button>',
'                    </div>',
'                </div>',
'            </body>',
'          </html>',
'       '');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99367406057672414)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(',
'          ''<div class="top-region-header">',
'                <div>    ',
'                    <button class="icon-button" onclick="return redirectToMainPageFunc(201)">',
'                      <img src="#APP_IMAGES#arrow-left-02-sharp.png" alt="Icon" class="icon" />',
'                      <span class="button-text">Back</span>',
'                    </button>',
'                </div>',
'            </div>    ',
'        ''',
'        );'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98785286446831205)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_button_name=>'Back'
,p_button_static_id=>'my-btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(5505043266166738)
,p_button_image_alt=>'<span><b>Back</b><span>'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:RP::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48415558454508903)
,p_name=>'P26_COMPANY_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98978926914994113)
,p_name=>'P26_CONFIRMED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99209787122392012)
,p_name=>'P26_PRODUCT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99209924659392014)
,p_name=>'P26_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99366484758672404)
,p_name=>'P26_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99366665197672406)
,p_name=>'P26_ACTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99367158176672411)
,p_name=>'P26_PRODUCT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(98785103880831204)
,p_prompt=>'Product Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(5504520019166737)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99192766009890501)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99366322338672403)
,p_event_id=>wwv_flow_imp.id(99192766009890501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_ACTION'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P30_ACTION'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99366925955672409)
,p_event_id=>wwv_flow_imp.id(99192766009890501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_STATUS'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P30_STATUS'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99368176265672421)
,p_event_id=>wwv_flow_imp.id(99192766009890501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_PRODUCT_ID'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P30_PRODUCT_ID'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99367060746672410)
,p_event_id=>wwv_flow_imp.id(99192766009890501)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let action = $v(''P26_ACTION'');',
'let status = $v(''P26_STATUS'');',
'',
'console.log(action);',
'console.log(status);',
'',
'if (action == ''activate'' && status == ''S''){',
'    $(''#submitted-modal'').dialog(''open'');',
'};',
'',
'if (action == ''activate'' && status == ''F''){',
'    $(''#failed-modal'').dialog(''open'');',
'};',
'',
'if (action == ''deactivate'' && status == ''S''){',
'    $(''#deactivate-submitted-modal'').dialog(''open'');',
'};',
'',
'if (action == ''deactivate'' && status == ''F''){',
'    $(''#failed-modal'').dialog(''open'');',
'};'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99367227946672412)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_PRODUCT_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99367364571672413)
,p_event_id=>wwv_flow_imp.id(99367227946672412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let search = $v( "P26_PRODUCT_NAME" );',
'',
'get_search_val(search, ''all-services'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64194616838838707)
,p_name=>'load ui'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64194711315838708)
,p_event_id=>wwv_flow_imp.id(64194616838838707)
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
'        ''<img src="#APP_IMAGES#Featured icon (1).png" alt="Title Image" style="height: 30px; vertical-align: middle; margin-right: 8px;">'' //+',
'       // apex.util.escapeHTML(''Add New Product'')',
'      );',
'    }',
'  }, 100);',
'});',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99367787675672417)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_SESSION_STATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'result varchar2(32767);',
'',
'begin',
'',
'APEX_UTIL.SET_SESSION_STATE(apex_application.g_x01,apex_application.g_x02);',
'',
'apex_json.open_object;',
'',
'apex_json.write(''success'', true);',
'',
'apex_json.close_object;',
'',
'exception',
'',
'when others then',
'',
'apex_json.open_object;',
'',
'apex_json.write(''success'', false);',
'',
'apex_json.write(''message'', sqlerrm);',
'',
'apex_json.close_object;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>99367787675672417
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99367908076672419)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_REDIRECT_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ename varchar2(200);',
'begin',
'   SELECT redirect_url',
'   INTO v_ename',
'   FROM XXSBS_MRKT_PRODUCTS_LISTS',
'   WHERE PRODUCT_ID = APEX_APPLICATION.g_x01',
'   AND COMPANY_CODE = :AP_cOMPANY_CODE;',
'   ',
'   if v_ename is not null then',
'       HTP.P(v_ename);',
'   else',
'       HTP.P(1);',
'   end if;',
'',
'exception when no_Data_found then ',
'HTP.P(1);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>99367908076672419
);
wwv_flow_imp.component_end;
end;
/
