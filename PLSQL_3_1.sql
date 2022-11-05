-- 1.Create a PLSQL block to declare a cursor to select last name, first name, salary and hire date from the
-- employee table. Retrieve each row from the cursor and print the employee's information if the employee's
-- salary is greater than 50,000 USD and the hire date is before 31st December, 1997.

declare
cursor csr is select FNAME, LNAME, SALARY, HIREDATE from employee
WHERE SALARY > 50000 and HIREDATE < to_date('31-12-1997', 'DD-MM-YYYY');
emp csr%ROWTYPE;
begin
open csr;
loop
fetch csr into emp;
exit when csr%notfound;
DBMS_OUTPUT.PUT_LINE(emp.FNAME||' '||emp.LNAME||' '||emp.salary||' '||emp.HIREDATE);
end loop;
close csr;
end;
/

