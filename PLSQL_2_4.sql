DECLARE
 n number := &first_n_number;
BEGIN
 DBMS_OUTPUT.PUT_LINE ('The first ' ||n|| ' numbers are: ');
for i in 1..n loop
 DBMS_OUTPUT.PUT(i || ' ');
END LOOP;
dbms_output.new_line;
END;