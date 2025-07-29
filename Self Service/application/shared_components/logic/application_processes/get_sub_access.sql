prompt --application/shared_components/logic/application_processes/get_sub_access
begin
--   Manifest
--     APPLICATION PROCESS: get_sub_access
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>3780766536418114
,p_default_application_id=>2000004
,p_default_id_offset=>0
,p_default_owner=>'XXSBS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(45985932485056542)
,p_process_sequence=>2
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_sub_access'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'arr apex_application_global.vc_arr2;',
'V_COMPANY_CODE varchar2(2000);',
'V_SUB_ORG  varchar2(2000);',
'V_DEPARTMENT  varchar2(2000);',
'V_UNIT  varchar2(2000);',
'',
'cursor cur_access ',
'is select COMPANY_CODE,SUB_ORG,DEPARTMENT,UNIT',
'from xxadm.xxadm_password',
'where LOGNAME= NVL(wwv_flow.g_user,USER);',
'',
'begin',
'    open cur_access;',
'    fetch cur_access into V_COMPANY_CODE,V_SUB_ORG,V_DEPARTMENT,V_UNIT;',
'    close cur_access;',
':AP_UORG := v_company_code;',
'    arr := apex_util.string_to_table(V_COMPANY_CODE,'':'');',
'    apex_collection.create_or_truncate_collection(''PX_ACCESS_LEVEL'');',
'    for i in 1..arr.count',
'    loop',
'       apex_collection.add_member(',
'           p_collection_name =>''PX_ACCESS_LEVEL'',',
'           p_c001 =>arr(i),',
'           p_c002 => ''COMPANY_CODE''); ',
'    ',
'    end loop;',
'   ',
'    ',
'    arr := apex_util.string_to_table(V_SUB_ORG,'':'');',
'	if arr.count=0 then',
'		apex_collection.add_member(',
'			   p_collection_name =>''PX_ACCESS_LEVEL'',',
'			   p_c001 =>''0'',',
'			   p_c002 => ''SUB_ORG''); ',
'	else',
'		for i in 1..arr.count',
'		loop',
'		   apex_collection.add_member(',
'			   p_collection_name =>''PX_ACCESS_LEVEL'',',
'			   p_c001 =>arr(i),',
'			   p_c002 => ''SUB_ORG''); ',
'		',
'		end loop;',
'    end if;',
'	',
'    arr := apex_util.string_to_table(V_DEPARTMENT,'':'');',
'	if arr.count=0 then',
'		apex_collection.add_member(',
'			   p_collection_name =>''PX_ACCESS_LEVEL'',',
'			   p_c001 =>''0'',',
'			   p_c002 => ''DEPARTMENT''); ',
'	else',
'		for i in 1..arr.count',
'		loop',
'		   apex_collection.add_member(',
'			   p_collection_name =>''PX_ACCESS_LEVEL'',',
'			   p_c001 =>arr(i),',
'			   p_c002 => ''DEPARTMENT''); ',
'		',
'		end loop;',
'    end if;',
'	',
'    arr := apex_util.string_to_table(V_UNIT,'':'');',
'	if arr.count=0 then',
'		apex_collection.add_member(',
'			   p_collection_name =>''PX_ACCESS_LEVEL'',',
'			   p_c001 =>''0'',',
'			   p_c002 => ''UNIT''); ',
'	else',
'		for i in 1..arr.count',
'		loop',
'		   apex_collection.add_member(',
'			   p_collection_name =>''PX_ACCESS_LEVEL'',',
'			   p_c001 =>arr(i),',
'			   p_c002 => ''UNIT''); ',
'		',
'		end loop;',
'	end if;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
