declare
	n number(10);
	x number(10);
	rev number(10):=0;
	m number(1);
begin
	n:=&n;
	x:=n;
	while(n>0)
		loop
			m:=MOD(n,10);
			rev:=rev*10+m;
			n:=n/10;
		end loop;
	if rev=x then
		dbms_output.put_line('palindrome');
	else
		dbms_output.put_line('not palindrome');
	end if;
end;