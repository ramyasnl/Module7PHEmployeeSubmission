-- new table containing employee number, first name, last name, title, from_date, salary

----Challange 1: steps 1 to 7
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
    t.to_date
--INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')ORDER BY e.emp_no;	



