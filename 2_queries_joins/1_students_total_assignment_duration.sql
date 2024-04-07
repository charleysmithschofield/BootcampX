-- Student's Total Assignment Duration

-- Get the total amount of time that a student has spent on all assignments.
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- Expected Result
-- total_duration
-- ---------------
--            6888
-- (1 row)

-- To run: \i 2_queries_joins/1_students_total_assignment_duration.sql