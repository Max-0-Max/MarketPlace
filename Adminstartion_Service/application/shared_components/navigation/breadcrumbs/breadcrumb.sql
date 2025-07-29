prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000007
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(5406108794166656)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3048352694057736)
,p_short_name=>'Job Reporting Page'
,p_link=>'f?p=&APP_ID.:10000:&SESSION.'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Application Setup'
,p_link=>'f?p=&APP_ID.:201:&SESSION.'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3129899848513217)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Module Definition'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3246199533349276)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Menu Management'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3518590694608033)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Role Management'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3655008942339258)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'System Options'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3754430881059742)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Password Policy'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3843675879985906)
,p_short_name=>'Upload Patch'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3904627879540442)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Patch Management'
,p_link=>'f?p=&APP_ID.:29:&SESSION.'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3969558309855527)
,p_parent_id=>wwv_flow_imp.id(5406318002166657)
,p_short_name=>'User Management'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4008624120066695)
,p_parent_id=>wwv_flow_imp.id(5406318002166657)
,p_short_name=>'User Management'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4085279259325946)
,p_parent_id=>wwv_flow_imp.id(5406318002166657)
,p_short_name=>'User Management'
,p_link=>'f?p=&APP_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4344931884176036)
,p_parent_id=>wwv_flow_imp.id(4085279259325946)
,p_short_name=>'Mass User Creation'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4366208271176062)
,p_parent_id=>wwv_flow_imp.id(4085279259325946)
,p_short_name=>'Mass User Creation'
,p_link=>'f?p=&APP_ID.:18:&SESSION.'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4371469585176067)
,p_parent_id=>wwv_flow_imp.id(4085279259325946)
,p_short_name=>'Mass User Creation'
,p_link=>'f?p=&APP_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4394968630176092)
,p_parent_id=>wwv_flow_imp.id(4085279259325946)
,p_short_name=>'Mass User Creation'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4446041046249341)
,p_parent_id=>wwv_flow_imp.id(4085279259325946)
,p_short_name=>'Mass User Creation'
,p_link=>'f?p=&APP_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4575657599023455)
,p_short_name=>'User Report Definition'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4618290162785636)
,p_short_name=>'Report Setup'
,p_link=>'f?p=&APP_ID.:120:&SESSION.'
,p_page_id=>120
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4662050044804301)
,p_parent_id=>wwv_flow_imp.id(4618290162785636)
,p_short_name=>'Jasper Report Definition'
,p_link=>'f?p=&APP_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5406318002166657)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6514183742792462)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Seeded Lookups'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6970980046579817)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Seeded Lookups'
,p_link=>'f?p=&APP_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17236933015119050)
,p_parent_id=>wwv_flow_imp.id(5406318002166657)
,p_short_name=>'Payroll Approval Report'
,p_link=>'f?p=&APP_ID.:115:&SESSION.'
,p_page_id=>115
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(33283235313268129)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Page Functions'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(42996561777023066)
,p_parent_id=>wwv_flow_imp.id(98790069076844560)
,p_short_name=>'Create New Product'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(44412492119200457)
,p_parent_id=>wwv_flow_imp.id(98790069076844560)
,p_short_name=>'Company Setup'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66977353129537806)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Lenders Setup'
,p_link=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>45
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84270349910622020)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84272713331677440)
,p_parent_id=>wwv_flow_imp.id(84270349910622020)
,p_short_name=>'Loan Repayment Report'
,p_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::'
,p_page_id=>46
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84272926635680810)
,p_parent_id=>wwv_flow_imp.id(84270349910622020)
,p_short_name=>'Loan Application Report'
,p_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84273199348683885)
,p_parent_id=>wwv_flow_imp.id(84270349910622020)
,p_short_name=>'Approved Loan Report'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84273387195688248)
,p_parent_id=>wwv_flow_imp.id(84270349910622020)
,p_short_name=>'Rejected Loan Report'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84273566738691316)
,p_parent_id=>wwv_flow_imp.id(84270349910622020)
,p_short_name=>'Disbursed Loan Report'
,p_link=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84273717553694578)
,p_parent_id=>wwv_flow_imp.id(84270349910622020)
,p_short_name=>'Loan Status Report'
,p_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_page_id=>55
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84273997828698363)
,p_parent_id=>wwv_flow_imp.id(84270349910622020)
,p_short_name=>'Borrower Profile Report'
,p_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(84274121425704071)
,p_parent_id=>wwv_flow_imp.id(84270349910622020)
,p_short_name=>'User Creation Report'
,p_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(98790069076844560)
,p_parent_id=>wwv_flow_imp.id(3128747062493876)
,p_short_name=>'Marketplace'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp.component_end;
end;
/
