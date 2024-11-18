DECLARE
	v_temp_in NUMBER := &sv_temp_in;
	v_scale_in   CHAR := '&sv_scale_in';
	v_temp_out NUMBER;
	v_scale_out CHAR;
BEGIN
	IF v_scale_in != 'C' AND v_scale_in != 'F' THEN
		dbms_output.put_line('This is not a valid scale');
		v_temp_out := 0;
		v_scale_out := 'C';
	ELSE
		IF v_scale_in = 'C' THEN
			v_temp_out := ((9*v_temp_in) / 5 ) + 32 ;
			v_scale_out := 'F';
		ELSE
			v_temp_out := ((v_temp_in - 32) * 5) / 9 ;
			v_scale_out := 'C';
	END IF;
	dbms_output.put_line('New scale is :' || v_scale_out);
	dbms_output.put_line('New temperature is : ' || v_temp_out);
 END IF;
END;