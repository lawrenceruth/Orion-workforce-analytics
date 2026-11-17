
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 7: Job Role Analysis
-- OBJECTIVE: Calculate average salary by job title and
--            identify roles with averages above 12,000.
-- CONCEPTS: CTE, AVG, HAVING
-- ============================================================

USE capstone;

WITH job_salary AS (
    SELECT
        j.job_title,
        AVG(e.salary) AS average_salary
    FROM jobs AS j
    INNER JOIN employees AS e
        ON j.job_id = e.job_id
    GROUP BY j.job_title
)
SELECT
    job_title,
    average_salary
FROM job_salary
HAVING average_salary > 12000;

-- KEY FINDING:
-- Four job titles have an average salary above 12,000.
