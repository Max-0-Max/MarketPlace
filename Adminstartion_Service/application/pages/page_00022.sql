prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Mass User Creation'
,p_alias=>'AG33'
,p_page_mode=>'MODAL'
,p_step_title=>'Mass User Creation'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4445607240249340)
,p_plug_name=>'Mass User Creation'
,p_icon_css_classes=>'fa-users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5447994671166695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5406108794166656)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(5505728306166738)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4446240444249341)
,p_plug_name=>'Mass User Creation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(5451601628166698)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_owner=>'XXADM'
,p_query_table=>'XXADM_MASS_USERS'
,p_query_where=>' nvl(flag,''N'') !=''Y'''
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4446353358249341)
,p_name=>'Mass User Creation'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SUITEUSER'
,p_internal_uid=>4446353358249341
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4446725568249352)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4447138221249353)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'&AP_STAFF_ID_LABEL.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4447553339249354)
,p_db_column_name=>'USERNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4447949841249355)
,p_db_column_name=>'NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4448375635249355)
,p_db_column_name=>'PASSWORD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Password'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4448754770249356)
,p_db_column_name=>'ACCESS_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Access Level'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(4454145869322656)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4449123150249357)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3974823347855533)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4449595417249357)
,p_db_column_name=>'FLAG'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Flag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3659901932340348)
,p_db_column_name=>'MSG'
,p_display_order=>28
,p_column_identifier=>'I'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4450696800256194)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'44507'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:STAFF_ID:USERNAME:NAME:PASSWORD:ACCESS_LEVEL:STATUS:FLAG:MSG'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3659475027340343)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4446240444249341)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3660036704340349)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4446240444249341)
,p_button_name=>'Purge'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(5504984767166738)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Purge Record'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3659536885340344)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Users'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_rtn_code varchar2(10);',
'p_msg varchar2(4000);',
'v_cnt number;',
'p_name varchar2(100);',
'',
'Begin',
'',
'for i in(select id,STAFF_ID,name,username,password,ACCESS_LEVEL,STATUS',
'        from xxadm.xxadm_mass_users ',
'        where nvl(flag,''N'') !=''Y'')',
'loop',
'        begin',
'        select count(1),full_name',
'        into v_cnt,p_name',
'        from xxhrms.xxhrms_people',
'        where person_id=i.STAFF_ID',
'        and rownum=1',
'        group by full_name;',
'        ',
'        if v_cnt=0 then',
'            update xxadm.xxadm_mass_users ',
'            set flag=''E'', msg=''Employee does not Exist''',
'            where id =i.id;',
'           ',
'            continue;',
'            ',
'       end if;',
'      ',
'        select count(1)',
'        into v_cnt ',
'        from xxadm.xxadm_password',
'        where (logname=i.username  or staff_id=i.STAFF_ID);',
'        ',
'        if v_cnt>0 then',
'             update xxadm.xxadm_mass_users ',
'            set flag=''E'', msg=''Username Or Staff_Id Exists''',
'            where id =i.id;',
'            continue;',
'       end if; ',
'        ',
'        ',
'            xxadm.xxadm_security_pkg.add_user(i.username,i.password,i.staff_id,p_name,i.access_level,i.status,',
'                                         :AP_COMPANY_CODE,null,null,null,v_rtn_code,p_msg);',
'            if nvl(v_rtn_code,''1'')=''0'' then                             ',
'                update xxadm.xxadm_mass_users ',
'                set flag=''Y'', msg=''Successful''',
'                where id =i.id;',
'            else',
'                 update xxadm.xxadm_mass_users ',
'                set flag=''E'', msg=p_msg',
'                where id =i.id;',
'            end if;',
'       -- end if;',
'    exception ',
'     when others then ',
'     p_msg:=sqlerrm;',
'         update xxadm.xxadm_mass_users ',
'        set flag=''E'',msg=p_msg',
'        where id =i.id;',
'    end;',
'end loop;',
'',
'commit;',
'EXCEPTION',
'    WHEN  others THEN',
'    null;',
'',
' ',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3659475027340343)
,p_process_success_message=>'Action Processed!!'
,p_internal_uid=>3659536885340344
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3660164058340350)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Purge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete xxadm.xxadm_mass_users;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3660036704340349)
,p_internal_uid=>3660164058340350
);
wwv_flow_imp.component_end;
end;
/
