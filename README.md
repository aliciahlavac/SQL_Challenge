# SQL_Challenge
Module 9 Challenge

In this project, I did research about a fictional company called Pewlett Hackard's employees from the 1980s to the 1990s.  Using six .csv files (titles.csv, employees.csv, dep_manager.csv, dep_emp.csv, salaries.csv, and departments.csv), I created an Entity Relationship Diagram (ERD) an mapped the relationships between files. The following relationships were found and are shown in the ERD:
![QuickDBD2](https://github.com/aliciahlavac/SQL_Challenge/assets/127240852/ea18771a-5796-4df6-8267-79f27af98ca2)
Primary keys are noted by a key symbol and Foreign keys are noted by bold text.

Next, SQL code was written to create tables schemas for these six .csv files, and VARCHAR(255) was used for all variable character fields except sex, in which VARCHAR(1) was used, as only two options are available, "M" or "F".  emp_no and salary were integers, and all dates (birth_date and hire_date) were set as dates.  
