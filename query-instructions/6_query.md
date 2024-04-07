# Query 6: Github Activity

### Making Query 6:
Step 1: Make a query sql file called 6_graduates_without_linked_github.sql

Step 2: Write your query in that file:

    SELECT name, email, phone
    FROM students
    WHERE github IS NULL
    AND end_date IS NOT NULL;

### Running Query 6 Against the Database
Run query 6 against the database:

    \i 1_queries/6_graduates_without_linked_github.sql

### Query 6 - Expected Result

       name        |             email             |    phone     
    -------------------+-------------------------------+--------------
    Herminia Smitham  | sawayn.sarina@yahoo.com       | 778-251-5094
    Jacinthe Kautzer  | litzy_fay@hilpert.net         | 075-883-5570
    Bernardo Turcotte | margarita.anderson@paolo.name | 814-473-6929
    Eloisa Quigley    | schmidt.ansel@gmail.com       | 276-965-2022
    Tiana Altenwerth  | zelda.stanton@yahoo.com       | 448-872-0954
    Hailie Kutch      | zora.corkery@goldner.net      | 249-763-9998
    (6 rows)