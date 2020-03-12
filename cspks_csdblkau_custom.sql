CREATE OR REPLACE PACKAGE BODY cspks_csdblkau_custom AS
     /*-----------------------------------------------------------------------------------------------------
     **
     ** File Name  : cspks_csdblkau_custom.sql
     **
     ** Module     : Core
     ** 
     ** This source is part of the Oracle FLEXCUBE Software Product.
     ** Copyright © 2007,2020 , Oracle and/or its affiliates.  All rights reserved
     ** 
     ** 
     ** No part of this work may be reproduced, stored in a retrieval system, adopted 
     ** or transmitted in any form or by any means, electronic, mechanical, 
     ** photographic, graphic, optic recording or otherwise, translated in any 
     ** language or computer language, without the prior written permission of 
     ** Oracle and/or its affiliates. 
     ** 
     ** Oracle Financial Services Software Limited.
     ** Oracle Park, Off Western Express Highway,
     ** Goregaon (East), 
     ** Mumbai - 400 063, India
     ** India
     -------------------------------------------------------------------------------------------------------
     CHANGE HISTORY
     
     SFR Number         :  
     Changed By         :  
     Change Description :  
     
     -------------------------------------------------------------------------------------------------------
     */
     

   PROCEDURE Dbg(p_msg VARCHAR2)  IS
      l_Msg     VARCHAR2(32767);
   BEGIN
      l_Msg := 'cspks_csdblkau_Custom ==>'||p_Msg;
      Debug.Pr_Debug('CS' ,l_Msg);
   END Dbg;

   PROCEDURE Pr_Log_Error(p_Function_Id in VARCHAR2,p_Source VARCHAR2,p_Err_Code VARCHAR2, p_Err_Params VARCHAR2) IS
   BEGIN
      Cspks_Req_Utils.Pr_Log_Error(p_Source,p_Function_Id,p_Err_Code,p_Err_Params);
   END Pr_Log_Error;
   PROCEDURE Pr_Skip_Handler(p_Stage in VARCHAR2) IS
   BEGIN
      Dbg('In Pr_Skip_Handler..');
   END Pr_Skip_Handler;
   FUNCTION Fn_Post_Build_Type_Structure (p_Source    IN     VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_Addl_Info       IN Cspks_Req_Global.Ty_Addl_Info,
      p_csdblkau     IN  OUT cspks_csdblkau_Main.ty_csdblkau,
      p_Err_Code          IN OUT VARCHAR2,
      p_Err_Params        IN OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Post_Build_Type_Structure..');

      Dbg('Returning Success From Fn_Post_Build_Type_Structure..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Build_Type_Structure ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Build_Type_Structure;

   FUNCTION Fn_Pre_Check_Mandatory(p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
                              p_pk_or_full        IN  VARCHAR2 DEFAULT 'FULL',
      p_csdblkau IN OUT  cspks_csdblkau_Main.ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN

      IS
   BEGIN

      Dbg('In Fn_Pre_Check_Mandatory..');

      Dbg('Returning  Success From Fn_Pre_Check_Mandatory..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Check_Mandatory ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END fn_pre_check_mandatory;

   FUNCTION Fn_Post_Check_Mandatory(p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_Pk_Or_Full     IN  VARCHAR2 DEFAULT 'FULL',
      p_csdblkau IN   cspks_csdblkau_Main.ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN

      IS
   BEGIN

      Dbg('In Fn_Post_Check_Mandatory..');

      Dbg('Returning Success From Fn_Post_Check_Mandatory..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Check_Mandatory ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Check_Mandatory;

   FUNCTION Fn_Pre_Default_And_Validate (p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_csdblkau IN   cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN OUT cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Pre_Default_And_Validate..');

      Dbg('Returning Success From Fn_Pre_Default_And_Validate..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Default_And_Validate ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Default_And_Validate;

   FUNCTION Fn_Post_Default_And_Validate (p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_csdblkau IN   cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN OUT cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Post_Default_And_Validate..');

      Dbg('Returning Success From Fn_Post_Default_And_Validate');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Default_And_Validate ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Default_And_Validate;

   FUNCTION Fn_Pre_Resolve_Ref_Numbers     (p_Source            IN VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_csdblkau     IN OUT cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code          IN OUT VARCHAR2,
      p_Err_Params        IN OUT VARCHAR2)
   RETURN BOOLEAN   IS

   BEGIN

      Dbg('In Fn_Pre_Resolve_Ref_Numbers..');

      Dbg('Returning Success From Fn_Pre_Resolve_Ref_Numbers');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Main.Fn_Pre_Resolve_Ref_Numbers ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Resolve_Ref_Numbers;
   FUNCTION Fn_Post_Resolve_Ref_Numbers         (p_Source            IN VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_csdblkau     IN OUT cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code          IN OUT VARCHAR2,
      p_Err_Params        IN OUT VARCHAR2)
   RETURN BOOLEAN   IS

   BEGIN

      Dbg('In Fn_Post_Resolve_Ref_Numbers..');

      Dbg('Returning Success From Fn_Post_Resolve_Ref_Numbers..');
      RETURN TRUE;

   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When others of cspks_csdblkau_Main.Fn_Post_Resolve_Ref_Numbers ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Resolve_Ref_Numbers;
   FUNCTION Fn_Pre_Product_Default (p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Pre_Product_Default..');

      Dbg('Returning Success From Fn_Pre_Product_Default..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Product_Default ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Product_Default;

   FUNCTION Fn_Post_Product_Default (p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Post_Product_Default..');

      Dbg('Returning Success From Fn_Post_Product_Default..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Product_Default ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Product_Default;

   FUNCTION Fn_Pre_Unlock (p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
      p_Action_Code       IN  OUT  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Pre_Unlock..');

      Dbg('Returning Success From Fn_Pre_Unlock..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Unlock ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Unlock;

   FUNCTION Fn_Post_Unlock (p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
      p_Action_Code       IN  OUT  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Post_Unlock');

      Dbg('Returning Success From Fn_Post_Unlock..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Unlock ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Unlock;

   FUNCTION Fn_Pre_Subsys_Pickup (p_Source    IN  VARCHAR2,
      p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
      p_Action_code    IN  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Pre_Subsys_Pickup..');

      Dbg('Returning Success From Fn_Pre_Subsys_Pickup..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Subsys_Pickup ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Subsys_Pickup;

   FUNCTION Fn_Post_Subsys_Pickup (p_Source    IN  VARCHAR2,
      p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
      p_Action_code    IN  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Post_Subsys_Pickup..');

      Dbg('Returning Success From Fn_Post_Subsys_Pickup..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Subsys_Pickup ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Subsys_Pickup;

   FUNCTION Fn_Pre_Enrich (p_Source    IN  VARCHAR2,
      p_Source_Operation  IN     VARCHAR2,
                              p_Function_id       IN     VARCHAR2,
      p_Action_code    IN  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_wrk_csdblkau IN OUT  cspks_csdblkau_Main.ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Pre_Enrich..');

      Dbg('Returning Success From Fn_Pre_Enrich..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Enrich ..');
         Debug.pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Enrich;

   FUNCTION Fn_Post_Enrich (p_Source    IN  VARCHAR2,
      p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
      p_Action_Code    IN  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Post_Enrich..');

      Dbg('Returning Success From Fn_Post_Enrich..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Enrich ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Enrich;

   FUNCTION Fn_Pre_Upload_Db (p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_Multi_Trip_Id    IN  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Pre_Upload_Db..');

      Dbg('Returning Success From Fn_Pre_Upload_Db..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Upload_Db ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Upload_Db;

   FUNCTION Fn_Post_Upload_Db (p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_Multi_Trip_Id    IN  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
	  l_rec_auth_stat 	CLTB_UPL_AUTH_DETAIL_CUSTOM.AUTH_STAT%TYPE;
	  l_file_auth_stat VARCHAR2(1);
	  l_job_id 		CLTB_UPL_AUTH_DETAIL_CUSTOM.ACMOD_JOB_ID%TYPE;
	  l_auth_success BOOLEAN;
	  l_cnt NUMBER;
    
	  CURSOR c_acmod(p_job NUMBER) IS 
		SELECT account_number 
		FROM cltb_acmod_upload 
		WHERE job_id = p_job
		AND UPLOAD_STAT = 'P'; 
		
    CURSOR c_contract(p_filename VARCHAR2,p_esn NUMBER) IS
    SELECT * FROM bctbs_upload_master 
    WHERE filename=p_filename 
    AND source_ref IN (SELECT external_ref_no 
                       FROM cstbs_ext_contract_stat
                       WHERE import_status='P' 
                       AND EXTERNAL_SEQ_NO=p_esn);
    c_contract_temp c_contract%rowtype;
    TYPE c_contract_tmp IS TABLE OF c_contract_temp%TYPE;
    c_contract_fetch c_contract_tmp;
    l_event_seq_no bctbs_upload_master.event_seq_no%TYPE;
    l_auth_stat    cstbs_contract_event_log.auth_status%TYPE;
    auth_failed EXCEPTION;
    l_totcont NUMBER;
    lrejectcont NUMBER;
    lsuccesscont NUMBER;
    
    
   BEGIN
   --FCUBSENH-25_BC STARTS
		Dbg('In Fn_Post_Upload_Db..');
    dbg('fetching the contracts belonging to file');
    IF p_csdblkau.v_sttb_liq_bulk_auth_custom.FUNCTION_ID = 'BCDCONON' THEN
    BEGIN
    SELECT event_seq_no INTO l_event_seq_no
    FROM bctbs_upload_master
    WHERE filename=p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name
    AND ROWNUM=1;
    dbg('event_seq_no:'||l_event_seq_no);
    EXCEPTION
    WHEN OTHERS THEN
    dbg('error in getting the event_seq_no');
    END;
    dbg('Initialising the cursor');
    OPEN  c_contract(p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name,l_event_seq_no);
    FETCH c_contract
    BULK COLLECT INTO c_contract_fetch;
    CLOSE c_contract;
    IF c_contract_fetch.COUNT>0 THEN
    FOR j in 1..c_contract_fetch.COUNT LOOP
    dbg('Selected contract_ref_no:'||c_contract_fetch(j).contract_ref_no);
    dbg('checking whether it is authorised already');
    ovpkss.Pr_Initerrtbl;
    BEGIN
    --checking whether contract is authorised
    BEGIN
    SELECT auth_status INTO l_auth_stat 
    FROM cstbs_contract_event_log
    WHERE contract_ref_no=c_contract_fetch(j).contract_ref_no
    AND event_seq_no=c_contract_fetch(j).event_seq_no;
    dbg('Auth status:'||l_auth_stat);
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
    dbg('no data found');
    RAISE auth_failed;
    WHEN OTHERS THEN
    dbg('some error here 1');
    RAISE auth_failed;
    END;
    --1.check whether individual auth is allowed
    IF l_auth_stat='U' THEN
    dbg('Going for authorisation');
    IF NOT
     bcpkss_auth1.fn_bcauthorize_acontract(c_contract_fetch(j).contract_ref_no,
                                           p_err_code, 
                                           p_err_params) THEN
     debug.pr_debug('BC', 'fn_BCauthorize_a Contract BOMBED');
     ovpkss.pr_appendtbl(p_err_code,p_err_params);
    END IF;
   
   /* dbg('Updating the external table');
    UPDATE cstbs_ext_contract_stat
    SET import_status='P'
    WHERE external_ref_no=c_contract_fetch(j).contract_ref_no;	*/
    
    ELSE
    dbg('Record is already authorised');    
    l_rec_auth_stat:='F';
    p_Err_Code:='BC-UPL-01';
    p_Err_Params:=c_contract_fetch(j).contract_ref_no;
    ovpkss.pr_appendtbl(p_err_code,p_err_params);
    RAISE auth_failed;
    END IF;
  
    dbg('p_Err_Code: ' || p_Err_Code);
    EXCEPTION
		WHEN auth_failed THEN
		dbg('Failed to insert auth details for ' || c_contract_fetch(j).contract_ref_no);
    dbg('Error Cause' || SQLERRM);
    l_rec_auth_stat:='F';
  
    BEGIN		 
		dbg('Inserting into Bulk auth table');
		INSERT INTO  sttb_liq_auth_rec
    (file_name,
		 account_number,
		 auth_stat,
		 err_code)
    VALUES 
    (p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name,
		 c_contract_fetch(j).contract_ref_no,
     l_rec_auth_stat,
		 p_Err_Code);
     IF p_err_code IS NOT NULL THEN
     debug.pr_debug('BC', 'l_err_code' || p_err_code);
     INSERT INTO cstbs_upload_exception
    (branch_code,
     source_ref,
     upload_id,
     ERROR_CODE,
     error_parameters,
     source_seq_no,
     filename,
     error_code_type)
     VALUES
     (global.current_branch,
      c_contract_fetch(j).source_ref,
      global.user_id,
      p_err_code,
      p_err_params,
      c_contract_fetch(j).event_seq_no,
      p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name,
      'E');
     END IF;
           
            
        
     COMMIT;
		EXCEPTION
		WHEN OTHERS THEN
		dbg('Failed to insert auth details for ' || c_contract_fetch(j).contract_ref_no);
    dbg('Error Cause' || SQLERRM);
		END;
		END;		
  				
  
   
    END LOOP;
  
  
  BEGIN
    INSERT INTO bctb_file_auth_detail 
    VALUES (p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name,'A');
   
  EXCEPTION
    WHEN dup_val_on_index THEN
      dbg('file with this name has already been authorised...');
      dbg('format_error_backtrace-->' ||
          dbms_utility.format_error_backtrace);
      --p_err_code := 'FT-UPCE0995';
      RETURN FALSE;
  END;
   END IF;
   END IF;
  --FCUBSENH-25_BC ENDS
		--MLIQ Upload Changes starts
		DBG ('File Name : ' || p_Wrk_csdblkau.v_sttb_liq_bulk_auth_custom.file_name);
		DBG ('Function ID : ' || p_Wrk_csdblkau.v_sttb_liq_bulk_auth_custom.FUNCTION_ID);
		DBG ('File Name : ' || p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name);
		DBG ('Function ID : ' || p_csdblkau.v_sttb_liq_bulk_auth_custom.FUNCTION_ID);
		IF p_csdblkau.v_sttb_liq_bulk_auth_custom.FUNCTION_ID = 'CLDPMNT' THEN
			BEGIN 
				SELECT AUTH_STAT, ACMOD_JOB_ID
				INTO l_file_auth_stat, l_job_id
				FROM CLTB_UPL_AUTH_DETAIL_CUSTOM
				WHERE FILE_NAME = p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name;
			EXCEPTION
				WHEN OTHERS THEN
				DBG('Failed to fetch file details from CLTB_UPL_AUTH_DETAIL_CUSTOM');
				p_Err_Code := 'CL-LIQ-1001';
				RETURN FALSE;
			END;
			DBG('l_file_auth_stat : ' || l_file_auth_stat);
			IF l_file_auth_stat = 'A' THEN 
				DBG('File already Authorised');
				p_Err_Code := 'CL-LIQ-1002';
				RETURN FALSE;
			END IF;
			
			FOR l_acc in c_acmod(l_job_id) LOOP
				p_Err_Code := NULL;
				p_Err_Params := NULL;
				
				SELECT count(1) into l_cnt 
				FROM cltb_liq 
				WHERE account_number = l_acc.account_number
				AND branch_code = global.current_branch
				AND auth_stat = 'U';
				
				IF l_cnt <> 0 THEN
				
					IF CLPKS_LH_CONVERSION.fn_auth_loan_liqd(global.current_branch,
																			l_acc.account_number,
																			p_Err_Code,
																			p_Err_Params) THEN
						l_rec_auth_stat := 'S';
						p_Err_Code := NULL;
					ELSE 
						DBG (' Auth call returned false');
						l_rec_auth_stat := 'F';
					END IF;
				ELSE 
					DBG('Payment already authorised');
					l_rec_auth_stat := 'F';
					p_Err_Code := 'CL-LIQ-1003';
				END IF;
					
				BEGIN		
					DBG('p_Err_Code: ' || p_Err_Code);
					ovpkss.gl_tblError.Delete; -- clearing errors from displaying
					
					INSERT INTO  sttb_liq_auth_rec( FILE_NAME,
												ACCOUNT_NUMBER,
												AUTH_STAT,
												ERR_CODE)
									VALUES (p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name,
											l_acc.account_number,
                      l_rec_auth_stat,
											p_Err_Code);
				EXCEPTION
					WHEN OTHERS THEN
						DBG('Failed to insert auth details for ' || l_acc.account_number);
            DBG(' ERROR : ' || SQLERRM);
				END;				
			END LOOP;
      
			BEGIN
				DBG('Updating Auth_stat as A in CLTB_UPL_AUTH_DETAIL_CUSTOM ');
				UPDATE CLTB_UPL_AUTH_DETAIL_CUSTOM 
				SET AUTH_STAT = 'A' 
				WHERE FILE_NAME = p_csdblkau.v_sttb_liq_bulk_auth_custom.file_name;
				DBG('No of rows updated : ' || SQL%ROWCOUNT);
			EXCEPTION
				WHEN OTHERS THEN
				DBG('Failed to update Auth_stat in CLTB_UPL_AUTH_DETAIL_CUSTOM with error : ' || SQLERRM);
			END;
		END IF;
      Dbg('Returning Success From Fn_Post_Upload_Db..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Upload_Db ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Upload_Db;

   FUNCTION Fn_Pre_Process (p_Source    IN  VARCHAR2,
      p_Source_Operation  IN     VARCHAR2,
      p_Function_Id       IN     VARCHAR2,
      p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_Multi_Trip_Id    IN  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Pre_Process..');

      Dbg('Returning Success From Fn_Pre_Process..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Process ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Process;

   FUNCTION Fn_Post_Process (p_Source    IN  VARCHAR2,
      p_Source_Operation  IN     VARCHAR2,
      p_Function_id       IN     VARCHAR2,
      p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_Multi_Trip_Id    IN  VARCHAR2,
      p_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Prev_csdblkau IN cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT  cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code       IN  OUT VARCHAR2,
      p_Err_Params     IN  OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Post_Process..');

      Dbg('Returning Success From Fn_Post_Process..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Process ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Post_Process;

   FUNCTION Fn_Pre_Query  ( p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_Full_Data     IN  VARCHAR2 DEFAULT 'Y',
      p_With_Lock     IN  VARCHAR2 DEFAULT 'N',
      p_QryData_Reqd IN  VARCHAR2 ,
      p_csdblkau IN   cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT   cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code          IN OUT VARCHAR2,
      p_Err_Params        IN OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      Dbg('In Fn_Pre_Query..');

      Dbg('Returning Success From Fn_Pre_Query..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Pre_Query ..');
         Debug.pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END Fn_Pre_Query;

   FUNCTION Fn_Post_Query  ( p_Source    IN  VARCHAR2,
                              p_Source_Operation  IN     VARCHAR2,
                              p_Function_Id       IN     VARCHAR2,
                              p_Action_Code       IN     VARCHAR2,
      p_Child_Function    IN  VARCHAR2,
      p_Full_Data     IN  VARCHAR2 DEFAULT 'Y',
      p_With_Lock     IN  VARCHAR2 DEFAULT 'N',
      p_QryData_Reqd IN  VARCHAR2 ,
      p_csdblkau IN   cspks_csdblkau_Main.Ty_csdblkau,
      p_Wrk_csdblkau IN OUT   cspks_csdblkau_Main.Ty_csdblkau,
      p_Err_Code          IN OUT VARCHAR2,
      p_Err_Params        IN OUT VARCHAR2)
   RETURN BOOLEAN
      IS
   BEGIN

      dbg('In Fn_Post_Query');

      Dbg('Returning Success From Fn_Post_Query..');
      RETURN TRUE;
   EXCEPTION
      WHEN OTHERS THEN
         Debug.Pr_Debug('**','In When Others of cspks_csdblkau_Custom.Fn_Post_Query ..');
         Debug.Pr_Debug('**',SQLERRM);
         p_Err_Code    := 'ST-OTHR-001';
         p_Err_Params  := NULL;
         RETURN FALSE;
   END fn_post_query;


END cspks_csdblkau_custom;