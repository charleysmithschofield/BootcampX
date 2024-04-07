# Group By and Having - Walkthrough

We can make aggregate functions more useful by combinin them with GROUP BY and HAVING clauses.

An aggregate function is a function that performs a calculation on a set of values and returns a single value. 

Aggregate functions are often used with the GROUP BY clause of the SELECT statement.

## GROUP BY
If we want to calculate the total number of assignment_submissions for all students, the count aggregate function is perfect.

    SELECT  count(assignment_submissions*) as total_submissions
    FROM assignment_submissions;

### Expected Result

    total_submissions
    -----------------
                68886
    (1 row)

But what if we wanted to calculate the total number of assignment_submissions for each student individually, and output the totals next to the student's name?


### GROUP BY
We want to apply the count() function to groups of data, rather than the entire query. The groups in this case are the names of students. We want to apply the count() function for each students.name.

We will start by selecting the student's name from the students table, and the and the total submissions from the assignment_submissions table.

    SELECT students.name as student, count(assignment_submissions.*) as total_submissions
    FROM assignment_submissions
    JOIN students ON students.id = student.id;


Now we just need to tell  SQL that we want count(assignment_submisssions.*) to be run for each students.name, instead of the entire query. 

To do this we use the GROUP BY clause:

    SELECT students.name as student, count(assignment_submissions.*) as total_submissions
    FROM assignment_submissions
    JOIN students ON students.id = student_id
    GROUP BY students.name;


Alter the above query slight to only return the currently enrolled students.

A currently enrolled student has a null end_date:

    SELECT students.name as student, count(assignment_submissions.*) as total_submissions
    FROM assignment_submissions
    JOIN students ON students.id = student_id
    WHERE students.end_date IS NULL
    GROUP BY students.name;