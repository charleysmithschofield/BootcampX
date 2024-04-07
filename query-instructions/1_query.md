# Query 1: Students in Cohort
Get the names of all the students from a single cohort.

  * Select their id and name.
  * Order them by their name in alphabetical order.
  * Since this query needs to work with any specific cohort, just use any number for their cohort_id.

### Making Query 1 
Step 1: Make a query sql file called 1_students_in_cohort.sql

Step 2: Write your query in that file:

    SELECT name, id 
    FROM students 
    WHERE user_id = 1
    ORDER BY name

### Run Query 1 Against the Database
Run query 1 against the database:

    \i 1_queries/1_students_in_cohort.sql

### Query 1 - Expected Result
Expected Result:

    id |       name        
    ----+-------------------
    1 | Armand Hilll
    13 | Brian Jones
    16 | Carmel Grant
    14 | Clint Cremin
    17 | Colten Gutkowski
    ...
    (18 rows)
