
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- FILE: 02_data_validation.sql
-- PURPOSE: Validate imported records and database structure
-- DATABASE: capstone
-- ============================================================

USE capstone;

-- ------------------------------------------------------------
-- 1. Verify total records in each table
-- ------------------------------------------------------------

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT COUNT(*) AS total_departments
FROM departments;

SELECT COUNT(*) AS total_jobs
FROM jobs;

SELECT COUNT(*) AS total_countries
FROM countries;

-- ------------------------------------------------------------
-- 2. Check for duplicate employee IDs
-- ------------------------------------------------------------

SELECT
    employee_id,
    COUNT(*) AS duplicate_count
FROM employees
GROUP BY employee_id
HAVING COUNT(*) > 1;

-- ------------------------------------------------------------
-- 3. Check for missing employee IDs
-- ------------------------------------------------------------

SELECT COUNT(*) AS missing_employee_ids
FROM employees
WHERE employee_id IS NULL;

-- ------------------------------------------------------------
-- 4. Check for missing employee names
-- ------------------------------------------------------------

SELECT COUNT(*) AS missing_employee_names
FROM employees
WHERE emp_name IS NULL;

-- ------------------------------------------------------------
-- 5. Check for missing salaries
-- ------------------------------------------------------------

SELECT COUNT(*) AS missing_salaries
FROM employees
WHERE salary IS NULL;

-- ------------------------------------------------------------
-- 6. Check for missing department assignments
-- ------------------------------------------------------------

SELECT COUNT(*) AS employees_without_department
FROM employees
WHERE department_id IS NULL;

-- ============================================================
-- END OF DATA VALIDATION
-- ============================================================
