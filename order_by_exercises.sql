USE employees;


-- SELECT * from employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name ASC, last_name ASC;


-- SELECT * from employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name ASC, first_name ASC;


-- SELECT * from employees WHERE last_name LIKE 'e%' ORDER BY emp_no;

SELECT * from employees WHERE last_name LIKE 'e%' ORDER BY emp_no DESC;