--- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no)e.emp_no , e.first_name, e.last_name,e.birth_date,de.from_date,de.to_date,titles.title
INTO mentorship_eligibility
FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no
JOIN titles on titles.emp_no = e.emp_no
WHERE(de.to_date = '9999-01-01')AND(birth_date BETWEEN'1965-01-01'and'1965-12-31')
ORDER BY e.emp_no;



----checking the table 
SELECT * FROM mentorship_eligibility










