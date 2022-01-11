create database payroll_service;

use payroll_service;

create table employee_payroll(
id int identity(1,1) primary key,
name varchar(50) not null,
salary money,
start_date date);

insert into employee_payroll values(
'Kishan Kuamr',25375,'2019-09-12'
);
insert into employee_payroll values(
'Kunal Anand',35375,'2020-03-07'
);
insert into employee_payroll values(
'Harsh Singh',29885,'2020-09-07'
);
insert into employee_payroll values(
'Pushpanjali Manjrot',29075,'2019-08-19'
);
insert into employee_payroll values(
'Shashank Kumar',37375,'2018-09-22'
);
insert into employee_payroll values(
'Vikrant Anand',21345,'2021-03-12'
);
insert into employee_payroll values(
'Saurav Kumar',22875,'2018-09-10'
);
insert into employee_payroll values(
'Kaushik Sinha',27575,'2015-08-22'
);
insert into employee_payroll values(
'Pawan Kumar',55375,'2012-06-22'
);

select name from employee_payroll;
select start_date from employee_payroll;

select * from employee_payroll;

select distinct start_date from employee_payroll;

select salary from employee_payroll where salary >30000;

select salary FROM employee_payroll WHERE Name='Pushpanjali';

select name,start_date,salary from employee_payroll where salary>30000;

select * from employee_payroll where start_date between CAST('2020-01-01' as date) and GETDATE();

Alter table employee_payroll Add gender char(1);

select * from employee_payroll;

UPDATE employee_payroll Set gender ='M' where name = 'Kishan Kuamr';
UPDATE employee_payroll Set gender ='M' where name = 'Kunal Anand' ;
UPDATE employee_payroll Set gender ='M' where name = 'Harsh Singh' ;
UPDATE employee_payroll Set gender ='F' where name = 'Pushpanjali Manjrot';
UPDATE employee_payroll Set gender ='M' where name = 'Shashank Kumar';
UPDATE employee_payroll Set gender ='M' where name = 'Vikrant Anand';
UPDATE employee_payroll Set gender ='M' where name = 'Saurav Kumar';
UPDATE employee_payroll Set gender ='M' where name = 'Kaushik Sinha';
UPDATE employee_payroll Set gender ='M' where name = 'Pawan Kumar';

select sum(salary) from employee_payroll where gender ='F' group by gender;
select AVG(salary) from employee_payroll where gender ='M' group by gender;
select MIN(salary) from employee_payroll where gender ='M' group by gender;
select MAX(salary) from employee_payroll where gender ='M' group by gender;
select COUNT(salary) from employee_payroll where gender ='M' group by gender;

Alter table employee_payroll Add phone int;
Alter table employee_payroll Add Address varchar(200) not null default 'address';
Alter table employee_Payroll Add Department varchar(50) not null default 'Developer';

Alter table employee_Payroll Add Deduction float, Taxable_pay float, IncomeTax_pay float, Net_Pay float;





















