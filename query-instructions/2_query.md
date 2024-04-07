# Query 2: Total Students in Cohorts
Get the total number of students from any number of cohorts combined.

  * Select the total number of studetns who were in the first 3 cohorts

### Making Query 2
Step 1: Make a query sql file called 2_total_students_in_cohorts.sql

Step 2: Write your query in that file:

    SELECT count(id)
    FROM students 
    WHERE cohort_id IN (1,2,3);

### Run Query 2 Against the Database
Run query 2 against the database:

    \i 1_queries/2_total_students_in_cohorts.sql

### Query 2 - Expected Result

    count 
    -------
        48

    (1 row)
