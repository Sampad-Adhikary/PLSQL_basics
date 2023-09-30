CREATE TABLE Numbers (Num INT); -- Create the Numbers table with one column named Num of type INT

DECLARE
   i INT;
   j INT := 1;
BEGIN
   FOR i IN REVERSE 1..10 LOOP
      INSERT INTO Numbers VALUES (i); -- Insert integers from 1 to 10 into the Numbers table
   END LOOP;
   WHILE j <= 10 LOOP
      INSERT INTO Numbers VALUES (j); -- Insert integers from 11 to 20 into the Numbers table
      j := j + 1; -- Increment i for the next iteration
   END LOOP;
END;
