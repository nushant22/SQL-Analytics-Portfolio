CREATE DATABASE hr_analytics;
USE hr_analytics;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    exit_date DATE,
    gender VARCHAR(10),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE salaries (
    employee_id INT,
    salary DECIMAL(10,2),
    effective_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE attendance (
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE performance_reviews (
    employee_id INT,
    review_date DATE,
    rating INT,
    promotion BOOLEAN,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
