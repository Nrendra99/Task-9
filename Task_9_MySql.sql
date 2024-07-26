-- create the schema
create schema Task_9_MySql;

-- use the schema
use Task_9_MySql;

-- create the table empl
create table empl (
    empno int primary key,
    ename varchar(50) not null,
    job varchar(50) not null,
    mgr varchar(50),
    hiredate date not null,
    sal int not null,
    comm int,
    deptno int not null
);

-- insert data into the empl table
insert into empl (empno, ename, job, mgr, hiredate, sal, comm, deptno) values
(8369, 'Smith', 'clerk', 8902, '1990-12-18', 800, null, 20),
(8499, 'Anya', 'salesman', 8698, '1991-02-20', 1600, 300, 30),
(8521, 'Seth', 'salesman', 8698, '1991-02-22', 1250, 500, 30),
(8566, 'Mahadevan', 'manager', 8839, '1991-04-02', 2985, null, 20),
(8654, 'Momin', 'salesman', 8698, '1991-09-28', 1400, 1400, 30),
(8688, 'Bina', 'manager', 8839, '1991-05-01', 2850, null, 30),
(8788, 'Shivansh', 'manager', 8839, '1991-06-09', 2500, null, 10),
(8882, 'Scott', 'analyst', 8566, '1992-12-09', 3000, null, 20),
(8839, 'Amir', 'president', null, '1991-11-18', 5000, null, 10),
(8844, 'Kuldeep', 'salesman', 8688, '1991-09-08', 1500, 0, 30);

-- query to display ename and sal of employees whose salary are greater than or equal to 2200
select ename, sal
from empl
where sal >= 2200;

-- query to display details of employees who are not getting commission
select *
from empl
where comm is null;

-- query to display ename and sal of employees who don’t have their salary in the range of 2500 to 4000
select ename, sal
from empl
where sal < 2500 or sal > 4000;

-- query to display the name, job title, and salary of employees who don’t have a manager
select ename, job, sal
from empl
where mgr is null;

-- query to display the name of an employee whose name contains 'a' as the third alphabet
select ename
from empl
where ename like '__a%';

-- query to display the name of an employee whose name contains 't' as the last alphabet
select ename
from empl
where ename like '%t';

-- create the table employee
create table employee (
    empcode int primary key,
    empname varchar(50) not null,
    empage int not null,
    esalary int not null
);




