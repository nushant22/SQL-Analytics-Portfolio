SELECT
    d.department_name,
    AVG(
        DATEDIFF(
            COALESCE(e.exit_date, CURDATE()),
            e.hire_date
        ) / 365
    ) AS avg_tenure_years
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
