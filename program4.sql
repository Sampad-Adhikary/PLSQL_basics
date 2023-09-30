DECLARE
   salary INT;
   error_message VARCHAR(50);
   error_message2 VARCHAR(50);
BEGIN
    error_message := 'No Data Found';
    error_message2 := 'An Error Occurred';
   -- Attempt to retrieve the salary of an teacher with teacher_id 101
   SELECT teacher_salary INTO salary FROM Teacher_Data WHERE teacher_id = 101;
    SELECT salary;
   -- If the teacher is not found (NO_DATA_FOUND), handle the exception
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      -- Handle no data found error
      SELECT error_message;
    WHEN OTHERS THEN
        -- Handle all other errors
        SELECT error_message2;
END;
