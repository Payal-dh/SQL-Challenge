
CREATE TABLE title
(
	title_id VARCHAR  NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)	
);


SELECT *
FROM title;


CREATE TABLE employee

(emp_no INTEGER PRIMARY KEY,
 emp_title_id VARCHAR,
 birth_date DATE,
 first_name VARCHAR ,
 last_name VARCHAR,
 sex VARCHAR,
 hire_date DATE,
 FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
 );
 

SELECT *
FROM employee;


CREATE TABLE departments
(
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);

SELECT  *
FROM departments ;


   CREATE TABLE dept_manager
   (dept_no VARCHAR,
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);
 

 SELECT *
 FROM dept_manager ;


 CREATE TABLE dept_emp
 (emp_no INTEGER,
  dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

 SELECT *
 FROM dept_emp
 

 CREATE TABLE salaries
 (emp_no INTEGER PRIMARY KEY,
  salary INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
 );
-- Query all fields from the table
SELECT *
FROM salaries



ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "title" ("title_id");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");
