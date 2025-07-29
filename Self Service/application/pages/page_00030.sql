prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_name=>'Course Details'
,p_alias=>'BE1'
,p_step_title=>'Course Details'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>'<link rel="stylesheet" href="#WORKSPACE_IMAGES#videojs/video-js.min.css" />'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#videojs/video.min.js',
'#WORKSPACE_IMAGES#progressbar.min.js',
'https://www.youtube.com/iframe_api'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'const viewerJSURL = "#WORKSPACE_IMAGES#ViewerJS/index.html";',
'const staff_id = $v(''STAFF_ID'');',
'',
'const contents = [];',
'const progressArr = [];',
'const progress_Bars = new Map();',
'',
'let current_content_id;',
'let isVideoJs = false;',
'let isYoutube = false;',
'let trackInterval = null;',
'',
'let index = 0;',
'',
'function complete_pretest_modal(){',
'    const html = `',
'        <div class="lms-modal">',
'            <div class="lms-modal-div">',
'                <h4>Please complete</h4>',
'                <p></p>',
'            </div>',
'        </div>',
'    `;',
'    alert("This course has a pre-assessment test. Please complete that first before taking the course");',
'}',
'',
'function disposePlayer(){',
'    const player = videojs(''my-player'');',
'    player.dispose();',
'}',
'',
'function stopTracking(){',
'    if(trackInterval != null){',
'        clearInterval(trackInterval);',
'        trackInterval = null;',
'    }',
'}',
'',
'function trackVideoJSProgress(vidref){',
'',
'    const duration = vidref.duration();',
'    let highestTime = 0;',
'    const staff_id = $v(''P30_STAFF_ID''); ',
'    const company_code = $v(''P30_COMPANY_CODE'');',
'    ',
'    const intervalHandler = () => {',
'',
'        const currentTime = vidref.currentTime();',
'        if(currentTime < highestTime || currentTime == 0) return; // ignore seeking video backwards during a session',
'        highestTime = currentTime;',
'        //const percentage = Math.floor( (currentTime / duration ) * 100 );',
'        updateProgress(currentTime, current_content_id, staff_id, company_code, vidref.duration());',
'    };',
'    ',
'    //const intervalseconds = Math.ceil( duration / 20 ); ',
'    //console.log(intervalseconds);',
'    trackInterval = setInterval(intervalHandler, 10 * 1000);',
'}',
'',
'function playvideo(){',
'    const vidref = videojs(''my-player'');',
'    vidref.on(''ready'', function() {',
'        const startTime = getContentProgress(current_content_id, vidref.duration());',
'        if(startTime !== null -1){',
'            // continue from where I stopped',
'            vidref.currentTime(startTime);',
'        }',
'        //vidref.play();',
'        trackVideoJSProgress(vidref);',
'    });',
'    vidref.on(''ended'', function() {',
'        next();',
'    });',
'}',
'',
'function showContent(){',
'    if(course_has_pretest != null && user_completed_pretest !== null ){',
'        if(course_has_pretest === true && user_completed_pretest === false){',
'            complete_pretest_modal();',
'            return;',
'        }',
'    }',
'    const item = contents[index];',
'    let url = item.CONTENT_URL;',
'    if(isVideoJs === true){',
'        disposePlayer();',
'    }',
'    if(isYoutube === true){',
'        stopYoutube();',
'    }',
'    ',
'    isVideoJs = false;',
'    stopTracking();',
'    ',
'    current_content_id = item.CONTENT_ID;',
'    if(!url){',
'        const content_id = item.CONTENT_ID;',
'        const name = item.NAME;',
'        url = `${location.protocol}//${location.host}/softsuite/lms/media/${content_id}/${name}`;',
'    }',
'    ',
'    if(url.indexOf(''youtube'') !== -1){',
'        //console.log("detected youtube");',
'        //const vid = `<iframe type="text/html" src=${url} width="100%" height="400px" allowfullscreen></iframe>`;',
'        //$("#content-display").html(vid);',
'        loadYoutube(url);',
'        return;',
'    }',
'    ',
'    const parts = url.split(".");',
'    console.log(parts);',
'    const ext = parts[parts.length - 1];',
'    ',
'    switch(ext){',
'        case "jpg":',
'        case "jpeg":',
'        case "gif":',
'        case "png": ',
'            const image = `<img src="${url}" style="width: 100%; height: 100%;" />`;',
'            $("#content-display").html(image);',
'        break;',
'        case "mp4":',
'            const vid = `',
'                    <video id="my-player" controls autoplay class="video-js">',
'                        <source src="${url}" type="video/mp4">',
'                    </video>`;',
'            $("#content-display").html(vid);',
'            isVideoJs = true;',
'            playvideo();',
'        break;',
'        case "docx":',
'        case "xlsx":',
'        case "ppt": {',
'            const curl = `${viewerJSURL}#${url}`;',
'            const iframe = `<iframe id="viewerframe" src = ${curl} allowfullscreen webkitallowfullscreen width="100%" height="400px"></iframe>`;',
'            $("#content-display").html(iframe);',
'        }',
'        break;',
'        case "pdf": {',
'            const curl = `${viewerJSURL}#${url}`;',
'            const iframe = `<iframe id="viewerframe" src = ${curl} allowfullscreen webkitallowfullscreen width="100%" height="400px"></iframe>`;',
'            $("#content-display").html(iframe);',
'            ',
'            setTimeout(initDocument, 2000);',
'        }',
'        break;',
'    }',
'}',
'',
'function previous(){',
'    if(index == 0) return;',
'    index -= 1;',
'    showContent();',
'}',
'',
'function next(){',
'    if(index == (contents.length - 1) ){index = 0; }',
'    index += 1;',
'    showContent();',
'}',
'',
'function loadProgress(){',
'     ',
'    const progressbars = document.querySelectorAll(''.progressbar'');',
'    progressbars.forEach(progressbar => {',
'        const id = progressbar.getAttribute(''id'');',
'        const parts = id.toString().split("_");',
'        const c_id = Number(parts[1]);',
'        const progressItem = progressArr.find(item => item.content_id == c_id);',
'        const fraction = progressItem.progress / progressItem.duration;',
'        const bar = new ProgressBar.Line(''#'' + id, {',
'          strokeWidth: 2,',
'          easing: ''easeInOut'',',
'          color: ''#3486eb'',',
'          trailColor: ''#eee'',',
'          trailWidth: 2,',
'        });',
'        bar.animate(fraction);',
'        progress_Bars.set(id, bar);',
'    });',
'}',
'',
'let course_has_pretest = null;',
'let user_completed_pretest = null;',
'',
'function getProgress(){',
'    const content_ids = contents.map(item => item.CONTENT_ID);',
'    const ids = content_ids.map(id => id.toString().trim()).join(",");',
'    ',
'    const course_id = $v(''P30_COURSE_ID'');',
'    const staff_id = $v(''P30_STAFF_ID''); ',
'    const company_code = $v(''P30_COMPANY_CODE'');',
'    $.ajax({',
'        url: `${location.protocol}//${location.host}/softsuite/lms/lms-api/content-progress/${company_code}/${staff_id}/${course_id}/${ids}`,',
'        type: ''GET'',',
'        datatype: "application/json"',
'    })',
'    .done(result => {',
'        const items = result.items;',
'        items.forEach(item => {',
'            progressArr.push(item);',
'        });',
'        course_has_pretest = result.course_has_pretest;',
'        user_completed_pretest = result.staff_has_completed_pretest;',
'        ',
'        loadProgress();',
'        ',
'        if(course_has_pretest === true && user_completed_pretest === false){',
'            complete_pretest_modal();',
'        }else{',
'            showContent();',
'        }',
'    })',
'    .fail(error => {',
'        console.log(error);',
'    });',
'}',
'',
'function updateProgress(progress, content_id, staff_id, company_code, duration){',
'    const progressIndex = progressArr.findIndex(item => item.content_id == content_id);',
'    const percentage = (progress / duration) * 100;',
'    const course_id = $v(''P30_COURSE_ID'');',
'    console.log(course_id);',
'    ',
'    const _progress = progressArr[progressIndex].progress;',
'    if(progress < _progress) return;',
'    ',
'    $.ajax({',
'        url: `${location.protocol}//${location.host}/softsuite/lms/lms-api/content-progress`,',
'        type: ''POST'',',
'        dataType: "json",',
'        contentType: "application/json; charset=utf-8",',
'        data: JSON.stringify({',
'            p_company_code: company_code,',
'            p_staff_id: staff_id,',
'            p_content_id: content_id,',
'            p_progress: progress,',
'            p_duration: duration,',
'            p_course_id: Number(course_id),',
'            p_percentage: percentage',
'        })',
'    })',
'    .done(result => {',
'        if(progressIndex !== -1){',
'            progressArr[progressIndex].progress = progress;',
'            updateProgressBar(content_id, progress, duration);',
'        }',
'    })',
'    .fail(error => {',
'        console.log(error);',
'    });',
'}',
'',
'function updateProgressBar(content_id, progress, total){',
'    const progressItem = progressArr.find(item => item.content_id == content_id);',
'    const fraction = progress / total;',
'    const id = "pbar_" + content_id;',
'    const bar = progress_Bars.get(id);',
'    bar.animate(fraction);',
'            ',
'}',
'',
'function getContentProgress(content_id){',
'    const progressItem = progressArr.find(item => item.content_id == content_id);',
'    if(progressItem === undefined) return -1;',
'    if(!progressItem.progress) return -1;',
'    //const progressPercent = progressItem.progress;',
'    // find percentage of duration',
'    //const seconds = (progress / 100) * duration;',
'    return progressItem.progress;',
'}',
'',
'// --------------- functions for pds viewing',
'let iframe;',
'function pdfProgressInterval(){',
'    if(iframe == null) iframe = document.querySelector("#viewerframe");',
'    const pageNumber = iframe.contentDocument.querySelector("#pageNumber");',
'    const page = Number(pageNumber.value);',
'',
'    const totalPageDisplay = iframe.contentDocument.querySelector("#numPages");',
'    let totalPagesText = totalPageDisplay.textContent;',
'    totalPagesText = totalPagesText.replace("of ", "");',
'    const totalPages = Number(totalPagesText);',
'    ',
'    const staff_id = $v(''P30_STAFF_ID''); ',
'    const company_code = $v(''P30_COMPANY_CODE'');',
'',
'    updateProgress(page, current_content_id, staff_id, company_code, totalPages);',
'}',
'',
'function setStartpage( page ){',
'',
'    if(iframe == null) iframe = document.querySelector("#viewerframe");',
'    const pageNumber = iframe.contentDocument.querySelector("#pageNumber");',
'    pageNumber.value = page;',
'',
'    const event = new Event("change");',
'    pageNumber.dispatchEvent(event);',
'}',
'',
'function initDocument(){',
'    // get page from progress',
'    const progressItem = progressArr.find(item => item.content_id == current_content_id);',
'    if(progressItem){',
'        console.log(''pitem found'');',
'        const progress = progressItem.progress;',
'        if(progress != 0) setStartpage(progress);',
'    }',
'    trackInterval = setInterval(pdfProgressInterval, 10 * 1000);',
'}',
'',
'// ----------- Youtube',
'let youtubeAPIReady = false;',
'let player;',
'let youtubeSeconds = null;',
'',
'function onYouTubeIframeAPIReady(){',
'    youtubeAPIReady = true;',
'}',
'',
'function loadYoutube(url){',
'    isYoutube = true;',
'    const progress = getContentProgress(current_content_id);',
'    ',
'    const vidId = url.replace("https://www.youtube.com/embed/", "");',
'    if(progress > 0) youtubeSeconds = progress;',
'    player = new YT.Player(''content-display'', {',
'          height: ''390'',',
'          width: ''640'',',
'          videoId: vidId,',
'          origin: location.href,',
'          events: {',
'            ''onReady'': youtubePlayerReady,',
'            ''onStateChange'': youtubePlayerStateChange',
'          }',
'    });',
'}',
'',
'function youtubePlayerReady(event){',
'    if(youtubeSeconds !== null) player.seekTo(youtubeSeconds);',
'    //player.playVideo();',
'    trackInterval = setInterval(youtubeInterval, 10 * 1000);',
'}',
'',
'function stopYoutube(){',
'    isYoutube = false;',
'    player.destroy();',
'    clearInterval(trackInterval);',
'    player = undefined;',
'    youtubeSeconds = null;',
'    //youtubeAPIReady = false;',
'}',
'',
'function youtubeInterval(){',
'    const duration = player.getDuration();',
'    const timewatched = player.getCurrentTime();',
'    const staff_id = $v(''P30_STAFF_ID''); ',
'    const company_code = $v(''P30_COMPANY_CODE'');',
'    ',
'    updateProgress(timewatched, current_content_id, staff_id, company_code, duration);',
'}',
'',
'function youtubePlayerStateChange(event){',
'    // do nothing',
'}',
'',
'function c_completed(){',
'  let completed = true;',
'  progressArr.forEach(item => {',
'    if(item.progress < item.duration) completed = false;',
'  });',
'  return completed;',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var chk = apex.item("P30_STATUS").getValue();',
'setInterval("jQuery(''#post'').trigger(''apexrefresh'');", 1000);',
'/*if (chk == ''100'')',
'    {',
'        alert(''Completed, click ok to close dialog'');',
'        apex.submit();',
'    }*/',
'',
'',
'   ',
'',
'                        ',
'                           ',
'',
'                           ',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.lms-modal {',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 100%;',
'    z-index: 10000;',
'    background-color: rgba(0,0,0, 0.6);',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'}',
'',
'.lms-moda-div {',
'    background-color: #fff;',
'    border-radius: 20px;',
'    width: 400px;',
'    height: 400px;',
'    padding: 30px;',
'}',
'.u-Processing',
'{',
'display:none',
'}',
'',
'',
''))
,p_step_template=>wwv_flow_imp.id(2475784768224044)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(299203185756253547)
,p_name=>'Learning Administrators'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select *from xxslm.XXSLM_COURSE_ADMIN where COURSE_ID = :P30_COURSE_ID_1'
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
 p_id=>wwv_flow_imp.id(299203299435253548)
,p_query_column_id=>1
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(299203328919253549)
,p_query_column_id=>2
,p_column_alias=>'STAFF_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(299203478996253550)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name  d, person_id r',
'from xxhrms.XXHRMS_PEOPLE_F',
'where sysdate between EFFECTIVE_START_DATE and EFFECTIVE_END_DATE and COMPANY_CODE = :AP_COMPANY_CODE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300071636952735001)
,p_query_column_id=>4
,p_column_alias=>'COURSE_ACCESS'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300071734911735002)
,p_query_column_id=>5
,p_column_alias=>'INS_BY'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300071818078735003)
,p_query_column_id=>6
,p_column_alias=>'OFFERING_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(300074780712735032)
,p_name=>'Re-Take Test'
,p_region_name=>'rtktest'
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--hideNoPagination'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT',
'a.TEST_NAME  as alert_title,',
'a.TEST_ID,',
'a.RESULT ,',
'null alert_action,',
'null alert_type,',
'''Score ''|| nvl(a.SCORE,0)||'' out of ''|| b.PASS_MARK  ALERT_DESC,',
'b.Retake,a.NO_OF_QUESTION,b.PASS_MARK,a.COURSE_ID,d.Hrs,d.Mins',
'from xxslm.XXSLM_EXAM_SUMMARY a, XXSLM.XXSLM_COURSE_QUESTIONS b, xxslm.xxslm_test d',
'where a.STAFF_ID = :AP_STAFF_ID',
'and a.COMPANY_CODE = :AP_COMPANY_CODE',
'and a.COURSE_ID	= :P30_COURSE_ID',
'and b.RETAKE= ''Yes''',
'and Result = ''Failed''',
'and a.test_id = d.test_id',
'and d.COMPANY_CODE = a.COMPANY_CODE',
'and a.COURSE_ID = b.COURSE_ID',
'--and :P30_SETTING != ''YES''',
'--and ''Failed'' = CASE WHEN PASS_MARK > SCORE THEN ''Failed'' End'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_COURSE_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2534920060224087)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Available Test for this Course'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300076314293735048)
,p_query_column_id=>1
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Title'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP,26:P26_RKT,P26_TEST_ID,P26_SURVEY,P26_RETAKE,P26_MAX,P26_PASS_MARK,P26_COURSE,P26_QUEST_NUM,P26_HRS,P26_MINS:R,#TEST_ID#,#TEST_ID#,#RETAKE#,#NO_OF_QUESTION#,#PASS_MARK#,#COURSE_ID#,,#HRS#,#MINS#'
,p_column_linktext=>'#ALERT_TITLE#'
,p_column_link_attr=>'id="retake"'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300075070774735035)
,p_query_column_id=>2
,p_column_alias=>'TEST_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Test Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300076499870735049)
,p_query_column_id=>3
,p_column_alias=>'RESULT'
,p_column_display_sequence=>3
,p_column_heading=>'Result'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300076549332735050)
,p_query_column_id=>4
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300921221159533101)
,p_query_column_id=>5
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300926171803533150)
,p_query_column_id=>6
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>10
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300921795650533106)
,p_query_column_id=>7
,p_column_alias=>'RETAKE'
,p_column_display_sequence=>6
,p_column_heading=>'Retake'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300921944651533108)
,p_query_column_id=>8
,p_column_alias=>'NO_OF_QUESTION'
,p_column_display_sequence=>7
,p_column_heading=>'No Of Question'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300922021911533109)
,p_query_column_id=>9
,p_column_alias=>'PASS_MARK'
,p_column_display_sequence=>8
,p_column_heading=>'Pass Mark'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300922158465533110)
,p_query_column_id=>10
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Course Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301259508589549011)
,p_query_column_id=>11
,p_column_alias=>'HRS'
,p_column_display_sequence=>11
,p_column_heading=>'Hrs'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301259680428549012)
,p_query_column_id=>12
,p_column_alias=>'MINS'
,p_column_display_sequence=>12
,p_column_heading=>'Mins'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(304749784369830010)
,p_name=>'Content List'
,p_template=>wwv_flow_imp.id(2509084578224068)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONTENT_ID,',
'       CONTENT_NAME ',
'       FROM XXSLM.XXSLM_CONTENT_LIBRARY WHERE CONTENT_ID IN (',
'   SELECT * FROM TABLE( ',
'       apex_string.split( ( SELECT CONTENT FROM XXSLM.XXSLM_COURSES WHERE COURSE_ID = :P30_COURSE_ID), '':'') ',
'   )',
')',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_COURSE_ID'
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
 p_id=>wwv_flow_imp.id(305716344409682704)
,p_query_column_id=>1
,p_column_alias=>'CONTENT_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(305716459121682705)
,p_query_column_id=>2
,p_column_alias=>'CONTENT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Content Name'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="cont-nam">#CONTENT_NAME#</span><div class="progressbar" id="pbar_#CONTENT_ID#"></div>'
,p_column_link_attr=>'data-id=#CONTENT_ID#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(306589382758003704)
,p_name=>'Post Test'
,p_region_name=>'post'
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--hideNoPagination'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (a.Test_Name)||'' ''||''(''||a.No_of_Question||'' ''||''Questions''||'')''    as alert_title,',
'	null as ALERT_ACTION,',
'	''Pass Mark: ''||a.PASS_MARK as alert_desc,',
'		case ',
'		 when a.retake = ''Yes'' then ''info''',
'		 when a.retake = ''No'' then ''success''',
'		 else ''success''',
'		 end as alert_type,',
'        a.COURSE_ID C_ID, ',
'		a.COURSE_ID, ',
'        decode(a.retake,null,''No'',a.retake)retake,',
'        a.No_of_Question,',
'		a.TEST_ID T_ID, a.PASS_MARK, a.Hrs,a.Mins',
'from xxslm.xxslm_available_test_v a, ',
'(select percentage, course_id  from xxslm.xxslm_content_progress where course_id = :P30_COURSE_ID) b',
'where a.course_id = :P30_COURSE_ID',
'and a.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.SURVEY_TYPE = ''POST''',
'AND b.percentage between 99.00 and 100',
'and a.course_id = b.course_id',
'and a.TEST_ID NOT IN  (Select TEST_ID ',
'                   from xxslm.XXSLM_EXAM_SUMMARY  -- , xxslm.XXSLM_COURSE_QUESTIONS  b',
'                   where course_id = :P30_COURSE_ID  ',
'                   --and a.STAFF_ID = :AP_STAFF_ID ',
'                   --and a.COURSE_ID = b.COURSE_ID',
'                   --and a.TEST_ID = b.TEST_ID',
'                   --and b.retake = nvl('''',''Yes'') ',
'                   --and a.status IN (''COMPLETED'',''STARTED'') ',
'                  )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_COURSE_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2534920060224087)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Available Test for this Course'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306589436731003705)
,p_query_column_id=>1
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Alert Title'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP,26:P26_SURVEY,P26_TEST_ID,P26_COURSE,P26_MAX,P26_RETAKE,P26_PASS_MARK,P26_HRS,P26_MINS:#T_ID#,#T_ID#,#COURSE_ID#,#NO_OF_QUESTION#,#RETAKE#,#PASS_MARK#,#HRS#,#MINS#'
,p_column_linktext=>'#ALERT_TITLE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306589519026003706)
,p_query_column_id=>2
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306589620685003707)
,p_query_column_id=>3
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306589742275003708)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306589872546003709)
,p_query_column_id=>5
,p_column_alias=>'C_ID'
,p_column_display_sequence=>5
,p_column_heading=>'C Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306589976863003710)
,p_query_column_id=>6
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Course Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306590099361003711)
,p_query_column_id=>7
,p_column_alias=>'RETAKE'
,p_column_display_sequence=>7
,p_column_heading=>'Retake'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306590179853003712)
,p_query_column_id=>8
,p_column_alias=>'NO_OF_QUESTION'
,p_column_display_sequence=>8
,p_column_heading=>'No Of Question'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306590271038003713)
,p_query_column_id=>9
,p_column_alias=>'T_ID'
,p_column_display_sequence=>9
,p_column_heading=>'T Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306590350641003714)
,p_query_column_id=>10
,p_column_alias=>'PASS_MARK'
,p_column_display_sequence=>10
,p_column_heading=>'Pass Mark'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306590408788003715)
,p_query_column_id=>11
,p_column_alias=>'HRS'
,p_column_display_sequence=>11
,p_column_heading=>'Hrs'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(306590501321003716)
,p_query_column_id=>12
,p_column_alias=>'MINS'
,p_column_display_sequence=>12
,p_column_heading=>'Mins'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(599671828984205422)
,p_plug_name=>'Test Results'
,p_region_name=>'test'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(898852181691107456)
,p_plug_name=>'Catalogue Tests'
,p_region_name=>'download_res'
,p_parent_plug_id=>wwv_flow_imp.id(599671828984205422)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2507973594224067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT people.full_name  as "Employee_Name",',
'      summary.course_id,',
'      summary.test_id,',
'      summary.staff_id,',
'      (summary.test_name || '' (''|| d.SURVEY_TYPE ||'' ''||''TEST)'') Test_Name,',
'      to_char(summary.start_date, ''DD-MON-YYYY'') start_date,',
'      to_char(summary.end_date,''DD-MON-YYYY'') end_date ,',
'      ss.score,',
'      course.name "COURSE_NAME",',
'      summary.point,',
'      summary.pass_mark,',
'      summary.Result,',
'      ROUND(TO_CHAR(ss.score/summary.point)*100, 2) percentage',
'     --(ss.score/summary.point)*100 percentage',
'       --    CASE WHEN summary.score <= tt.PASS_MARK THEN ''Failed''',
'         --    ELSE ''Passed'' End Results   ',
'from  xxhrms.xxhrms_people_f people,    xxslm.xxslm_exam_summary summary, xxslm.xxslm_test tt, xxslm.xxslm_courses course, XXSLM.XXSLM_AVAILABLE_TEST_V d,',
'     (select sum(SCORE) score ,COURSE_ID,TEST_ID,STAFF_ID',
'     from xxslm.XXSLM_QUESTIONS_OPTION where COMPANY_CODE = :AP_COMPANY_CODE and course_id = :P30_COURSE_ID',
'     group by COURSE_ID,TEST_ID,STAFF_ID',
'    )ss',
'where summary.STAFF_ID = PERSON_ID ',
'and tt.test_id = summary.test_id ',
'and summary.company_Code = :AP_COMPANY_CODE ',
'and ss.TEST_ID = tt.TEST_ID ',
'and ss.TEST_ID = summary.TEST_ID',
'and tt.test_id = d.test_id',
'and summary.test_id = d.test_id',
'and summary.course_id = :P30_COURSE_ID_1',
'and course.course_id = summary.course_id',
'and course.course_id = d.course_id',
'and PEOPLE.person_id = :AP_STAFF_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P30_COURSE_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(300528019084768914)
,p_name=>'COURSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(300528175417768915)
,p_name=>'TEST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(300528214581768916)
,p_name=>'STAFF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAFF_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(300528422634768918)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(300528500173768919)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(300528641870768920)
,p_name=>'PASS_MARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PASS_MARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pass Mark'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(300529668644768930)
,p_name=>'Employee_Name'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Employee_Name'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(301050252323339936)
,p_name=>'PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENTAGE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percentage'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(301051010992339944)
,p_name=>'COURSE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Course Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>150
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
 p_id=>wwv_flow_imp.id(301258867517549004)
,p_name=>'RESULT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Result'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(306921635348464202)
,p_name=>'TEST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Test Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>238
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
 p_id=>wwv_flow_imp.id(888179178172947764)
,p_name=>'SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCORE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(899582631218288015)
,p_name=>'POINT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POINT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Point'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(888178835923947760)
,p_internal_uid=>888178835923947760
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(899588521124288506)
,p_interactive_grid_id=>wwv_flow_imp.id(888178835923947760)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(899588562292288507)
,p_report_id=>wwv_flow_imp.id(899588521124288506)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(300720276000402848)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(300528019084768914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(300720710939402851)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(300528175417768915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(300721256626402854)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(300528214581768916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(300722250829402862)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(300528422634768918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(300722715034402866)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(300528500173768919)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(300723219804402870)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(300528641870768920)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(300746471687784879)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(300529668644768930)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301620840437903757)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(301258867517549004)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(301636202433003794)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(301050252323339936)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(303250505943777008)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(301051010992339944)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(306929610809455232)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(306921635348464202)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(899590470138288565)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(888179178172947764)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(899590957416288574)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(899582631218288015)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(33833027450)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_execution_seq=>5
,p_name=>'Passed Result'
,p_column_id=>wwv_flow_imp.id(301258867517549004)
,p_background_color=>'#99FF99'
,p_text_color=>'#99CCFF'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(301258867517549004)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Passed'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(214794037211)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_execution_seq=>10
,p_name=>'Awaiting Result'
,p_column_id=>wwv_flow_imp.id(301258867517549004)
,p_background_color=>'#99CCFF'
,p_text_color=>'#99FF99'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(301258867517549004)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'waiting on Supervisor score'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(298362048409)
,p_view_id=>wwv_flow_imp.id(899588562292288507)
,p_execution_seq=>15
,p_name=>'Failed Result'
,p_background_color=>'#FF7755'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(301258867517549004)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Failed'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(875451287710581963)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2488504312224053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1162305402638378513)
,p_plug_name=>'Course Details'
,p_region_name=>'course'
,p_icon_css_classes=>'fa-list-ul'
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
 p_id=>wwv_flow_imp.id(1171450597460568833)
,p_plug_name=>'Course Content'
,p_region_name=>'cou'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2509084578224068)
,p_plug_display_sequence=>10
,p_plug_source=>'<div id="content-display"></div>'
,p_plug_query_num_rows=>15
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1171833876680357245)
,p_name=>'Pre Test'
,p_region_name=>'avltest'
,p_template=>wwv_flow_imp.id(2497944838224060)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--hideNoPagination'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (a.Test_Name)||'' ''||''(''||a.No_of_Question||'' ''||''Questions''||'')''    as alert_title,',
'	null as ALERT_ACTION,',
'	''Pass Mark: ''||a.PASS_MARK as alert_desc,',
'		case ',
'		 when a.retake = ''Yes'' then ''info''',
'		 when a.retake = ''No'' then ''success''',
'		 else ''success''',
'		 end as alert_type,',
'        a.COURSE_ID C_ID, ',
'		a.COURSE_ID, ',
'        decode(a.retake,null,''No'',a.retake)retake,',
'        a.No_of_Question,',
'		a.TEST_ID T_ID, a.PASS_MARK, a.Hrs,a.Mins',
'from xxslm.xxslm_available_test_v a',
'where a.course_id = :P30_COURSE_ID',
'and a.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.SURVEY_TYPE = ''PRE''',
'and TEST_ID NOT IN (Select a.TEST_ID ',
'                   from xxslm.XXSLM_EXAM_SUMMARY a --, xxslm.XXSLM_COURSE_QUESTIONS  b',
'                   where a.course_id = :P30_COURSE_ID  ',
'                   and a.STAFF_ID = :AP_STAFF_ID ',
'                   --and a.COURSE_ID = b.COURSE_ID',
'                   --and a.TEST_ID = b.TEST_ID',
'                   --and b.retake = nvl('''',''Yes'') ',
'                   --and a.status IN (''COMPLETED'',''STARTED'') ',
'                  )',
'                  ',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_COURSE_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2534920060224087)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Available Test for this Course'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300075583408735040)
,p_query_column_id=>1
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Title'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP,26:P26_SURVEY,P26_TEST_ID,P26_COURSE,P26_MAX,P26_RETAKE,P26_PASS_MARK,P26_HRS,P26_MINS:#T_ID#,#T_ID#,#COURSE_ID#,#NO_OF_QUESTION#,#RETAKE#,#PASS_MARK#,#HRS#,#MINS#'
,p_column_linktext=>'#ALERT_TITLE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300075962678735044)
,p_query_column_id=>2
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>6
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300076273533735047)
,p_query_column_id=>3
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>9
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300075801273735043)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287933529829728246)
,p_query_column_id=>5
,p_column_alias=>'C_ID'
,p_column_display_sequence=>1
,p_column_heading=>'C Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287933662039728247)
,p_query_column_id=>6
,p_column_alias=>'COURSE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Course Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300076155181735046)
,p_query_column_id=>7
,p_column_alias=>'RETAKE'
,p_column_display_sequence=>8
,p_column_heading=>'Retake'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300076014576735045)
,p_query_column_id=>8
,p_column_alias=>'NO_OF_QUESTION'
,p_column_display_sequence=>7
,p_column_heading=>'No Of Question'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(287933955350728250)
,p_query_column_id=>9
,p_column_alias=>'T_ID'
,p_column_display_sequence=>3
,p_column_heading=>'T Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(300921635125533105)
,p_query_column_id=>10
,p_column_alias=>'PASS_MARK'
,p_column_display_sequence=>10
,p_column_heading=>'Pass Mark'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301259396363549009)
,p_query_column_id=>11
,p_column_alias=>'HRS'
,p_column_display_sequence=>11
,p_column_heading=>'Hrs'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301259454004549010)
,p_query_column_id=>12
,p_column_alias=>'MINS'
,p_column_display_sequence=>12
,p_column_heading=>'Mins'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(303588900060713644)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1171450597460568833)
,p_button_name=>'Download_certificate'
,p_button_static_id=>'Applychanges'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Download Certificate'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	a.TEST_ID',
'from xxslm.xxslm_available_test_v a, xxslm.xxslm_content_progress b',
'where a.course_id = :P30_COURSE_ID',
'and a.COMPANY_CODE = :AP_COMPANY_CODE',
'AND A.SURVEY_TYPE = ''POST''',
'--AND b.percentage = 100',
'and a.course_id = b.course_id',
'and a.TEST_ID IN  (Select TEST_ID ',
'                   from xxslm.XXSLM_EXAM_SUMMARY  -- , xxslm.XXSLM_COURSE_QUESTIONS  b',
'                   where course_id = :P30_COURSE_ID  ',
'                   --and a.STAFF_ID = :AP_STAFF_ID ',
'                   --and a.COURSE_ID = b.COURSE_ID',
'                   --and a.TEST_ID = b.TEST_ID',
'                   --and b.retake = nvl('''',''Yes'') ',
'                   --and a.status IN (''COMPLETED'',''STARTED'') ',
'                  )'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305486372085930944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_button_name=>'Accept_Course'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Accept Course'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-thumbs-o-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(305486408644930945)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_button_name=>'Reject_Course'
,p_button_static_id=>'btn2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_image_alt=>'Reject Course'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from xxslm.xxslm_courses',
'where SELF_ENROLL = ''Y''',
'and course_id = :P30_COURSE_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-thumbs-o-down'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299997959932926241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(875451287710581963)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299998333237926242)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(875451287710581963)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P30_COURSE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299998734872926243)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(875451287710581963)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P30_COURSE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299999178945926243)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(875451287710581963)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2561356733224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P30_COURSE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299960047082926116)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(599671828984205422)
,p_button_name=>'Download_Results'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2561415232224107)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Results'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(305672407980496916)
,p_branch_name=>'gotopage1'
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(305486408644930945)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(299988292847926220)
,p_name=>'P30_SEARCH_X'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1171450597460568833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(299999847941926244)
,p_name=>'P30_COURSE_ID_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_use_cache_before_default=>'NO'
,p_source=>'COURSE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300000267372926245)
,p_name=>'P30_CATALOGUE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_use_cache_before_default=>'NO'
,p_source=>'CATALOGUE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300000691356926245)
,p_name=>'P30_SELF_ENROLL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300001083097926245)
,p_name=>'P30_COURSE_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300001424402926246)
,p_name=>'P30_COURSE_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303589314684713648)
,p_name=>'P30_COURSE_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select (select name from xxslm.xxslm_courses where course_id = :P30_COURSE_ID) course_name',
'from xxslm.xxslm_content_progress',
'where CONTENT_ID = :P30_CONTENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304752810879830041)
,p_name=>'P30_STAFF_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_source=>'V(''AP_STAFF_ID'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304752941382830042)
,p_name=>'P30_COMPANY_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_source=>'V(''AP_COMPANY_CODE'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305429323676368412)
,p_name=>'P30_BUTTON'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1171450597460568833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305675762135496949)
,p_name=>'P30_COURSE_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status',
'from ',
'xxslm.xxslm_course_status',
'where course_id = :P8_COURSE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(305718005487682721)
,p_name=>'P30_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from xxslm.xxslm_course_status',
'where course_id = :P30_COURSE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306433601105447929)
,p_name=>'P30_STATUS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306589124448003702)
,p_name=>'P30_STATUS_2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306924819345464234)
,p_name=>'P30_UPDATE_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306925957041464245)
,p_name=>'P30_TEST_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(306926498451464250)
,p_name=>'P30_CHK_Y'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307236403471368503)
,p_name=>'P30_RETAKE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307236739462368506)
,p_name=>'P30_CHK_N'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307238071426368519)
,p_name=>'P30_RESULT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(307238833343368527)
,p_name=>'P30_SETTING'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1162305402638378513)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300004581376926257)
,p_name=>'KeyRelease'
,p_event_sequence=>1012
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300005025047926258)
,p_event_id=>wwv_flow_imp.id(300004581376926257)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_SEARCH_X'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P30_SEARCH'
,p_attribute_07=>'P30_SEARCH,P30_SEARCH_X'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300005508605926258)
,p_event_id=>wwv_flow_imp.id(300004581376926257)
,p_event_result=>'TRUE'
,p_action_sequence=>15
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_COURSE_CONTENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300005968762926258)
,p_name=>'KeyRelease_1'
,p_event_sequence=>1022
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_SEARCH_ACC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300006405328926259)
,p_event_id=>wwv_flow_imp.id(300005968762926258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_SS_ACC'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P30_SEAARCH_ACC'
,p_attribute_07=>'P30_SEARCH_ACC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300006906754926259)
,p_event_id=>wwv_flow_imp.id(300005968762926258)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ORG,P30_DEPT1,P30_SUBORG,P30_JOB,P30_EMP'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300007308348926260)
,p_name=>'KeyRels'
,p_event_sequence=>1042
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_SLA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300007831849926260)
,p_event_id=>wwv_flow_imp.id(300007308348926260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_KEY'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P30_SLA'
,p_attribute_07=>'P30_SLA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300008335313926261)
,p_event_id=>wwv_flow_imp.id(300007308348926260)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ASSIGN_ADMIN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300003647447926253)
,p_name=>'AOP_DOWNLOAD_BY_CATALOGUE'
,p_event_sequence=>1062
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(299912535177077239)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300004162544926256)
,p_event_id=>wwv_flow_imp.id(300003647447926253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.APEXRND.AOP_DA'
,p_attribute_04=>'docx'
,p_attribute_05=>'IR'
,p_attribute_06=>'APEX'
,p_attribute_07=>'newoutput.docx'
,p_attribute_13=>'downloadcat'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(300529368145768927)
,p_name=>'AOP_DOWNLOAD_Results'
,p_event_sequence=>1072
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(299960047082926116)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300529427267768928)
,p_event_id=>wwv_flow_imp.id(300529368145768927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.APEXRND.AOP_DA'
,p_attribute_04=>'xlsx'
,p_attribute_05=>'IR'
,p_attribute_06=>'APEX'
,p_attribute_07=>'myofficefile.xlsx'
,p_attribute_13=>'download_res'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(304751840052830031)
,p_name=>'display'
,p_event_sequence=>1082
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.cont-nam'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(304751914188830032)
,p_event_id=>wwv_flow_imp.id(304751840052830031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const content_id = event.target.parentElement.getAttribute("data-id");',
'const viewerJS = "#WORKSPACE_IMAGES#ViewerJS/index.html";',
'',
'const itemIndex = contents.findIndex(item => item.CONTENT_ID == content_id);',
'index = itemIndex;',
'showContent();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(303588108111713636)
,p_name=>'get contents'
,p_event_sequence=>1092
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303588274213713637)
,p_event_id=>wwv_flow_imp.id(303588108111713636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*$( ".progressbar" ).progressbar({',
'      value: 37',
'});*/',
'',
'var cont = document.querySelectorAll(".cont-nam");',
'',
'',
'',
'function myCall2() {',
'for(let i=0; i < cont.length; i++){',
'        const span = cont[i];',
'       const item = span.parentNode.getAttribute("data-id");',
'          ',
'       var request = $.ajax({',
'            url: `${location.protocol}//${location.host}/softsuite/lms/lms-api/content-detail/${item}`,',
'            type: "GET",',
'            datatype: "application/json"',
'        });',
'    request.done((result) => {',
'        const content = result.items[0];',
'        contents.push(content);',
'        if(contents.length == cont.length){',
'            //showContent();',
'            getProgress();',
'        }',
'    })',
'    }',
'}',
'    ',
'myCall2();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(303589045774713645)
,p_name=>'New'
,p_event_sequence=>1112
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(303588900060713644)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303589117221713646)
,p_event_id=>wwv_flow_imp.id(303589045774713645)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_BE.APEXRND.AOP_DA'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_COURSE_NAME'
,p_attribute_04=>'docx'
,p_attribute_05=>'SQL'
,p_attribute_06=>'APEX'
,p_attribute_07=>'certificate.docx'
,p_attribute_11=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'''file1'' "filename",',
'cursor(',
'   select distinct',
'   v(''AP_FULL_NAME'') "FullName",',
'   (select name from xxslm.xxslm_courses where course_id = :P30_COURSE_ID) "CourseName",',
'   TO_CHAR(sysdate, ''DD. MM. YYYY'') "Date"',
'from',
'XXSLM.XXSLM_CONTENT_PROGRESS',
'where staff_id = :AP_STAFF_ID',
'and COURSE_ID = :P30_COURSE_ID',
'and COMPANY_CODE = :AP_COMPANY_CODE',
') as "data"',
'from dual'))
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305674393105496935)
,p_name=>'New_1'
,p_event_sequence=>1122
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305674400540496936)
,p_event_id=>wwv_flow_imp.id(305674393105496935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_content=apex.item("P30_SELF_ENROLL").getValue();',
'var v_id = apex.item("P30_ID").getValue();',
'if (v_content == ''Y'' && v_id != 2){',
'      $("#btn").show(1000); ',
'      $("#btn2").show(1000); ',
'    $("#status").show(1000); ',
'    $("#cou").hide(); ',
'    $("#test").hide(); ',
'    $("#avltest").hide(); ',
'    $("#rtktest").hide();',
'     ',
'    ',
'}else{ ',
'    $("#btn").hide(); ',
'      $("#btn2").hide(); ',
'    $("#status").hide()',
'$("#cou").show();  ',
'    $("#test").show();  ',
'    $("#avltest").show(); ',
'    $("#rtktest").show(); ',
'    ',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305720189383682742)
,p_name=>'New_3'
,p_event_sequence=>1152
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(305486372085930944)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305720597535682746)
,p_event_id=>wwv_flow_imp.id(305720189383682742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'         XXSLM.XXSLM_course_status_proc(:P30_COURSE_ID,',
'							:AP_STAFF_ID,',
'							:P30_COURSE_STATUS,',
'							:AP_COMPANY_CODE,',
'                            :P30_ID);',
'End;'))
,p_attribute_02=>'P30_COURSE_ID,P30_STAFF_ID,P30_COURSE_STATUS,P30_COMPANY_CODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305817620095426101)
,p_event_id=>wwv_flow_imp.id(305720189383682742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'     UPDATE xxslm.xxslm_course_status',
'     set ID = 2',
'     where course_id = :P30_COURSE_ID;',
'    ',
'      UPDATE xxslm.xxslm_course_status',
'     set STATUS = ''ACCEPTED''',
'     where course_id = :P30_COURSE_ID;',
'    ',
'     ',
'   /* select ID into :P30_ID',
'    from xxslm.xxslm_course_status where course_id = :P30_COURSE_ID;',
'    exception',
'    when others then',
'      apex_util.set_session_state(''P30_id'', null);*/',
'end;'))
,p_attribute_02=>'P30_ID,P30_COURSE_ID,P30_STAFF_ID,P30_COMPANY_CODE,P30_COURSE_STATUS'
,p_attribute_03=>'P30_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305720223001682743)
,p_event_id=>wwv_flow_imp.id(305720189383682742)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_content=apex.item("P30_SELF_ENROLL").getValue();',
'if (v_content==''Y''){',
'     $("#status").hide(1000); ',
'        $("#btn").hide(1000); ',
'      $("#btn2").hide(1000); ',
'    $("#cou").show(1000); ',
'    $("#test").show(1000); ',
'    $("#avltest").show(1000); ',
'    $("#rtktest").show(1000);   ',
'}else{',
'      $("#btn").show(); ',
'    $("#btn2").show(); ',
'    $("#status").show(); ',
'$("#cou").hide();  ',
'    $("#test").hide(); ',
'    $("#avltest").hide();  ',
'    $("#rtktest").hide();  ',
'  ',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(305820982841426134)
,p_name=>'New_2'
,p_event_sequence=>1162
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(305486408644930945)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305821118763426136)
,p_event_id=>wwv_flow_imp.id(305820982841426134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'         XXSLM.XXSLM_course_status_proc(:P30_COURSE_ID,',
'							:AP_STAFF_ID,',
'							:P30_COURSE_STATUS,',
'							:AP_COMPANY_CODE,',
'                            :P30_ID);',
'End;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(305821060051426135)
,p_event_id=>wwv_flow_imp.id(305820982841426134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'      UPDATE xxslm.xxslm_course_status',
'     set STATUS = ''REJECTED''',
'     where course_id = :P30_COURSE_ID;',
'     ',
'     select status into :P30_COURSE_STATUS',
'     FROM xxslm.xxslm_course_status',
'     WHERE course_id = :P30_COURSE_ID;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(306593546931003746)
,p_name=>'New_4'
,p_event_sequence=>1172
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_STATUS'
,p_condition_element=>'P30_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'100'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306593613602003747)
,p_event_id=>wwv_flow_imp.id(306593546931003746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'CContent updated'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(306921947582464205)
,p_name=>'New_5'
,p_event_sequence=>1182
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(c_completed())',
''))
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(c_completed())',
''))
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>' CustomEvent1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306922024562464206)
,p_event_id=>wwv_flow_imp.id(306921947582464205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(306589382758003704)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(306923039857464216)
,p_name=>'New_6'
,p_event_sequence=>1192
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(305486372085930944)
,p_bind_type=>'one'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(306923142439464217)
,p_event_id=>wwv_flow_imp.id(306923039857464216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'Insert into XXSLM.XXSLM_SELFENROLLED_ASSESS(COURSE_ID, STAFF_ID)',
'VALUES(:P30_COURSE_ID, :AP_STAFF_ID);',
'Exception when no_data_found then',
'null;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(307237870856368517)
,p_name=>'New_8'
,p_event_sequence=>1212
,p_condition_element=>'P30_RETAKE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'R'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(307237958823368518)
,p_event_id=>wwv_flow_imp.id(307237870856368517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_CHK_Y,P30_CHK_N,P30_RESULT,P30_SETTING'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_rtk =apex.item("P30_CHK_Y").getValue();',
'var v_nt = apex.item("P30_CHK_N").getValue();',
'var v_tn = apex.item("P30_RESULT").getValue();',
'',
'//console.log(v_nn);',
'console.log(v_rtk);',
'if (v_tn != ''waiting on Supervisor score'') {',
'	if (v_nt < v_rtk) {',
'		 apex.message.confirm(''You have '' + (v_rtk - v_nt) + '' attempt(s) left'');',
'	}',
'    else if(v_nt = v_rtk){',
'        // apex.item( "P30_SETTING" ).setValue(''Yes'');',
'        //var v_nn = apex.item( "P30_SETTING" ).getValue(''Yes'');',
'        //console.log(v_nn);',
'	     apex.message.confirm(''You have exceeded your required number of attempts'');',
'         $("#retake").hide();',
'	}else {',
'        //do nothing',
'    } ',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(306924758848464233)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_3'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ID INTO :P30_UPDATE_ID',
'FROM XXSLM.XXSLM_EXAM_TRACKER',
'WHERE STATUS = ''STARTED''',
'and rownum = 1;',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>306924758848464233
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300002466871926251)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XXSLM_COURSES'
,p_attribute_01=>'XXSLM'
,p_attribute_02=>'XXSLM_COURSES'
,p_attribute_03=>'P30_COURSE_ID'
,p_attribute_04=>'COURSE_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>300002466871926251
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300921433973533103)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateScore'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'        update xxslm.XXSLM_EXAM_SUMMARY a',
'        set SCORE = (select sum(nvl(SCORE,0)) ',
'                    from xxslm.XXSLM_QUESTIONS_OPTION ',
'                    where STAFF_ID = :AP_STAFF_ID ',
'                    and COMPANY_CODE = :AP_COMPANY_CODE ',
'                    and COURSE_ID = :P30_COURSE_ID and TEST_ID = a.TEST_ID)',
'        where COMPANY_CODE = :AP_COMPANY_CODE and COURSE_ID = :P30_COURSE_ID',
'        and STAFF_ID = :AP_STAFF_ID ;',
'        ',
'        update xxslm.XXSLM_EXAM_TRACKER a',
'        set SCORE = (select sum(nvl(SCORE,0)) ',
'                    from xxslm.XXSLM_QUESTIONS_OPTION ',
'                    where STAFF_ID = :AP_STAFF_ID ',
'                    and COMPANY_CODE = :AP_COMPANY_CODE ',
'                    and COURSE_ID = :P30_COURSE_ID and TEST_ID = a.TEST_ID),',
'             STATUS = ''COMPLETED''',
'        where COMPANY_CODE = :AP_COMPANY_CODE and COURSE_ID = :P30_COURSE_ID',
'        and STAFF_ID = :AP_STAFF_ID ',
'        and ID = :P30_UPDATE_ID;',
'     ',
'    XXSLM.xxslm_result_update(:AP_STAFF_ID,:AP_COMPANY_CODE);',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>300921433973533103
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305671137602496903)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_selfenroll xxslm.xxslm_courses.self_enroll%type;',
'begin',
'  select self_enroll into v_selfenroll',
'    from xxslm.xxslm_courses where course_id = :P30_COURSE_ID;',
'    ',
'    apex_util.set_session_state(''P30_SELF_ENROLL'', v_selfenroll);',
'    --apex_util.set_session_state(''P30_COURSE_STATUS'', ''NEW'');',
'    exception',
'    when others then',
'      apex_util.set_session_state(''P30_SELF_ENROLL'', null);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>305671137602496903
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(306433521858447928)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_status VARCHAR2(200);',
'begin',
'select sum(percentage)/ count(percentage)',
'      into v_status',
'from  xxslm.xxslm_content_progress ',
'where Course_id = :P30_COURSE_ID',
'AND company_code = :AP_COMPANY_CODE;',
'    ',
'    apex_util.set_session_state(''P30_STATUS'', v_status);',
'    --apex_util.set_session_state(''P30_COURSE_STATUS'', ''NEW'');',
'    exception',
'    when others then',
'      apex_util.set_session_state(''P30_STATUS'', null);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>306433521858447928
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(306589221118003703)
,p_process_sequence=>70
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_STATUS VARCHAR2(200);',
'begin',
'select percentage ',
'       into V_STATUS',
'from xxslm.xxslm_content_progress',
'where Course_id = :P30_COURSE_ID',
'AND company_code = :AP_COMPANY_CODE;',
'    ',
'    apex_util.set_session_state(''P30_STATUS_2'', v_status);',
'    --apex_util.set_session_state(''P30_COURSE_STATUS'', ''NEW'');',
'    exception',
'    when others then',
'      apex_util.set_session_state(''P30_STATUS_2'', null);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>306589221118003703
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(307236694747368505)
,p_process_sequence=>80
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_4'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_nn number;',
'begin',
'if :p30_retake = ''R'' Then',
'select count(id) into :P30_CHK_N',
'from xxslm.xxslm_exam_tracker',
'where course_id = :P30_COURSE_ID_1',
'and test_id = :P30_TEST_ID',
'and company_code = :AP_COMPANY_CODE;',
'',
'select NO_OF_RETAKE into :P30_CHK_Y',
'from XXSLM.XXSLM_COURSE_QUESTIONS',
'where test_id = :P30_TEST_ID',
'and course_id = :P30_COURSE_ID_1',
'and no_of_retake is not null',
'and company_code = :AP_COMPANY_CODE;',
'',
'select Result into :P30_RESULT',
'from xxslm.xxslm_Exam_summary',
'where course_id = :P30_COURSE_ID_1',
'and test_id = :P30_TEST_ID',
'and company_code = :AP_COMPANY_CODE;',
'',
'/*if :P30_CHK_Y = :P30_CHK_N THEN',
'apex_util.set_session_state(''P30_SET'', ''YES'');',
'END IF;*/',
'end if;',
'    --',
'EXCEPTION ',
'WHEN NO_DATA_FOUND THEN',
'NULL;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>307236694747368505
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300002809268926252)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XXSLM_COURSES'
,p_attribute_01=>'XXSLM'
,p_attribute_02=>'XXSLM_COURSES'
,p_attribute_03=>'P30_COURSE_ID'
,p_attribute_04=>'COURSE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>300002809268926252
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(299975964042926175)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1171833876680357245)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Course Assessments - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>299975964042926175
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300003218607926252)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CourseAccess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'Begin',
'         XXSLM.XXSLM_ASSESS_PROC(:P30_ACCESS_TYPE,',
'							:AP_STAFF_ID,',
'							:P30_COURSE_ID,',
'							:P30_ACCESS_LIST);',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>300003218607926252
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(305482626415930907)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Certificatedownload'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select ((sum(b.content_index))/(sum(b.test_id)) * 100) into :P30_BUTTON',
' from xxslm.xxslm_user_content_progress b,  xxslm.xxslm_courses a, xxhrms.xxhrms_assignments d',
'where d.staff_id = :P8_STAFF',
'and d.staff_id = b.staff_id',
'and a.course_id = b.course_id',
'AND a.course_id = :P8_COURSE_ID',
'and a.company_code = :AP_COMPANY_CODE;',
'exception when others then ',
'null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_BUTTON'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'100'
,p_internal_uid=>305482626415930907
);
wwv_flow_imp.component_end;
end;
/
