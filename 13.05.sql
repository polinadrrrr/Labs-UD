SELECT titles.title, AVG(salaries.salary) FROM titles INNER JOIN salaries ON titles.emp_no = salaries.emp_no GROUP BY titles.title;
