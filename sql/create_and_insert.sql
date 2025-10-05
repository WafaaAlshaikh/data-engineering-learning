CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE projects (
    id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);






INSERT INTO departments (id, name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Manager'),
(4, 'Finance'),
(5, 'Sales');


INSERT INTO employees (id, name, department_id, salary) VALUES
(1, 'Wafaa', 1, 8500.00),
(2, 'Ghaida', 1, 9200.00),
(3, 'Lama', 2, 7000.00),
(4, 'Razan', 3, 6000.00),
(5, 'Aseel', 2, 7200.00),
(6, 'Tasneem', 4, 9500.00),
(7, 'Aleen', 5, 6800.00),
(8, 'Reem', 1, 8800.00),
(9, 'Anas', 5, 7100.00),
(10, 'Ahmad', 3, 6200.00);

INSERT INTO projects (id, project_name, department_id) VALUES
(1, 'Website Redesign', 1),
(2, 'New Product Launch', 2),
(3, 'Employee Training Program', 3),
(4, 'Annual Budget Plan', 4),
(5, 'Client Acquisition Strategy', 5),
(6, 'Mobile App Development', 1),
(7, 'Social Media Campaign', 2),
(8, 'Payroll System Update', 4),
(9, 'Customer Outreach', 5),
(10, 'Internal HR Portal', 3);

