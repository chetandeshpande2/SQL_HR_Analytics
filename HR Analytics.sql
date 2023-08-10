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
kjdbewkdboie
