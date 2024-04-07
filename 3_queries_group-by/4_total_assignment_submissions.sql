-- Query 4: Total Assignment Submissions

-- Get the total number of assignment submissions for each cohort

-- Select the cohort name and total submissions
-- Order the results from greates to least submissions

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;


-- Expected Result:
-- cohort | total_submissions 
--------+---------------------
-- SEP24  |              9328
-- JUN04  |              8030
-- APR09  |              7935
-- NOV19  |              7231
-- JUL02  |              5868
-- ...
-- (11 rows)