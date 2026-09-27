-- Employee Analysis Project
-- Database: employee_analysis

USE employee_analysis;

-- 1. View all employees
SELECT *
FROM employees;

-- 2. Count employees by department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- 3. Average salary by department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;

-- 4. Department salary summary
SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count,
    MIN(e.salary) AS min_salary,
    MAX(e.salary) AS max_salary,
    AVG(e.salary) AS average_salary
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY average_salary DESC;

-- 5. Highest-paid employee
SELECT
    first_name,
    last_name,
    salary,
    department
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- 6. Employees earning above the overall average salary
SELECT
    first_name,
    last_name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 7. Highest-paid employee in each department
SELECT
    e.first_name,
    e.last_name,
    d.department_name,
    e.salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- 8. Salary classification using CASE
SELECT
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary >= 60000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;

-- 9. Top 3 salary ranks using DENSE_RANK
SELECT *
FROM (
    SELECT
        first_name,
        last_name,
        department,
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM employees
) ranked_employees
WHERE salary_rank <= 3;

-- 10. Employees hired by year
SELECT
    YEAR(hire_date) AS hire_year,
    COUNT(*) AS employee_count
FROM employees
GROUP BY hire_year
ORDER BY hire_year;

-- 11. Salary range
SELECT
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    MAX(salary) - MIN(salary) AS salary_range
FROM employees;

-- 12. Departments with employees using EXISTS
SELECT department_name
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

-- 13. Employees whose salary is greater than every HR employee
SELECT
    first_name,
    last_name,
    salary,
    department
FROM employees
WHERE salary > ALL (
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);
