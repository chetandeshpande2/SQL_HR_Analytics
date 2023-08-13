use hr;

# 1. Write a SQL query to print details of the employees whose first name starts with 'a' and contains only 4 alphabets
select first_name from employees 
where substr(first_name,1,1)='A' 
and length(first_name)=4;

# 2.Write a SQL query to print details of the employees whose first_name ends with 'h' and contains only 6 alphabets.
select * from employees 
where first_name like'%h' 
and length(first_name)=6;

# 3.Retrieve all the distinct salary values from dataset
select distinct salary
from employees;

# 4.Write a SQL query to print the first name from employees table after removing white spaces from the right side. 
select rtrim(first_name) as name
from employees;

# 5.Write a SQL query to print the first name from employees table after replacing ‘a’ with ‘A’.
select replace(first_name,'a','A') as first_name
from employees;

# 6.Write a SQL query to fetch, if there are any duplicate records in the table.
select first_name,last_name,department_id,count(*) as count
from employees
group by first_name,last_name, department_id
having count(*)>1;

# 7.Find the department_ids whose average salary is greate than 8000.
select department_id, avg(salary)
from employees
group by department_id
having avg(salary)>8000;

# 8.Write a sql query to fetch the details of an employee -- Generate another as commission percentage column. And wherever there are null values in this column, convert it to 0
select employee_id,salary,commission_pct,coalesce(commission_pct,0)
from employees;

# 9.Find out how many employees are in department 80
select count(first_name) as no_of_emp
from employees
where department_id = 80;

# 10.Write a query to get the number of employees with the same job.
select job_id, count(*) as no_of_emp
from employees
group by job_id;

# 11.Write a query to get the difference between the highest and lowest salaries. 
select max(salary) - min(salary)
from employees;

# 12.Write a query to get the department ID and the total salary payable in each department. 
select department_id, sum(salary)
from employees
group by department_id;

# 13.Write a query to find the employees fullname, job_id, hire_date with the lowest salary who was hired between the year 1995 and 1997
select concat(first_name,' ',last_name) as full_name,
job_id, 
hire_date,
salary
from employees
where hire_date between '1995-01-01' and '1997-01-01'
order by salary limit 1;

# 14.Write a query to get the job_id and related employee's id
select job_id, group_concat(employee_id) as emp_id
from employees
group by job_id;

# 15.Write a query to find the details of employees and with eligibility criteria based on the following: a.If Hire_date is less than or equal to  '1999-12-31'then eligible else not eligible
select employee_id, last_name, hire_date,
if(hire_date<='1999-12-31',"Eligible","Not Eligible") as scheme_eligibility
from employees;

# 16.Write a query to assign tax slabs based on the following criteria: a.If salary less than or equal to 5000 then ‘Tax slab A’ 
# b.If salary greater than 5000 and less than or equal to 10000 then ‘Tax slab B’ c.If salary greater than 10000 and less than or equal to 15000 then ‘Tax slab C’ 
# d.Else ‘Tax slab C
select employee_id, last_name, salary,
case 
	when salary <=5000
		then 'Tax Slab A'
    when salary>5000 and salary<=10000
		then 'tax Slab B'
	when salary <=15000
		then 'Tax Slab C'
	else 'Tax Slab D'
    end as Tax_Slabs
    from employees;
    
# 17.Write a query to find the hire year of each employees
select employee_id, first_name, last_name, year(hire_date)
from employees;

# 18.Write a query to find the count of employees hired in each year and sort them
select year(hire_date), count(employee_id)
from employees
group by year(hire_date)
order by year(hire_date) desc;



