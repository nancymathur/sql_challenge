-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL,
    birth_date DATE,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    gender VARCHAR(300) NOT NULL,
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(300) NOT NULL,
    dept_name VARCHAR(300) NOT NULL,
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS dept_emp
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(300) NOT NULL,
    from_date DATE,
    to_date DATE    
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    dept_no VARCHAR(300) NOT NULL,
    emp_no INTEGER NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL    
);

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL    
);

CREATE TABLE IF NOT EXISTS titles
(
    emp_no INTEGER NOT NULL,
    title VARCHAR(300) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL    
);


-- Create FKs
ALTER TABLE salaries
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE titles
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    

-- Create Indexes

