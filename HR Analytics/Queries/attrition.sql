SELECT
    d.department_name,
    COUNT(CASE WHEN e.exit_date IS NOT NULL THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
