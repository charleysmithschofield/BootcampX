-- Cohort's Total Assignment Duration

-- Get the total amount of time that all students from a specific cohort have spent on all assignments.
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

-- Expected Result
--  total_duration 
------------------
--          373501
-- (1 row)

-- To run: \i 2_queries_joins/2_cohorts_total_assignment_duration.sql