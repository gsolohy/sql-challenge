INSERT INTO "departments" VALUES
    ('d001','Marketing'),
    ('d002','Finance'),
    ('d003','Human Resources'),
    ('d004','Production'),
    ('d005','Development'),
    ('d006','Quality Management'),
    ('d007','Sales'),
    ('d008','Research'),
    ('d009','Customer Service');

-- All other files are too large, import in to pgAdmin4

-- Check to see if loaded correctly
select * from employees limit 10;
select count(emp_no) from employees;

select * from departments;
select count(dept_no) from departments;

select * from dept_emp limit 10;
select count(id) from dept_emp;

select * from dept_manager;
select count(id) from dept_manager;

select * from salaries limit 10;
select count(id) from salaries;

select * from titles limit 10;
select count(id) from titles;