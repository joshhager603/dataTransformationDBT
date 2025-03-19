{{ config(materialized='table') }}

SELECT employee_data.performance_rating, AVG(employee_data.years_of_experience) AS average_yoe
FROM employee_data
GROUP BY employee_data.performance_rating