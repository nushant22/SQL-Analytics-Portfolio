INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Human Resources'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Marketing');

INSERT INTO employees 
(employee_id, first_name, last_name, department_id, hire_date, exit_date, gender)
VALUES
(101, 'Amit', 'Sharma', 1, '2019-03-15', NULL, 'Male'),
(102, 'Sita', 'Karki', 2, '2020-07-01', NULL, 'Female'),
(103, 'Raj', 'Gurung', 1, '2018-01-10', '2023-06-30', 'Male'),
(104, 'Anita', 'Thapa', 3, '2021-09-05', NULL, 'Female'),
(105, 'Ramesh', 'Adhikari', 4, '2017-11-20', '2022-12-31', 'Male'),
(106, 'Nisha', 'Basnet', 1, '2022-02-14', NULL, 'Female'),
(107, 'Kiran', 'Shrestha', 5, '2020-05-18', NULL, 'Male'),
(108, 'Pooja', 'Pandey', 4, '2019-08-25', '2024-01-15', 'Female'),
(109, 'Suman', 'Bohara', 3, '2016-04-01', NULL, 'Male'),
(110, 'Bina', 'KC', 2, '2021-01-11', NULL, 'Female');

INSERT INTO salaries (employee_id, salary, effective_date) VALUES
(101, 85000, '2023-01-01'),
(102, 55000, '2023-01-01'),
(103, 90000, '2022-01-01'),
(104, 70000, '2023-01-01'),
(105, 60000, '2022-01-01'),
(106, 80000, '2023-06-01'),
(107, 65000, '2023-01-01'),
(108, 62000, '2023-01-01'),
(109, 95000, '2023-01-01'),
(110, 58000, '2023-01-01');


INSERT INTO attendance (employee_id, attendance_date, status) VALUES
(101, '2024-01-02', 'Present'),
(101, '2024-01-03', 'Present'),
(102, '2024-01-02', 'Present'),
(103, '2023-06-29', 'Present'),
(104, '2024-01-02', 'Absent'),
(105, '2022-12-30', 'Present'),
(106, '2024-01-03', 'Present'),
(107, '2024-01-02', 'Present'),
(108, '2024-01-10', 'Absent'),
(109, '2024-01-02', 'Present');


INSERT INTO performance_reviews 
(employee_id, review_date, rating, promotion)
VALUES
(101, '2022-12-15', 4, TRUE),
(101, '2023-12-15', 5, FALSE),
(102, '2023-12-20', 3, FALSE),
(103, '2021-12-10', 4, TRUE),
(104, '2023-11-30', 4, FALSE),
(105, '2021-12-05', 3, FALSE),
(106, '2023-12-18', 5, TRUE),
(107, '2023-12-22', 4, FALSE),
(108, '2022-12-01', 4, TRUE),
(109, '2023-12-12', 5, FALSE);
