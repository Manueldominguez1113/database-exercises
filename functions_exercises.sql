USE employees;


-- SELECT CONCAT(first_name,' ', last_name) from employees WHERE last_name LIKE 'e%e' ORDER BY emp_no;

-- Find all employees born on Christmas — 842 rows.

-- SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
-- SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = '12' AND DAY(birth_date) = '25';

-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

-- SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = '12' AND DAY(birth_date) = '25' ORDER BY birth_date ASC, hire_date DESC;

-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

 SELECT *, DATEDIFF(NOW(), hire_date) FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = '12' AND DAY(birth_date) = '25' ORDER BY DATEDIFF(NOW(), hire_date);
-- Alselm Cappello, has been with the company the longest, at 11767 days