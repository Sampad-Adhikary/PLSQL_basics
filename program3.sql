CREATE TABLE Numbers (Num INT); -- Create the Numbers table with one column named Num of type INT

DECLARE
   i INT;
BEGIN
   FOR i IN 1..10 LOOP
      INSERT INTO Numbers VALUES (i); -- Insert integers from 1 to 10 into the Numbers table
   END LOOP;
END;
