
CREATE TABLE CUSTOMERS(
ID INT NOT NULL,
NAME VARCHAR (20) NOT NULL,
AGE INT NOT NULL,
ADDRESS CHAR (25),
SALARY DECIMAL(18,2),
PRIMARY KEY (ID)
);
INSERT INTO CUSTOMERS VALUES
(1, 'RAMESH',32,'AHMEDABAD',2000.00),
(2, 'KHILAN',25,'DELHI',1500),
(3, 'KAUSHIK',23,'KOTA',2000);


INSERT INTO CUSTOMERS VALUES
(4, 'Chaitali', 25, 'Mumbai', 6500,'m');
(5, 'Hardik', 27, 'Bhopal', 8500),
(6, 'Komal', 22, 'Hyderabad', 4500),
(7, 'Muffy', 24, 'Indore', 10000);

SELECT name,ADDRESS,SALARY FROM CUSTOMERS;
select * from CUSTOMERS 
UPDATE CUSTOMERS SET NAME = 'sushil' WHERE ID = 6;
select distinct salary from customers 

delete from customers where id = 6
truncate table customers;
alter table customers add sex char (1);

INSERT INTO CUSTOMERS VALUES
(4,'Chaitali', 25, 'Mumbai', 6500,'f');

ALTER TABLE CUSTOMERS RENAME TO NEW_CUSTOMERS;

sp_rename 'CUSTOMERS', 'NEW_CUSTOMERS';
sp_rename 'NEW_CUSTOMERS', 'CUSTOMERS';
SELECT DISTINCT SALARY FROM CUSTOMERS 
INSERT INTO CUSTOMERS VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00,'m' ),
(2, 'Khilan', 25, 'Delhi', 1500,'f'),
(3, 'kaushik', 23, 'Kota', 2000,'m'),
(5, 'Hardik', 27, 'Bhopal', 8500,'m'),
(7, 'Muffy', 24, 'Indore', 10000,'m'),
(6, 'Komal', 22, 'Hyderabad', 4500,'f'),
(8, 'Komal', 22, 'Hyderabad', 4500,'f'),
(9, 'Komal', 22, 'Hyderabad', 4500,'f'),
(10, 'Komal', 22, 'Hyderabad', 4500,'f')
INSERT INTO CUSTOMERS VALUES
(11, 'Ramesh', 52, 'Ahmedabad', 2000.00,'m' ),
(12, 'Khilan', 75, 'Delhi', 1500,'f'),
(13, 'kaushik', 13, 'Kota', 2000,'m'),
(14, 'Hardik', 47, 'Bhopal', 8500,'m'),
(15, 'Muffy', 54, 'Indore', 10000,'m');

sp_rename 'customers.address','city','column';

select  NAME,id from CUSTOMERS
where city in ('hyderabad')and salary>1000;

select salary from CUSTOMERS

SELECT TOP 5 *
FROM CUSTOMERS
order BY id desc;


SELECT * FROM CUSTOMERS WHERE AGE BETWEEN 30 AND 50;
SELECT * FROM CUSTOMERS WHERE SALARY LIKE '2000%';
SELECT * FROM CUSTOMERS ORDER BY SALARY DESC;

************

create table employee (
id int,
Name CHAR(1), 
salary decimal (5,2)
);
update employee (age)
set age = case id    
('100'),
       ('123'),
	   ('123'),
	   ('45'),
	   ('123'),
	   ('527'),
	   ('827'),
	end   ;

UPDATE employee
SET age = CASE id
    WHEN 1 THEN 34
    WHEN 2 THEN 23
    WHEN 3 THEN 23
    WHEN 4 THEN 45
    WHEN 5 THEN 23
    WHEN 6 THEN 27
    WHEN 7 THEN 27
    -- Add more cases as needed
END;

select * from employee;

SELECT COUNT (SALARY) FROM EMPLOYEE
truncate table EMPLOYEE;
SELECT SUM (SALARY) FROM EMPLOYEE
SELECT AVG (SALARY) FROM EMPLOYEE
SELECT MAX (SALARY) FROM EMPLOYEE
SELECT MIN (SALARY) FROM EMPLOYEE

update employee set name=('b') where id =(2);
select * from employee;
alter table employee add age int ;

alter table employee add roll_no int;
UPDATE employee
SET roll_no = CASE id
    WHEN 1 THEN 55
    WHEN 2 THEN 56
    WHEN 3 THEN 57
    WHEN 4 THEN 58
    WHEN 5 THEN 59
    WHEN 6 THEN 60
    WHEN 7 THEN 61
END;

select count (salary) from employee;

select count (*) as total_emp from employee;

use sample_db;

select *from CUSTOMERS;

select count ,ID,name from CUSTOMERS;

SELECT 
    COUNT(ID) ,
    COUNT(name) 
FROM 
    CUSTOMERS;

select * from CUSTOMERS where age >25  ;
SELECT DISTINCT (city) FROM Customers;
SELECT DISTINCT * FROM Customers;

SELECT COUNT(DISTINCT city) FROM Customers;
SELECT DISTINCT * FROM Customers;
SELECT * FROM CUSTOMERS ORDER BY name desc ;
SELECT * FROM Customers ORDER BY  NAME;
SELECT * FROM Customers ORDER BY NAME,CITY;
SELECT MIN(NAME), SEX FROM Customers GROUP BY SEX;
SELECT COUNT(ID), SEX FROM Customers GROUP BY SEX;
SELECT * FROM Customers;

CREATE TABLE SALES(
SALE_ID INT PRIMARY KEY,
PRODUCT_ID INT,
QUANTITY_SOLD INT,
SALE_DATE date,
total_price decimal(10,2)
);

DROP TABLE SALES;

-- Insert sample data into Sales table

INSERT INTO SALES (SALE_ID, product_id, quantity_sold, sale_date, total_price) VALUES

(1,101,5,'2024-01-01',150.00),
(2, 102, 3, '2024-01-02', 90.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 120.00),
(5, 105, 6, '2024-01-03', 180.00);

SELECT * FROM SALES;

CREATE TABLE PRODUCTS(
PRODUCT_ID INT PRIMARY KEY,
PRODUCT_NAME VARCHAR(100),
CATEGORY VARCHAR(50),
UNIT_PRICE DECIMAL(10,2)
);

INSERT INTO PRODUCTS (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

SELECT * FROM PRODUCTS;

SELECT * FROM SALES;
SELECT(PRODUCT_NAME) AS PRODUCT_NAME,(unit_price) AS UNIT_PRICE FROM PRODUCTS;

SELECT (SALE_ID) AS SALE_ID,(SALE_DATE) AS DALE_DATE FROM SALES;

SELECT TOTAL_PRICE FROM SALES WHERE TOTAL_PRICE >'100';
SELECT * FROM SALES WHERE TOTAL_PRICE >'100';

SELECT CATEGORY FROM PRODUCTS WHERE CATEGORY='Electronics';
SELECT * FROM PRODUCTS WHERE CATEGORY='Electronics';

SELECT product_id, product_name, UNIT_PRICE
FROM Products
WHERE category = 'Electronics';

SELECT sale_id,total_price FROM SALES WHERE sale_date ='01-03-2024';

SELECT product_id, product_name FROM PRODUCTS WHERE UNIT_PRICE >'100';

SELECT SUM (TOTAL_PRICE) FROM SALES;
SELECT AVG (UNIT_PRICE) FROM PRODUCTS;
SELECT SUM (quantity_sold) FROM SALES;

SELECT sale_id, product_id,total_price FROM SALES WHERE QUANTITY_SOLD >'4';

SELECT product_name,unit_price FROM PRODUCTS ORDER BY unit_price DESC;
SELECT AVG (TOTAL_PRICE) FROM SALES;

SELECT product_name,unit_price from products where unit_price BETWEEN '20' AND '600';

select product_name,category from products order by category asc;

create table employee (emp_id INT, emp_name VARCHAR(255), 
                                  emp_city VARCHAR(255),
                                  emp_country VARCHAR(255),
                                  PRIMARY KEY (emp_id))
select * from employee;
INSERT INTO employee VALUES (101, 'Utkarsh Tripathi', 'Varanasi', 'India'),
                            (102, 'Abhinav Singh', 'Varanasi', 'India'), 
                            (103, 'Utkarsh Raghuvanshi', 'Varanasi', 'India'),
                            (104, 'Utkarsh Singh', 'Allahabad', 'India'),
                            (105, 'Sudhanshu Yadav', 'Allahabad', 'India'),
                            (106, 'Ashutosh Kumar', 'Patna', 'India');
# AND
select * from employee where emp_city = 'allahabad' and emp_country ='india';

#IN
SELECT *FROM EMPLOYEE WHERE EMP_CITY IN ('Allahabad', 'Patna');

#NOT
SELECT *FROM EMPLOYEE WHERE EMP_CITY NOT LIKE 'A%';

#OR 

SELECT * FROM EMPLOYEE WHERE EMP_CITY='VARANASI' OR EMP_COUNTRY = 'INDIA';

#LIKE
SELECT * FROM EMPLOYEE WHERE EMP_CITY  LIKE 'P%';

#BETWEEN
SELECT * FROM EMPLOYEE WHERE EMP_ID BETWEEN 101 AND 104;

#ALL
SELECT * FROM EMPLOYEE WHERE emp_id = ALL
                (SELECT emp_id FROM employee WHERE emp_city = 'Varanasi');
#ANY
SELECT *FROM EMPLOYEE WHERE EMP_ID=ANY (SELECT EMP_ID FROM EMPLOYEE WHERE EMP_CITY='Varanasi');
#exists
SELECT EMP_NAME FROM EMPLOYEE WHERE EXISTS (SELECT EMP_ID FROM EMPLOYEE WHERE EMP_CITY='PATNA');
SELECT EMP_NAME FROM EMPLOYEE WHERE EXISTS(SELECT EMP_ID FROM EMPLOYEE WHERE EMP_CITY='VARANASI')

use sample_db;
SELECT * FROM employee
SELECT * FROM employee WHERE emp_city  in  ('Allahabad' , 'Varanasi');

SELECT * FROM employee WHERE emp_id = ALL 
                (SELECT emp_id FROM employee WHERE emp_city = 'Varanasi');

SELECT emp_name,emp_id,emp_city FROM employee WHERE EXISTS
                (SELECT emp_id FROM employee WHERE emp_city = 'Patna');

SELECT * FROM employee WHERE emp_id < SOME 
                (SELECT emp_id FROM employee WHERE emp_city = 'Patna');
SELECT emp_id FROM employee WHERE emp_city = 'Patna';

CREATE TABLE Student (      
  id int PRIMARY KEY IDENTITY,     
  admission_no varchar(45) NOT NULL,  
  first_name varchar(45) NOT NULL,      
  last_name varchar(45) NOT NULL,  
  age int,  
  city varchar(25) NOT NULL      
);    

INSERT INTO Student (admission_no, first_name, last_name, age, city)       
VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),       
(2135, 'Paul', 'Ward', 15, 'Alaska'),       
(4321, 'Peter', 'Bennett', 14, 'California'),    
(4213,'Carlos', 'Patterson', 17, 'New York'),       
(5112, 'Rose', 'Huges', 16, 'Florida'),  
(6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
(7555,'Antonio', 'Butler', 14, 'New York'),       
(8345, 'Diego', 'Cox', 13, 'California');  
  
CREATE TABLE Fee (   
  admission_no varchar(45) NOT NULL,  
  course varchar(45) NOT NULL,      
  amount_paid int,    
);  

INSERT INTO Student (admission_no, first_name, last_name, age, city)       
VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),       
(2135, 'Paul', 'Ward', 15, 'Alaska'),       
(4321, 'Peter', 'Bennett', 14, 'California'),    
(4213,'Carlos', 'Patterson', 17, 'New York'),       
(5112, 'Rose', 'Huges', 16, 'Florida'),  
(6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
(7555,'Antonio', 'Butler', 14, 'New York'),       
(8345, 'Diego', 'Cox', 13, 'California');  
  
  
INSERT INTO Fee (admission_no, course, amount_paid)       
VALUES (3354,'Java', 20000),       
(7555, 'Android', 22000),       
(4321, 'Python', 18000),    
(8345,'SQL', 15000),       
(5112, 'Machine Learning', 30000);  


select * from fee;

SELECT    Fee.course, Fee.amount_paid  
FROM Student  
INNER JOIN Fee  
ON Student.admission_no = Fee.admission_no; 
USE sample_db

SELECT * FROM Student ;
SELECT * FROM Fee

SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
INNER JOIN Fee  
ON Student.admission_no = Fee.admission_no;  

SELECT S.admission_no, S.first_name, S.last_name, F.course, F.amount_paid from Student S
inner join Fee F
on S.admission_no=F.admission_no;

SELECT S1.first_name,S1.id,S1.last_name,S2.city
from Student S1, Student S2
WHERE S1.id<>S2.ID AND S1.CITY=S2.CITY
order by S1.id desc;


SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
CROSS JOIN Fee  
WHERE Student.admission_no = Fee.admission_no;  

SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
LEFT OUTER JOIN Fee  
ON Student.admission_no = Fee.admission_no;  

SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
right OUTER JOIN Fee  
ON Student.admission_no = Fee.admission_no;  

SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
FULL OUTER JOIN Fee  
ON Student.admission_no = Fee.admission_no;  

CREATE TABLE Student_details  (      
      
  admission_no varchar(45) NOT NULL,  
  first_name varchar(45) NOT NULL,      
  last_name varchar(45) NOT NULL,  
  age int,  
  city varchar(25) NOT NULL      
);    

INSERT INTO Student_details (admission_no, first_name, last_name, age, city)       
VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),       
(2135, 'Paul', 'Ward', 15, 'Alaska'),   
(2135, 'Paul', 'Ward', 15, 'Alaska'),
(4213,'Carlos', 'Patterson', 17, 'New York'), 
(4213,'Carlos', 'Patterson', 17, 'New York'), 
(2135, 'Paul', 'Ward', 15, 'Alaska'),
(8345, 'Diego', 'Cox', 13, 'California'),
(8345, 'Diego', 'Cox', 13, 'California'),
(4321, 'Peter', 'Bennett', 14, 'California'),    
(4213,'Carlos', 'Patterson', 17, 'New York'),       
(5112, 'Rose', 'Huges', 16, 'Florida'),  
(6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
(7555,'Antonio', 'Butler', 14, 'New York'),       
(8345, 'Diego', 'Cox', 13, 'California'),  
(7555,'Antonio', 'Butler', 14, 'New York'),       
(5112, 'Rose', 'Huges', 16, 'Florida'), 
(7555,'Antonio', 'Butler', 14, 'New York');    

select * from  Student_details;

select admission_no, first_name, last_name, age, city,
rank () over (PARTITION BY city ORDER BY age ) as rank_no 
from student_details;

select admission_no, first_name, last_name, age, city,
last_value(age)over(partition by city order by age ) as last_value
from Student_details;

create table sales_1 (sale_id int, sale_date date,amount int )
 insert into sales_1 (sale_id,sale_date,amount) values 
 (1,'2023-01-01',	100),
(2,	'2023-01-15',	200),
(3,	'2023-01-20',	150),
(4,	'2023-02-05',	300),
(5,	'2023-02-10',	250);

select * from sales_1

select sale_id,sale_date,amount,
sum(amount) over(order by sale_date) as running_total 
from sales_1;
 
 select sale_id,sale_date,amount,
 rank()over(order by amount desc)
 from sales_1;

  select sale_id,sale_date,amount,
  avg(amount)over(order by sale_date)
  from sales_1;

  SELECT 
  sale_id, 
  sale_date, 
  amount, 
  AVG(amount) OVER (ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg 
FROM 
  sales_1;

  create table daily_sales
  (sale_id int,sale_date date,amount int)

  insert into daily_sales (sale_id ,sale_date ,amount )values
  (1,	'2023-01-01',	100),
(2,	'2023-01-01',	200),
(3,	'2023-01-02',	150),
(4,	'2023-01-02',	300),
(5,	'2023-01-03',	250);

select *from daily_sales
select sale_id ,sale_date ,amount
from
(
select sale_id ,sale_date ,amount,
rank() over(partition by sale_date order by amount desc)as rank
from daily_sales
) as ranked_sales
where rank=1;

select top 3 (amount) from daily_sales order by amount desc

CREATE TABLE CUSTOMERS_1(
   ID INT NOT NULL,
   NAME VARCHAR(15) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS VARCHAR(25),
   SALARY DECIMAL(10, 4),
   PRIMARY KEY(ID));

INSERT INTO CUSTOMERS_1 VALUES 
(1, 'Ramesh', '32', 'Ahmedabad', 2000),
(2, 'Khilan', '25', 'Delhi', 1500),
(3, 'Kaushik', '23', 'Kota', 2000),
(4, 'Chaitali', '25', 'Mumbai', 6500),
(5, 'Hardik','27', 'Bhopal', 8500),
(6, 'Komal', '22', 'Hyderabad', 9000),
(7, 'Muffy', '24', 'Indore', 5500);

select*from CUSTOMERS_1

create index i_1 on CUSTOMERS_1(name);

show name from CUSTOMERS_1;

CREATE INDEX mult_index_data on CUSTOMERS_1(NAME, AGE);
 show INDEX FROM CUSTOMERS_1;

 SHOW INDEX FROM CUSTOMERS_1;

SELECT * 
FROM CUSTOMERS_1 WITH (INDEX(i_1)) 
WHERE column = 'name';

# JOINTS
use sample_db;
create table sales_final (sr_no int ,name varchar(9),price int );
insert into sales_final (sr_no,name,price)
values(2,'gafsd',3000),
(3,'fsgdrs',4000),
(2,'dsfrd',5000),
(6,'fdgfsr',6000);
select * from sales_final;

update  sales_final
set price=price+10000;

update sales_final
set name = 'abcd'
where name = 'fsgdrs';

select * from CUSTOMERS_1
ORDER BY ID;

SELECT top 3  SALARY FROM CUSTOMERS_1
ORDER BY SALARY DESC

update customers_1
set address = 'Nagpur'
where address = 'Mumbai';

update customers_1
set salary=salary+1000
where id = 2;
insert into customers_1(ID,NAME,AGE,ADDRESS)
VALUES(8,'Ram',36,'Mumbai');

select abs(-10);
select ceiling (76.12)
select floor(76.12)
select sign(15), sign(-10), sign(0)
select square(5), sqrt(81), pi(),cos(30),sin(90),tan(45)
select exp(2)

#STRING
select name, len(name) from customers_1;
select upper('this is a statement')
select name, lower(name) as lower from customers_1;
select LTRIM (' anystring') # trim from left side
Select RTRIM('anystring     ')
select substring ('microsoft',6,9)
select replace ('MICROSOFT','MICRO','MAJOR')
SELECT REPLICATE('DUMMY',5)
use sample_db;

select AGE, SUM(SALARY)  from CUSTOMERS_1
GROUP BY ADDRESS 
HAVING age=25;

CREATE TABLE EMP_DETAILS(ID INT, NAME VARCHAR(10));
SELECT * FROM EMP_DETAILS;

# ADD COLUMN INTO EXESTING TABLE
ALTER TABLE EMP_DETAILS ADD SALARY DECIMAL;
INSERT INTO EMP_DETAILS VALUES(1,'PHALGUNI',25000);
ALTER TABLE EMP_DETAILS ADD PHONE VARCHAR(10) NULL;
ALTER TABLE EMP_DETAILS ADD PROJECT_COMPLETED INT NOT NULL DEFAULT 5;
ALTER TABLE EMP_DETAILS ADD PROJECTID INTEGER NULL
CONSTRAINT PID_UNIQUE_KEY UNIQUE
INSERT INTO EMP_DETAILS VALUES(2,'STEVE',50000,'9764573886',DEFAULT,4);

# Inner Join
Syntax
select column_name(s) from table1_name INNER JOIN table2_name
on table1_name.column_name=table2_name.column_name;

use sample_db;
create table employee123 (EMP_ID INT,EMP_NAME VARCHAR(30),EMP_SALARY INT,EMP_DEPTID varchar(4));
INSERT INTO employee123 VALUES  (1111,'STEVE',35000,'D1'),
(1112,'adam',28000,'D2'),
(1113,'JOHN',50000,'D3'),
(1114,'MIKE',60000,'D4'),
(1115,'PETER',70000,'D5');
select *from employee123

create table department123 (dept_id varchar(2),dept_name varchar(13),dept_location varchar(10));
insert into department123 values ('D1','DEVELOPMENT','CALIFORNIA'),
('D2','MARKETING','MUMBAI'),
('D3','ACCOUNTS','NEW YORK'),
('D4','MANAGEMENT','SYDNEY');

SELECT * FROM DEPARTMENT123;

SELECT EMP_ID,EMP_NAME,EMP_SALARY,DEPT_NAME,DEPT_LOCATION
FROM EMPLOYEE123 INNER JOIN DEPARTMENT123
ON EMPLOYEE123.EMP_DEPTID = DEPARTMENT123.dept_id;

# LEFT OUTER JOIN

SELECT EMP_ID,EMP_NAME,EMP_SALARY,DEPT_NAME,DEPT_LOCATION
FROM EMPLOYEE123 LEFT OUTER JOIN DEPARTMENT123
ON EMPLOYEE123.EMP_DEPTID = DEPARTMENT123.dept_id;

SELECT EMP_ID,EMP_NAME,EMP_SALARY,DEPT_NAME,DEPT_LOCATION
FROM EMPLOYEE123 RIGHT OUTER JOIN DEPARTMENT123
ON DEPARTMENT123.dept_id = EMPLOYEE123.EMP_DEPTID

SELECT EMP_ID,EMP_NAME,EMP_SALARY,DEPT_NAME,DEPT_LOCATION
FROM EMPLOYEE123 FULL OUTER JOIN DEPARTMENT123
ON EMPLOYEE123.EMP_DEPTID = DEPARTMENT123.dept_id

#SUBQUERY

SELECT * FROM EMPLOYEE123

/-- Display name, salary of employee whose salary is greater than mike's salary

SELECT emp_name, emp_salary 
FROM employee123
WHERE emp_salary > (SELECT emp_salary FROM employee123 WHERE emp_name = 'STEVE');


/-- Display name, salary of employee whose salary is greater than ADAM'S salary
-- and deptno same as adam's deptno.

select emp_name,emp_salary 
from employee123
where emp_salary > (select emp_salary from employee123 where emp_name='STEVE')
AND EMP_DEPTID = (SELECT EMP_DEPTID FROM employee123 WHERE EMP_NAME = 'STEVE');

















						










