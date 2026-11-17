
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 2: Salary Comparison
-- OBJECTIVE: Calculate average salary per department and
--            identify the highest and lowest averages.
-- CONCEPTS: AVG, GROUP BY, ORDER BY, LIMIT
-- ============================================================

USE capstone;

-- 1. Average salary across all departments

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC;

-- 2. Department with the highest average salary

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1;

-- 3. Department with the lowest average salary

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary ASC
LIMIT 1;

-- KEY FINDINGS:
-- Highest average: Department 90 (19,333.33).
-- Lowest average: Department 50 (3,475.56).
