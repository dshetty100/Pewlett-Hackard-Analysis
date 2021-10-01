-- Deliverable 1: The Number of Retiring Employees by Title 
-- (creating a Retirement Titles table that holds all the 
-- titles of current employees who were born between 
-- January 1, 1952 and December 31, 1955.) 

-- First create table1 from "employees" table for employees born 
-- between 1952 and 1955.
SELECT emp_no,first_name,last_name
INTO table1
from employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- Create table2 from "titles" table
SELECT emp_no,title,from_date,to_date
INTO table2
From titles;

-- Join table1 & table2 on the primary key(emp_no) & create 
-- "retirement_titles" table. Then, order by employee number.
SELECT table1.emp_no,table1.first_name,table1.last_name,table2.title,table2.from_date,table2.to_date
INTO retirement_titles
FROM table1
LEFT JOIN table2
ON table1.emp_no = table2.emp_no
ORDER BY emp_no ASC;


-- Use Dictinct ON to retrieve the first occurrence of the
-- employee number for each set of rows into "unique_titles" 
-- table. Sort the unique_titles table in ascending order by 
-- the employee number and descending order by the last date 
-- (i.e. to_date) of the most recent title.
-- and Orderby to remove duplicate rows.
SELECT DISTINCT ON (emp_no) emp_no,first_name,last_name,title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;


-- retrieve the number of employees by their most recent job 
-- title who are about to retire. retrieve the number of 
-- titles from the "unique_titles" table. create a 
-- "retiring_titles" table to hold the required information. 
-- Group the table by title, then sort the count column in 
-- descending order.
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;


-- Deliverable 2: The Employees Eligible for the Mentorship 
-- Program (creating a mentorship-eligibility table that holds
-- the current employees who were born between January 1, 1965
-- and December 31, 1965.)

-- create table3, table4, & table5
SELECT DISTINCT ON (emp_no) emp_no,first_name,last_name,birth_date
INTO table3
FROM employees;

SELECT DISTINCT ON (emp_no) emp_no,from_date,to_date
INTO table4
FROM dept_emp;

SELECT DISTINCT ON (emp_no) emp_no,title
INTO table5
FROM titles;

-- Join table3 & table4 on the primary key(emp_no) & save into table34.
SELECT table3.emp_no,table3.first_name,table3.last_name,table3.birth_date,table4.from_date,table4.to_date
INTO table34
FROM table3
LEFT JOIN table4
ON table3.emp_no = table4.emp_no

-- Join table34 & table5 on the primary key(emp_no) & save into 'mentorshipt_eligibility' table.
-- Filter the data on the to_date column to all the current 
-- employees, then filter the data on the birth_date columns 
-- to get all the employees whose birth dates are between 
-- January 1, 1965 and December 31, 1965.
SELECT table34.emp_no,table34.first_name,table34.last_name,table34.birth_date,table34.from_date,table34.to_date,table5.title
INTO mentorship_eligibility
FROM table34
LEFT JOIN table5
ON table34.emp_no = table5.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND to_date = '9999-01-01'
ORDER BY emp_no;

