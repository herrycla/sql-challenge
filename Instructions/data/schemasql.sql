CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
Primary key (dept_no),
unique (dept_name)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL, 
	to_date DATE Not NULL,
Primary key (emp_no, dept_no), 
	Foreign key (emp_no) references employees (emp_no), 
	Foreign key (dept_no) references departments (dept_no)
	);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL, 
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
Primary key (emp_no) 
	); 

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL, 
	to_date DATE Not NULL,
Primary key (emp_no, from_date), 
	Foreign key (emp_no) references employees (emp_no) 
	); 
	
CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL, 
	to_date DATE Not NULL,
Primary key (emp_no, from_date, title),
	Foreign key (emp_no) references employees (emp_no) 
	); 


CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL, 
	to_date DATE Not NULL,
Primary key (emp_no, dept_no), 
	Foreign key (emp_no) references employees (emp_no), 
	Foreign key (dept_no) references departments (dept_no)
	);