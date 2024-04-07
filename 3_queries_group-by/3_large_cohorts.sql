-- Query 3: Large Cohorts

-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;


-- cohort_name | student_count 
-------------+---------------
-- FEB12       |            18
-- APR09       |            19
-- JUN04       |            19
-- NOV19       |            22
-- SEP24       |            22
--(5 rows)