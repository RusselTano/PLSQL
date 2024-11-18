

SET SERVEROUTPUT ON
DECLARE
	v_first_name student.first_name%type;
	v_last_name student.last_name%type;
	v_student_id student.student_id%type := &vs_student_id;

BEGIN
	SELECT first_name, last_name
	INTO v_first_name, v_last_name
	FROM student
	WHERE student_id = v_student_id;

	DBMS_OUTPUT.PUT_LINE('Student name: ' || v_first_name || ' ' || v_last_name);
EXCEPTION
	WHEN no_data_found THEN
	DBMS_OUTPUT.PUT_LINE('No student with id ' || v_student_id);

END;
.
/






