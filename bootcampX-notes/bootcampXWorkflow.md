# BootcampX Workflow

## Requirements
In future exercises, we will receive a list of requirements that we will have to write queries for. Each query will be written in it's own .sql file.

Before starting a new exercise, create new directory that all of the query files can be stored in.

Because each query will be inside its own file, we can write all of the SQL code in our text editor. We will then execute the query against our database using \i filename.sql from within our psql session.

See new directory called BootcampX called 0_selects


## Example Requirements
We need a list of all the students that haven't added their Github username to their account, so we can ask them to add it.

Your task is to get all the students w/o Github username.

 * Select their id, name, email and cohort_id
 * Order them by cohort_id


        SELECT id, name, email, cohort_id
        FROM students
        WHERE github_username IS NULL
        ORDER BY cohort_id;


## Query Conventions
* Use a separate line for each clause
* Uppercase each reserved SQL keyword
* lowercase for other info
  

## Exectute the Query
As you're writing the query, you should be incrementally executing it in the database to make sure it's working correctly. There is no penalty for executing queries so execute as many times as you like.

Execute the SQL file.

  1. Make sure you're in a psql session.
    1a. Execute psql from, the BootcampX directory.
    1b. Make sure you're using the bootcampx database \c bootcampx.
  2. Execute the query with the following command:

          \i 0_selects/1_students_without_github.sql


## Expected Result:

 id  |       name        |             email              | cohort_id 
-----+-------------------+--------------------------------+-----------
  99 | Herminia Smitham  | sawayn.sarina@yahoo.com        |         7
 102 | Jacinthe Kautzer  | litzy_fay@hilpert.net          |         7
 111 | Bernardo Turcotte | margarita.anderson@paolo.name  |         8
 123 | Eloisa Quigley    | schmidt.ansel@gmail.com        |         9
 128 | Tiana Altenwerth  | zelda.stanton@yahoo.com        |         9
...
(20 rows)