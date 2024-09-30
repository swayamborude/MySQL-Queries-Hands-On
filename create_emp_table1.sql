create table employee(
eno int(5) primary key auto_increment,
ename varchar(10) not null,
gender varchar(1) not null check(gender in('m','f')),
age int(3) not null check(age>=18),
passport varchar(10) unique,
workmode varchar(10) default 'wfh',
salary int(5) check(salary>0));

alter table employee
add city varchar(10);

USE emp_db;
desc employee;

alter table employee
modify salary int(10);

USE emp_db;
insert into employee values (null,'Alice','f',23,'A12345','who',500,'Pune');   /*Insert values in Table*/
insert into employee (ename,gender,age,passport,salary,city) values 
('Chris','m',26,'B124378',600,'Kharadi'),
('David','m',21,'T124578',200,'Hinjewadi'),
('Virat','m',28,'E524578',900,'Magarpatta'),
('Rohit','m',30,'F824578',800,'VimanNagar'),
('Jack','m',25,'Q224578',900,'Noida'),
('Tom','m',24,'R124578',500,'Banglore');

USE emp_db;
Delete from employee WHERE ename='Ben';
Update employee Set eno = auto_increment Where auto_increment;

Alter table employee
modify Column eno int(5) auto_increment;

select * from employee
order by eno ASC;
Truncate table employee; 

insert into employee values (null,'Alice','f',23,'A12345','who',500,'Pune');
ALTER TABLE employee AUTO_INCREMENT = 2;
insert into employee (ename,gender,age,passport,workmode,salary,city) values 
('Chris','m',26,'B124378','Hybrid',600,'Kharadi'),
('David','m',21,'T124578','who',200,'Hinjewadi'),
('Virat','m',28,'E524578','Hybrid',900,'Magarpatta'),
('Rohit','m',30,'F824578','who',800,'VimanNagar'),
('Jack','m',25,'Q224578','Hybrid',900,'Noida'),
('Tom','m',24,'R124578','who',500,'Banglore');

Truncate table employee; 
insert into employee values (null,'Alice','f',23,'A12345','who',500,'Pune');
insert into employee values (null,'Alice','f',23,'A12345','who',500,'Pune');
ALTER TABLE employee AUTO_INCREMENT = 2; /*if an error throw in that case auto increment is given this position so we will incremenrt these value*/
insert into employee (ename,gender,age,passport,workmode,salary,city) values 
('Chris','m',26,'B124378','Hybrid',600,'Kharadi'),
('David','m',21,'T124578','who',200,'Hinjewadi'),
('Virat','m',28,'E524578','Hybrid',900,'Magarpatta'),
('Rohit','m',30,'F824578','who',800,'VimanNagar'),
('Jack','m',25,'Q224578','Hybrid',900,'Noida'),
('Tom','m',24,'R124578','who',500,'Banglore');