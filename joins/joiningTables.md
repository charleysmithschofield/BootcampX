# JOINing Tables

In a relational database, the plan for organizing our data is to use lots of tables. We end up with lots of tables connected to each other with foreign keys. 

Now how do we now retrieve data from multiple tables at once?

We do it with JOINs.

  * Database normalization has us distributing our data between multiple tables, so it's very very common for a single query to access data stored in multiple tables.


## Joining Tables
So far we've only SELECTed data from a single table, but in a real world database, we need to SELECT data from multiple tables at once.

In our BootcampX database we currently have four tables, but for now we'll focus on students and cohorts. If we want to select the name and cohort_id of all students its simple:

    SELECT name, email, cohort_id
    FROM students;

But what if we wanted the cohort name instead of the cohort id?

We need to get data that is stored in more than one table. 

## How to Get Data from More than One Table
To start using multiple tables, we first have to JOIN them:

    SELECT name, email, cohort_id
    FROM studens JOIN cohorts;

So we want to select data fromt he students table and the cohorts table JOINed together. If these two tables are JOINed together, we can select columns from either table.

    SELECT name, email, name
    FROM students JOIN cohorts;

And to make our results look nicer, we can alias the names

    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM students JOIN cohorts;

This query is starting to work, but we're missing one very important pieve of information. 

How is the database supposed to JOIN the tables?

How is the data in the students table related to the data in the cohorts table?

We know that the cohort_id in the students table relates tot he id in the cohorts table. We know that we can associate all of the data of a single student with an all of the data of a single cohort using this foreign key relation.

It's easy for us to use this relationship to see that Armand Hilll was in the FEB12 cohort.

But the database doesn't know that we want to JOIN the tables using these columns.

We must explicitly tell the database to join these two tables using the cohort_id from students and the id from cohorts. 

How?

We do this with the ON keyword:


    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM students JOIN cohorts ON cohort_id = cohorts.id;


### Every JOIN must also have an ON!

Order does not matter here, so we could also write the same query like this:

    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM cohorts JOIN students ON cohort_id = cohorts.id;

Or this:

    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM students JOIN cohorts ON cohorts.id = cohort_id;


## INNER JOIN
The kind of JOINing that we've done so far is called INNER JOIN.

We could also rewrite the query to include the INNER keyword:

    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

When we run this query, Hadley Corkery and Jeramie Volkman didn't make it onto the list.

In face, any student not currently enrolled will not appear b/c they have no cohort_id.

An INNER JOIN will only give us rows where there is a match between the two tables.

Any students with a cohort_id of NULL will not appear in the results.

99% of the time, we want to use an INNER JOIN. With a query like this, where we're getting a list of students and their cohort names, we probably don't want to include any students without a cohort. 

However, there are times when we do want to include data where there isn't a match. In these cases, we have to use an OUTER JOIN.


## OUTER JOIN

    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;

This is the same query as before but INNER has been replaced with OUTER.

Run this OUTER JOIN, this should be the expected result:

    ERROR:  syntax error at or near "OUTER"


That is because are 3 different types of OUTER JOIN and we need to specify which one we want to perform:

LEFT, RIGHT, or FULL.


## LEFT OUTER JOIN
The LEFT OUTER JOIN will return all of the students, even ones without a cohort_id

    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;


## RIGHT OUTER JOIN
The RIGHT OUTER JOIN will return all cohorts, even ones without any students enrolled.

    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

## FULL OUTER JOIN
The FULL OUTER JOIN will return all cohorts and all students, even when there is no match.

    SELECT students.name as student_name, email, cohorts.name as cohort_name
    FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;


## Types of JOINS Summary
An OUTER JOIN will join the tables similarly to an INNER JOIN but will return all results for one of the tables, even when the join condition is not met. For any row where the condition was not met, a row is added with NULL data.

This is where the LEFT, RIGHT, and FULL, come in. We use these to specify which table should have all of its rows returned, regardless of the condition being met.

#1:

    FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

#2.
    
    FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

#3.

    FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

Breakdown:
#1. The first query will return all students b/c students is to the LEFT of the word JOIN.

#2. The second query will reutrn all of the cohorts b/c cohorts is to the RIGHT of the word JOIN.

#3. The third query will return all rows from both tables even when there is no match.


## LEFT and RIGHT
When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. In the rest of our examples, we will omit the OUTER keyword.

We could also rewrite any RIGHT JOIN as a LEFT JOIN, just by changing the order of the tables. So the following two queries would produce identical results:

1.

    FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;

2. 

    FROM cohorts RIGHT JOIN students ON cohorts.id = cohort_id;


## Rollover Students
Now that we understand JOINs a little, let's try writing another query that requires a JOIN.

Sometimes a student's start_date will differ from their cohort's start_date.

A student may have started in one cohort, gotten sick, and had to finish in a different cohort. 

We will call this type of student a rollover student.

### Select All Rollover Students

  * Get the student's name, student's start_date, cohort's name, and cohort's start_date.

  * Alias the column names to be more descriptive.

  * Order by the start date of the cohort.

        SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
        FROM students
        JOIN cohorts ON cohort_id = cohorts.id
        WHERE cohorts.start_date != students.start_date
        ORDER BY cohort_start_date;


## Conclusion
We learned about two different types of joins, INNER and OUTER.

  * An INNER JOIN will only return results where this is a match between the two tables.

  * An OUTER JOIN will do the same as an INNER JOIN but also returns unmatched rows in one or both tables.

We also learned that an OUTER JOIN can be:

  * LEFT
  * RIGHT
  * FULL