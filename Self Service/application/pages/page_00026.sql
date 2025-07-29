prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Take Test Survey'
,p_alias=>'AJ1'
,p_step_title=>'Take Test Survey'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297300973640212157)
,p_plug_name=>'Take Test Survey'
,p_icon_css_classes=>'fa-clipboard-edit'
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
 p_id=>wwv_flow_imp.id(301258666655549002)
,p_plug_name=>'Timing'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE HTML>',
'<html>',
'<head>',
'<meta name="viewport" content="width=device-width, initial-scale=1">',
'<style>',
'p {',
'  text-align: right;',
'  margin-top: 0px;',
'}',
'</style>',
'</head>',
'<body>',
'',
'<p id="demo"></p>',
'',
'<script>',
'',
'',
'var countDownDate1 = document.getElementById("P26_TEST_TIME").value;',
'',
'var countDownDate = new Date(countDownDate1).getTime();',
'',
'// Update the count down every 1 second',
'var x = setInterval(function() {',
'',
'  // Get today''s date and time',
'  var now = new Date().getTime();',
'    ',
'  // Find the distance between now and the count down date',
'  var distance = countDownDate - now;',
'    ',
'  // Time calculations for days, hours, minutes and seconds',
'     // var days = Math.floor(distance / (1000 * 60 * 60 * 24));',
'  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));',
'  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));',
'  var seconds = Math.floor((distance % (1000 * 60)) / 1000);',
'    ',
'  // Output the result in an element with id="demo"',
'  document.getElementById("demo").innerHTML =  hours + "h " +',
'   minutes + "m " + seconds + "s ";',
'  // To get the time',
'  var getTime = hours + ":" + minutes;',
'  apex.item("P26_NOW").setValue(getTime);',
'  ',
'    $(document).ready(function(){',
'    $(''#P26_TIME_SPENT'').fadeTo("faster", 0.0);',
'    //$(''#P26_DONE'').value = "F";',
'    //alert($(''#P26_DONE'').value = "F");',
'});',
'    var tt = document.getElementById("demo").innerHTML;',
'    //alert(tt);',
'    apex.item("P26_TIME_SPENT").setValue(tt);',
'    ',
'  // If the count down is over, write some text ',
'  if (distance < 0) {',
'    clearInterval(x);',
'    $(''#P26_DONE'').value = "F";',
'    document.getElementById("demo").innerHTML = "TimeOut";',
'    var out = document.getElementById("demo").innerHTML;',
'    alert(out);',
'    $("#Next").hide();',
'    $("#Previous").hide();',
'    $("#Finish").hide();',
'    $("#FinishTime").show();',
'    //window.location.href = "";',
'  ',
'    ',
'  }',
'}, 1000);',
'</script>',
'',
'</body>',
'</html>'))
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P26_TEST_TIME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(585493419643686020)
,p_plug_name=>'<h3><div style="border: 1px dotted black;background-color:#f7f7f7">Questions &P11_QUEST_NUM. of </div></h3>'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>40
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt NUMBER;',
'  v_itm VARCHAR2(5);',
'  v_max number;',
'  v_qst_id number;',
'  ',
'begin',
'',
'  FOR c0 in (select x.TEST_NAME, x.INTRODUCTION,x.test_id',
'               from xxslm.xxslm_test x',
'             where x.test_id  = :P26_SURVEY ',
'			 and x.COMPANY_CODE = :AP_COMPANY_CODE',
'            )',
'  LOOP',
'   htp.p(''<b><h3>''|| nvl(c0.TEST_NAME,'''')||''</h3></b>'');',
'     htp.p(''<hr></hr>'');',
' /*   IF c0.prolog IS NOT NULL THEN',
'      htp.p(''<h5>''|| c0.prolog||''</h5>'');',
'    END IF;*/',
'            FOR c1 in (SELECT rownum rnum, test_id, TEST_NAME, INTRODUCTION FROM',
'                               (select x.TEST_NAME, x.INTRODUCTION,x.test_id',
'                               from xxslm.xxslm_test x',
'                             where x.test_id  = :P26_SURVEY ',
'                             and x.COMPANY_CODE = :AP_COMPANY_CODE',
'                              )',
'                              )',
'            LOOP',
'                      htp.p(''<h6>''|| c1.INTRODUCTION||''</h6>'');      ',
'                      htp.p(''<ul style="list-style-type:none">'');',
'					  FOR c2 IN (SELECT rid, TEST_ID,QUESTION_ID,QUESTION,QUESTION_TYPE',
'								  FROM',
'								 (SELECT rownum rid, x.QUESTION_ID, x.TEST_ID,x.QUESTION, x.QUESTION_TYPE',
'								   FROM xxslm.XXSLM_QUESTIONS  x',
'								   WHERE x.TEST_ID = c1.test_id',
'								 ORDER BY x.QUESTION_ID)',
'								where rid = nvl(decode(:P26_NXTPREV,0,1,:P26_NXTPREV),1 ) )--added for previous and next',
'					  LOOP    ',
'								  APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_QUESTION_ID''',
'								 , p_value => c2.QUESTION_ID);',
'',
'								   htp.p(''<div style="background-color:#f7f7f7;color:black;padding:20px;">'');',
'									htp.p(''<h3> <b>''||c2.rid||''. ''||c2.question||''</b></h3>'');     --for each questions ',
'									htp.p(''<ul style="list-style-type:none">'');',
'									v_itm := ''f''||lpad(v_cnt,2,0);',
'',
'									 begin',
'											  SELECT max(rownum) rid into v_max',
'													   FROM xxslm.XXSLM_QUESTIONS x',
'												  WHERE x.TEST_ID = c0.test_id',
'													 ORDER BY x.question_id;',
'											  exception when others then null;',
'									 end;',
'								IF c2.QUESTION_TYPE IN (''MULTIPLE_CHOICE'',''MULTIPLE'') THEN  --MultiChoice',
'									  FOR c3 IN (SELECT rownum rid, ID_MULT, ANSWER_A,ANSWER_B,ANSWER_C,ANSWER_D,ANSWER_E,ANSWER_F,ANSWER_G',
'												   FROM xxslm.XXSLM_QUESTIONS_OPTION x',
'												  WHERE x.question_id = c2.QUESTION_ID',
'												  and x.TEST_ID = c0.test_id',
'                                                  and staff_id = :AP_STAFF_ID',
'                                                 and x.COURSE_ID =:P26_COURSE',
'                                                  and company_code = :AP_cOMPANY_CODE',
'												   ORDER BY rownum',
'                                                )',
'									  LOOP        if c3.ANSWER_A is null then ',
'                                                  null;',
'                                                  else',
'													htp.p(''<li>'');',
'													htp.p(apex_item.checkbox(1,c3.ANSWER_A) );',
'													htp.p(''&nbsp &nbsp''||c3.ANSWER_A);',
'                                                    htp.p(''</li>''); ',
'                                                 end if;',
'                                                    --',
'                                                  if c3.ANSWER_B is null then ',
'                                                  null;',
'                                                  else',
'                                                    htp.p(''<li>''); ',
'                                                    htp.p(apex_item.checkbox(1,c3.ANSWER_B) );',
'													htp.p(''&nbsp &nbsp''||c3.ANSWER_B);',
'                                                    htp.p(''</li>''); end if;',
'                                                    --',
'                                                  if c3.ANSWER_C is null then ',
'                                                  null;',
'                                                  else',
'                                                    htp.p(''<li>''); ',
'                                                    htp.p(apex_item.checkbox(1,c3.ANSWER_C) );',
'													htp.p(''&nbsp &nbsp''||c3.ANSWER_C);',
'                                                    htp.p(''</li>''); end if;',
'                                                    --',
'                                                  if c3.ANSWER_D is null then ',
'                                                  null;',
'                                                  else',
'                                                    htp.p(''<li>'');',
'                                                    htp.p(apex_item.checkbox(1,c3.ANSWER_D) );',
'													htp.p(''&nbsp &nbsp''||c3.ANSWER_D);',
'                                                    htp.p(''</li>''); end if;',
'                                                    --',
'                                                  if c3.ANSWER_E is null then ',
'                                                  null;',
'                                                  else',
'                                                    htp.p(''<li>'');',
'                                                    htp.p(apex_item.checkbox(1,c3.ANSWER_E) );',
'													htp.p(''&nbsp &nbsp''||c3.ANSWER_E);',
'                                                    htp.p(''</li>''); end if;',
'                                                    --',
'                                                  if c3.ANSWER_F is null then ',
'                                                  null;',
'                                                  else',
'                                                    htp.p(''<li>'');',
'                                                    htp.p(apex_item.checkbox(1,c3.ANSWER_F) );',
'													htp.p(''&nbsp &nbsp''||c3.ANSWER_F);',
'                                                    htp.p(''</li>''); end if;',
'                                                    --',
'                                                     if c3.ANSWER_G is null then ',
'                                                  null;',
'                                                  else',
'                                                    htp.p(''<li>'');',
'                                                    htp.p(apex_item.checkbox(1,c3.ANSWER_G) );',
'													htp.p(''&nbsp &nbsp''||c3.ANSWER_G);',
'													htp.p(''</li>''); end if;',
'									  END LOOP;',
'							   ELSIF upper(c2.QUESTION_TYPE) = upper(''FREE_TEXT'')  THEN  --FreeText',
'									   FOR c3 IN (SELECT rownum rid, id_FREE, FREE_TEXT',
'												   FROM xxslm.XXSLM_QUESTIONS_OPTION x',
'												  WHERE x.question_id = c2.QUESTION_ID',
'												  and x.TEST_ID = c0.test_id',
'                                                  and staff_id = :AP_STAFF_ID',
'                                                  and x.COURSE_ID =:P26_COURSE',
'                                                  and company_code = :AP_COMPANY_CODE',
'												  ORDER BY rownum',
'                                                 )',
'									  LOOP        ',
'												   htp.p(''<li>'');',
'													 htp.p(apex_item.textarea(1,c3.FREE_TEXT) );',
'													htp.p(''&nbsp &nbsp''||'''');',
'													htp.p(''</li>''); ',
'									  END LOOP;',
'								ELSE                                 --true/false',
'									   FOR c3 IN (SELECT rownum rid, ID_TRUE, OPTION_A, OPTION_B',
'											   FROM xxslm.XXSLM_QUESTIONS_OPTION x',
'											  WHERE x.question_id = c2.QUESTION_ID',
'											  and x.TEST_ID = c0.test_id',
'                                              and staff_id = :AP_STAFF_ID',
'                                               and x.COURSE_ID =:P26_COURSE',
'                                              and company_code = :AP_COMPANY_CODE',
'											   ORDER BY rownum',
'                                                 )',
'									  LOOP          if c3.OPTION_A is null then ',
'                                                  null;',
'                                                  else',
'													 htp.p(''<li>'');',
'													  htp.p(apex_item.radiogroup(1,c3.OPTION_A) );',
'													 htp.p(''&nbsp &nbsp''||c3.OPTION_A);',
'													htp.p(''</li>''); end if;',
'                                                    --',
'                                                    if c3.OPTION_B is null then ',
'                                                  null;',
'                                                  else',
'                                                     htp.p(''<li>'');',
'													  htp.p(apex_item.radiogroup(1,c3.OPTION_B) );',
'													 htp.p(''&nbsp &nbsp''||c3.OPTION_B);',
'													htp.p(''</li>''); end if;',
'									  END LOOP;',
'								END IF;',
'									   htp.p(''</div>'');',
'									  --htp.p(''<i><b>''||''Question ''||c2.rid||''of ''||v_max); ',
'								  htp.p(''</ul>'');',
'									htp.p(''<i><h6>''||''Question  ''||c2.rid||'' of  ''||v_max||''</h7></i>''); ',
'                        END LOOP;',
'                                      --htp.p(''<h5>''|| c1.epilog||''</h5></ul>'');',
'                                      htp.p(''<hr>'');',
'                                    htp.p(''<br>'');',
'            END LOOP;',
'    END LOOP;',
'--  :P26_TEST_ID := :P26_RSP;',
'  :P26_MAX := v_max;',
'End;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P26_QUEST_NUM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(585493444253686021)
,p_plug_name=>'&nbsp'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(585495046323686037)
,p_plug_name=>'Introduction'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_max NUMBER;',
'  v_itm VARCHAR2(5);',
'begin',
'  for c0 in (select x.TEST_NAME, x.INTRODUCTION,x.test_id',
'               from xxslm.xxslm_test x',
'             where x.test_id  = :P26_SURVEY ',
'			 and x.COMPANY_CODE = :AP_COMPANY_CODE--''24''',
'            )',
'  LOOP',
'         ',
'    htp.p(''&nbsp''||''<b><h3>''|| nvl(c0.TEST_NAME,'''')||''</h3></b>'');',
'  --  htp.p(''<pre>'');',
' --htp.p(''<div style="border: 1px solid black">'');',
' htp.p(''<div style="background-color:#f7f7f7;color:black;padding:20px;">'');',
'--    htp.p(''<br>'');',
'  --  htp.p(''</br>'');',
'     htp.p(''&nbsp''||''<b><h4>''||'' Introductions:''||''</h4></b>'');',
'       htp.p(''<li>''||''Number of questions: ''|| :P26_MAX||''</li>'');',
'         htp.p(''&nbsp''||''<b><h5>''|| nvl(c0.INTRODUCTION,'''')||''</h3></b>'');',
'  /*     htp.p(''<ul>'');',
'          htp.p(''<li>''||''Number of questions: ''|| :P26_MAX||''</li>'');',
'         -- htp.p(''<li>''||''Has no time limit''||''</li>'');',
'          htp.p(''<li>''||''Must be finished in one sitting''||''</li>'');',
'          htp.p(''<li>''||''Questions displayed per page: 1''||''</li>'');',
'          htp.p(''<li>''||''Will allow you to go back and change your answers.''||''</li>'');',
'          htp.p(''<li>''||''Will not let you finish with any questions unattempted''||''</li>'');',
'          htp.p(''<li>''||''Has a pass mark of: 50%''||''</li>'');',
'       htp.p(''</ul>'');',
'       */',
'       ',
'     htp.p(''</div>'');',
'   -- htp.p(''</pre>'');',
'       htp.p(''<br>'');',
'    htp.p(''</br>'');',
'     htp.p(''<i><b>'');',
'  --  htp.p(''<div style="border: 1px dotted black;background-color:white">Click on continue to start Test</div>'');',
'      htp.p(''</i></b>'');',
' --  htp.p(''<br>'');',
' --   htp.p(''</br>'');',
'  END LOOP;',
'end;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P26_QUEST_NUM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(585496541579686052)
,p_plug_name=>'TimeTracker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2487513223224052)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE HTML>',
'<html>',
'<head>',
'<meta name="viewport" content="width=device-width, initial-scale=1">',
'<style>',
'p {',
'  text-align: right;',
'  margin-top: 0px;',
'}',
'</style>',
'</head>',
'<body>',
'',
'<p id="demo"></p>',
'',
'<script>',
'// Set the date we''re counting down to',
'',
'var countDownDate1 = document.getElementById("P26_TEST_TIME").value;',
'',
'//alert(countDownDate1);',
'',
'var countDownDate = new Date(countDownDate1).getTime();',
'',
'// Update the count down every 1 second',
'var x = setInterval(function() {',
'',
'  // Get today''s date and time',
'  var now = new Date().getTime();',
'    ',
'  // Find the distance between now and the count down date',
'  var distance = countDownDate - now;',
'    ',
'  // Time calculations for days, hours, minutes and seconds',
'    //var days = Math.floor(distance / (1000 * 60 * 60 * 24));',
'  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));',
'  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));',
'  var seconds = Math.floor((distance % (1000 * 60)) / 1000);',
'    ',
'  // Output the result in an element with id="demo"',
'  document.getElementById("demo").innerHTML =  hours + "h " +  minutes + "m " + seconds + "s ";',
' ',
'   apex.item("P26_TIME_SPENT").setValue(all);',
'    ',
'  // If the count down is over, write some text ',
'  if (distance < 0) {',
'    clearInterval(x);',
'    document.getElementById("demo").innerHTML = "EXPIRED";',
'  }',
'}, 1000);',
'</script>',
'',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(297294694087212146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_button_name=>'Previous'
,p_button_static_id=>'Previous'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Previous'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P26_NXTPREV IS NOT NULL OR :P26_NXTPREV != 1',
':P26_NXTPREV > :P26_QUEST_NUM'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-chevron-circle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(297300435423212153)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(585495046323686037)
,p_button_name=>'Enroll'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Enroll'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-chevron-circle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(297295046918212147)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_button_name=>'Next'
,p_button_static_id=>'Next'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P26_MAX > :P26_NXTPREV OR :P26_NXTPREV IS NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-chevron-circle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(297294221316212145)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_button_name=>'Finish'
,p_button_static_id=>'Finish'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Finish'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P26_MAX = :P26_NXTPREV'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(301259749009549013)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_button_name=>'FinishTime'
,p_button_static_id=>'FinishTime'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(301884053403824834)
,p_branch_name=>'GotoPg 18'
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_COURSE_ID:&P26_COURSE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P26_DONE = ''F'' AND :P26_APPRASIAL_ID IS NOT NULL'
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(300074091958735025)
,p_branch_name=>'Go To Page 30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP:P30_TEST_ID,P30_RETAKE:&P26_TEST_ID.,&P26_RKT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P26_DONE'
,p_branch_condition_text=>'F'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297293203686212138)
,p_name=>'P26_NOW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297293521492212140)
,p_name=>'P26_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(585496541579686052)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297295873500212147)
,p_name=>'P26_MAX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297296291971212148)
,p_name=>'P26_SURVEY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297296699952212148)
,p_name=>'P26_RSP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297297076516212148)
,p_name=>'P26_QUEST_NUM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297297444565212149)
,p_name=>'P26_NXTPREV'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297297819002212149)
,p_name=>'P26_QUESTION_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297298299963212150)
,p_name=>'P26_TEST_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297298622531212150)
,p_name=>'P26_QST_MAX'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297299023182212150)
,p_name=>'P26_DONE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297299716348212151)
,p_name=>'P26_TIME_SPENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(301258666655549002)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2560891985224106)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297318315930577505)
,p_name=>'P26_TEST_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(298441466183648414)
,p_name=>'P26_COURSE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300921359532533102)
,p_name=>'P26_RETAKE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300921520528533104)
,p_name=>'P26_PASS_MARK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300921825708533107)
,p_name=>'P26_RKT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(301259105355549007)
,p_name=>'P26_HRS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(301259278693549008)
,p_name=>'P26_MINS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(301262519618549041)
,p_name=>'P26_APPRASIAL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306924232152464228)
,p_name=>'P26_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(585493419643686020)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297307934634212174)
,p_name=>'NextPage'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297295046918212147)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297308458927212175)
,p_event_id=>wwv_flow_imp.id(297307934634212174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
' :P26_NXTPREV := NVL(:P26_NXTPREV,1) + 1;',
' :P26_QUESTION_ID := :P26_QUESTION_ID;',
' :P26_TIME_SPENT := :P26_TIME_SPENT;',
' APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_TIME_SPENT''',
'								 , p_value => :P26_TIME_SPENT);',
'apex_application.g_print_success_message := ''<span style="color:green">OK</span>'';',
'end;'))
,p_attribute_02=>'P26_NXTPREV,P26_QUEST_NUM,P26_TIME_SPENT'
,p_attribute_03=>'P26_NXTPREV,P26_QUESTION_ID,P26_TIME_SPENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297308933807212175)
,p_event_id=>wwv_flow_imp.id(297307934634212174)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297309363172212175)
,p_name=>'PreviuosPage'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297294694087212146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297309871893212176)
,p_event_id=>wwv_flow_imp.id(297309363172212175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
' :P26_NXTPREV := NVL(:P26_NXTPREV,1) - 1;',
' IF :P26_NXTPREV = 0 THEN',
'     :P26_NXTPREV := '''';',
' End if;',
'end;'))
,p_attribute_02=>'P26_QUEST_NUM,P26_NXTPREV'
,p_attribute_03=>'P26_NXTPREV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297310377234212176)
,p_event_id=>wwv_flow_imp.id(297309363172212175)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297302352905212168)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288203375356473933)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297302847843212169)
,p_event_id=>wwv_flow_imp.id(297302352905212168)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
' :P26_NXTPREV := :P26_QUEST_NUM + 1;',
' :P26_QUESTION_ID := :P26_QUESTION_ID;',
':P26_DONE := ''F'';',
' :P26_TIME_SPENT := :P26_TIME_SPENT;',
' APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_TIME_SPENT''',
'								 , p_value => :P26_TIME_SPENT);',
'--',
'    Update XXSLM.XXSLM_EXAM_SUMMARY',
'    set TIME_SPENT = :P26_TIME_SPENT,',
'        STATUS = ''COMPLETED''',
'    where test_id = :P26_SURVEY ',
'    and company_code = :AP_COMPANY_CODE;',
'end;'))
,p_attribute_02=>'P26_NXTPREV,P26_QUEST_NUM,P26_DONE,P26_TIME_SPENT'
,p_attribute_03=>'P26_NXTPREV,P26_QUESTION_ID,P26_DONE,P26_TIME_SPENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297303354914212170)
,p_event_id=>wwv_flow_imp.id(297302352905212168)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297303763471212170)
,p_name=>'showtime'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.demo'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297304247446212171)
,p_event_id=>wwv_flow_imp.id(297303763471212170)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#timetracker'').hide();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302021447496928806)
,p_name=>'confirm'
,p_event_sequence=>49
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297300435423212153)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302021516100928807)
,p_event_id=>wwv_flow_imp.id(302021447496928806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Click Ok to Enroll'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297306065154212172)
,p_name=>'New_1'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297300435423212153)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(301881375810824807)
,p_event_id=>wwv_flow_imp.id(297306065154212172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_HRS''',
'								 , p_value => :P26_HRS);',
'        --',
'         APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_MINS''',
'								 , p_value => :P26_MINS);'))
,p_attribute_02=>'P26_HRS,P26_MINS'
,p_attribute_03=>'P26_HRS,P26_MINS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297306506998212173)
,p_event_id=>wwv_flow_imp.id(297306065154212172)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_cnt number;',
'td varchar2(10);',
'v_time varchar2(100);',
'Begin     ',
'         APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_HRS''',
'								 , p_value => :P26_HRS);',
'        --',
'         APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_MINS''',
'								 , p_value => :P26_MINS);',
'       ',
'        td :=  nvl(:P26_HRS,0)||'':''||nvl(:P26_MINS,0);',
'        --',
'       IF v_time is null then',
'       null;',
'       else ',
'       :P26_TEST_TIME := v_time;',
'       End if;',
'       --',
'         INSERT INTO XXSLM.XXSLM_EXAM_TRACKER(No_of_Question,TEST_ID,TEST_NAME,START_DATE,END_DATE,TEST_DURATION,TIME_SPENT,STATUS, COMPANY_CODE,staff_id, point,COURSE_ID, Retake,PASS_MARK ,appraisal_id, ENROLLMENT)',
'            select count(a.question_id)No_of_Question,b.TEST_ID,B.TEST_NAME,b.START_DATE,b.END_DATE,'''','''',''STARTED'',:AP_COMPANY_CODE,:AP_STAFF_ID, sum(QUESTION_POINTS),:P26_COURSE,:P26_RETAKE, :P26_PASS_MARK,:P26_APPRASIAL_ID,''Yes''',
'            from xxslm.XXSLM_QUESTIONS a, xxslm.XXSLM_TEST b',
'            where a.test_id = b.test_id ',
'            and b.company_code = :AP_COMPANY_CODE',
'            and b.test_id= NVL(:P26_SURVEY,:P26_TEST_ID)',
'            group by b.TEST_ID,b.TEST_NAME,b.START_DATE,b.END_DATE;',
'            --',
'    IF :P26_RETAKE = ''Yes'' THEN               --',
'       delete from xxslm.XXSLM_QUESTION_RESPONSES_tst',
'        where staff_id = :AP_STAFF_ID',
'         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'         and company_code = :AP_COMPANY_CODE',
'         and course_id = :P26_COURSE;',
'         --',
'         delete from xxslm.XXSLM_QUESTIONS_OPTION',
'         where staff_id = :AP_STAFF_ID',
'         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'         and company_code = :AP_COMPANY_CODE',
'         and course_id = :P26_COURSE;',
'         --',
'          delete from xxslm.XXSLM_QUESTIONS_OPTION_TMP',
'         where staff_id = :AP_STAFF_ID',
'         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'         and company_code = :AP_COMPANY_CODE',
'         and course_id = :P26_COURSE;',
'         --',
'          update XXSLM.XXSLM_EXAM_SUMMARY',
'          SET STATUS =''STARTED'',',
'               --point = '''',',
'               RESULT = '''',',
'               score = ''''',
'           where test_id = :P26_SURVEY',
'              and company_code = :AP_COMPANY_CODE',
'              and COURSE_ID = :P26_COURSE',
'              and staff_id = :AP_STAFF_ID',
'              --and appraisal_id = :P26_APPRASIAL_ID',
'           ;',
'         Commit;',
'             :P26_RTK :='''';',
'             :P26_RETAKE :='''';',
'    End If;',
'    ',
'    ',
'    ',
'    XXSLM.XXSLM_QUESTION_OPTION_PROC(NVL(:P26_SURVEY,:P26_TEST_ID),:AP_COMPANY_CODE,:AP_STAFF_ID, :P26_COURSE);',
'    --',
'    select count(1) ',
'    into v_cnt',
'    from xxslm.XXSLM_EXAM_SUMMARY',
'    where test_id= NVL(:P26_SURVEY,:P26_TEST_ID) ',
'    and company_code = :AP_COMPANY_CODE',
'    and COURSE_ID = :P26_COURSE',
'    and staff_id = :AP_STAFF_ID;',
'    --',
'    ',
'    if v_cnt = 0 then ',
'    INSERT INTO XXSLM.XXSLM_EXAM_SUMMARY(No_of_Question,TEST_ID,TEST_NAME,START_DATE,END_DATE,TEST_DURATION,TIME_SPENT,STATUS, COMPANY_CODE, staff_id, point,COURSE_ID, Retake,PASS_MARK ,appraisal_id,ENROLLMENT)',
'    select count(a.question_id)No_of_Question,b.TEST_ID,b.TEST_NAME,b.START_DATE,b.END_DATE,td,'''',''STARTED'',:AP_COMPANY_CODE,:AP_STAFF_ID, sum(QUESTION_POINTS),:P26_COURSE, :P26_RETAKE, :P26_PASS_MARK,:P26_APPRASIAL_ID,''Yes''',
'    from xxslm.XXSLM_QUESTIONS a, xxslm.XXSLM_TEST b',
'    where a.test_id = b.test_id ',
'    and b.company_code = :AP_COMPANY_CODE',
'    and b.test_id= NVL(:P26_SURVEY,:P26_TEST_ID)',
'    group by b.TEST_ID,b.TEST_NAME,b.START_DATE,b.END_DATE;',
'    --',
'    --select xxslm.xxslm_time_track(nvl(:P26_HRS,0),nvl(:P26_MINS,0) ) into :P26_TEST_TIME from dual;',
'    else ',
'    null;',
'    end if;',
'    --',
'    update  XXSLM.XXSLM_QUESTIONS_OPTION set FREE_TEXT= '''' where QUESTION_TYPE = ''FREE_TEXT'';',
'    update  XXSLM.XXSLM_QUESTIONS_OPTION set OPTION_A = ''True'', OPTION_B =''False'' where QUESTION_TYPE = ''TRUE_FALSE'';',
'    COMMIT;',
':P26_QUEST_NUM := 1;',
'--:P26_HRS :='''';',
'--:P26_MINS := '''';',
'End;'))
,p_attribute_02=>'P26_SURVEY,P26_TEST_ID,P26_COURSE,P26_RETAKE,P26_PASS_MARK,P26_RKT,P26_HRS,P26_TEST_TIME,P26_NOW,P26_APPRASIAL_ID,P26_MINS'
,p_attribute_03=>'P26_TEST_ID,P26_SURVEY,P26_QUEST_NUM,P26_COURSE,P26_RETAKE,P26_PASS_MARK,P26_RKT,P26_MINS,P26_TEST_TIME,P26_NOW,P26_APPRASIAL_ID,P26_HRS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306924586040464231)
,p_event_id=>wwv_flow_imp.id(297306065154212172)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ID INTO :P26_ID',
'FROM XXSLM.XXSLM_EXAM_TRACKER',
'WHERE STATUS = ''STARTED''',
'and rownum = 1;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297307595385212174)
,p_event_id=>wwv_flow_imp.id(297306065154212172)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_QUEST_NUM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297307027815212173)
,p_event_id=>wwv_flow_imp.id(297306065154212172)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297112128316111349)
,p_name=>'New_3'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297294221316212145)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297112271843111350)
,p_event_id=>wwv_flow_imp.id(297112128316111349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_item apex_application_global.vc_arr2;',
'    v_id varchar2(100);',
'    v_text varchar2(100);',
'    v_row xxslm.XXSLM_QUESTION_RESPONSES_tst%rowtype;',
'',
'	',
'Begin',
'',
'       ',
'         delete from xxslm.XXSLM_QUESTION_RESPONSES_tst',
'        where staff_id = :AP_STAFF_ID;',
'        --',
'',
'    :P26_NXTPREV := :P26_QUEST_NUM + 1;',
' :P26_QUESTION_ID := :P26_QUESTION_ID;',
':P26_DONE := ''F'';',
' :P26_TIME_SPENT := :P26_TIME_SPENT;',
' APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_TIME_SPENT''',
'								 , p_value => :P26_TIME_SPENT);',
'               ',
'--',
'xxslm.xxslm_auto_score(:P26_COURSE,:P26_SURVEY,:AP_STAFF_ID);',
'--',
'    Update XXSLM.XXSLM_EXAM_SUMMARY',
'    set  STATUS = ''COMPLETED'',',
'        TIME_SPENT = xxslm.xxslm_time_spent(:P26_TIME_SPENT, :P26_HRS, :P26_MINS)',
'    where test_id = :P26_SURVEY ',
'    and COURSE_ID =:P26_COURSE',
'    and company_code = :AP_COMPANY_CODE;',
'    --',
'       Update XXSLM.XXSLM_EXAM_TRACKER',
'    set  TIME_SPENT = xxslm.xxslm_time_spent(:P26_TIME_SPENT, :P26_HRS, :P26_MINS)',
'    where test_id = :P26_SURVEY ',
'    and COURSE_ID =:P26_COURSE',
'    and company_code = :AP_COMPANY_CODE;',
'    --',
'   apex_application.g_print_success_message := ''<span style="color:GREEN">Survey Successful</span>'';',
'         owa_util.redirect_url(''f?p=&APP_ID.:1:&APP_SESSION.'');',
'         ',
'FOR i IN 1 .. HTMLDB_APPLICATION.g_f01.COUNT',
'  loop',
'         IF HTMLDB_APPLICATION.g_f01(i) is not null',
'         Then',
'        select HTMLDB_APPLICATION.g_f01(i)  into v_id from dual;',
'--',
'         insert into xxslm.XXSLM_QUESTION_RESPONSES_tst(QUESTION_ID,RESPONSE,STAFF_ID,COURSE_ID,TEST_ID,COMPANY_CODE,TIME)',
'         select nvl(:P26_QUESTION_ID,:P26_QST_ID), upper(v_id), :AP_STAFF_ID, :P26_COURSE, :P26_SURVEY, :AP_COMPANY_CODE,:P26_TIME_SPENT',
'         from dual where rownum = 1;',
'--',
'         update xxslm.XXSLM_QUESTIONS_OPTION x',
'         set response = (',
'                 select LISTAGG(RESPONSE,'':'') WITHIN GROUP (ORDER BY QUESTION_ID) ',
'                         FROM XXSLM.XXSLM_QUESTION_RESPONSES_tst ',
'                         where staff_id = x.staff_id',
'                         and company_code = x.company_code',
'                         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'                         and TEST_ID = x.TEST_ID',
'                         and QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID)',
'                         and QUESTION_ID = x.QUESTION_ID',
'                         and course_id = x.course_id',
'                     ),',
'              TIME = :P26_TIME_SPENT',
'         where QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID)',
'         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'         and staff_id = :AP_STAFF_ID',
'         and course_id = :P26_COURSE',
'         and company_code = :AP_COMPANY_CODE;',
'         commit;',
'         apex_application.g_print_success_message := ''<span style="color:GREEN">Survey Successful</span>'';',
'         owa_util.redirect_url(''f?p=&APP_ID.:1:&APP_SESSION.'');',
'         ',
'        else',
'        raise_application_error(-20001,''You must select an option'');',
'        end if;',
'    ',
'        -- and QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID);',
'',
'commit;',
'end loop;',
'--',
'/*      for i in (',
'             select b.meaning, b.lookup_CODE',
'            from xxhrms.xxhrms_lookup_types_tab a, ',
'            xxhrms.xxhrms_lookup_values_tab b',
'            where a.lookup_type_id = b.lookup_type_id',
'            --and application_id = :APP_ID',
'            and a.lookup_code = ''INDICATOR_SETTINGS''',
'      ) loop',
'          if i.LOOKUP_CODE IN(1,3,4) then',
'              XXADM.XXADM_NOTIFICATION_PK.NOTIFICATION(''PERF_UPDATE_TEST'','''',''LSupervior'','''');',
'          end if;',
'      end loop;',
'      */',
'END;'))
,p_attribute_02=>'P26_DONE,P26_TIME_SPENT,P26_COURSE'
,p_attribute_03=>'P26_DONE,P26_QUESTION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306399559932540248)
,p_event_id=>wwv_flow_imp.id(297112128316111349)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_receiver_name VARCHAR2(100);',
'v_receiver_email VARCHAR2(100);',
'pTYPE VARCHAR2(100);',
'v_subject VARCHAR2(1000);',
'v_from  VARCHAR2(100);',
'v_body  CLOB;',
'v_settings number;',
'v_EmployeeName VARCHAR2(1000);',
'v_SUPERVISOR VARCHAR2(1000);',
'vSuperID varchar2(20);',
'pBATCH_ID number;',
'V_APP_ID NUMBER;',
'--',
'CURSOR CUR',
'IS',
'SELECT UPDATE_SETTING,APPRAISAL_PLAN',
'FROM xxslm.xxslm_performance_indicator',
'WHERE COURSE_ID = :P26_COURSE',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'AND ROWNUM = 1;',
'',
'Begin',
'',
'		select nvl(xxadm.xxadm_Get_email(SUPERVISOR),''NoReply@gmail.com'')email',
'             ,fullname EmployeeName',
'             ,xxadm.XXADM_GET_FULLNAME(SUPERVISOR)SUPERVISOR,SUPERVISOR SuperID',
'        into v_receiver_email, v_EmployeeName,v_SUPERVISOR,vSuperID',
'		from xxhrms.xxhrms_assignments where STAFF_ID = :AP_STAFF_ID',
'     and company_code = :AP_COMPANY_CODE;',
'',
'',
'			IF UPPER(pTYPE) IS NOT NULL AND UPPER(pTYPE) = upper(''PERF_UPDATE_TEST'') THEN',
'					--New Requester',
'               -- IF ( SUBSTR(upper(i.NOTIFY_TYPE),1,3) = SUBSTR (upper(pNOTETPYE),1,3) AND SUBSTR (upper(pNOTETPYE),1,3)  LIKE SUBSTR (upper(''NEW%''),1,3) ) Then ',
'					v_receiver_name := v_SUPERVISOR;',
'					v_receiver_email := v_receiver_email;',
'                    ',
'					 select EMAIL_SUBJECT,EMAIL_FROM, replace ',
'						   (replace ',
'								(replace',
'									 (replace(',
'										replace',
'										 (replace( ',
'										  replace(EMAIL_BODY,'':NOT_APPROVER'',v_receiver_name),--Emp_Nmae',
'												 '':NOT_VALUE'',''''),--Leave_Type',
'												  '':NOT_EMPNAME '',v_EmployeeName), --name of reliver',
'												 '':NOT_LVALLOWANCE'',''''), -- not in use',
'												 '':NOT_YEAR_SERVICE'',''''),',
'												 '':NOT_STARTDATE'',nvl('''','''')),',
'												 '':NOT_ENDATE'',nvl('''','''')',
'						  ) ',
'					into v_subject, v_from ,v_body ',
'					from XXHRMS.XXHRMS_EMAIL_TEMPLATE',
'					where upper(auth_type) = upper(pTYPE) and upper(NOTIFY_TYPE)  LIKE upper(''LSupervior%'');',
'                    --',
'                    open cur;',
'                    fetch cur into v_settings,V_APP_ID;',
'                    close cur;',
'                    --',
'          if (v_settings =1 or v_settings=3 or v_settings=4) then',
'              					  apex_mail.send(',
'										p_to        => v_receiver_email,',
'										p_from      => v_from,',
'										p_body      => v_body,',
'										p_body_html => v_body,',
'										p_bcc       =>''htemitayo@softalliance.com,odawodu@softalliance.com'',',
'										p_subj      => v_subject',
'									 );',
'						 apex_mail.push_queue; ',
'            end if;',
'            --',
'            if (v_settings = 4) then',
'                    xxpermgt.XXPERMGT_NOTIF_AUTO_SCORE(:AP_STAFF_ID,V_APP_ID,:P26_COURSE);',
'            end if;',
'            ',
'            If (v_settings = 1) then',
'                         select nvl(max(TRANS_ID)+1,1) into pBATCH_ID ',
'                         from xxhrms.XXHRMS_APPROVAL_TAB;',
'                         --',
'						INSERT INTO xxhrms.XXHRMS_APPROVAL_TAB (TRANS_TYPE,TRANS_ID,APR_LVL,APR_ID,STATUS)',
'						VALUES (''PERF_UPDATE_TEST'',pBATCH_ID,1,vSuperID,''PENDING'');',
'                         --',
'                         commit;',
'			End if;	',
'      Else',
'      null;',
'      End if;',
'Exception ',
'when no_data_found then null;',
'when others then null;',
'END;       '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297317901092577501)
,p_event_id=>wwv_flow_imp.id(297112128316111349)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(301259852947549014)
,p_name=>'New_4'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(301259749009549013)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(301259956318549015)
,p_event_id=>wwv_flow_imp.id(301259852947549014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_item apex_application_global.vc_arr2;',
'    v_id varchar2(100);',
'    v_text varchar2(100);',
'    v_row xxslm.XXSLM_QUESTION_RESPONSES_tst%rowtype;',
'',
'	',
'Begin',
'',
'       ',
'         delete from xxslm.XXSLM_QUESTION_RESPONSES_tst',
'        where staff_id = :AP_STAFF_ID;',
'       -- and course_id = :P26_COURSE',
'      --  and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY);',
'        --',
'',
'    :P26_NXTPREV := :P26_QUEST_NUM + 1;',
' :P26_QUESTION_ID := :P26_QUESTION_ID;',
':P26_DONE := ''F'';',
'--',
'xxslm.xxslm_auto_score(:P26_COURSE,:P26_SURVEY,:AP_STAFF_ID);',
'--',
'    Update XXSLM.XXSLM_EXAM_SUMMARY',
'    set  STATUS = ''COMPLETED''--,',
'        --TIME_SPENT = xxslm.xxslm_time_spent(:P26_TIME_SPENT, :P26_HRS, :P26_MINS)',
'    where test_id = :P26_SURVEY ',
'    and COURSE_ID =:P26_COURSE',
'    and company_code = :AP_COMPANY_CODE;',
'    --',
'   apex_application.g_print_success_message := ''<span style="color:GREEN">Survey Successful</span>'';',
'         owa_util.redirect_url(''f?p=&APP_ID.:1:&APP_SESSION.'');',
'         ',
'FOR i IN 1 .. HTMLDB_APPLICATION.g_f01.COUNT',
'  loop',
'         IF HTMLDB_APPLICATION.g_f01(i) is not null',
'         Then',
'        select HTMLDB_APPLICATION.g_f01(i)  into v_id from dual;',
'--',
'         insert into xxslm.XXSLM_QUESTION_RESPONSES_tst(QUESTION_ID,RESPONSE,STAFF_ID,COURSE_ID,TEST_ID,COMPANY_CODE)',
'         select nvl(:P26_QUESTION_ID,:P26_QST_ID), upper(v_id), :AP_STAFF_ID, :P26_COURSE, :P26_SURVEY, :AP_COMPANY_CODE',
'         from dual where rownum = 1;',
'--',
'         update xxslm.XXSLM_QUESTIONS_OPTION x',
'         set response = (',
'                 select LISTAGG(RESPONSE,'':'') WITHIN GROUP (ORDER BY QUESTION_ID) ',
'                         FROM XXSLM.XXSLM_QUESTION_RESPONSES_tst ',
'                         where staff_id = x.staff_id',
'                         and company_code = x.company_code',
'                         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'                         and TEST_ID = x.TEST_ID',
'                         and QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID)',
'                         and QUESTION_ID = x.QUESTION_ID',
'                         and course_id = x.course_id',
'                     )--,',
'              --TIME = :P26_TIME_SPENT',
'         where QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID)',
'         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'         and staff_id = :AP_STAFF_ID',
'         and course_id = :P26_COURSE',
'         and company_code = :AP_COMPANY_CODE;',
'         commit;',
'         apex_application.g_print_success_message := ''<span style="color:GREEN">Survey Successful</span>'';',
'         owa_util.redirect_url(''f?p=&APP_ID.:1:&APP_SESSION.'');',
'         ',
'        else',
'        raise_application_error(-20001,''You must select an option'');',
'        end if;',
'    ',
'        -- and QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID);',
'',
'commit;',
'end loop;',
' ',
'END;'))
,p_attribute_02=>'P26_DONE,P26_TIME_SPENT,P26_COURSE'
,p_attribute_03=>'P26_DONE,P26_QUESTION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306399617105540249)
,p_event_id=>wwv_flow_imp.id(301259852947549014)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_receiver_name VARCHAR2(100);',
'v_receiver_email VARCHAR2(100);',
'pTYPE VARCHAR2(100);',
'v_subject VARCHAR2(1000);',
'v_from  VARCHAR2(100);',
'v_body  CLOB;',
'v_settings number;',
'v_EmployeeName VARCHAR2(1000);',
'v_SUPERVISOR VARCHAR2(1000);',
'vSuperID varchar2(20);',
'pBATCH_ID number;',
'--',
'CURSOR CUR',
'IS',
'SELECT UPDATE_SETTING',
'FROM xxslm.xxslm_performance_indicator',
'WHERE COURSE_ID = :P26_COURSE',
'and COMPANY_CODE = :AP_COMPANY_CODE',
'AND ROWNUM = 1;',
'',
'Begin',
'',
'		select nvl(xxadm.xxadm_Get_email(SUPERVISOR),''NoReply@gmail.com'')email',
'             ,fullname EmployeeName',
'             ,xxadm.XXADM_GET_FULLNAME(SUPERVISOR)SUPERVISOR,SUPERVISOR SuperID',
'        into v_receiver_email, v_EmployeeName,v_SUPERVISOR,vSuperID',
'		from xxhrms.xxhrms_assignments where STAFF_ID = :AP_STAFF_ID',
'     and company_code = :AP_COMPANY_CODE;',
'',
'',
'			IF UPPER(pTYPE) IS NOT NULL AND UPPER(pTYPE) = upper(''PERF_UPDATE_TEST'') THEN',
'					--New Requester',
'               -- IF ( SUBSTR(upper(i.NOTIFY_TYPE),1,3) = SUBSTR (upper(pNOTETPYE),1,3) AND SUBSTR (upper(pNOTETPYE),1,3)  LIKE SUBSTR (upper(''NEW%''),1,3) ) Then ',
'					v_receiver_name := v_SUPERVISOR;',
'					v_receiver_email := v_receiver_email;',
'                    ',
'					 select EMAIL_SUBJECT,EMAIL_FROM, replace ',
'						   (replace ',
'								(replace',
'									 (replace(',
'										replace',
'										 (replace( ',
'										  replace(EMAIL_BODY,'':NOT_APPROVER'',v_receiver_name),--Emp_Nmae',
'												 '':NOT_VALUE'',''''),--Leave_Type',
'												  '':NOT_EMPNAME '',v_EmployeeName), --name of reliver',
'												 '':NOT_LVALLOWANCE'',''''), -- not in use',
'												 '':NOT_YEAR_SERVICE'',''''),',
'												 '':NOT_STARTDATE'',nvl('''','''')),',
'												 '':NOT_ENDATE'',nvl('''','''')',
'						  ) ',
'					into v_subject, v_from ,v_body ',
'					from XXHRMS.XXHRMS_EMAIL_TEMPLATE',
'					where upper(auth_type) = upper(pTYPE) and upper(NOTIFY_TYPE)  LIKE upper(''LSupervior%'');',
'                    --',
'                    open cur;',
'                    fetch cur into v_settings;',
'                    close cur;',
'                    --',
'          if (v_settings =1 or v_settings=3 or v_settings=4) then',
'              					  apex_mail.send(',
'										p_to        => v_receiver_email,',
'										p_from      => v_from,',
'										p_body      => v_body,',
'										p_body_html => v_body,',
'										p_bcc       =>''htemitayo@softalliance.com,odawodu@softalliance.com'',',
'										p_subj      => v_subject',
'									 );',
'						 apex_mail.push_queue; ',
'                         --',
'                         select nvl(max(TRANS_ID)+1,1) into pBATCH_ID ',
'                         from xxhrms.XXHRMS_APPROVAL_TAB;',
'                         --',
'						INSERT INTO xxhrms.XXHRMS_APPROVAL_TAB (TRANS_TYPE,TRANS_ID,APR_LVL,APR_ID,STATUS)',
'						VALUES (''PERF_UPDATE_TEST'',pBATCH_ID,1,vSuperID,''PENDING'');',
'                         --',
'                         commit;',
'			End if;	',
'      Else',
'      null;',
'      End if;',
'Exception ',
'when no_data_found then null;',
'when others then null;',
'END;       '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(301260003411549016)
,p_event_id=>wwv_flow_imp.id(301259852947549014)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(301260157479549017)
,p_name=>'New_5'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(301260258126549018)
,p_event_id=>wwv_flow_imp.id(301260157479549017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(301259749009549013)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(301881494027824808)
,p_name=>'New_6'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(297300435423212153)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P26_HRS is not null AND :P26_MINS is not null'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(301881587279824809)
,p_event_id=>wwv_flow_imp.id(301881494027824808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select xxslm.xxslm_time_track(nvl(:P26_HRS,0),nvl(:P26_MINS,0) ) into :P26_TEST_TIME from dual;',
'exception when others then',
'null;',
'end;'))
,p_attribute_02=>'P26_HRS,P26_MINS,P26_TIME_SPENT'
,p_attribute_03=>'P26_HRS,P26_MINS,P26_TIME_SPENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(297301926842212166)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AnswerQuestion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_item apex_application_global.vc_arr2;',
'    v_id varchar2(100);',
'    v_text varchar2(100);',
'    v_row xxslm.XXSLM_QUESTION_RESPONSES_tst%rowtype;',
'   ',
'',
'	',
'Begin',
'         delete from xxslm.XXSLM_QUESTION_RESPONSES_tst',
'        where staff_id = :AP_STAFF_ID;',
'       -- and course_id = :P26_COURSE',
'       -- and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY);',
'',
'FOR i IN 1 .. HTMLDB_APPLICATION.g_f01.COUNT',
'  loop',
'         if HTMLDB_APPLICATION.g_f01(i) is not null',
'        then',
'        select HTMLDB_APPLICATION.g_f01(i)  into v_id from dual;',
'        ',
'         insert into xxslm.XXSLM_QUESTION_RESPONSES_tst(QUESTION_ID,RESPONSE,STAFF_ID,COURSE_ID,TEST_ID,COMPANY_CODE,TIME)',
'         select nvl(:P26_QUESTION_ID,:P26_QST_ID), upper(v_id), :AP_STAFF_ID, :P26_COURSE, :P26_SURVEY, :AP_COMPANY_CODE,:P26_TIME_SPENT',
'         from dual where rownum = 1;',
'         ---',
'   /*      select LISTAGG(RESPONSE,'','') WITHIN GROUP (ORDER BY QUESTION_ID) ',
'         FROM XXSLM_QUESTION_RESPONSES_tst ',
'         where staff_id = :AP_STAFF_ID',
'         and company_code = :AP_COMPANY_CODE',
'         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'         and QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID)',
'         */',
'         --',
'         update xxslm.XXSLM_QUESTIONS_OPTION x',
'         set response = (',
'                 select LISTAGG(RESPONSE,'':'') WITHIN GROUP (ORDER BY QUESTION_ID) ',
'                         FROM XXSLM.XXSLM_QUESTION_RESPONSES_tst ',
'                         where staff_id = x.staff_id',
'                         and company_code = x.company_code',
'                         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'                         and TEST_ID = x.TEST_ID',
'                         and QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID)',
'                         and QUESTION_ID = x.QUESTION_ID',
'                         and course_id = x.course_id',
'                     ),',
'              TIME = :P26_TIME_SPENT',
'         where QUESTION_ID = nvl(:P26_QUESTION_ID,:P26_QST_ID)',
'         and TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'         and staff_id = :AP_STAFF_ID',
'         and course_id = :P26_COURSE',
'         and company_code = :AP_COMPANY_CODE;',
'         ',
'         --',
'          update xxslm.XXSLM_EXAM_SUMMARY',
'          set TIME_SPENT = xxslm.xxslm_time_spent(:P26_TIME_SPENT, :P26_HRS, :P26_MINS)',
'          where TEST_ID = NVL(:P26_TEST_ID,:P26_SURVEY)',
'          and staff_id = :AP_STAFF_ID',
'          and course_id = :P26_COURSE',
'          and company_code = :AP_COMPANY_CODE;',
'         --',
'         ',
'         IF :P26_DONE = ''F'' THEN',
'             xxslm.xxslm_auto_score(:P26_COURSE,:P26_SURVEY,:AP_STAFF_ID);',
'             apex_application.g_print_success_message := ''<span style="color:GREEN">Survey Successful</span>'';',
'        End If;',
'        else',
'        raise_application_error(-20001,''You must answer the question'');',
'        End if;',
'   ',
'commit;',
'end loop;',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>297301926842212166
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(297318227770577504)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.set_session_state(',
'								   p_name  => ''P26_TEST_TIME''',
'								 , p_value => 6300000);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>297318227770577504
);
wwv_flow_imp.component_end;
end;
/
