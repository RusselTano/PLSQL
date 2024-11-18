SET SERVEROUTPUT ON
ACCEPT sv_cara PROMPT 'Entrer une lettre pour rechercher les noms'
DECLARE
  v_count NUMBER;
  v_cara VARCHAR2(1) := '&sv_cara';
BEGIN

  SELECT COUNT(*) 
  INTO v_count
  FROM student
  WHERE UPPER(substr(last_name,1,1)) = UPPER(v_cara);
  --WHERE UPPER(last_name) like UPPER(v_cara) || '%';
 
  
  dbms_output.put_line('Il y a ' || v_count ||' étudiant(s) avec un nom débutant par ' ||
    UPPER(v_cara));
END;