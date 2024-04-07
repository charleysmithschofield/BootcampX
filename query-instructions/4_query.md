# Query 4: Non Gmail Students

### Making Query 4:
Step 1: Make a query sql file called 4_non_gmail_students.sql


Step 2: Write your query in that file:

    SELECT name, email, id, cohort_id
    FROM students
    WHERE email NOT LIKE '%@gmail.com'
    AND phone IS NULL;

### Running Query 4 Against the Database
Run query 4 against the database:

    \i 1_queries/4_non_gmail_students.sql

### Query 4 - Expected Result

      name       | id  |           email           | cohort_id 
    -----------------+-----+---------------------------+-----------
    Javonte Ward    | 178 | jessie_howell@hotmail.com |        12
    Jessika Jenkins | 187 | stephanie.koss@kevon.io   |        12
    Jerrold Rohan   | 189 | wehner.twila@hotmail.com  |        12
    (3 rows)