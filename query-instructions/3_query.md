# Query 3: Contact Details
Get all of the students that don't have an email or phone number.

### Making Query 3:
Step 1: Make a query sql file called 3_student_contact_details.sql

Step 2: Write your query in that file:

    SELECT name, id, cohort_id
    FROM students
    WHERE email IS NULL
    OR phone IS NULL;

### Running Query 3 Against the Database
Run query 3 against the database:

    \i 1_queries/3_student_contact_details.sql

### Query 3 - Expected Result

    name       |id  
    ------------------+-----
    Aurore Yundt     | 160
    Cory Toy         | 161
    Kurt Turcotte    | 163
    Elda McClure     | 164
    Luisa Sipes      | 168
    ...
    (17 rows)