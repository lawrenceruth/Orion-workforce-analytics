
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 1: Workforce Distribution
-- OBJECTIVE: Count employees in each department and identify
--            the department with the highest headcount.
-- CONCEPTS: SELECT, COUNT, GROUP BY, ORDER BY
-- ============================================================

USE capstone;

SELECT
    department_id,
    COUNT(employee_id) AS employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC;

-- KEY FINDING:
-- Department 50 has the highest headcount with 45 employees.
-- One employee has no department assignment (NULL).
