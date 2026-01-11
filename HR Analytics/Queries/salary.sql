SELECT
    d.department_name,
    MIN(s.salary) AS min_salary,
    MAX(s.salary) AS max_salary,
    AVG(s.salary) AS avg_salary
FROM salaries s
JOIN employees e ON s.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
