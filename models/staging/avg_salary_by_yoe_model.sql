{{ config(materialized='table') }}

SELECT employee_data.years_of_experience, AVG(employee_data.salary) AS average_salary
FROM employee_data
GROUP BY employee_data.years_of_experience
ORDER BY employee_data.years_of_experience ASC