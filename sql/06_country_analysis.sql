
-- ============================================================
-- PROJECT: Orion Workforce Analytics
-- QUESTION 4: Country-Level Analysis
-- OBJECTIVE: Identify countries and count distinct departments
--            represented by employees in each country.
-- CONCEPTS: JOIN, GROUP BY, COUNT
-- ============================================================

USE capstone;

SELECT
    c.country_name,
    COUNT(DISTINCT d.department_id) AS department_count
FROM countries AS c
LEFT JOIN employees AS e
    ON c.country_id = e.country_id
LEFT JOIN departments AS d
    ON e.department_id = d.department_id
GROUP BY
    c.country_id,
    c.country_name;

-- DATA LIMITATION:
-- The supplied datasets do not contain a locations table
-- linking departments.location_id to country_id.
--
-- Therefore, department_count represents distinct departments
-- associated with employees in each country, not verified
-- physical department locations.
--
-- KEY RESULT:
-- The query returned all 25 countries in the dataset.
