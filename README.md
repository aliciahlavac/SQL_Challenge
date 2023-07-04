# SQL_Challenge
Module 9 Challenge

In this project, I did research about a fictional company called Pewlett Hackard's employees from the 1980s to the 1990s.  The project is split into three sections, Data Modeling, Data Engineering, and Data Analysis.

Data Modeling:
Using six .csv files (titles.csv, employees.csv, dep_manager.csv, dep_emp.csv, salaries.csv, and departments.csv), which are located in the [Resources](https://github.com/aliciahlavac/SQL_Challenge/tree/main/Resources) section of this Repository, I created an [Entity Relationship Diagram (ERD)](https://github.com/aliciahlavac/SQL_Challenge/blob/main/EmployeeSQL/ERD_Final.png) and mapped the relationships between files. The following relationships were found and are shown in the ERD:
![QuickDBD-export (13)](https://github.com/aliciahlavac/SQL_Challenge/assets/127240852/1e15f487-44be-4e27-9474-44c6bb20f35a)
Primary keys are noted by a key symbol and Foreign keys are noted by bold text.
By creating this ERD, we note the following relationships:
* titles one to many relationship with employees: titles may be used more than once to describe employees. For example, more than one employee can have the title "Manager"
* employees one to many relationship with dep_manager: each department manager can manage more than one employee
* employees one to many relationship with dep_emp: the same employee number can be listed in two or more departments
* employees one to one relationship with salary: each employee has a unique salary
* dep_emp many to one relationship with departments: an employee can belong to multiple departments
* dep_manager many to one relationship with departments: a manager can be assigned to multiple departments

Data Engineering:
[SQL](https://github.com/aliciahlavac/SQL_Challenge/blob/main/EmployeeSQL/Table%20Schema%20SQL.sql) code was written to create tables schemas for these six .csv files, and VARCHAR(255) was used for all variable character fields except sex, in which VARCHAR(1) was used, as only two options are available, "M" or "F".  emp_no and salary were integers, and all dates (birth_date and hire_date) were set as dates.  Tables need to be created in this order to avoid creating problems with Foreign Keys.  

Data Analysis:
pgAdmin 4 was used to analyze the following [queries](https://github.com/aliciahlavac/SQL_Challenge/blob/main/EmployeeSQL/Employee_Data_Analysis.sql):
* List the employee number, last name, first name, sex, and salary of each employee.
* List the first name, last name, and hire date for the employees who were hired in 1986.
* List the manager of each department along with their department number, department name, employee number, last name, and first name.
* List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
* List each employee in the Sales department, including their employee number, last name, and first name.
* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
