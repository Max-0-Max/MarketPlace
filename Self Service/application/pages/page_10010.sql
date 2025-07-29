prompt --application/pages/page_10010
begin
--   Manifest
--     PAGE: 10010
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
 p_id=>10010
,p_name=>'About SoftSuite'
,p_alias=>'AHELP'
,p_step_title=>'About SoftSuite'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2586667732224135)
,p_required_patch=>wwv_flow_imp.id(2585411175224133)
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2595704446224150)
,p_plug_name=>'<h2><span style="color:#0000ff"><strong>About SoftSuite</strong></span></h2>'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>wwv_flow_imp.id(2502502666224063)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>SoftSuite&reg;</strong>&nbsp;is a&nbsp;tool for managing Human Capital of an organization. It is useful in various sectors including private (banking, oil &amp; gas, telecommunications, etc) and public (government, hospitals, military, etc'
||') sectors. Whatever the sector your business operates in, it allows you to adopt efficient approaches to developing, attracting, retaining and using the critical skills and knowledge needed to improve the capability of your business.</p>',
'',
'<p><strong>SoftSuite&reg;</strong> is an integrated set of applications that are engineered to seamlessly work together.It is composed of several integrated modules which includes Human Capital Management, Recruitment, Self-Service HR, Payroll Manage'
||'ment, Payment Management, Time &amp; Attendance and Performance Management.</p>',
'',
'<p><strong>SoftSuite&reg;</strong> is tightly integrated with <strong>SoftID&reg;</strong> for Employee Biometric Validation,&nbsp;</p>',
'',
'<p><strong>SoftSuite&reg;</strong> also provides a foundation for workforce information to support processes such as human capital management and allocation, financial management and service automation. SoftSuite includes capabilities for extensibili'
||'ty to other countries while addressing each country&rsquo;s regulatory and cultural functionalities.</p>',
'',
'<p>At the core of&nbsp;<strong>SoftSuite&reg;</strong>&nbsp;is a robust administrative backbone that is the foundation of our Human Resource, Payroll, Reporting and Data analysis functionality. These modules combined drive efficiency for our users as'
||' the system&rsquo;s design puts everything they need right at their fingertips.</p>',
'',
'<p><strong>SoftSuite&reg;</strong> manages the full hire-to-retire process for both employees and contingent workers in an increasingly global environment. With <strong>SoftSuite&reg;</strong>, you can easily adapt your business entities, workers, an'
||'d HR processes to support your strategic objectives.</p>',
'',
'<h2><span style="color:#0000ff"><strong>Act Locally, Manage Globally</strong></span></h2>',
'',
'<p>To function efficiently, companies need to consolidate global business information real-time. With <strong>SoftSuite&reg;</strong>, organizations benefit from global features such as multi-currency capabilities operating on a single global databas'
||'e. This enables business to be conducted globally within the same database, yet still allows users to conduct transactions in a style natural to them, while complying with local regulations.&nbsp;</p>',
'',
'<p><strong>SoftSuite&reg;</strong> capabilities allow you to:</p>',
'',
'<ul>',
'	<li>Manage the process of performing permanent and temporary transfers globally within the organization.</li>',
'	<li>Store applicant and employee information with full validation of addresses, currency, and data formats, banking details, payment methods, and office locations for any country.</li>',
'	<li>Manage recruitment, hiring and deployment.</li>',
'	<li>Meet corporate compliance obligations through local legislative reporting and analysis of workforce statistics.</li>',
'	<li>Consolidate information across countries or lines of business using reports such as global headcount or business intelligence.</li>',
'	<li>SoftSuite streamlines many global functions such as international transfers.</li>',
'	<li>Ensures that information about an employee that applies globally, such as employment history, competency profile, etc are stored only once.</li>',
'</ul>',
'',
'<h2><span style="color:#0000ff"><strong>Automated Workforce Management </strong></span></h2>',
'',
'<p>With <strong>SoftSuite&reg;</strong>, organizations automate all aspects of workforce management, thereby achieving major gains in efficiency, production and cost savings throughout its workforce. <strong>SoftSuite&reg;</strong> ensures that confi'
||'dential data is maintained electronically and securely. Business processes are further streamlined with Recruitment, Self-service, and Workflow Automation, thereby speeding up transactions and reducing overheads and errors.</p>',
'',
'<h2><strong><span style="color:#0000ff">Third Party Integrations</span> </strong></h2>',
'',
'<p>To function efficiently, organizations often implement a combination of resource management solutions.&nbsp;<strong>SoftSuite&reg; </strong>provides APIs that integrates seamlessly with other third party solutions such as Oracle E-Business Suite a'
||'nd SAP. Some key integration features include transfer to Oracle General (Transfer-to-GL). Reporting tools such as Oracle BI Publisher, Oracle Discoverer, JasperReports/BI and other reporting solutions are also tightly integrated with <strong>SoftSui'
||'te&reg;</strong>.</p>',
''))
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2897938827710104)
,p_plug_name=>'<h2><span style="color:#0000ff"><strong>Key Features</strong></span></h2>'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>wwv_flow_imp.id(2502502666224063)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'	<li>Ability to manage people records across business units</li>',
'	<li>Email Notifications</li>',
'	<li>Pay Slip availability on &nbsp;Self-Service and Email</li>',
'	<li>Single Sign-on Capabilities</li>',
'	<li>Seamless Integration of all modules</li>',
'	<li>Employee life cycle management</li>',
'	<li>Elimination of duplicate employees</li>',
'	<li>Date Tracking Features</li>',
'	<li>Transfer to General Ledger</li>',
'	<li>Use of Flex fields</li>',
'	<li>Workflow Approval</li>',
'	<li>Capability to allow people to be permanently or temporarily transferred across business units</li>',
'	<li>Automated people management processes</li>',
'	<li>Comprehensive benefits management</li>',
'	<li>Job/Role definition, requirements, skills &amp; proficiency, budget equivalents</li>',
'	<li>Leaves-types, Eligibility, Schedule per organization or business units, earning/accrual</li>',
'	<li>Contract Staff-duration definition, Full Staff-duration definition</li>',
'	<li>Track Employee Attendance</li>',
'	<li>Payroll to Payment Reconciliation</li>',
'	<li>Broadcast Vacancies</li>',
'	<li>End-to-End Sourcing Cycle</li>',
'	<li>Perform pre-hire checks</li>',
'	<li>Applicant Registrations</li>',
'	<li>Document Uploads and Retrievals</li>',
'	<li>Applicant life cycle management</li>',
'	<li>Loans Requests and Approvals</li>',
'	<li>Leave Requests and Approvals</li>',
'	<li>Eliminate Redundant data Entry</li>',
'	<li>Workflow ApprovalsInline &amp; Email Notifications</li>',
'	<li>Document Uploads and&nbsp;Retrievals</li>',
'	<li>Notification</li>',
'	<li>Automated Employee maintenance processes</li>',
'	<li>Aggregated information for all employee needs</li>',
'	<li>Alerts</li>',
'	<li>Employee Appraisal<em>s</em></li>',
'</ul>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
