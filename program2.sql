CREATE TABLE Employee (Name VARCHAR(50), Salary INT);

-- Declare variables to store employee names and salaries
DECLARE
    emp1_name VARCHAR(50);   -- Variable for the first employee's name
    emp2_name VARCHAR(50);   -- Variable for the second employee's name
    emp1_salary INT;         -- Variable for the first employee's salary
    emp2_salary INT;         -- Variable for the second employee's salary
BEGIN
    -- Assign values to employee variables
    emp1_name := 'John';     -- Assign the name 'John' to emp1_name
    emp2_name := 'Jane';     -- Assign the name 'Jane' to emp2_name
    emp1_salary := 75000;    -- Assign the salary 75000 to emp1_salary
    emp2_salary := 55000;    -- Assign the salary 85000 to emp2_salary
    
    -- Compare salaries and insert the appropriate employee data into the table
    IF emp1_salary > emp2_salary THEN
        INSERT INTO Employee VALUES (emp1_name, emp1_salary); -- Insert John's data
        SELECT emp1_name;  -- Select and return emp1_name if emp1_salary > emp2_salary
    ELSE
        INSERT INTO Employee VALUES (emp2_name, emp2_salary); -- Insert Jane's data
        SELECT emp2_name;  -- Select and return emp2_name if emp2_salary >= emp1_salary
    END IF;
    
END;


