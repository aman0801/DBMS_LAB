declare
	n number(10);
    m number(2):=0;
begin
	n:=&n;
	for i in 1 .. n 
    LOOP
        if MOD(n,i)=0 then
            m:=m+1;
        end if;
    end loop;

	if m=2 then
		dbms_output.put_line('prime');
	else
		dbms_output.put_line('not prime');
	end if;
end;