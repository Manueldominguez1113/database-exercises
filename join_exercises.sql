USE employees;
-- all dept managers
SELECT de.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name'
FROM departments AS de
JOIN dept_manager AS d ON d.dept_no = de.dept_no
JOIN employees AS e ON e.emp_no = d.emp_no
WHERE d.to_date> now();
-- dept mnagers that are female
SELECT de.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name'
FROM departments AS de
         JOIN dept_manager AS d ON d.dept_no = de.dept_no
         JOIN employees AS e ON e.emp_no = d.emp_no
WHERE d.to_date> now() AND e.gender = 'F';

-- titles of customer service and how many are in there
SELECT t.title, COUNT(t.title)
FROM titles AS t
JOIN dept_emp as dee ON dee.emp_no = t.emp_no
JOIN departments AS de ON de.dept_no = dee.dept_no
WHERE t.to_date > now() AND de.dept_no = 'd009' GROUP BY t.title;

-- all dept managers and their salary
SELECT de.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name', s.salary AS 'Salary'
FROM departments AS de
JOIN dept_manager AS d ON d.dept_no = de.dept_no
JOIN employees AS e ON e.emp_no = d.emp_no
JOIN salaries AS s on s.emp_no = e.emp_no
WHERE d.to_date> now() AND s.to_date> now();

-- Find the names of all current employees, their department name, and their current manager's name .

SELECT e.emp_no, CONCAT(Manage.first_name, ' ', Manage.last_name) AS employee, de.dept_name AS 'Department', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager'
FROM employees AS e
JOIN dept_emp AS d ON d.emp_no = e.emp_no
JOIN departments AS de ON de.dept_no = d.dept_no
JOIN dept_manager AS me ON me.dept_no = de.dept_no
JOIN employees AS Manage on me.emp_no = e.emp_no
WHERE me.to_date > NOW()
LIMIT 100;



SELECT CONCAT(emp.first_name, '', emp.last_name) AS 'employees', dept.dept_name AS 'Department', CONCAT(manager.first_name,' ',manager.last_name) AS 'Manager'
FROM employees AS emp
JOIN dept_emp AS de ON de.emp_no = emp.emp_no
JOIN departments AS dept ON dept.dept_no = de.dept_no
JOIN dept_manager AS dm ON dm.dept_no = dept.dept_no
JOIN employees as manager ON manager.emp_no = dm.emp_no
WHERE dm.to_date> NOW();