prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_name=>'Marketplace'
,p_alias=>'J222'
,p_step_title=>'Marketplace'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const redirect = (companyId) => {',
'        var x = companyId;',
'        var url = "f?p=#APP_ID#:"+''68''+":#SESSION#::NO:RP,68:P68_COMPANY_ID:#PARA1#";',
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
'const redirectToMainPageFunc = () => {',
'        var url = "f?p=#APP_ID#:"+''1''+":#SESSION#::NO:RP,1:";',
'        url = url.replace("#APP_ID#",&APP_ID.);',
'',
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
'function openSubmittedModal(){',
'    $(document).ready(function() {',
'       $(''#submitted-modal'').dialog(''open'');',
'    });',
'}',
'',
'',
'//let x = apex.jQuery(''#myButton'')[0].id;',
'',
'',
'/// Run once when document is ready',
'// $(document).ready(function() {',
'//   $(''#searchbarall'').on(''keyup'', function() {',
'//      get_search_val(''all'');',
'//   });',
'// });',
'',
'const get_search_val = (service) => {',
'    const input = document.getElementById(`searchbar${service}`).value.toLowerCase();',
'    const cardCols = document.querySelectorAll(''.card-col''); // Match updated class',
'    cardCols.forEach(col => {',
'        const companyNameElem = col.querySelector(''.m-title'');',
'        if (companyNameElem) {',
'            const name = companyNameElem.textContent.toLowerCase();',
'                                console.log(name);',
'            col.style.display = name.includes(input) ? ''block'' : ''none'';',
'        }',
'    });',
'};',
'',
'',
'',
'',
'',
'',
'',
'function redirectToExternalURL(){',
' let product_id = $v(''P66_PRODUCT_ID'');',
'  let action = $v(''P66_ACTION'');',
' apex.server.process(',
'        "GET_EXT_REDIRECT_URL", // The name of the APEX process to be called',
'        {  ',
'            x01: product_id',
'        },',
'        {',
'            async: true, // Asynchronous request',
'            dataType: "text", // Expecting text as the return type',
'            success: function(pdata) {',
'                console.log(pdata);',
'                if(pdata == 1) {',
'                      console.log(product_id);',
'                      console.log(''i do not exist'');',
'                     /*javascript:closeModal(''submitted-modal'');',
'                     location.reload();',
'                     setItem(''P26_PRODUCT_ID'', '' '');*/',
'                }else{',
'                     console.log(product_id);',
'                      console.log(''i exist'');',
'                     //apex.navigation.dialog.close(true, ["P67_PRODUCT_ID"] );',
'                    // window.location.href = pdata;',
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
'let openLoan = document.getElementById(''loan'');',
'',
'function open_dialog(id){',
'     $(`#${id}`).show(); //calling region id here to open',
' return false;',
'}',
'',
'',
'function redirectToModalPage71ViewLoan(pageID, compID, productID, loanID) {',
'        var url = `f?p=#APP_ID#:${pageID}:#SESSION#::NO:RP,${pageID}:P71_COMPANY_ID,P71_PRODUCT_ID,P71_LOAN_ID,P71_HEADER,P71_CONTROL:${compID},${productID},${loanID},View Loan Details,Selected Repayment Period`; //''f?p='' || l_app || '':''||apex_applic'
||'ation.g_x01||'':''||l_session||''::NO::''||l_item_name||'':''||apex_application.g_x02,',
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
'}',
'',
'function redirectToModalPage77ViewLoan(pageID, compID, productID, loanID) {',
'        var url = `f?p=#APP_ID#:${pageID}:#SESSION#::NO:RP,${pageID}:P77_COMPANY_ID,P77_PRODUCT_ID,P77_LOAN_ID,P77_HEADER,P77_CONTROL:${compID},${productID},${loanID},View Loan Details,Selected Repayment Period`; //''f?p='' || l_app || '':''||apex_applic'
||'ation.g_x01||'':''||l_session||''::NO::''||l_item_name||'':''||apex_application.g_x02,',
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
'}',
'',
'// This runs after modal is closed',
'apex.jQuery(window).on("dialogclose", function(event, data) {',
'    console.log(data);',
'    console.log(event);',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Tabs{',
'    border-bottom: 1px solid #E5E5E5;',
'}',
'',
'body{',
'    font-family: Helvetica;',
'}',
'.t-Body .t-Tabs--simple .t-Tabs-link{',
'        color:#7A7A7A;',
'}',
'',
'.t-Tabs-link{',
'    text-decoration:none;',
'}',
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
'.ui-dialog.modal-dialog--pullout{',
'  /* top: 8.3%!important;*/',
'   /*left:62%!important*/',
'   border-radius: 10px;',
'}',
'',
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
'  width: 450px;',
'  height: 56px;',
'}',
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
'    font-weight: 400;',
'    line-height: 18.4px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'        color: #8C8C8C;',
'}',
'',
'.form-control',
'{',
'      font-family: Helvetica;',
'    font-weight: 400;',
'    line-height: 18.4px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'        color: #8C8C8C;',
'}',
'',
'.search-input::placeholder{',
'    font-family: Helvetica;',
'font-weight: 400;',
'font-size: 16px;',
'line-height: 100%;',
'letter-spacing: 0%;',
'color: #8C8C8C;',
'}',
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
'/********self service **********/',
'.m-card{',
'    margin-bottom: 12px;',
'    border: 1px solid #E5E5E5;',
'    border-radius: 4px;',
'}',
'.m-img{',
'    border: 1px solid #DDDDDD;',
'    border-radius: 4px;',
'    width: 48px;',
'    height: 48px;',
'}',
'',
'.m-img2{',
'    padding-right: 8px;',
'    cursor:pointer;',
'}',
'',
'.m-view {',
'               background: #fafafa;',
'            padding: 8px 16px;',
'            border-top: 1px solid #eee;',
'            display: flex;',
'            flex-direction: row;',
'            justify-content: space-between;',
'              height: 44px; /* Fixed height */',
'            flex-shrink: 0; /* Prevent shrinking */',
'}',
'',
'.m-view p{',
'    padding-left:11px;',
'    font-family: Helvetica;',
'    font-size: 16px;',
'    font-weight: 700;',
'    line-height: 18.4px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'    color: #348BEF;',
'    cursor: pointer;',
'    margin-bottom: 0;',
'}',
'',
'.m-title{',
'    font-family: Helvetica;',
'    font-size: 16px;',
'    font-weight: 700;',
'    line-height: 16px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'    color: #2C2E2F;',
'    padding: 5px 0; ',
'}',
'',
'.card-col {',
'                margin-top: 15px;',
'            }',
'',
'.m-text{',
'    font-family: Helvetica;',
'    font-size: 14px;',
'    font-weight: 400;',
'    line-height: 18.2px;',
'    text-align: left;',
'    text-underline-position: from-font;',
'    text-decoration-skip-ink: none;',
'    color: #868686;',
'    padding: 2px 0; ',
'     overflow: hidden;',
'    text-overflow: ellipsis;',
'    display: -webkit-box;',
'    -webkit-line-clamp: 2;      /* Show up to 2 lines */',
'    -webkit-box-orient: vertical;',
'}',
'',
'.m-main{',
'    padding:12px;',
'}',
'',
'.m-view a{',
'    text-decoration:none;',
'}',
'',
' .no-padding {',
'                padding-left: 0 !important;',
'                padding-right: 0 !important;',
'                margin-left: 0 !important;',
'                margin-right: 0 !important;',
'            }',
'            .card-container .row {',
'                margin-left: 0 !important;',
'                margin-right: 0 !important;',
'            }',
'',
'            .m-card {',
'            height: 200px;',
'            display: flex;',
'            flex-direction: column;',
'        }',
'',
'        .m-block {',
'            flex-grow: 1;',
'            overflow: hidden;',
'            padding: 16px;',
'        }',
'',
'        .m-card .m-title {',
'            margin-bottom: 6px;',
'        }',
'',
'@media (max-width: 767px) {',
'        .m-block {',
'          flex-direction: column;',
'          align-items: flex-start;',
'        }',
'',
'  .m-card {',
'    flex: 1 1 100%;',
'  }',
'  .card-col {',
'                flex: 0 0 100% !important;',
'                max-width: 100% !important;',
'                margin-top: 15px;',
'            }',
'',
'        .m-view {',
'          flex-direction: row;',
'          height: auto;',
'          padding: 5px 16px;',
'          display:flex;',
'        }',
'',
'        .m-view p, .m-view img {',
'          margin-bottom: 8px;',
'        }',
'      }',
'      ',
'        @media (max-width: 576px) {',
'            .card-col {',
'              flex: 0 0 100%;',
'              width: 100% !important;',
'              max-width: 100% !important;',
'            }',
'        }',
'',
'.col-12, .t-Form--stretchInputs .t-Form-fieldContainer .apex-button-group .apex-item-option, .t-Form--stretchInputs .t-Form-fieldContainer .apex-item-grid, .t-Form--stretchInputs .t-Form-fieldContainer .apex-item-group--file, .t-Form--stretchInputs .'
||'t-Form-fieldContainer .t-Form-itemWrapper, .t-Form--stretchInputs .t-Form-fieldContainer .t-Form-itemWrapper .apex-item-group--textarea, .t-Form--stretchInputs .t-Form-fieldContainer fieldset, .t-Form--stretchInputs .t-Form-fieldContainer input.popup'
||'_lov, .t-Form--stretchInputs .t-Form-fieldContainer table, .t-Form--stretchInputs .t-Form-fieldContainer td.lov, .t-Form--stretchInputs .t-Form-fieldContainer textarea, .t-Form-fieldContainer--floatingLabel .apex-button-group .apex-item-option, .t-Fo'
||'rm-fieldContainer--stretchInputs .apex-button-group .apex-item-option, .t-Form-fieldContainer--stretchInputs .apex-item-grid, .t-Form-fieldContainer--stretchInputs .apex-item-group--file, .t-Form-fieldContainer--stretchInputs .t-Form-itemWrapper, .t-'
||'Form-fieldContainer--stretchInputs .t-Form-itemWrapper .apex-item-group--textarea, .t-Form-fieldContainer--stretchInputs fieldset, .t-Form-fieldContainer--stretchInputs input.popup_lov, .t-Form-fieldContainer--stretchInputs table, .t-Form-fieldContai'
||'ner--stretchInputs td.lov, .t-Form-fieldContainer--stretchInputs textarea{',
'    width : 100% !important;',
'}',
'',
'',
'/** Dashboard css **/',
'.t-TabsRegion-items{',
'    min-height: auto!important;',
'}',
'',
'.javainhand {',
'    float: left;',
'    height: -22px;',
'    margin-right: 1%;',
'    padding: 10px;',
'    position: relative;',
'    width: 24%;   ',
'}',
'.circle-tile {',
'    margin-bottom: 15px;',
'    text-align: center;',
'}',
'.circle-tile-heading {',
'    border: 3px solid rgba(255, 255, 255, 0.3);',
'    border-radius: 100%;',
'    color: #FFFFFF;',
'    height: 80px;',
'    margin: 0 auto -40px;',
'    position: relative;',
'    transition: all 0.3s ease-in-out 0s;',
'    width: 80px;',
'}',
'.circle-tile-heading .fa {',
'    line-height: 80px;',
'}',
'.circle-tile-content {',
'    padding-top: 50px;',
'       border-radius: 5px;',
'    margin: 5px;',
'}',
'.circle-tile-number {',
'    font-size: 26px;',
'    font-weight: 700;',
'    line-height: 1;',
'    padding: 5px 0 15px;',
'}',
'.circle-tile-description {',
'    text-transform: capitalize;',
'    font-family: Helvetica;',
'    font-weight: 400;',
'    line-height: 18.4px;',
'    color: #F6F7F9;',
'} ',
'',
'',
'.circle-tile-footer {',
'  background-color: rgba(0, 0, 0, 0.1);',
'  color: rgba(255, 255, 255, 0.85); /* Better contrast */',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  font-family: Helvetica;',
'  gap: 6px; /* spacing between text and icon */',
'  padding: 5px;',
'  transition: all 0.3s ease-in-out;',
'  text-decoration: none; /* remove underline */',
'  font-weight: 500;',
'}',
'',
'.circle-tile-footer i {',
'  font-size: 14px;',
'}',
'',
'.circle-tile-footer:hover {',
'  background-color: rgba(0, 0, 0, 0.2);',
'  color: #ffffff;',
'}',
'',
'',
'.circle-tile-footer:hover {',
'    background-color: rgba(0, 0, 0, 0.2);',
'    color: rgba(255, 255, 255, 0.5);',
'    text-decoration: none;',
'}',
'.circle-tile-heading.dark-blue:hover {',
'    background-color: #2E4154;',
'}',
'.circle-tile-heading.green:hover {',
'    background-color: #138F77;',
'}',
'.circle-tile-heading.orange:hover {',
'    background-color: #DA8C10;',
'}',
'.circle-tile-heading.blue:hover {',
'    background-color: #2473A6;',
'}',
'.circle-tile-heading.red:hover {',
'    background-color: #B71C1C;',
'}',
'.circle-tile-heading.purple:hover {',
'    background-color: #7F3D9B;',
'}',
'.tile-img {',
'    text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.9);',
'}',
'',
'.dark-blue {',
'    background-color: #34495E;',
'}',
'.green {',
'    /* background-color: #2E7D32; */',
'    background-color: #3CAF85;',
'}',
'.blue {',
'    /* background-color: #2980B9; */',
'    background-color: #309FDB;',
'    /* background-color: #0572CE; */',
'}',
'.orange {',
'    background-color:#ffa000;',
'}',
'.red {',
'    /* background-color: #e53935; */',
'    background-color: #ED813E;',
';',
'}',
'.purple {',
'    background-color: #8E44AD;',
'}',
'.dark-gray {',
'    background-color: #7F8C8D;',
'}',
'.gray {',
'    background-color: #95A5A6;',
'}',
'.light-gray {',
'    background-color: #BDC3C7;',
'}',
'.yellow {',
'    background-color: #F1C40F;',
'}',
'.text-dark-blue {',
'    color: #34495E;',
'}',
'.text-green {',
'    color: #16A085;',
'}',
'.text-blue {',
'    color: #2980B9;',
'}',
'.text-orange {',
'    color: #F39C12;',
'}',
'.text-red {',
'    color: #E74C3C;',
'}',
'.text-purple {',
'    color: #8E44AD;',
'}',
'',
'',
'@media (max-width: 767px) {',
'  .javainhand {',
'    display: block;',
'    height: auto;',
'    padding: 10px;',
'    justify-content: center;',
'    width: 100%;   ',
' }',
'}',
'',
'.t-Timeline-wrap{',
'    font-family: Helvetica;',
'    font-weight: 400;',
'    line-height: 18.4px;',
'}',
'',
'.t-Timeline-date, .t-Timeline-desc, .t-Timeline-username, .t-Timeline-type{',
'    font-family: Helvetica!important;',
'    font-weight: 500;',
'    line-height: 18.4px;',
'}',
'',
'.t-Timeline-bodyRow {',
'  display: flex;',
'  justify-content: space-between;',
'  align-items: center;',
'  flex-wrap: wrap;',
'}',
'',
'.timeline-btn {',
'  font-family: Helvetica;',
'    font-weight: 700;',
'    font-size: 14px;',
'    line-height: 100%;',
'    letter-spacing: -1%;',
'    color: #FFFFFF;',
'    background: #348BEF;',
'  border: none;',
'  border-radius: 0.375rem;',
'  padding: 0.4rem 1rem;',
'    cursor: pointer;',
'  transition: background-color 0.3s ease, transform 0.2s ease;',
'  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);',
'}',
'',
'.timeline-btn:hover {',
'  background-color: #004494;',
'  transform: translateY(-1px);',
'}',
'',
'.timeline-btn:active {',
'  background-color: #003974;',
'  transform: scale(0.98);',
'}',
'',
'.t-Timeline-body h3,',
'.t-Timeline-body p {',
'  margin-bottom: 0.25rem; /* or even 0 if needed */',
'}',
'',
'.a-AlertMessage{',
'    padding: 20px;',
'}',
'',
'.a-AlertMessage-icon{',
'    background-color: #D0E4FB;',
'    padding: 10px;',
'}',
'',
'.a-AlertMessage-title{',
'    font-family: Helvetica;',
'}',
'',
'.a-AlertMessage-details{',
'      font-family: Helvetica;',
'}',
'js-confirmBtn ui-button ui-corner-all ui-widget ui-button--hot{',
'    font-family: Helvetica;',
'}',
'',
'/* Cancel button (optional separate styling) */',
'.ui-dialog.my-custom-class .ui-dialog-buttonpane .ui-button:contains("Cancel") {',
'  background-color: #e0e0e0;',
'  color: #333;',
'}',
'',
'/********** Testing **********/',
'.dashboard-container {',
'    font-family: Helvetica;',
'    padding: 20px;',
'    max-width: 1200px;',
'    margin: 0 auto;',
'}',
'',
'.dashboard-header {',
'    text-align: center;',
'    margin-bottom: 30px;',
'}',
'',
'.dashboard-header h1 {',
'    font-size: 2rem;',
'    color: #333;',
'    margin-bottom: 10px;',
'}',
'',
'.dashboard-header p {',
'    font-size: 1rem;',
'    color: #888;',
'}',
'',
'.dashboard-cards {',
'    display: grid;',
'    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));',
'    gap: 20px;',
'}',
'',
unistr('/* \D83C\DFA8 Colorful Cards */'),
'.dashboard-card {',
'    padding: 20px;',
'    border-radius: 12px;',
'    color: #fff;',
'    transition: transform 0.3s ease, box-shadow 0.3s ease;',
'    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);',
'}',
'',
'.dashboard-card:hover {',
'    transform: translateY(-5px);',
'    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);',
'}',
'',
'.dashboard-card h2 {',
'    font-size: 1.1rem;',
'    margin-bottom: 10px;',
'}',
'',
'.dashboard-card .value {',
'    font-size: 1.8rem;',
'    font-weight: 600;',
'}',
'',
'/* Individual Card Colors */',
unistr('/* 1\FE0F\20E3 Card 1: Cool Blue (Trust, Stability) */'),
'.dashboard-card:nth-child(1) {',
'    background: linear-gradient(135deg, #4e54c8, #8f94fb);',
'}',
'',
unistr('/* 2\FE0F\20E3 Card 2: Fresh Green (Finance, Growth) */'),
'.dashboard-card:nth-child(2) {',
'    background: linear-gradient(135deg, #43cea2, #185a9d);',
'}',
'',
unistr('/* 3\FE0F\20E3 Card 3: Warm Orange (Warning, Alert, Active Metric) */'),
'.dashboard-card:nth-child(3) {',
'    background: linear-gradient(135deg, #ff7e5f, #feb47b);',
'}',
'',
unistr('/* 4\FE0F\20E3 Card 4: Bright Lime / Green (Success, Achievement) */'),
'.dashboard-card:nth-child(4) {',
'    background: linear-gradient(135deg, #11998e, #38ef7d);',
'}',
'',
unistr('/* 5\FE0F\20E3 Card 5: Modern Purple / Blue (Technology, Intelligence) */'),
'.dashboard-card:nth-child(5) {',
'    background: linear-gradient(135deg, #6a11cb, #2575fc);',
'}',
'',
'/* Responsive Adjustments */',
'@media (max-width: 768px) {',
'    .dashboard-header h1 {',
'        font-size: 1.5rem;',
'    }',
'',
'    .dashboard-card .value {',
'        font-size: 1.5rem;',
'    }',
'}',
'',
'@media (max-width: 480px) {',
'    .dashboard-container {',
'        padding: 10px;',
'    }',
'',
'    .dashboard-cards {',
'        grid-template-columns: 1fr;',
'    }',
'',
'    .dashboard-card {',
'        padding: 15px;',
'    }',
'}',
'',
'/******* progress percentage ************/',
'.progress-widget {',
'    max-width: 600px;',
'    margin: 20px auto;',
'    padding: 20px;',
'    background: #ffffff;',
'    border-radius: 16px;',
'    box-shadow: 0 4px 20px rgba(0,0,0,0.05);',
'    text-align: center;',
'}',
'',
'.progress-title {',
'    font-family: Helvetica;',
'    font-size: 16px;',
'    color: #333;',
'    margin-bottom: 20px;',
'    font-weight: 600;',
'}',
'',
'.progress-bar-container {',
'    position: relative;',
'}',
'',
'.progress-bar-background {',
'    width: 100%;',
'    height: 20px;',
'    background: #e0e0e0;',
'    border-radius: 50px;',
'    overflow: hidden;',
'}',
'',
'.progress-bar-fill {',
'    height: 100%;',
'    width: 0;',
'    border-radius: 50px;',
'    transition: width 1s ease, background 0.5s ease;',
'}',
'',
'.progress-percentage {',
'    position: absolute;',
'    right: 0;',
'    top: 50%;',
'    transform: translateY(-50%);',
'    font-size: 0.9rem;',
'    color: #555;',
'    padding-right: 10px;',
'}',
'',
'@media (max-width: 768px) {',
'    .progress-widget {',
'        padding: 15px;',
'    }',
'',
'    .progress-title {',
'        font-size: 1rem;',
'        margin-bottom: 15px;',
'    }',
'',
'    .progress-bar-background {',
'        height: 16px;',
'    }',
'',
'    .progress-percentage {',
'        font-size: 0.8rem;',
'    }',
'}',
'',
'@media (max-width: 480px) {',
'    .progress-widget {',
'        padding: 10px;',
'    }',
'',
'    .progress-title {',
'        font-size: 0.95rem;',
'    }',
'',
'    .progress-bar-background {',
'        height: 14px;',
'    }',
'',
'    .progress-percentage {',
'        font-size: 0.75rem;',
'        padding-right: 5px;',
'    }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49600149384429324)
,p_plug_name=>'Marketplace'
,p_icon_css_classes=>'fa-list-ul'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2504366637224064)
,p_plug_display_sequence=>20
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(2462480760224025)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2562100272224107)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199684434670357352)
,p_plug_name=>'&nbsp'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199684814604357355)
,p_plug_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(199684434670357352)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59569740719157317)
,p_plug_name=>'Activity Summary'
,p_parent_plug_id=>wwv_flow_imp.id(199684814604357355)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(59569800745157318)
,p_name=>'Product History'
,p_parent_plug_id=>wwv_flow_imp.id(59569740719157317)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 as sort_order',
', ''Loans Services'' title',
', to_char(count(*),''9,99,999'')  data',
', ''fa-credit-card fa-fw fa-3x'' as icon_class',
', ''blue'' as class1',
', ''blue'' as class2',
', ''''''loan'''''' as LINK',
'from XXMRKT.XXMRKT_APPLIED_LOANS A, XXMRKT.XXMRKT_COMPANY_LIST B',
'where A.company_Code = :AP_COMPANY_CODE',
'and A.STAFF_ID = :AP_STAFF_ID',
'AND B.COMPANY_ID = A.COMPANY_ID',
'AND B.COMPANY_TYPE = ''Loan Services''',
'UNION',
'select 2 as sort_order',
', ''Insurance Services'' title',
', to_char(count(*),''9,99,999'')  data',
', ''fa-user fa-fw fa-3x'' as icon_class',
', ''green'' as class1',
', ''green'' as class2',
', ''''''insurance'''''' as LINK',
'from XXMRKT.XXMRKT_APPLIED_LOANS A, XXMRKT.XXMRKT_COMPANY_LIST B',
'where A.company_Code = :AP_COMPANY_cODE',
'and A.STAFF_ID = :AP_STAFF_ID',
'AND B.COMPANY_ID = A.COMPANY_ID',
'AND B.COMPANY_TYPE = ''Insurance Services''',
'UNION ',
'select 3 as sort_order',
', ''Payment Services'' title',
', to_char(count(*),''9,99,999'')  data',
', ''fa-receipt fa-fw fa-3x'' as icon_class',
', ''red'' as class1',
', ''red'' as class2',
', ''''''payment'''''' as LINK',
'from XXMRKT.XXMRKT_APPLIED_LOANS A, XXMRKT.XXMRKT_COMPANY_LIST B',
'where A.company_Code = :AP_COMPANY_cODE',
'and A.STAFF_ID = :AP_STAFF_ID',
'AND B.COMPANY_ID = A.COMPANY_ID',
'AND COMPANY_TYPE = ''Payment Services''',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(64153634129320748)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59569984340157319)
,p_query_column_id=>1
,p_column_alias=>'SORT_ORDER'
,p_column_display_sequence=>10
,p_column_heading=>'Sort Order'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59570016299157320)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Title'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59570103083157321)
,p_query_column_id=>3
,p_column_alias=>'DATA'
,p_column_display_sequence=>30
,p_column_heading=>'Data'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59570284375157322)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>40
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59570326935157323)
,p_query_column_id=>5
,p_column_alias=>'CLASS1'
,p_column_display_sequence=>50
,p_column_heading=>'Class1'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59570495754157324)
,p_query_column_id=>6
,p_column_alias=>'CLASS2'
,p_column_display_sequence=>60
,p_column_heading=>'Class2'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59570553169157325)
,p_query_column_id=>7
,p_column_alias=>'LINK'
,p_column_display_sequence=>70
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77993296843441421)
,p_plug_name=>'Loan Details'
,p_region_name=>'loan'
,p_parent_plug_id=>wwv_flow_imp.id(59569800745157318)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple:t-TabsRegion-mod--large'
,p_plug_template=>wwv_flow_imp.id(2515855534224073)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72773951752764516)
,p_plug_name=>'Loan History'
,p_parent_plug_id=>wwv_flow_imp.id(77993296843441421)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(64194889717838709)
,p_name=>'Loan History'
,p_parent_plug_id=>wwv_flow_imp.id(72773951752764516)
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''https://testapp.softsuite.com/softsuite/api/mrkt/getimages/'' || c.company_id AS user_avatar,',
'',
'    (',
'        SELECT product_name',
'        FROM xxmrkt.xxmrkt_product_list',
'        WHERE product_id = a.product_id',
'          AND company_id = a.company_id',
'        FETCH FIRST 1 ROWS ONLY',
'    ) AS user_name,',
'',
'    ''from '' || TO_CHAR(a.start_date, ''MON DD, YYYY'') || '' to '' || TO_CHAR(a.end_date, ''MON DD, YYYY'') AS event_date,',
'',
'    ''fa fa-credit-card'' AS event_icon,',
'',
'    CASE loan_status',
'        WHEN ''APPROVED'' THEN ''is-new''',
'        WHEN ''DISBURSED'' THEN ''u-success''',
'        WHEN ''CANCELLED'' THEN ''u-danger''',
'        WHEN ''DENIED'' THEN ''is-removed''',
'        WHEN ''INITIATED'' THEN ''is-updated''',
'        WHEN ''APPROVAL IN PROGRESS'' THEN ''u-warning''',
'    END AS event_status,',
'',
'    loan_status AS event_type,',
'    c.company_name AS event_title,',
'    a.loan_amount,',
unistr('    ''\20A6'' || TO_CHAR(a.loan_amount, ''999G999G999G999G990D00'') AS event_desc,'),
'    ''View Loan Details'' AS event_btn,',
'    a.company_id AS event_comp_id,',
'    a.product_id AS event_prod_id,',
'    a.loan_id AS event_loan_id,',
'    NULL AS event_link',
'',
'FROM',
'    XXMRKT.XXMRKT_APPLIED_LOANS a',
'',
'JOIN ',
'    XXMRKT.XXMRKT_COMPANY_LIST c ',
'    ON a.company_id = c.company_id',
'',
'WHERE',
'    a.company_code = :AP_COMPANY_CODE',
'    AND a.staff_id = :AP_STAFF_ID',
'',
'    --  Show loans that overlap with selected date range (month-based)',
'    AND (',
'        :P66_START_DATE IS NULL OR :P66_END_DATE IS NULL OR',
'        TRUNC(a.start_date, ''MM'') <= TRUNC(TO_DATE(:P66_END_DATE), ''MM'') AND',
'        TRUNC(a.end_date, ''MM'') >= TRUNC(TO_DATE(:P66_START_DATE), ''MM'')',
'    )',
'',
'    --Filter by loan status (multi-select)',
'    AND (',
'        :P66_STATUS_1 IS NULL',
'        OR loan_status IN (',
'            SELECT column_value',
'            FROM TABLE(apex_string.split(:P66_STATUS_1, '':''))',
'        )',
'    )',
'',
'    --  Filter by loan amount range',
'    AND (',
'        :P66_RANGE IS NULL OR (',
'            (:P66_RANGE = ''1'' AND a.loan_amount BETWEEN 0 AND 10000) OR',
'            (:P66_RANGE = ''2'' AND a.loan_amount BETWEEN 10001 AND 100000) OR',
'            (:P66_RANGE = ''3'' AND a.loan_amount BETWEEN 100001 AND 1000000) OR',
'            (:P66_RANGE = ''4'' AND a.loan_amount > 1000000)',
'        )',
'    )',
'',
'ORDER BY ',
'    a.start_date DESC;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P66_START_DATE,P66_END_DATE,P66_STATUS_1,P66_RANGE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(66557229929989415)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Loan Found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195662426838717)
,p_query_column_id=>1
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>80
,p_column_heading=>'User Avatar'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194996246838710)
,p_query_column_id=>2
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195045413838711)
,p_query_column_id=>3
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Event Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195112852838712)
,p_query_column_id=>4
,p_column_alias=>'EVENT_ICON'
,p_column_display_sequence=>30
,p_column_heading=>'Event Icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195236982838713)
,p_query_column_id=>5
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>40
,p_column_heading=>'Event Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195395287838714)
,p_query_column_id=>6
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>50
,p_column_heading=>'Event Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195430289838715)
,p_query_column_id=>7
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>60
,p_column_heading=>'Event Title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73827896439021723)
,p_query_column_id=>8
,p_column_alias=>'LOAN_AMOUNT'
,p_column_display_sequence=>140
,p_column_heading=>'Loan Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195503636838716)
,p_query_column_id=>9
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>70
,p_column_heading=>'Event Desc'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195852284838719)
,p_query_column_id=>10
,p_column_alias=>'EVENT_BTN'
,p_column_display_sequence=>90
,p_column_heading=>'Event Btn'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64195981716838720)
,p_query_column_id=>11
,p_column_alias=>'EVENT_COMP_ID'
,p_column_display_sequence=>100
,p_column_heading=>'Event Comp Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64196086168838721)
,p_query_column_id=>12
,p_column_alias=>'EVENT_PROD_ID'
,p_column_display_sequence=>110
,p_column_heading=>'Event Prod Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64196310180838724)
,p_query_column_id=>13
,p_column_alias=>'EVENT_LOAN_ID'
,p_column_display_sequence=>120
,p_column_heading=>'Event Loan Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73826710300021712)
,p_query_column_id=>14
,p_column_alias=>'EVENT_LINK'
,p_column_display_sequence=>130
,p_column_heading=>'Event Link'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72774055997764517)
,p_plug_name=>'Filter'
,p_parent_plug_id=>wwv_flow_imp.id(72773951752764516)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72774287288764519)
,p_plug_name=>'Filter by date'
,p_parent_plug_id=>wwv_flow_imp.id(72774055997764517)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72774559510764522)
,p_plug_name=>'Filter by Status'
,p_parent_plug_id=>wwv_flow_imp.id(72774055997764517)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73827536673021720)
,p_plug_name=>'Filter by Range'
,p_parent_plug_id=>wwv_flow_imp.id(72774055997764517)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2497944838224060)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77993306057441422)
,p_plug_name=>'Loan Dashboard'
,p_parent_plug_id=>wwv_flow_imp.id(77993296843441421)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77993019383441419)
,p_plug_name=>'Loan Dashboard'
,p_parent_plug_id=>wwv_flow_imp.id(77993306057441422)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_total_loans     NUMBER := 0;',
'    v_total_repaid    NUMBER := 0;',
'    v_unpaid          NUMBER := 0;',
'    v_active_loans    NUMBER := 0;',
'    v_avg_tenure      VARCHAR2(20) := ''0 Months'';',
'    v_repayment_pct   NUMBER := 0;',
'BEGIN',
'    -- Fetch total loans',
'    SELECT NVL(SUM(loan_amount), 0)',
'    INTO v_total_loans',
'    FROM xxmrkt.xxmrkt_applied_loans',
'    WHERE staff_id = :AP_STAFF_ID ',
'    AND loan_status = ''DISBURSED''',
'    AND COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'    -- -- Fetch total repaid',
'     SELECT NVL(SUM(repayment_amount), 0)',
'    INTO v_total_repaid',
'      FROM XXMRKT.XXMRKT_APPLIED_LOANS_VIEW',
'      WHERE staff_id = :AP_STAFF_ID AND status = ''Paid'' and COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'    -- -- Calculate unpaid and percentage     ',
'    SELECT NVL(SUM(repayment_amount), 0)',
'    INTO v_unpaid',
'      FROM XXMRKT.XXMRKT_APPLIED_LOANS_VIEW',
'      WHERE staff_id = :AP_STAFF_ID AND status = ''Unpaid'' and COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'',
'    -- -- Active loans count',
'  SELECT COUNT(*)',
'   INTO v_active_loans',
'    FROM xxmrkt.xxmrkt_applied_loans',
'    WHERE staff_id = :AP_STAFF_ID',
'      AND loan_status = ''DISBURSED'' ',
'      AND COMPANY_CODE = :AP_COMPANY_CODE;',
'',
'    -- -- Average tenure (optional logic)',
'    SELECT ROUND(AVG(duration)) || '' Months''',
'    INTO v_avg_tenure',
'    FROM xxmrkt.xxmrkt_applied_loans',
'    WHERE staff_id = :ap_staff_id AND loan_status = ''DISBURSED'' and company_code = :ap_company_code;',
'',
'    -- Return HTML block',
'    RETURN',
'    ''<div class="dashboard-container">',
'        <div class="dashboard-cards">',
'            <div class="dashboard-card">',
'                <h2>Total Loans Amount</h2>',
unistr('                <p class="value">\20A6 '' || TO_CHAR(v_total_loans, ''FM999,999,999'') || ''</p>'),
'            </div>',
'            <div class="dashboard-card">',
'                <h2>Total Repaid</h2>',
unistr('                <p class="value">\20A6 '' || TO_CHAR(v_total_repaid, ''FM999,999,999'') || ''</p>'),
'            </div>',
'            <div class="dashboard-card">',
'                <h2>Total Unpaid</h2>',
unistr('                <p class="value">\20A6 '' || TO_CHAR(v_unpaid, ''FM999,999,999'') || ''</p>'),
'            </div>',
'            <div class="dashboard-card">',
'                <h2>Total Active Loans</h2>',
'                <p class="value">'' || v_active_loans || ''</p>',
'            </div>',
'            <div class="dashboard-card">',
'                <h2>Avg Tenure</h2>',
'                <p class="value">'' || v_avg_tenure || ''</p>',
'            </div>',
'        </div>',
'        <div class="progress-widget">',
'            <h3 class="progress-title">Repayment Progress</h3>',
'            <div class="progress-bar-container">',
'                <div class="progress-bar-background">',
'                    <div class="progress-bar-fill" id="progress-fill" style="width:'' || v_repayment_pct || ''%;"></div>',
'                </div>',
'                <div class="progress-percentage" id="progress-percentage">'' || v_repayment_pct || ''%</div>',
'            </div>',
'        </div>',
'    </div>'';',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77994438888441433)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(77993306057441422)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77995045203441439)
,p_region_id=>wwv_flow_imp.id(77994438888441433)
,p_chart_type=>'bar'
,p_height=>'300'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToLeft'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_time_axis_type=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77995122217441440)
,p_chart_id=>wwv_flow_imp.id(77995045203441439)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    PRODUCT_NAME LOAN_NAME,',
'    NVL(ROUND((XXMRKT.XXMRKT_MARKETPLACE_PKG.return_paid_amount(p_loan_id => a.loan_id, p_company_id => a.company_id)/ SUM(REPAYMENT_AMOUNT) * 100), 0), 0)  REPAYMENT_PROGRESS_PERCENTAGE',
'FROM ',
'    XXMRKT.XXMRKT_APPLIED_LOANS_VIEW  A',
'WHERE ',
'    STAFF_ID = :AP_STAFF_ID',
'GROUP BY PRODUCT_NAME, a.loan_id, a.company_id'))
,p_series_name_column_name=>'REPAYMENT_PROGRESS_PERCENTAGE'
,p_items_value_column_name=>'REPAYMENT_PROGRESS_PERCENTAGE'
,p_items_z_column_name=>'REPAYMENT_PROGRESS_PERCENTAGE'
,p_group_name_column_name=>'REPAYMENT_PROGRESS_PERCENTAGE'
,p_group_short_desc_column_name=>'REPAYMENT_PROGRESS_PERCENTAGE'
,p_items_label_column_name=>'LOAN_NAME'
,p_items_short_desc_column_name=>'REPAYMENT_PROGRESS_PERCENTAGE'
,p_custom_column_name=>'REPAYMENT_PROGRESS_PERCENTAGE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77995268219441441)
,p_chart_id=>wwv_flow_imp.id(77995045203441439)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77995387308441442)
,p_chart_id=>wwv_flow_imp.id(77995045203441439)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title_font_family=>'Helvetica'
,p_title_font_size=>'10'
,p_min=>0
,p_max=>100
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'min'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Helvetica'
,p_tick_label_font_size=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199684882707357356)
,p_plug_name=>'All'
,p_parent_plug_id=>wwv_flow_imp.id(199684814604357355)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49599670436429319)
,p_plug_name=>'Search All'
,p_parent_plug_id=>wwv_flow_imp.id(199684882707357356)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
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
'            </div>    ',
'        ''',
'        );',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(199686783693357375)
,p_name=>'&nbsp'
,p_parent_plug_id=>wwv_flow_imp.id(199684882707357356)
,p_template=>wwv_flow_imp.id(2487713801224053)
,p_display_sequence=>10
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
,p_ajax_items_to_submit=>'P66_CONFIRMED'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2521392252224077)
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
 p_id=>wwv_flow_imp.id(100906090963526288)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Product Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100907994666526305)
,p_query_column_id=>2
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>6
,p_column_heading=>'List Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100908342936526307)
,p_query_column_id=>3
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'List Text'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100908775974526308)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>8
,p_column_heading=>'Icon Class'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100909164865526310)
,p_query_column_id=>5
,p_column_alias=>'EDIT_LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Edit Link'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100909513765526312)
,p_query_column_id=>6
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100906424380526301)
,p_query_column_id=>7
,p_column_alias=>'INS_TIME'
,p_column_display_sequence=>2
,p_column_heading=>'Ins Time'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100906739526526302)
,p_query_column_id=>8
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Ins By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100907112064526303)
,p_query_column_id=>9
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Last Update Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(100907522736526304)
,p_query_column_id=>10
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>5
,p_column_heading=>'Last Updated By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199688296028357390)
,p_plug_name=>'All Services'
,p_parent_plug_id=>wwv_flow_imp.id(199684882707357356)
,p_region_css_classes=>'all-services'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(2487713801224053)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_type varchar2(30) := ''''''all'''''';',
'BEGIN',
'   -- Search bar',
'    htp.p(''',
'        <div class="container-fluid no-padding mb-4">',
'            <div class="row no-padding">',
'                <div class="col-12 col-md-6 col-lg-4">',
'                    <div class="top-region">',
'                        <div class="search-container">',
'                            <input id="searchbarall"',
'                                   class="search-input"',
'                                   onkeyup="get_search_val(''||v_type||'')"',
'                                   type="text"',
'                                   name="search"',
'                                   placeholder="Search for services">',
'                            <img src="#APP_IMAGES#Search.png" alt="Search" class="search-icon">',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    '');',
'',
'    -- Start card container',
'    htp.p(''',
'        <div class="container-fluid mt-4 no-padding card-container">',
'            <div class="row g-3 no-padding">',
'    '');',
'',
'    -- Generate cards',
'    FOR i IN (',
'        SELECT ',
'            company_id,',
'            company_name,',
'            company_desc,',
'            DECODE(company_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'            img_url',
'        FROM XXMRKT.XXMRKT_COMPANY_LIST',
'        WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'        AND COMPANY_STATUS = ''A''',
'        ORDER BY 1',
'    ) LOOP',
'        htp.p(''',
'            <div class="col col-sm-6 col-md-6 col-lg-4 card-col d-flex">',
'                <div class="card m-card w-100 d-flex flex-column h-100">',
'                    <div class="d-flex flex-column align-items-start p-4 m-block flex-grow-1">',
'                        <img src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||i.company_id||''" alt="Image" class="m-img mb-2">',
'                        <div class="flex-grow-1 d-flex flex-column">',
'                            <h5 class="card-title mb-1 m-title">''||i.company_name||''</h5>',
'                            <p class="card-text m-text flex-grow-1">''||i.company_desc||''</p>',
'                        </div>',
'                    </div>',
'                    <div class="border-top m-view d-flex justify-content-between align-items-center mt-auto p-2">',
'                        <a href="#" onclick="return redirect(''||i.company_id||'')"><p class="mb-0">View More</p></a>',
'                        <a href="#" onclick="return redirect(''||i.company_id||'')"><img src="#APP_IMAGES#arrow-up-right-01-sharp.svg" alt="Go" class="m-img2"></a>',
'                    </div>',
'                </div>',
'            </div>',
'        '');',
'    END LOOP;',
'',
'    -- End card container',
'    htp.p(''',
'            </div>',
'        </div>',
'    '');',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199684942288357357)
,p_plug_name=>'Insurance'
,p_parent_plug_id=>wwv_flow_imp.id(199684814604357355)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199688476398357392)
,p_plug_name=>'Insurance Services'
,p_parent_plug_id=>wwv_flow_imp.id(199684942288357357)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(2487713801224053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_type varchar2(30) := ''''''all'''''';',
'BEGIN',
'   -- Search bar',
'    htp.p(''',
'        <div class="container-fluid no-padding mb-4">',
'            <div class="row no-padding">',
'                <div class="col-12 col-md-6 col-lg-4">',
'                    <div class="top-region">',
'                        <div class="search-container">',
'                            <input id="searchbarall"',
'                                   class="search-input"',
'                                   onkeyup="get_search_val(''||v_type||'')"',
'                                   type="text"',
'                                   name="search"',
'                                   placeholder="Search for services">',
'                            <img src="#APP_IMAGES#Search.png" alt="Search" class="search-icon">',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    '');',
'',
'    -- Start card container',
'    htp.p(''',
'        <div class="container-fluid mt-4 no-padding card-container">',
'            <div class="row g-3 no-padding">',
'    '');',
'',
'    -- Generate cards',
'    FOR i IN (',
'        SELECT ',
'            company_id,',
'            company_name,',
'            company_desc,',
'            DECODE(company_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'            img_url',
'        FROM XXMRKT.XXMRKT_COMPANY_LIST',
'        WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'        AND company_type = ''Insurance Services''',
'        AND COMPANY_STATUS = ''A''',
'        ORDER BY 1',
'    ) LOOP',
'        htp.p(''',
'            <div class="col col-sm-6 col-md-6 col-lg-4 card-col d-flex">',
'                <div class="card m-card w-100 d-flex flex-column h-100">',
'                    <div class="d-flex flex-column align-items-start p-4 m-block flex-grow-1">',
'                        <img src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||i.company_id||''" alt="Image" class="m-img mb-2">',
'                        <div class="flex-grow-1 d-flex flex-column">',
'                            <h5 class="card-title mb-1 m-title">''||i.company_name||''</h5>',
'                            <p class="card-text m-text flex-grow-1">''||i.company_desc||''</p>',
'                        </div>',
'                    </div>',
'                    <div class="border-top m-view d-flex justify-content-between align-items-center mt-auto p-2">',
'                        <a href="#" onclick="return redirect(''||i.company_id||'')"><p class="mb-0">View More</p></a>',
'                        <a href="#" onclick="return redirect(''||i.company_id||'')"><img src="#APP_IMAGES#arrow-up-right-01-sharp.svg" alt="Go" class="m-img2"></a>',
'                    </div>',
'                </div>',
'            </div>',
'        '');',
'    END LOOP;',
'',
'    -- End card container',
'    htp.p(''',
'            </div>',
'        </div>',
'    '');',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199685036815357358)
,p_plug_name=>'Loan Services'
,p_parent_plug_id=>wwv_flow_imp.id(199684814604357355)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199688426417357391)
,p_plug_name=>'Loan Services'
,p_parent_plug_id=>wwv_flow_imp.id(199685036815357358)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(2487713801224053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_type varchar2(30) := ''''''loan'''''';',
'BEGIN',
'   -- Search bar',
'    htp.p(''',
'        <div class="container-fluid no-padding mb-4">',
'            <div class="row no-padding">',
'                <div class="col-12 col-md-6 col-lg-4">',
'                    <div class="top-region">',
'                        <div class="search-container">',
'                            <input id="searchbarloan"',
'                                   class="search-input"',
'                                   onkeyup="get_search_val(''||v_type||'')"',
'                                   type="text"',
'                                   name="search"',
'                                   placeholder="Search for services">',
'                            <img src="#APP_IMAGES#Search.png" alt="Search" class="search-icon">',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    '');',
'',
'    -- Start card container',
'    htp.p(''',
'        <div class="container-fluid mt-4 no-padding card-container">',
'            <div class="row g-3 no-padding">',
'    '');',
'',
'    -- Generate cards',
'    FOR i IN (',
'        SELECT ',
'            company_id,',
'            company_name,',
'            company_desc,',
'            DECODE(company_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'            img_url',
'        FROM XXMRKT.XXMRKT_COMPANY_LIST',
'        WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'        AND company_type = ''Loan Services''',
'        AND COMPANY_STATUS = ''A''',
'        ORDER BY 1',
'    ) LOOP',
'        htp.p(''',
'            <div class="col col-sm-6 col-md-6 col-lg-4 card-col d-flex">',
'                <div class="card m-card w-100 d-flex flex-column h-100">',
'                    <div class="d-flex flex-column align-items-start p-4 m-block flex-grow-1">',
'                        <img src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||i.company_id||''" alt="Image" class="m-img mb-2">',
'                        <div class="flex-grow-1 d-flex flex-column">',
'                            <h5 class="card-title mb-1 m-title">''||i.company_name||''</h5>',
'                            <p class="card-text m-text flex-grow-1">''||i.company_desc||''</p>',
'                        </div>',
'                    </div>',
'                    <div class="border-top m-view d-flex justify-content-between align-items-center mt-auto p-2">',
'                        <a href="#" onclick="return redirect(''||i.company_id||'')"><p class="mb-0">View More</p></a>',
'                        <a href="#" onclick="return redirect(''||i.company_id||'')"><img src="#APP_IMAGES#arrow-up-right-01-sharp.svg" alt="Go" class="m-img2"></a>',
'                    </div>',
'                </div>',
'            </div>',
'        '');',
'    END LOOP;',
'',
'    -- End card container',
'    htp.p(''',
'            </div>',
'        </div>',
'    '');',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199685193834357359)
,p_plug_name=>'Payment Services'
,p_parent_plug_id=>wwv_flow_imp.id(199684814604357355)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199688562712357393)
,p_plug_name=>'Payment Services'
,p_parent_plug_id=>wwv_flow_imp.id(199685193834357359)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(2487713801224053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_type varchar2(30) := ''''''all'''''';',
'BEGIN',
'   -- Search bar',
'    htp.p(''',
'        <div class="container-fluid no-padding mb-4">',
'            <div class="row no-padding">',
'                <div class="col-12 col-md-6 col-lg-4">',
'                    <div class="top-region">',
'                        <div class="search-container">',
'                            <input id="searchbarall"',
'                                   class="search-input"',
'                                   onkeyup="get_search_val(''||v_type||'')"',
'                                   type="text"',
'                                   name="search"',
'                                   placeholder="Search for services">',
'                            <img src="#APP_IMAGES#Search.png" alt="Search" class="search-icon">',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    '');',
'',
'    -- Start card container',
'    htp.p(''',
'        <div class="container-fluid mt-4 no-padding card-container">',
'            <div class="row g-3 no-padding">',
'    '');',
'',
'    -- Generate cards',
'    FOR i IN (',
'        SELECT ',
'            company_id,',
'            company_name,',
'            company_desc,',
'            DECODE(company_status, ''A'', ''Active'', ''I'', ''Inactive'') status,',
'            img_url',
'        FROM XXMRKT.XXMRKT_COMPANY_LIST',
'        WHERE COMPANY_CODE = :AP_COMPANY_CODE',
'        AND company_type = ''Payment Services''',
'        AND COMPANY_STATUS = ''A''',
'        ORDER BY 1',
'    ) LOOP',
'        htp.p(''',
'            <div class="col col-sm-6 col-md-6 col-lg-4 card-col d-flex">',
'                <div class="card m-card w-100 d-flex flex-column h-100">',
'                    <div class="d-flex flex-column align-items-start p-4 m-block flex-grow-1">',
'                        <img src="https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||i.company_id||''" alt="Image" class="m-img mb-2">',
'                        <div class="flex-grow-1 d-flex flex-column">',
'                            <h5 class="card-title mb-1 m-title">''||i.company_name||''</h5>',
'                            <p class="card-text m-text flex-grow-1">''||i.company_desc||''</p>',
'                        </div>',
'                    </div>',
'                    <div class="border-top m-view d-flex justify-content-between align-items-center mt-auto p-2">',
'                        <a href="#" onclick="return redirect(''||i.company_id||'')"><p class="mb-0">View More</p></a>',
'                        <a href="#" onclick="return redirect(''||i.company_id||'')"><img src="#APP_IMAGES#arrow-up-right-01-sharp.svg" alt="Go" class="m-img2"></a>',
'                    </div>',
'                </div>',
'            </div>',
'        '');',
'    END LOOP;',
'',
'    -- End card container',
'    htp.p(''',
'            </div>',
'        </div>',
'    '');',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(200266736847198562)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(',
'          ''<div class="top-region">',
'                <div class=>    ',
'                    <button class="icon-button" onclick="return redirectToMainPageFunc()">',
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
 p_id=>wwv_flow_imp.id(73826030486021705)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(72774287288764519)
,p_button_name=>'Search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64194467398838705)
,p_name=>'P66_NEW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(199684434670357352)
,p_display_as=>'NATIVE_HIDDEN'
,p_inline_help_text=>'https://testapp.softsuite.com/softsuite/api/mrkt/getimages/''||a.company_id||'''
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72774303179764520)
,p_name=>'P66_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72774287288764519)
,p_prompt=>'From'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72774490249764521)
,p_name=>'P66_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(72774287288764519)
,p_prompt=>'To'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P66_START_DATE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72775072300764527)
,p_name=>'P66_STATUS_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(72774559510764522)
,p_prompt=>'Status '
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:INITIATED;INITIATED,CANCELLED;CANCELLED,APPROVED;APPROVED,DISBURSED;DISBURSED,DENIED;DENIED,APPROVAL IN PROGRESS;APPROVAL IN PROGRESS'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73827978222021724)
,p_name=>'P66_RANGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73827536673021720)
,p_prompt=>'Range'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2(,):\20A60 \2013 \20A610,000 1\20A610,001 \2013 \20A6100,000 2\20A6100,001 \2013 \20A61,000,000 3Above \20A61,000,0004')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100900952501526252)
,p_name=>'P66_PRODUCT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(199684434670357352)
,p_prompt=>'Product Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100901320107526264)
,p_name=>'P66_CONFIRMED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(199684434670357352)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100901793317526265)
,p_name=>'P66_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(199684434670357352)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100902168856526266)
,p_name=>'P66_ACTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(199684434670357352)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100902523844526266)
,p_name=>'P66_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(199684434670357352)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100902907361526267)
,p_name=>'P66_PRODUCT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(199684434670357352)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100912831122526383)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100914723145526396)
,p_event_id=>wwv_flow_imp.id(100912831122526383)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Loan successfully canceled.'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66588018506249410)
,p_event_id=>wwv_flow_imp.id(100912831122526383)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64194889717838709)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100915191983526397)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_PRODUCT_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100915634278526398)
,p_event_id=>wwv_flow_imp.id(100915191983526397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let search = $v( "P66_PRODUCT_NAME" );',
'',
'get_search_val(search, ''all-services'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59572402451157344)
,p_name=>'New_2'
,p_event_sequence=>30
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66587130631249401)
,p_event_id=>wwv_flow_imp.id(59572402451157344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77993296843441421)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73826887469021713)
,p_event_id=>wwv_flow_imp.id(59572402451157344)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P66_START_DATE,P66_END_DATE,P66_STATUS_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73826132489021706)
,p_name=>'New_3'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73826030486021705)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73826494770021709)
,p_event_id=>wwv_flow_imp.id(73826132489021706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64194889717838709)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73826924964021714)
,p_name=>'refresh loan history'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_STATUS_1,P66_RANGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73827022738021715)
,p_event_id=>wwv_flow_imp.id(73826924964021714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64194889717838709)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100912025198526377)
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
,p_internal_uid=>100912025198526377
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100912494745526381)
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
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>100912494745526381
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101665235894609904)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_EXT_REDIRECT_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_ename varchar2(200);',
'begin',
'   SELECT redirect_url_ss',
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
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>101665235894609904
);
wwv_flow_imp.component_end;
end;
/
