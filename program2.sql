-- Declare variables to store student names and marks
DECLARE
    student1_name VARCHAR(50);   -- Variable for the first student's name
    student2_name VARCHAR(50);   -- Variable for the second student's name
    student1_marks INT;         -- Variable for the first student's marks
    student2_marks INT;         -- Variable for the second student's marks
BEGIN
    -- Assign values to student variables
    student1_name := 'John';     -- Assign the name 'John' to student1_name
    student2_name := 'Jane';     -- Assign the name 'Jane' to student2_name
    student1_marks := 75;    -- Assign the marks 75000 to student1_marks
    student2_marks := 55;    -- Assign the marks 85000 to student2_marks
    
    -- Compare marks and insert the appropriate student data into the table
    IF student1_marks > student2_marks THEN
        INSERT INTO Student VALUES (student1_name, student1_marks); -- Insert John's data
        SELECT student1_name;  -- Select and return student1_name if student1_marks > student2_marks
    ELSE
        INSERT INTO Student VALUES (student2_name, student2_marks); -- Insert Jane's data
        SELECT student2_name;  -- Select and return student2_name if student2_marks >= student1_marks
    END IF;
    
END;


