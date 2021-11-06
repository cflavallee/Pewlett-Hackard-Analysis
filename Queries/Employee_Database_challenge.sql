--Employees Retiring List w/ Titles
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    t.title,
    t.from_date,
    t.to_date
INTO retiring_employee_title
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO retiring_unique_titles
FROM retiring_employee_title
ORDER BY emp_no, to_date DESC;

-- Sum of employees retiring
SELECT COUNT(emp_no) AS Total_Retiring_Employees
FROM retiring_unique_titles;

 -- Get a count of employees retiring by title.
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM retiring_unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;



-- Get the employees eligible for a mentorship program.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO employee_mentorship
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01');

-- Number of mentorship-eligible employees by title.
SELECT COUNT(emp_no), title
INTO mentorship_titles
FROM employee_mentorship
GROUP BY title
ORDER BY COUNT(emp_no) DESC;



-- Employees by Hire Date
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO employee_mentorship_hire_date
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.from_date BETWEEN '1995-01-01' AND '2001-12-31')
	AND (de.to_date = '9999-01-01');


-- Number of mentorship-eligible employees by hire date and title.
SELECT COUNT(emp_no), title
INTO recent_hire_date_mentorship
FROM employee_mentorship_hire_date
GROUP BY employee_mentorship_hire_date.title
ORDER BY COUNT(emp_no) DESC;

--Manager by Department and Age
SELECT e.emp_no, 
		e.birth_date, 
		dm.to_date,
		dm.dept_no,
		d.dept_name
FROM employees as e
LEFT JOIN dept_manager as dm
ON (e.emp_no = dm.emp_no)
LEFT JOIN departments as d
ON (dm.dept_no = d.dept_no)
WHERE dm.to_date = '9999-01-01'
ORDER BY e.birth_date DESC;

SELECT * FROM dept_manager WHERE to_date = '9999-01-01';

-- Get the salaries for retire-ready employees.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   s.salary,
	   t.to_date,
	   t.title
INTO employee_retiring_salaries
FROM employees as e
LEFT JOIN salaries as s
ON (e.emp_no = s.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.to_date = '9999-01-01');

SELECT SUM(salary), title
FROM employee_retiring_salaries as ers
GROUP BY ers.title;

DROP TABLE employee_retiring_salaries;

SELECT SUM(salary)
FROM employee_retiring_salaries;


3,832,741,608
	
select * from salaries;

-- Sum of salaries for non-retirement eligible employees.
SELECT DISTINCT ON(e.emp_no) e.emp_no,
    e.first_name,
	e.last_name,
    s.salary,
    de.to_date
INTO current_emp_salaries
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1956-01-01' AND '1999-12-31')
      AND (de.to_date = '9999-01-01');
	  
SELECT SUM(salary)
FROM current_emp_salaries;

SELECT COUNT(emp_no)
FROM current_emp_salaries;

SELECT COUNT(emp_no)
FROM employee_retiring_salaries;

167,666 current employees
$8,889,804,831

90,389
3,832,741,608