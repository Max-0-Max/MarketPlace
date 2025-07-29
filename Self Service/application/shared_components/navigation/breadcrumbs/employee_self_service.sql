prompt --application/shared_components/navigation/breadcrumbs/employee_self_service
begin
--   Manifest
--     MENU: Employee Self Service
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(2462480760224025)
,p_name=>'Employee Self Service'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10408196786010719)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'My Team'
,p_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11817954188720617)
,p_short_name=>'Employee Attendance Summary'
,p_link=>'f?p=&APP_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15182451454630889)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Leave Report'
,p_link=>'f?p=&APP_ID.:44:&SESSION.'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(23687152273321239)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'PaySlip'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(23836432945015546)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Performance Indicators'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26560862176561101)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Request Approval Details'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28497545049085774)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Travel Request'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28676419045349994)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Reimbursement'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28757949334427487)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Other Request'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30227056155379825)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Leave Administration'
,p_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30339275279972904)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Appraisal Result'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31087637300477731)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'My Profile'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(33199202679942710)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Loan Application'
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(33287161075345593)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Workflow Requests'
,p_link=>'f?p=&APP_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(33564580426696704)
,p_parent_id=>wwv_flow_imp.id(23836432945015546)
,p_short_name=>'Copy Performance Indicator'
,p_link=>'f?p=&APP_ID.:40:&SESSION.'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38800464613622815)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Exit Request'
,p_link=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62::'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39143880680738272)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Policy Documents'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(49650523343380814)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Marketplace'
,p_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_page_id=>66
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(49650755162383151)
,p_parent_id=>wwv_flow_imp.id(49650523343380814)
,p_short_name=>'Product Details'
,p_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:::'
,p_page_id=>68
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64579036991010162)
,p_parent_id=>wwv_flow_imp.id(302998271318464135)
,p_short_name=>'Loan Details'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(75159643123490028)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Leave Roaster'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77792788105093702)
,p_parent_id=>wwv_flow_imp.id(49650523343380814)
,p_short_name=>'Loan Repayment Details'
,p_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:::'
,p_page_id=>77
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(94322353022897926)
,p_parent_id=>wwv_flow_imp.id(23836432945015546)
,p_short_name=>'Assign Peer to Peer KPI'
,p_link=>'f?p=&APP_ID.:53:&SESSION.'
,p_page_id=>53
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(94400243113804246)
,p_parent_id=>wwv_flow_imp.id(30339275279972904)
,p_short_name=>'Peer to Peer Appraisal Score'
,p_link=>'f?p=&APP_ID.:54:&SESSION.'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(94868170369684654)
,p_parent_id=>wwv_flow_imp.id(23836432945015546)
,p_short_name=>'Assign Line Manager Appraisal'
,p_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_page_id=>55
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(95164979578998154)
,p_short_name=>'View Other Assigned KPIs'
,p_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(95250828132277765)
,p_parent_id=>wwv_flow_imp.id(95164979578998154)
,p_short_name=>'Peer to Peer Appraisal'
,p_link=>'f?p=&APP_ID.:57:&SESSION.'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(95375673510055543)
,p_parent_id=>wwv_flow_imp.id(95164979578998154)
,p_short_name=>'Peer to Peer Appraisal'
,p_link=>'f?p=&APP_ID.:58:&SESSION.'
,p_page_id=>58
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(95446094482776229)
,p_parent_id=>wwv_flow_imp.id(95164979578998154)
,p_short_name=>'Non Supervisory Appraisal'
,p_link=>'f?p=&APP_ID.:59:&SESSION.'
,p_page_id=>59
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(96258756989543913)
,p_parent_id=>wwv_flow_imp.id(30339275279972904)
,p_short_name=>'Line Manager Appraisal Score'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(97180440948402345)
,p_parent_id=>wwv_flow_imp.id(95164979578998154)
,p_short_name=>'Subordinate Appraisal'
,p_link=>'f?p=&APP_ID.:63:&SESSION.'
,p_page_id=>63
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(287786737371809231)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Available Courses'
,p_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(297301317614212158)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Take Test Survey'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(298518972178349653)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Course Score Test'
,p_link=>'f?p=&APP_ID.:27:&SESSION.'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(299190626908227689)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Test Summary'
,p_link=>'f?p=&APP_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(299940850714325237)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Workshift Acitivies'
,p_link=>'f?p=&APP_ID.:29:&SESSION.'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(300002230101926248)
,p_parent_id=>wwv_flow_imp.id(287786737371809231)
,p_short_name=>'Course Details'
,p_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:RP::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(302998271318464135)
,p_parent_id=>wwv_flow_imp.id(2462689968224026)
,p_short_name=>'Loans'
,p_long_name=>'Loans Management'
,p_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(302999517961499027)
,p_parent_id=>wwv_flow_imp.id(302998271318464135)
,p_short_name=>'Page Financials Loan'
,p_long_name=>'Page Financials Loan'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp.component_end;
end;
/
