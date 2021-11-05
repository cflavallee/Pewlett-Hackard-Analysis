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
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO retiring_unique_titles
FROM retiring_employee_title
ORDER BY emp_no, to_date DESC;


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
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.to_date = '9999-01-01');

SELECT SUM(salary), title
FROM employee_retiring_salaries
GROUP BY employee_retiring_salaries.title;

	
select * from salaries;