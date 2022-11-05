DECLARE 
   a number(2) ; 
BEGIN 
   FOR a IN REVERSE 1 .. 10 LOOP 
      dbms_output.put_line('value a:'||a); 
   END LOOP; 
END;