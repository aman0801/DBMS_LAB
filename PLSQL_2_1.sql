declare 
cn varchar(10);
n number(2);
begin
cn:= '&ch';
-- n=cn.len();
for i in reverse 1 .. length(cn) loop
 dbms_output.put_line(substr(cn,i,1));
 end loop;
 end;

