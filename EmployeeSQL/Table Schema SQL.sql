--Creating tables 

CREATE TABLE titles(
    title_id VARCHAR(255) NOT NULL PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

SELECT * FROM titles;

CREATE TABLE employees(
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

CREATE TABLE departments(
    dept_no VARCHAR(255) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL   
);

SELECT * FROM departments;

CREATE TABLE dep_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
	--Use a composite key to ensure values in table is unique and 
	--representing an employee's assignment to a department
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dep_emp;

CREATE TABLE dep_manager(
    dept_no VARCHAR(255) NOT NULL,
    emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	
);

SELECT * FROM dep_manager;

CREATE TABLE salaries(
    emp_no INT NOT NULL PRIMARY KEY,
    salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;



