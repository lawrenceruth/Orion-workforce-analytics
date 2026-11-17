
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- FILE: 01_database_schema.sql
-- PURPOSE: Create the relational database and its four tables
-- DATABASE: capstone
-- ============================================================

CREATE DATABASE IF NOT EXISTS capstone;

USE capstone;

-- ------------------------------------------------------------
-- 1. Create countries table
-- ------------------------------------------------------------

CREATE TABLE countries (
    country_id VARCHAR(2) NOT NULL,
    country_name VARCHAR(100),
    region VARCHAR(100),
    PRIMARY KEY (country_id)
);

-- ------------------------------------------------------------
-- 2. Create jobs table
-- ------------------------------------------------------------

CREATE TABLE jobs (
    job_id VARCHAR(20) NOT NULL,
    job_title VARCHAR(100),
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2),
    PRIMARY KEY (job_id)
);

-- ------------------------------------------------------------
-- 3. Create departments table
-- The manager foreign key is added after employees exists.
-- ------------------------------------------------------------

CREATE TABLE departments (
    department_id INT NOT NULL,
    department_name VARCHAR(100),
    manager_id INT,
    location_id INT,
    PRIMARY KEY (department_id)
);

-- ------------------------------------------------------------
-- 4. Create employees table
-- ------------------------------------------------------------

CREATE TABLE employees (
    employee_id INT NOT NULL,
    emp_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    hire_date DATE,
    job_id VARCHAR(20),
    salary DECIMAL(10,2),
    commission_pct DECIMAL(10,2),
    manager_name VARCHAR(100),
    department_id INT,
    country_id VARCHAR(2),
    PRIMARY KEY (employee_id),

    CONSTRAINT fk_employee_job
        FOREIGN KEY (job_id)
        REFERENCES jobs (job_id),

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments (department_id),

    CONSTRAINT fk_employee_country
        FOREIGN KEY (country_id)
        REFERENCES countries (country_id)
);

-- ------------------------------------------------------------
-- 5. Add department manager relationship
-- This is added after employees has been created because
-- departments.manager_id references employees.employee_id.
-- ------------------------------------------------------------

ALTER TABLE departments
ADD CONSTRAINT fk_department_manager
FOREIGN KEY (manager_id)
REFERENCES employees (employee_id);

-- ============================================================
-- END OF DATABASE SCHEMA
-- ============================================================
