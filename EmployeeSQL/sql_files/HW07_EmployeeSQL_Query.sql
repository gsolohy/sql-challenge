-- 1. List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
from salaries as s
right join employees as e
on e.emp_no = s.emp_no
order by emp_no;

-- 2. List employees who were hired in 1986.
select * from employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date;

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.
select d.*, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
from dept_manager as m
left join departments as d
on m.dept_no = d.dept_no
	inner join employees as e
	on m.emp_no = e.emp_no
order by emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
	left join departments as d
	on d.dept_no = de.dept_no
order by emp_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name = 'Hercules' and last_name like 'B%'
order by emp_no;

-- 6. List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
	left join departments as d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
order by emp_no;

-- 7. List all employees in the Sales and Development departments, including 
-- their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
	left join departments as d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
order by emp_no;

-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name, count(last_name) 
from employees
group by 1
order by count desc;