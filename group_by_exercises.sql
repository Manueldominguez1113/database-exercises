USE employees;

-- SELECT DISTINCT title FROM titles;

-- SELECT first_name, last_name from employees WHERE last_name LIKE 'e%e' GROUP BY first_name, last_name;

-- SELECT COUNT(last_name), last_name from employees WHERE last_name NOT LIKE '%qu%' AND last_name NOT LIKE 'Qu%' AND last_name NOT LIKE '%qu' AND last_name LIKE '%q%' GROUP BY last_name;

SELECT gender, COUNT(gender) from employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' GROUP BY gender;
