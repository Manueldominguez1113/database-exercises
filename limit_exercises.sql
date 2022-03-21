USE employees;

-- SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;


-- 1:1-5    2:6-10   3:11-15     4:16-20     5:21-25    6:26-30  7:31-35     8:36-40     9:41-45    10:46-50
SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;

-- completed. the example only shows 4 instead of 5 and is missing the topmost number. but i show all numbers here.