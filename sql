CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    department INT,
    joining_date DATE,
    FOREIGN KEY (department) REFERENCES Department(department_id)
);

CREATE TABLE Bonus (
    bonus_id INT PRIMARY KEY,
    employee_id INT,
    bonus_amount INT,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    amount INT
);
