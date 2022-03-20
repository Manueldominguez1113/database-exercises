USE employees;


-- TODO: Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- SELECT * from employees WHERE first_name IN ('Irena','Vidya','Maya');

-- TODO: Find all employees whose last name starts with 'E' — 7,330 rows.
-- SELECT * from employees WHERE last_name LIKE 'e%';

-- TODO: Find all employees with a 'q' in their last name — 1,873 rows.
-- SELECT * from employees WHERE last_name LIKE '%q%';





-- TODO:Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- SELECT * from employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- TODO:Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * from employees WHERE gender = 'M' AND first_name = 'Irena' OR gender = 'M' AND first_name = 'Vidya' OR gender = 'M' AND first_name = 'Maya';

-- TODO: Find all employees whose last name starts or ends with 'E' — 30,723 rows.
-- SELECT * from employees WHERE last_name LIKE '%e' OR last_name LIKE 'e%';

-- TODO: Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
-- SELECT * from employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%'; (refactor to easier code)
SELECT * from employees WHERE last_name LIKE 'e%e';

-- TODO: Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * from employees WHERE last_name NOT LIKE '%qu%' AND last_name NOT LIKE 'Qu%' AND last_name NOT LIKE '%qu' AND last_name LIKE '%q%';
-- worked, but maybe i could refactor this code to not be so long. looking into NOT IN but that didnt work the way i wanted it to.