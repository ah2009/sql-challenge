--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select E.emp_no, 
	   E.first_name, 
	   E.last_name,
	   E.sex, 
	   sal.salary
From 
	employees E
	inner join salaries sal
	on E.emp_no=sal.emp_no;
    --List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
 
Where
	 hire_date LIKE '%1986'
     --List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.

Select DM.emp_no, 
	   E.first_name, 
	   E.last_name,
	   DM.dept_no,
	   d.dept_name
From 
	departments d
	inner join dept_manager DM
	on DM.dept_no=d.dept_no
	inner join employees E
	on DM.emp_no= E.emp_no
    --List the department of each employee with the following information: employee number, last name, first name, and department name.
Select DE.emp_no, 
	   E.last_name, 
	   E.first_name,
	   d.dept_name
From 
	dept_emp DE 
	inner join departments d
	on DE.dept_no=d.dept_no
	inner join employees E
	on DE.emp_no= E.emp_no
	
order by
	emp_no,
	last_name,
	first_name,
	dept_name;
    --List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select
	first_name, last_name, sex
from 
	employees

Where
	first_name = 'Hercules'
	and last_name LIKE 'B%'
    --List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select E.emp_no, 
	   E.last_name, 
	   E.first_name,
	   D.dept_name

From 
	 departments d
	inner join dept_emp DE
	on DE.dept_no=d.dept_no
	inner join employees E
	on DE.emp_no= E.emp_no
    where
	dept_name = 'Sales'
  --List all employees in the Sales and Development departments, including their employee number, last name, 
--first name, and department name.
Select E.emp_no, 
	   E.last_name, 
	   E.first_name,
	   D.dept_name

From 
	 departments d
	inner join dept_emp DE
	on DE.dept_no=d.dept_no
	inner join employees E
	on DE.emp_no= E.emp_no
where
	dept_name IN ('Sales', 'Development')

    --In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select
	last_name,
	COUNT (last_name) as "lastname_count"
from 
employees
	
GROUP BY
	last_name
ORDER BY 
	lastname_count desc;