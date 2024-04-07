# Query 5: Currently Enrolled Students

### Making Query 5:
Step 1: Make a query sql file called 5_currently_enrolled_students.sql

Step 2: Write your query in that file:

    SELECT name, id, cohort_id
    FROM students
    WHERE end_date IS NULL
    ORDER BY cohort_id;

### Running Query 5 Against the Database
Run query 5 against the database:

    \i 1_queries/5_currently_enrolled_students.sql

### Query 5 - Expected Result

        name         | id  | cohort_id 
    ---------------------+-----+-----------
    Deon Hahn           | 151 |        11
    Sean Bartell        | 152 |        11
    Sarai Flatley       | 153 |        11
    Billie Mitchell     | 154 |        11
    Vance Kihn          | 155 |        11
    ...
    (42 rows)