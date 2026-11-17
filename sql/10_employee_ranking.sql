
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 8: Employee Ranking
-- OBJECTIVE: Rank employees by salary from highest to lowest
--            within each department.
-- CONCEPTS: ROW_NUMBER, PARTITION BY, ORDER BY
-- ============================================================

USE capstone;

SELECT
    employee_id,
    emp_name,
    department_id,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

-- KEY FINDINGS:
-- All 107 employees received a salary ranking.
-- Ranking restarts at 1 for each department.
-- Employees with equal salaries receive different row numbers.
-- Employees with NULL department IDs form their own partition.
