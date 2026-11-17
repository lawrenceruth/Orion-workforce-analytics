
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 9: Salary Cost by Country
-- ASSESSMENT LABEL: Salary Growth Trend
-- OBJECTIVE: Calculate total employee salary cost by country
--            and rank countries from highest to lowest.
-- CONCEPTS: JOIN, SUM, GROUP BY, ORDER BY
-- ============================================================

USE capstone;

SELECT
    c.country_name,
    SUM(e.salary) AS total_salary_cost
FROM countries AS c
INNER JOIN employees AS e
    ON c.country_id = e.country_id
GROUP BY
    c.country_id,
    c.country_name
ORDER BY
    total_salary_cost DESC;

-- KEY FINDINGS:
-- Switzerland has the highest total salary cost (75,100).
-- United Kingdom has the lowest total salary cost (2,200).
--
-- NOTE:
-- This analysis measures salary cost by country.
-- It does not calculate salary growth over time.

