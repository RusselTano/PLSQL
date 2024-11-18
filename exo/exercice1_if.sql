SET SERVEROUTPUT ON
ACCEPT sv_user_date PROMPT 'Entrer une date (DD-MON-YYYY)'
DECLARE
    v_date DATE := to_date('&sv_user_date', 'DD-MON-YYYY');
    v_day VARCHAR2(3);
BEGIN
    v_day := TO_CHAR(v_date,'DY');
    --DBMS_OUTPUT.PUT_LINE(v_day);
    
    IF v_day IN ('SAT','SUN')   THEN
        DBMS_OUTPUT.PUT_LINE(v_date || ' tombe un week-end');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_date || ' tombe la semaine');
    END IF;
END;