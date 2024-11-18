SET SERVEROUTPUT ON
DECLARE
  r_emp  emp%rowtype;
  v_empno emp.empno%type := &sv_empno;
  
BEGIN
	SELECT *
	INTO r_emp
	FROM emp
  WHERE empno = v_empno;

	DBMS_OUTPUT.PUT_LINE('Info employé --> ' || r_emp.empno || '--' || r_emp.ename  || '--' || r_emp.job  || '--' || 
  to_char(r_emp.sal,'fm9,999.00$')  || '--' || r_emp.deptno);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('L''employé ' || v_empno || ' n''est pas dans la BD');
END;
