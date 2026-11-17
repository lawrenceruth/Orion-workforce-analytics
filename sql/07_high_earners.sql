
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 5: High Earners
-- OBJECTIVE: Identify employees earning above the
--            company-wide average salary.
-- CONCEPTS: SUBQUERY, AVG, WHERE
-- ============================================================

USE capstone;

SELECT
    employee_id,
    emp_name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- KEY FINDING:
-- 51 employees earn above the company-wide average salary.
