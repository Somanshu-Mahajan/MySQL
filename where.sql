create table employee(
    id int unique not null,
    name varchar(45) null,
    age int null,
    designation varchar(75) null,
    dob date null,
    city varchar(45) null,
    salary int null,
    primary key(id)
);

drop table employee;

insert into employee (id, name, city, age, designation, salary, dob)
values (1, 'Shreyas Patel', 'Mumbai', 35, 'Software Engineer', 50000, '1989-01-01'),
       (2, 'Aisha Kapoor', 'Delhi', 42, 'Marketing Manager', 65000, '1973-12-31'),
       (3, 'Vikram Singh', 'Bangalore', 28, 'Software Developer', 42000, '1996-05-15'),
       (4, 'Priya Sharma', 'Chennai', 30, 'Human Resources', 38000, '1994-07-09'),
       (5, 'Rahul Mehta', 'Hyderabad', 38, 'Accountant', 48000, '1986-03-22'),
       (6, 'Riya Desai', 'Ahmedabad', 26, 'Software Engineer', 35000, '1998-10-21'),
       (7, 'Arjun Kumar', 'Kolkata', 45, 'Project Manager', 52000, '1979-06-09'),
       (8, 'Sonia Bose', 'Pune', 24, 'Graphic Designer', 40000, '2000-02-14'),
       (9, 'Amit Gupta', 'Jaipur', 32, 'Sales Representative', 37000, '1992-09-05'),
       (10, 'Rani Iyer', 'Lucknow', 40, 'Business Analyst', 46000, '1984-08-27'),
       (11, 'Rohan Das', 'Mumbai', 38, 'Accountant', 48000, '1986-03-22'),  
       (12, 'Nikita Joshi', 'Bangalore', 28, 'Software Developer', 42000, '1996-05-15'),  
       (13, 'Maya Shah', 'Delhi', 40, 'Marketing Manager', 62000, '1972-12-31'),  
       (14, 'Akash Malhotra', 'Chennai', 32, 'Sales Representative', 39000, '1992-09-05'), 
       (15, 'Kiara Singh', 'Kolkata', 24, 'Graphic Designer', 38000, '2000-02-14');
       
select * from employee;
select * from employee where city = "Mumbai";
select * from employee where salary > 40000;
select * from employee where salary between 30000 and 40000;

-> update any row
update employee set salary = 60000 where id = 6;

-> and
select * from employee where age >= 35 and salary >= 50000;

-> or
select * from employee where age >= 35 or salary >= 50000;

-> limit
select * from employee where salary > 50000 limit 5;

-> as
select salary as total_salary from employee;

-> like 
select * from employee where name like "M%";
-> % for characters
-> _ for numbers 
-> these are wildcard characters

