
# Database Design

## 1. Overview

Orion Workforce Analytics uses a relational database named `capstone`, developed in MySQL.

The database contains four interconnected tables designed to support workforce analysis, salary comparisons, departmental reporting, job-role analysis, and country-level workforce insights.

## 2. Database Tables

| Table | Primary Key | Description |
|---|---|---|
| countries | country_id | Stores country names and regional classifications |
| jobs | job_id | Stores job titles and salary ranges |
| departments | department_id | Stores department names, manager IDs, and location IDs |
| employees | employee_id | Stores employee details, salaries, and organizational assignments |

## 3. Table Relationships

The database uses primary keys and foreign keys to maintain relationships between records.

### Employees Table

The employees table is the central table in the database.

Its foreign keys are:

- `job_id` references `jobs.job_id`.
- `department_id` references `departments.department_id`.
- `country_id` references `countries.country_id`.

### Departments Table

The departments table contains:

- `manager_id`, which references `employees.employee_id`.
- `location_id`, which stores a location identifier but has no corresponding locations table in the supplied dataset.

### Relationship Summary

| Parent Table | Referencing Table | Relationship |
|---|---|---|
| jobs | employees | One-to-many |
| departments | employees | One-to-many |
| countries | employees | One-to-many |
| employees | departments | One-to-many through manager_id |

## 4. Database Design Considerations

### Referential Integrity

Foreign key constraints help ensure that employee records reference valid jobs, departments, and countries.

The department manager relationship was added after creating the employees table because the two tables reference each other.

### NULL Values

The database permits certain fields to contain NULL values where information is unavailable.

For example, one employee has no department assignment.

### Data Limitations

- The supplied datasets do not include a locations table.
- Department location IDs cannot be mapped to countries using the available data.
- Country-level department analysis therefore uses employee-country associations rather than verified physical department locations.

## 5. Database Technology

- Database Management System: MySQL
- SQL Environment: MySQL Workbench
- Database Name: `capstone`
- Data Model: Relational Database
