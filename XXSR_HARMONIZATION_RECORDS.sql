create or replace package xxsr_harmonization_records is
    -- Author  : Taiwo
  -- Created : 5/4/2021 12:33:21 PM
  -- Purpose : Transfer of Payroll Records via FTP

  p_username varchar2(50) := 'softalliance' ;
  p_auth_key varchar2(100);
  p_reference_key number := 8854275;
  p_usersign varchar2(50) := p_username ||'::'|| trunc(to_char(sysdate,'YYYY'))||trunc(to_char(sysdate,'MM'))||trunc(to_char(sysdate,'DD')) ;  -- username::YYYYMDD
  p_signmeth raw(16) := dbms_crypto.hash(utl_i18n.string_to_raw(p_usersign, 'AL32UTF8'), dbms_crypto.hash_md5);
  p_signature raw(32) := dbms_crypto.HASH(utl_i18n.string_to_raw(lower(p_signmeth), 'AL32UTF8'), dbms_crypto.hash_sh256); -- 32 * 8-bit = 256-bit
  function generateAuthCode return varchar2;
  procedure uploadSoftsuiteMasterRecRest(p_month_code IN VARCHAR2);
  procedure stageSoftsuiteMasterRecRest;
  procedure processSoftsuiteMasterRecRest;
  procedure uploadSoftsuiteHistRecRest(p_month_code IN VARCHAR2, p_mda IN VARCHAR2);
  procedure stageSoftsuiteHistRecRest;
  procedure processSoftsuiteHistRecRest;
  procedure runAllProcesses;
  procedure runSoftsuiteMasterRecBatchlog;
  procedure runSoftsuiteHistRecBatchlog;
end xxsr_harmonization_records;
