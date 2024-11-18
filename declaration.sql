DECLARE
 
   v_description VARCHAR2(35); 
   
   v_number_test NUMBER; 
   
   v_location CONSTANT VARCHAR2(4) := 'P316';
   
   v_boolean_test BOOLEAN;    

   v_start_date DATE := TRUNC(SYSDATE) + 7;

BEGIN
   DBMS_OUTPUT.PUT_LINE('The location is: '||v_location||'.');
   DBMS_OUTPUT.PUT_LINE('The starting date is: '||v_start_date||'.');
END;
