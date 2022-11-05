declare
n1 number(10);
n2 number(10);

begin
     n1:= &n1;
     n2:= &n2;

     if(n1 > n2) then
           dbms_output.put_line(n1 || 'is greater');
     else
           dbms_output.put_line(n2 || 'is greater');
     end if;
end;
 