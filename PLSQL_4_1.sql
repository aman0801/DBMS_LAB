-- -Write a procedure that is passed a student’s identification number and returns back the student’s 
-- full name and phone number from the STUDENT table to the calling program.
-- Also write an anonymous block with the procedure call.

CREATE OR REPLACE procedure student(studentid in number, first out varchar, last out varchar, phone out number) 
is begin
vfirst student.first%type;
vlast student.last%type;
vnumber student.number%type;

select first into vfirst, last in vlast, phone in to vnumber
where studentid = eid;
end student;
begin
student(1);
end;
/