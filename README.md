# Pewlett-Hackard-Analysis


## Overview of the analysis
The purpose of this analysis is to helps prepare Bobby’s manager for the “silver tsunami” as many current employees at Pewlett-Hackard reach retirement age.

The goal therefore is:
1. To determine the number of retiring employees with their title by creating a table that holds the titles of current employees 
who were born between January 1, 1952, and December 31, 1955.

2. To identify employees who are eligible to participate in a mentorship program by creating a mentorship-eligibility table that holds 
all the current employees who were born between January 1, 1965, and December 31, 1965.

The analysis was performed using six CSV files that contained all the employee data at Pewlett-Hackard. 
The CSV files and the SQL queries for the analysis can be found at http://github.com/dshetty100/Pewlett-Hackard-Analysis 
under the Data and Queries folders, respectively.

The starting input for the project were six CSV files. Their column headers and relationships are diagrammed in the ERD (Entity Relationship Diagram) shown above. Once relationships were mapped, databases were created, linked through keys, and the data from the CSVs were imported. Once this was done we were able to begin making queries and isolating useful chunks of information. These query results were then, in turn, exported into their own discrete CSV files for later review.

![Figure](/Images/EmployeeDB.PNG)

Early stage inquiries involved collecting lists of PH employees who where were "of retirement age," department managers, and potential retirees from select departments. The end-of-project Challenge section focused on creating two primary query results:

- a summary of the number of retiring employees by their current job title;
- a list of all employees eligible for a mentorship program designed for retiring staff.

## Results
The results of the anlysis can be found in the files, retiring_titles.csv and mentorship_eligibilty.csv, under Data 
folder in  http://github.com/dshetty100/Pewlett-Hackard-Analysis 

- It is observed that there are total 90,398 employess with various titles who will be retiring,
- The company will need to fill in seven different titles (Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer, and Manager)
- There are 29,414 senior engineers, 28,254 senior staffs, 14,222 engineers, 12243 staffs, 4,502 technique leaders, 1,761 assistant engineers, and 2 
  managers due for retirement.
- There are 1,464 employees who are eligible for mentorship program.


## Summary
- The table for the number of retiring employees by title from retiring_titles.csv file is shown below. There are seven different roles that needs to be filled in. These are Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer, and Manager

![Figure1](/Images/retiring_titles.PNG)

- The table below shows employees that are eligible for the mentorship program. There are 1,464 employees who are eligible for mentorship program. With large number of 
employees due for retirement, there may not be enough retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees.

![Figure2](/Images/mentorship_eligibility.PNG)
