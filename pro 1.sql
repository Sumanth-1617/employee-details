create database employee;
use employee;
create table employee_details(
employee_ID int,
first_name varchar(50),
last_name varchar(60),
salary varchar(60),
joining_date varchar(90),
department varchar(80),
primary key(employee_id));
select*from employee_details;
insert into employee_details(employee_id,first_name,last_name,salary,joining_date,department)
values(1,'venkatesh','s',100000,'08/28/2015','banking'),
(2,'ragavi','p',75000,'08/28/2015','business'),
(3,'gopinath','c',50000,'03/02/2016','pharma'),
(4,'dinesh','g','50000','03/02/2016','insurance'),
(5,'saibabu','e',40000,'07/08/2017','software'),
(6,'divya','p',33000,'03/02/2016','healthcare'),
(7,'hasan','s',29000,'03/02/2016','manufacturing'),
(8,'aravindan','r',40000,'03/02/2016','healthcare'),
(9,'satish','md',45000,'03/02/2016','automobile'),
(10,'prasanth','pkp',34000,'03/02/2016','insurance'),
(11,'vijay','r',25684,'03/02/2016','business'),
(12,'sivakumar','k',54789,'03/02/2016','software');


create table incentives(employee_ref_id int,
incentive_data varchar(90),
incentive_amount int,
foreign key(employee_ref_id) references employee_details (employee_id));


select * from incentives;

insert into incentives
(employee_ref_id,incentive_data,incentive_amount)values
(1,'01-feb-16',5000),
(2,'01-feb-16',3000),
(3,'01-feb-17',4000),
(1,'01-jan-17',4500),
(2,'01-jan-17',3500);


-- 1 get all employee details from the employee table
select * from Employee_details;

-- 2 get first_name from employee table using alias name "employee name"
select first_name as employee_name from employee_details;


-- 3 get first_name and last_name from the employee table
select FIRST_NAME,LAST_NAME from Employee_details;

-- 4 get first_name from employee table in upper case
select upper (first_name) from employee_details;

-- 5 get first_name from employee table in lower case
select lower (first_name) from employee_details;

-- 6 get unique department from employee table
select distinct department from employee_details;

-- 7 select first 3 characters of first_name from employee
select substring(first_name,1,3) as first_name from employee_details;  

-- 8 get position 'a' in name 'ragavi' from employee table
select position('a' in first_name) position_of_a_ragavi from employee_details where employee_id = 2;


-- 9 Get first_name from employee table after removing white spaces from the right side. 
select rtrim(First_Name) First_Name from Employee_details;

-- 10.Get first_name from employee table after removing white spaces from the left side.
select ltrim(First_Name) First_Name from Employee_details;

-- 11.Get lenght of First_Name from Employee. 
select length(First_Name) length_of_a_First_Name from Employee_details;

-- 12.Get First_Name from employee table after replaving 'a' with '$'. 
select replace(First_Name,'a','$') from Employee_details;

-- 13.Get First and last name as single column from employee table separate by a '_'. 
select concat(First_Name,' ',Last_Name) full_name from Employee_details;

-- 14.Get first name, joining year, joining month, joining date from employee table. 
select First_Name,SUBSTRING_INDEX(JOINING_DATE, '/', -1) as JOINING_YEAR,
    SUBSTRING_INDEX(SUBSTRING_INDEX(JOINING_DATE, '/', 2), '/', -1) as JOINING_DATE,
    SUBSTRING_INDEX(JOINING_DATE, '/', 1) as JOINING_MONTH from Employee_details;
    
-- 15.Get all employee details from the employee table order by first name Ascending. 
select * from Employee_details order by First_Name asc;

-- 16.Get all employee details from the employee table order by first name desending. 
select * from Employee_details order by First_Name desc;

-- 17.Get all employee details from the employee table order by first name ascending and salary desending. 
select * from Employee_details order by First_Name asc, Salary desc; 

-- 18.Get employee details from employee table whose employee table is 'Dinesh'. 
select * from Employee_details where First_Name = 'Dinesh';

-- 19.Get employee details from employee table whose employee table are 'Dinesh' and 'Roy". 
select * from Employee_details where First_Name = 'Dinesh'or First_Name = 'Roy';

-- 20.Get employee details from employee table whose employee table are not 'Dinesh' and 'Roy".
select * from Employee_details where First_Name != 'Dinesh' or First_Name !='Roy'; 

-- 21.Get employee details from employee table whose Frist name starts with S. 
select * from Employee_details where First_Name like 'S%';

-- 22.Get employee details from employee table whose Frist name contains V. 
select * from Employee_details where First_Name like '%v%';

-- 23.Get employee details from employee table whose Frist name ends with S. 
select * from Employee_details where First_Name like '%n';

-- 24.Get employee details from employee table whose Frist name ends with n and name contains 4 letters.
select * from Employee_details where First_Name like '%n__'; 

-- 25.Get employee details from employee table whose Frist name starts with J and name contains 4 letters.
select * from Employee_details where First_Name like 'J__%'; 

-- 26.Get employee details from employee table whose salary is greater than 60000.
select * from Employee_details where Salary>60000;

-- 27.Get employee details from employee table whose salary is less than 80000. 
select * from Employee_details where Salary<80000;

   -- 28 get employee details from employee table whos' s salary between 80000 and 50000
   select*from employee_details where first_name='venkatesh' or first_name='ragavi';