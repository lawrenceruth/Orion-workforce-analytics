
# Data Documentation

## Overview

Orion Workforce Analytics uses four CSV datasets to explore workforce distribution, salary patterns, departmental structure, job roles, and country-level salary costs.

The datasets were imported into a MySQL relational database named `capstone`.

## Dataset Inventory

| Dataset | Database Table | Description | Records |
|---|---|---|---:|
| employees.csv | employees | Employee details, salaries, job assignments, and department and country references | 107 |
| departments.csv | departments | Department names, manager IDs, and location IDs | 27 |
| jobs.csv | jobs | Job titles and salary ranges | 19 |
| countries.csv | countries | Country names and regional classifications | 25 |

## Data Relationships

The datasets are connected through the following key fields:

- `employees.job_id` references `jobs.job_id`.
- `employees.department_id` references `departments.department_id`.
- `employees.country_id` references `countries.country_id`.
- `departments.manager_id` references `employees.employee_id`.

## Data Import Notes

- CSV files were imported using MySQL `LOAD DATA LOCAL INFILE`.
- Employee hire dates were converted into MySQL DATE values.
- Zero department IDs were converted to NULL during employee data import.
- The employee dataset required `latin1` character encoding during import to accommodate a Windows-1252 character.

## Data Limitations

- No locations dataset was supplied.
- The `departments.location_id` field has no corresponding locations table or country mapping.
- Country-level department counts therefore represent departments associated with employees in each country, not verified physical department locations.
- One employee record has a NULL department assignment.

## Data Availability

The original CSV files are not included in this repository.

Users must obtain the source datasets separately and place their local copies in this directory before performing the data import.

See the SQL scripts in the `sql/` directory for database structure, validation checks, and analytical queries.
