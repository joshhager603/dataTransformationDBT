{{ config(materialized='table') }}

SELECT employee_data.department, AVG(employee_data.salary) AS average_salary
FROM employee_data
GROUP BY employee_data.department