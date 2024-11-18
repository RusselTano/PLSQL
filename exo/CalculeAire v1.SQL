SET SERVEROUTPUT ON


DECLARE
    v_rayon     NUMBER  := 45;
    v_aire      NUMBER  := 0; 
    PI        constant NUMBER := 3.14159;
    
BEGIN
	v_aire := POWER(v_rayon, 2)* PI;
   --v_aire := ROUND(v_rayon * v_rayon * PI,2);
   dbms_output.put_line('L''aire du cercle est de :' || v_aire);
   
END;
