declare
ch char(1);
begin
ch:= '&ch';
if ch='a' or ch='e' or ch='i' or ch='v' or ch='u' then
     dbms_output.put_line('vowel');
else
      dbms_output.put_line('not vowel');
      end if;
end;