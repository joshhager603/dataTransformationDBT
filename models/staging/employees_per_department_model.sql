{{ config(materialized='table') }}

SELECT employee_data.department, COUNT(employee_data.employee_id) AS num_employees
FROM employee_data
GROUP BY employee_data.department