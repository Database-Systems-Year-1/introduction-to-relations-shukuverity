create table Employee(emp_id int,first_name varchar(55),last_name varchar(50),birth_date date,sex char(1),salary numeric(10),super_id int,branch_id int, primary key(emp_id));
insert into Employee (emp_id, first_name, last_name, birth_date, sex, salary, super_id, branch_id) values
(100, 'David', 'Wallace', '1967-11-17', 'M', 250000.00, NULL, 1),
(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000.00, 100, 1),
(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000.00, 100, 2),
(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000.00, 102, 2),
(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000.00, 102, 2),
(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000.00, 102, 2),
(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000.00, 100, 3),
(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000.00, 106, 3),
(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000.00, 106,3);

create table Branch (branch_id int primary key,mgr_id int);

create table Branch_Supplier (branch_id int,supplier_name varchar(100),supply_type varchar(50),primary key (branch_id, supplier_name));

insert into Branch_Supplier (branch_id, supplier_name, supply_type) values
(2, 'Hammer Mill', 'Paper'),
(2, 'Uni-ball', 'Writing Utensils'),
(3, 'Patriot Paper', 'Paper'),
(2, 'J.T. Forms & Labels', 'Custom Forms'),
(3, 'Uni-ball', 'Writing Utensils'),
(3, 'Hammer Mill', 'Paper'),
(3, 'Stamford Lables', 'Custom Forms');

CREATE TABLE Works_With (emp_id int,client_id int,total_sales DECIMAL(12, 2));

-- Insert data into the Works_With table
INSERT INTO Works_With (emp_id, client_id, total_sales)
VALUES
(105, 400, 55000),
(102, 401, 267000),
(108, 402, 22500),
(107, 403, 5000),
(108, 403, 12000),
(105, 404, 33000),
(107, 405, 26000),
(102,406, 15000),
(105,406,130000);

Create table Client(client_id varchar(50),client_name varchar(50),branch_id varchar(50),primary key(client_id));
insert into Client values
('400','Dunmore Highschool','2'),
('401','Lackawana Country','2'),
('402','FedEx', '3'),
('403','John Daly Law, LLC','3'),
('404','Scranton Whitepages','2'),
('405','Times Newspaper','3'),
('406','FedEx','2');
