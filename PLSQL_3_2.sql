-- 2. Create a PLSQL that declare a cursor. Pass a parameter to the cursor of the type that is the same as 
-- in the salary column in the employee table. Open the cursor with a value for the parameter. Retrieve
-- information into the cursor for a salary higher than the parameter value. Use a loop to print each employee's 
-- information from the cursor.

DECLARE
    CURSOR csr(sal IN NUMBER) IS
        SELECT lname, fname, salary, hiredate
        FROM employee
        WHERE salary > sal;
    emp_rec csr%ROWTYPE;
BEGIN
    OPEN csr(50000);
    LOOP
        FETCH csr INTO emp_rec;
        EXIT WHEN csr%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(emp_rec.lname || ' ' || emp_rec.fname || ' ' || emp_rec.salary || ' ' || emp_rec.hiredate);
    END LOOP;
    CLOSE csr;
END;
