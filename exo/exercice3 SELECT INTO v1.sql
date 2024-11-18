SET SERVEROUTPUT ON
ACCEPT sv_empno PROMPT 'Entrer un num�ro d''employ�'
DECLARE
 
  v_empno   emp.empno%type := &sv_empno;
  v_ename   emp.ename%type;
  v_job     emp.job%type;
  v_sal     emp.sal%type;
  v_deptno  emp.deptno%type;
  
  
BEGIN
	SELECT ename,job,sal,deptno
	INTO v_ename, v_job,v_sal,v_deptno
	FROM emp
    WHERE empno = v_empno;

	DBMS_OUTPUT.PUT_LINE('Info employ� --> ' || v_empno || '--' || v_ename  || '--' || v_job  || '--' || 
  to_char(v_sal,'fm9,999.00$')  || '--' || v_deptno);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('L''employ� ' || v_empno || ' n''est pas dans la BD');
END;
