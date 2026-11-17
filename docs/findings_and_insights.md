
# Findings and Insights

## 1. Project Overview

This document summarizes the results of the ten SQL assessment questions completed for the Orion Workforce Analytics project.

The analysis examines workforce distribution, salary patterns, employee rankings, job roles, departmental structure, and country-level salary costs.

## 2. Key Findings

### Q1. Workforce Distribution by Department

- Department 50 recorded the highest workforce count, with 45 employees.
- One employee had no department assignment.

**Insight:** Department-level workforce distribution helps identify where employee resources are concentrated.

### Q2. Average Salary by Department

- Department 90 recorded the highest average salary: 19,333.33.
- Department 50 recorded the lowest average salary: 3,475.56.

**Insight:** Salary differences across departments may reflect variations in job responsibilities, seniority, and compensation structures.

### Q3. Employee Distribution by Salary Band

| Salary Band | Employee Count |
|---|---:|
| Low (below 5,000) | 49 |
| Medium (5,000–10,000) | 43 |
| High (above 10,000) | 15 |
| **Total** | **107** |

**Insight:** Most employees fall within the low and medium salary bands.

### Q4. Department Representation by Country

- The analysis covered 25 countries.
- Department counts were calculated using distinct departments associated with employees in each country.

**Insight:** This provides a view of departmental representation across the workforce.

**Limitation:** The dataset does not include a locations table. These results should not be interpreted as verified physical department locations.

### Q5. Employees Earning Above the Company Average

- 51 employees earned more than the overall company average salary.

**Insight:** Comparing individual salaries against the company-wide average helps identify employees in higher compensation brackets.

### Q6. Department Managers and Employee Counts

- 11 departments were returned by the query.
- Shipping had 45 employees.
- Sales had 34 employees.

**Insight:** Combining department and manager information provides a useful view of departmental leadership and workforce size.

**Limitation:** The query uses INNER JOIN, so departments without a matching manager or employee record are excluded. One employee without a department assignment is also excluded from department counts.

### Q7. Job Roles with Average Salaries Above 12,000

Four job roles met the condition:

| Job Title | Average Salary |
|---|---:|
| President | 24,000 |
| Administration Vice President | 17,000 |
| Marketing Manager | 13,000 |
| Sales Manager | 12,200 |

**Insight:** The results show that senior leadership and management roles recorded higher average salaries in this dataset.

### Q8. Employee Salary Ranking Within Departments

- All 107 employees were included in the ranking.
- ROW_NUMBER() was used to assign salary positions within each department.
- Employees without a department assignment were ranked in a separate NULL department partition.

**Insight:** Department-level ranking supports internal salary comparisons and compensation analysis.

### Q9. Total Salary Cost by Country

- Switzerland recorded the highest total salary cost: 75,100.
- United Kingdom recorded the lowest total salary cost: 2,200.

**Insight:** Country-level salary aggregation helps compare the distribution of employee salary costs across countries.

**Clarification:** Although the assessment labelled this question "Salary Growth Trend", the available query calculates total salary cost by country. It does not measure salary growth over time.

### Q10. Job Roles Without Assigned Employees

- The query returned zero unassigned job roles.
- All 19 job roles had at least one employee assigned.

**Insight:** Every job role in the supplied jobs dataset was represented in the employee dataset.

## 3. Overall Business Observations

The assessment demonstrates how SQL can support workforce reporting and management analysis.

Key observations include:

1. Workforce distribution is concentrated in Department 50.
2. Average salaries vary considerably across departments.
3. Most employees fall within the low and medium salary bands.
4. Salary costs differ across countries.
5. All 19 listed job roles have employee representation.
6. Missing department assignments and incomplete location information should be considered when interpreting results.

## 4. SQL Concepts Applied

The assessment applied the following SQL concepts:

- SELECT and WHERE
- ORDER BY and LIMIT
- GROUP BY and HAVING
- Aggregate functions: COUNT, AVG, and SUM
- INNER JOIN, LEFT JOIN, and RIGHT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- CASE statements
- Window functions: ROW_NUMBER()
- Primary keys and foreign key constraints

## 5. Conclusion

Orion Workforce Analytics demonstrates the use of relational database design and SQL to investigate workforce structure, salary distribution, job assignments, and country-level salary costs.

The project also highlights the importance of data validation, understanding dataset limitations, and interpreting analytical results within the context of the available data.
