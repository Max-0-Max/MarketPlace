prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_name=>'create products'
,p_step_title=>'create products'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const info = document.getElementById("info");',
'const toAgree = document.getElementById("agree");',
'const toNextStep = document.getElementById("next-step");',
'const veryImportantRead = document.getElementById("very-important-read");',
'',
'// Check if user has scrolled the element to the bottom',
'function isRead(element) {',
'  return (',
'    Math.abs(element.scrollHeight - element.clientHeight - element.scrollTop) <=',
'    1',
'  );',
'}',
'',
'function checkScrollToBottom(element) {',
'  if (isRead(element)) {',
'    info.innerText = "You have read all text. Agree to continue.";',
'    toAgree.disabled = false;',
'  }',
'}',
'',
'toAgree.addEventListener("change", (e) => {',
'  toNextStep.disabled = !e.target.checked;',
'});',
'',
'veryImportantRead.addEventListener("scroll", () => {',
'  checkScrollToBottom(veryImportantRead);',
'});',
'',
'toNextStep.addEventListener("click", () => {',
'  if (toAgree.checked) {',
'    toNextStep.value = "Done!";',
'  }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#info {',
'  margin: 5px;',
'  display: inline-block;',
'  font-style: italic;',
'}',
'',
'#very-important-read {',
'  height: 130px;',
'  padding: 5px;',
'  border: 2px solid #00b4c5;',
'  border-radius: 5px;',
'  overflow: scroll;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99367684581672416)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5431141257166683)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<form id="form" name="registration">',
'  <p id="info">Read all text to agree</p>',
'  <div id="very-important-read">',
'    <p>',
'      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
'      tempor incididunt ut labore et dolore magna aliqua. Feugiat sed lectus',
'      vestibulum mattis. Id consectetur purus ut faucibus pulvinar elementum',
'      integer enim neque. Metus vulputate eu scelerisque felis imperdiet. Massa',
'      massa ultricies mi quis hendrerit dolor magna eget est. Rhoncus aenean vel',
'      elit scelerisque mauris pellentesque. Volutpat est velit egestas dui id',
'      ornare arcu. Id cursus metus aliquam eleifend mi in. Condimentum lacinia',
'      quis vel eros donec ac. Feugiat pretium nibh ipsum consequat nisl vel',
'      pretium lectus.',
'    </p>',
'    <p>',
'      Sit amet volutpat consequat mauris nunc congue nisi vitae. Viverra',
'      accumsan in nisl nisi scelerisque. Enim ut tellus elementum sagittis',
'      vitae. Dolor sed viverra ipsum nunc aliquet bibendum enim facilisis. Nisi',
'      scelerisque eu ultrices vitae. Sem fringilla ut morbi tincidunt augue',
'      interdum velit. Senectus et netus et malesuada fames ac turpis egestas.',
'      Nunc non blandit massa enim nec. At augue eget arcu dictum varius duis at.',
'      Dictumst quisque sagittis purus sit amet. Ut eu sem integer vitae justo.',
'      Mollis aliquam ut porttitor leo a diam sollicitudin. Mollis nunc sed id',
'      semper risus in. Eu volutpat odio facilisis mauris sit. Augue interdum',
'      velit euismod in pellentesque massa placerat duis. Aliquam faucibus purus',
'      in massa tempor nec feugiat. Nisl rhoncus mattis rhoncus urna neque',
'      viverra justo. Leo duis ut diam quam nulla. Ultrices dui sapien eget mi',
'      proin sed libero enim.',
'    </p>',
'    <p>',
'      Cras adipiscing enim eu turpis egestas. Est ultricies integer quis auctor',
'      elit. Tempor id eu nisl nunc mi ipsum. Non nisi est sit amet facilisis.',
'      Nisl suscipit adipiscing bibendum est ultricies integer quis. Habitant',
'      morbi tristique senectus et netus et malesuada. Etiam erat velit',
'      scelerisque in dictum non consectetur a erat. Diam sollicitudin tempor id',
'      eu nisl. Aenean vel elit scelerisque mauris pellentesque pulvinar',
'      pellentesque habitant. A pellentesque sit amet porttitor. Viverra aliquet',
'      eget sit amet tellus cras. Eu ultrices vitae auctor eu.',
'    </p>',
'    <p>',
'      Fames ac turpis egestas sed tempus. Id donec ultrices tincidunt arcu non',
'      sodales. Congue mauris rhoncus aenean vel elit scelerisque mauris',
'      pellentesque. Velit scelerisque in dictum non consectetur a erat nam.',
'      Auctor elit sed vulputate mi sit amet mauris commodo. Mauris ultrices eros',
'      in cursus turpis massa tincidunt. Dui sapien eget mi proin sed libero enim',
'      sed faucibus. Ipsum dolor sit amet consectetur adipiscing elit',
'      pellentesque habitant. Amet massa vitae tortor condimentum. Feugiat nisl',
'      pretium fusce id velit. Malesuada proin libero nunc consequat interdum',
'      varius sit. Quam nulla porttitor massa id neque aliquam vestibulum morbi',
'      blandit. Gravida arcu ac tortor dignissim convallis aenean et tortor at.',
'      Dapibus ultrices in iaculis nunc sed. Fermentum et sollicitudin ac orci',
'      phasellus egestas tellus. Proin libero nunc consequat interdum varius sit',
'      amet mattis. Sed viverra ipsum nunc aliquet bibendum.',
'    </p>',
'  </div>',
'  <p>',
'    <input type="checkbox" id="agree" name="accept" disabled />',
'    <label for="agree">I agree</label>',
'    <input type="submit" id="next-step" value="Next" disabled />',
'  </p>',
'</form>',
''');'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp.component_end;
end;
/
