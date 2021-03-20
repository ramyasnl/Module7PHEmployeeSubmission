--- Use Dictinct with Orderby to remove duplicate rows
SELECT * FROM retirement_titles
----part2 of deliverable1 Creating unique_titles
-----Remember to ""the INTO statements while test running the script
SELECT DISTINCT ON (r.emp_no)r.emp_no , r.first_name, r.last_name,r.title, r.to_date
INTO unique_titles
FROM retirement_titles r 
ORDER BY r.emp_no, r.to_date DESC
SELECT * FROM unique_titles
----TO DISPLAY RETIRING_TITLE TABLE
SELECT COUNT(u.emp_no), u.title 
INTO retiring_titles
FROM unique_titles1 as u
GROUP BY u.title 
ORDER BY COUNT(u.emp_no) DESC;





