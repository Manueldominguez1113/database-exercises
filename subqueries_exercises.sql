-- Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT CONCAT(first_name, last_name) as 'employees'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);
-- Find all the titles held by all employees with the first name Aamod
SELECT title, COUNT(title)
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    where first_name = 'Aamod'
)
GROUP BY title;

-- Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE emp_no in (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
)
  AND gender = 'F';

-- bonus --
-- find all the department names that currently have female managers.

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
        WHERE emp_no IN (
            SELECT emp_no
            FROM employees
            WHERE gender ='F'
    ) AND to_date > NOW()
    );

-- Find the first and last name of the employee with the highest salary

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    ORDER BY CAST(salary AS unsigned) DESC
    ) limit 100 ;

SELECT e.first_name, e.last_name, s.salary
FROM employees as e
join salaries as s on s.emp_no = e.emp_no
WHERE e.first_name = 'Georgi'
AND e.last_name = 'Facello';