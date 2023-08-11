-- [1] How to retrieve all the rows of data present in our table of employees?
select * from employees;
-- [2] How many rows of data are present in our table of employees?
select count(*) from employees;
-- [3] In order to show sample rows to the top management, write a query to show only 5 rows from the table employees.
select * from employees 
limit 5;
-- [4] How many employees' details are present in our employee table?
select count(*) as tot_emp 
from employees;
-- [5] How many unique department ids are there as per the employee table?
select count(distinct department_id) as tot_dept_ids
from employees;
-- [6] Write a query to retrieve information about employees whose salaries exceed $20,000?
select * from employees 
where salary >20000;
-- [7] Write a query to retrieve information about employees who are one of the following: AD_PRES, AD_VP and AC_MGR.
select * from jobs
where job_id in ('AD_PRES', 'AD_VP','AC_MGR');
-- [8] Write a query to fetch the details of the employees whose salaries are in the range of 10,000 to 15,000 and the hire date should be 1994-06-07.
select * from employees
where salary between 10000 and 15000 and hire_date = 1994-06-07;
-- [9] Write a query to fetch the details of the employees whose salary is in the range of 10000 to 15000 or the hire date should be 1994-06-07.
select * from employees
where salary between 10000 and 15000 or hire_date = 1994-06-07;
-- [10] Write a query to get all the details for the customers whose first name starts with A?
select * from employees
where first_name like 'a%';
-- [11] Write a query to get all the details for the customers whose first name ends with A?
select * from employees
where first_name like '%a';
-- [12] Write a query to fetch the details of the customer whose first name is Lisa?
select * from employees
where first_name = 'Lisa';
-- [13] Write a query to fetch the details of the employees whose hire date is 1997-09-28 and the job id is FI_ACCOUNT or FI_MGR.
select * from employees
where hire_date = '1997-09-28' and job_id = 'FI_ACCOUNT' or 'FI_MGR';
-- [14] Write a query to fetch the details of the employees whose hire date is 1999-02-07 and the job id is IT_PROG AND the salary should be greater than 4000.
select * from employees
where hire_date = '1999-02-07' and job_id = 'IT_PROG' and salary > 4000;
-- [15] Write a query to retrieve information about employees whose hire date is not 1997-09-30.
select * from employee
where hire_date <> '1997-09-03';


