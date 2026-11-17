
# Data Dictionary

## Overview

This document describes the columns, data types, and purposes of the four tables in the Orion Workforce Analytics database.

Database: `capstone`  
DBMS: MySQL

## 1. Countries Table

| Column | Data Type | Description |
|---|---|---|
| country_id | VARCHAR(2) | Unique country identifier (Primary Key) |
| country_name | VARCHAR(100) | Country name |
| region | VARCHAR(100) | Geographical region |

## 2. Jobs Table

| Column | Data Type | Description |
|---|---|---|
| job_id | VARCHAR(20) | Unique job identifier (Primary Key) |
| job_title | VARCHAR(100) | Job title or role |
| min_salary | DECIMAL(10,2) | Minimum salary for the role |
| max_salary | DECIMAL(10,2) | Maximum salary for the role |

## 3. Departments Table

| Column | Data Type | Description |
|---|---|---|
| department_id | INT | Unique department identifier (Primary Key) |
| department_name | VARCHAR(100) | Department name |
| manager_id | INT | Employee identifier of the department manager (Foreign Key) |
| location_id | INT | Location identifier supplied in the dataset |

## 4. Employees Table

| Column | Data Type | Description |
|---|---|---|
| employee_id | INT | Unique employee identifier (Primary Key) |
| emp_name | VARCHAR(100) | Employee name |
| email | VARCHAR(100) | Employee email address |
| phone_number | VARCHAR(50) | Employee contact number |
| hire_date | DATE | Employee hiring date |
| job_id | VARCHAR(20) | Assigned job identifier (Foreign Key) |
| salary | DECIMAL(10,2) | Employee salary |
| commission_pct | DECIMAL(10,2) | Commission percentage |
| manager_name | VARCHAR(100) | Manager name as recorded in the source dataset |
| department_id | INT | Assigned department identifier (Foreign Key; nullable) |
| country_id | VARCHAR(2) | Employee country identifier (Foreign Key) |

## 5. Key Constraints

- Primary keys uniquely identify records in each table.
- Foreign keys establish relationships between the tables.
- Employee department assignments may be NULL.
- `departments.manager_id` references `employees.employee_id`.

## 6. Data Dictionary Notes

The data types documented above reflect the MySQL table definitions used in the project.

The database contains four tables and was populated from four supplied CSV datasets.
