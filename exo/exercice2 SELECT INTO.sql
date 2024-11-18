DECLARE
  v_moyenne NUMBER :=0;
BEGIN
  SELECT avg(cost)
  INTO v_moyenne
  FROM course;
  
  DBMS_OUTPUT.PUT_LINE('La moyenne des coûts des cours de notre institution est de ' ||
                      TO_CHAR(v_moyenne,'fm$999,990.00'));
END;
