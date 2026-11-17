
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 6: Department Leaders
-- OBJECTIVE: Display department managers and employee counts.
-- CONCEPTS: INNER JOIN, GROUP BY, COUNT
-- ============================================================

USE capstone;

SELECT
    d.department_name,
    m.emp_name AS manager_name,
    COUNT(e.employee_id) AS employee_count
FROM departments AS d
INNER JOIN employees AS m
    ON d.manager_id = m.employee_id
INNER JOIN employees AS e
    ON d.department_id = e.department_id
GROUP BY
    d.department_id,
    d.department_name,
    m.emp_name;

-- KEY FINDINGS:
-- 11 departments were returned.
-- Shipping has the highest employee count (45).
-- Sales has the second-highest employee count (34).
--
-- Employees without a department assignment are not included.
