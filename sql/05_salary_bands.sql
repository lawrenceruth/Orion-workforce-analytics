
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 3: Salary Bands for Employees
-- OBJECTIVE: Classify employees into salary bands and count
--            the number of employees in each band.
-- CONCEPTS: CASE, COUNT, GROUP BY
-- ============================================================

USE capstone;

SELECT
    CASE
        WHEN salary < 5000 THEN 'Low'
        WHEN salary BETWEEN 5000 AND 10000 THEN 'Medium'
        WHEN salary > 10000 THEN 'High'
    END AS salary_band,
    COUNT(employee_id) AS employee_count
FROM employees
GROUP BY salary_band;

-- KEY FINDINGS:
-- Low: 49 employees.
-- Medium: 43 employees.
-- High: 15 employees.
-- Total: 107 employees.
