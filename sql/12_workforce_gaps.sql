
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 10: Workforce Gaps
-- OBJECTIVE: Identify job roles without assigned employees.
-- CONCEPTS: RIGHT JOIN, WHERE IS NULL
-- ============================================================

USE capstone;

SELECT
    j.job_id,
    j.job_title
FROM employees AS e
RIGHT JOIN jobs AS j
    ON e.job_id = j.job_id
WHERE e.employee_id IS NULL;

-- KEY FINDINGS:
-- The query returned an empty result set.
-- All 19 job roles have at least one assigned employee.
-- No unassigned job roles were identified.

