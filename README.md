
# Orion Workforce Analytics
### SQL-Based Workforce and Compensation Analysis

## Project Overview

Orion Workforce Analytics is a relational database and SQL analytics project developed as part of Assessment 6 (Capstone Database).

The project explores workforce structure, employee distribution, salary patterns, departmental representation, job roles, and country-level salary costs using MySQL.

It demonstrates how relational database design, data validation, and SQL querying can transform structured employee datasets into useful business insights.

## Business Problem

Organizations need reliable workforce information to understand how employees are distributed across departments, how compensation varies, and where salary costs are concentrated.

This project uses a relational database to investigate these questions and demonstrate how SQL can support workforce reporting and management decision-making.

## Project Objectives

- Design and implement a relational database using MySQL.
- Import and organize four related workforce datasets.
- Establish primary and foreign key relationships.
- Perform data validation and integrity checks.
- Answer ten workforce and compensation analysis questions.
- Translate query results into meaningful business observations.

## Technology Stack

| Technology | Purpose |
|---|---|
| MySQL | Relational database management |
| MySQL Workbench | SQL development and database administration |
| SQL | Data validation, transformation, and analysis |
| Git and GitHub | Version control and project documentation |

## Database Overview

The database is named `capstone` and contains four related tables.

| Table | Records | Description |
|---|---:|---|
| employees | 107 | Employee details and compensation |
| departments | 27 | Department structure and manager references |
| jobs | 19 | Job titles and salary ranges |
| countries | 25 | Country names and regional classifications |
| **Total** | **178** | **Records across four tables** |

## Analytical Questions

The project addresses ten questions:

1. How many employees belong to each department?
2. Which departments have the highest and lowest average salaries?
3. How are employees distributed across salary bands?
4. How many distinct departments are represented in each country?
5. Which employees earn above the company-wide average salary?
6. Who manages each department, and how many employees belong to it?
7. Which job roles have an average salary above 12,000?
8. How do employees rank by salary within their departments?
9. What is the total salary cost by country?
10. Which job roles have no assigned employees?

## Key Findings

- Department 50 has the highest workforce count, with 45 employees.
- Department 90 has the highest average salary, at 19,333.33.
- Department 50 has the lowest average salary, at 3,475.56.
- 49 employees fall within the low salary band, 43 within the medium band, and 15 within the high band.
- 51 employees earn above the company-wide average salary.
- Four job roles have an average salary above 12,000.
- Switzerland records the highest total salary cost, at 75,100.
- All 19 listed job roles have at least one employee assigned.

## SQL Concepts Demonstrated

- Database creation and table design
- Primary and foreign key constraints
- Data validation
- SELECT, WHERE, and ORDER BY
- GROUP BY and HAVING
- Aggregate functions: COUNT, AVG, and SUM
- INNER JOIN, LEFT JOIN, and RIGHT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- CASE statements
- Window functions using ROW_NUMBER()

## Repository Structure

```text
Orion-workforce-analytics/
│
├── assets/
│   └── screenshots/
│
├── data/
│   └── README.md
│
├── docs/
│   ├── database_design.md
│   ├── data_dictionary.md
│   └── findings_and_insights.md
│
├── results/
│   └── README.md
│
├── sql/
│   ├── 01_database_schema.sql
│   ├── 02_data_validation.sql
│   ├── 03_workforce_distribution.sql
│   ├── 04_salary_comparison.sql
│   ├── 05_salary_bands.sql
│   ├── 06_country_analysis.sql
│   ├── 07_high_earners.sql
│   ├── 08_department_leaders.sql
│   ├── 09_job_role_analysis.sql
│   ├── 10_employee_ranking.sql
│   ├── 11_salary_cost_by_country.sql
│   └── 12_workforce_gaps.sql
│
├── .gitignore
├── LICENSE
└── README.md
```

## How to Use This Project

1. Clone this repository.
2. Obtain the four source CSV datasets separately.
3. Place the local CSV files in the `data/` directory.
4. Open MySQL Workbench and execute `sql/01_database_schema.sql` against a fresh database environment.
5. Import the four datasets into their corresponding tables using the documented import process.
6. Run `sql/02_data_validation.sql` to inspect the imported data.
7. Execute the remaining analytical SQL scripts in numerical order.

**Note:** The original CSV files are not included in this repository. The database schema script creates the tables but does not import the source data. The analytical queries require the datasets to be imported first.

## Data Limitations

- The original datasets do not include a locations table.
- Department location IDs cannot be mapped to countries using the supplied data.
- One employee record has a NULL department assignment.
- The country-level department analysis reflects employee-country associations, not verified physical department locations.
- The assessment question labelled "Salary Growth Trend" was answered using total salary cost by country; the analysis does not calculate salary growth over time.

## Project Documentation

For further details, see:

- [Database Design](docs/database_design.md)
- [Data Dictionary](docs/data_dictionary.md)
- [Findings and Insights](docs/findings_and_insights.md)
- [Data Documentation](data/README.md)
- [Results Documentation](results/README.md)

## Conclusion

Orion Workforce Analytics demonstrates practical SQL skills in relational database development, data validation, joins, aggregations, subqueries, CTEs, and window functions.

The project also emphasizes accurate interpretation of data and the importance of documenting analytical limitations.

---

**Project:** Orion Workforce Analytics
**Project Type:** SQL Database Capstone
**Database:** MySQL
**Author:** Lawrence Ruth
