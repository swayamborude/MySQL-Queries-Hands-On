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
insert into employee values (null,'Ben','m',30,'D458745',8488,'Mumbai');
ALTER TABLE employee AUTO_INCREMENT = 8;
insert into employee values (null,'Ben','m',30,'D458745','Hybrid',8488,'Mumbai');
insert into employee (ename,gender,age,passport,workmode,salary,city) values 
('Dom','m',26,'B474378','Hybrid',600,'Kharadi'),
('Neeraj','m',21,'T122678','who',200,'Hinjewadi');

Rename table employee to emp;
desc emp;

Update emp
set salary=salary+300
where ename='Neeraj';

Update emp
set salary = salary+0.1+salary
where age>=25;

Update emp
set salary = salary+0.05*salary
where city = 'Pune' or city = 'Kharadi';

Update emp
set salary = salary+0.05*salary
where city in ('Pune','Hinjewadi');