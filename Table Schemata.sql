--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS dept_emp;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS titles;


CREATE TABLE "departments" (
    "dept_no" VARCHAR(50) NOT NULL,
    "dept_name" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER NOT NULL,
    "dept_no" VARCHAR(50) NOT NULL,
	CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
		REFERENCES "employees" ("emp_no"),
	CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
		REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(50) NOT NULL,
    "emp_no" INTEGER NOT NULL,
	CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
		REFERENCES "departments" ("dept_no"),
	CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
		REFERENCES "employees" ("emp_no")
);

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR(50) NOT NULL,
    "birth_date" VARCHAR(50) NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "sex" VARCHAR(1) NOT NULL,
    "hire_date" DATE NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"),
	CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
		REFERENCES "titles" ("title_id")
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER NOT NULL,
    "salary" INTEGER NOT NULL,
	CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
		REFERENCES "employees" ("emp_no")
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(50) NOT NULL,
    "title" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id" )
);

--SELECT * FROM departments;
--SELECT * FROM dept_emp;
--SELECT * FROM dept_manager;
--SELECT * FROM employees;
--SELECT * FROM salaries;
--SELECT * FROM titles;

