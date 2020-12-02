create table public. "departments"(dept_no varchar (5), dept_name varchar (30))


select *
from public.departments
--
create table public. "dept_emp"(emp_no varchar (10), dept_no varchar (20),Foreign Key (emp_no) references employees)

select *
from public.dept_emp
--
create table public. "dept_manager"(dept_no varchar (20), emp_no varchar (10), Foreign Key (emp_no) references employees)

select *
from public.dept_manager
--
create table public. "employees"(emp_no varchar (10) Primary Key , emp_title varchar (10), birth_date varchar (30), first_name varchar (30), 
								 last_name varchar (30), sex varchar (5), hire_date varchar (30))

select *
from public.employees

--
create table public. "titles "(title_id varchar (10), title varchar (30))

select *
from  public.titles
--
create table public."salaries"(emp_no varchar (10), salary INT, Foreign Key (emp_no) references employees)

select *
from public.salaries

--