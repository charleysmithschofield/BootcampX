-- Query 1: Assignments Per Day 

-- Get the total number of assignements for each day of bootcamp.

-- Select the day and the total assignments
-- Order the resutls by day
-- This query only requires the assignments table

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;


-- Expected Result:
-- day | total_assignments 
-----+-------------------
--   1 |                11
--   2 |                 9
--   3 |                 9
--   4 |                 9
--   5 |                 7
-- ...
-- (51 rows)