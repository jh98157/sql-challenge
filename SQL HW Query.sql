-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.gender, salaries.salary
from employees
join salaries
on employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01' and hire_date <='1986-12-31'

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, employees.emp_no,employees.last_name,employees.first_name
from dept_manager
join departments
on dept_manager.dept_no = departments.dept_no
join employees
on dept_manager.emp_no = employees.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no=employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments 
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- List the frequency count of employee last names 
-- (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name) AS "last_name_count"
FROM employees
GROUP BY last_name
ORDER BY "last_name_count" DESC;
