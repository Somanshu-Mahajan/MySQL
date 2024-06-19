create table employee (
	empid int not null,
    empname varchar(45) null,
    age int null,
    designation varchar(30) null,
    city varchar(50) null,
    salary int null,
    doj date null,
    deptid int not null,
    primary key(empid)
);

insert into employee (empid, empname, age, designation, city, salary, doj, deptid)
values (1011, "rahul", 26, "data analyst", "hyderabad", 40000, "2022-01-22", 16),
       (1012, "keerthi", 27, "SDE", "banglore", 35000, "2019-08-23", 11),
       (1013, "varun", 24, "System Engineer", "hyderabad", 30000, "2022-04-11", 17),
       (1014, "sanjana", 26, "Accounts Executive", "chennai", 32000, "2021-10-21", 13),
       (1015, "kiran", 27, "HR Manager", "mumbai", 50000, "2021-07-14", 12),
       (1016, "nitya", 25, "SDE", "pune", 40000, "2020-06-27", 11),
       (1017, "ajay", 28, "General Manager", "vizag", 60000, "2018-05-19", 12);

create table department(
	deptid int not null,
    deptname varchar(20) null,
    primary key(deptid)
);

insert into department (deptid, deptname)
values (11, "IT"), (12, "HR"), (13, "Finance"), (14, "Sales & Marketing"), (15, "Operations");

create table projects(
	projectid int not null,
    empid int not null,
    projectname varchar(45) null,
    projectmanager varchar(10) null,
    primary key(projectid)
);

insert into projects (projectid, empid, projectname, projectmanager)
values (110, 1015, "ERP System", "vinay"), (210, 1017, "Employee Assitance Programme", "priyanka"), 
       (310, 1014, "Cyber Security", "karthik"), (410, 1011, "Network Solutions", "aman"), 
       (510, 1017, "Android Development", "raghav"), (610, 1019, "Data Warehousing", "sneha"),
       (710, 1015, "Image Encryption", "bhavya");

create table customer(
	custid int not null,
    custname varchar(45) null,
    age int null,
    address varchar(45) null,
    phone int null,
    primary key(custid)
);

insert into customer (custid, custname, age, address, phone)
values (10110, "rahul", 25, "hyderabad", 798561549),
	   (10120, "kavya", 28, "banglore", 896512489),
       (10130, "ajay", 24, "mumbai", 965320278),
       (10140, "divya", 25, "banglore", 987532154),
       (10150, "adarsh", 27, "chennai", 862574123),
       (10170, "pranay", 28, "pune", 653258797);
       
create table orders (
	productid int not null,
    custid int not null,
    productname varchar(45) null,
    quantity int null,
    price int null,
    purchasedate date null
);

insert into orders (productid, custid, productname, quantity, price, purchasedate)
values (1, 10120, "AC", 1, 40000, "2021-07-11"),
	   (2, 10130, "TV", 1, 75000, "2022-03-25"),
       (3, 10110, "phone", 2, 45000, "2019-10-22"),
       (4, 10140, "cooker", 1, 20000, "2020-07-19"),
       (5, 10160, "car", 1, 600000, "2020-04-24"),
       (7, 10130, "sofa set", 2, 45000, "2021-05-19"),
       (8, 10190, "phone", 3, 27000, "2022-04-23");
        
-> retrieve employee details and department they are working in
->  use inner join
select employee.empid, employee.empname, employee.designation, department.deptid, department.deptname
from employee inner join department on employee.deptid = department.deptid;

-> full join
select employee.empid, employee.empname, projects.projectname, projects.projectmanager
from employee left join projects on employee.empid = projects.empid
union
select employee.empid, employee.empname, projects.projectname, projects.projectmanager
from employee right join projects on employee.empid = projects.empid;

-> left join
select c.custid, c.custname, c.address, o.productname, o.quantity, o.price, o.purchasedate
from customer c left join orders o on c.custid = o.custid;

-> right join
select c.custid, c.custname, c.address, o.productname, o.quantity, o.price, o.purchasedate
from customer c right join orders o on c.custid = o.custid;