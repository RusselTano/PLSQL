SET SERVEROUTPUT ON
ACCEPT sv_name PROMPT 'Entrer votre nom'

DECLARE 
  nombre NUMBER;
  chaine VARCHAR2(50) := '&sv_name';
BEGIN
  nombre := 5/4;
  
  DBMS_OUTPUT.PUT_LINE(nombre);
  DBMS_OUTPUT.PUT_LINE(UPPER(chaine));
EXCEPTION
  WHEN zero_divide THEN
    DBMS_OUTPUT.PUT_LINE('Error');
END;
