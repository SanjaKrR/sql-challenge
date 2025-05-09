-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/9vb9os
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "emp_no" int,
    "emp_title_id" varchar(10),
    "birth_date" date,
    "first_name" varchar(50),
    "ast_name" varchar(50),
    "sex" varchar(1),
    "hire_date" date,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

SELECT * FROM "Employees"

CREATE TABLE "Titles" (
    "title_id" varchar(10),
    "title" varchar(100),
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     ),
    CONSTRAINT "uc_Titles_title" UNIQUE (
        "title"
    )
);

SELECT * FROM "Titles"

CREATE TABLE "Departments" (
    "dept_no" varchar(10),
    "dept_name" varchar(100),
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

SELECT * FROM "Departments"

CREATE TABLE "Dept_emp" (
    "emp_no" int,
    "dept_no" varchar(10)
);

SELECT * FROM "Dept_emp"


CREATE TABLE "Dept_manager" (
    "dept_no" VARCHAR(10),
    "emp_no" INT,
    PRIMARY KEY ("dept_no", "emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "Departments"("dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "Employees"("emp_no")
);
SELECT * FROM "Dept_manager"

CREATE TABLE "Salaries" (
    "emp_no" int,
    "salary" int,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);
SELECT * FROM "Salaries"
