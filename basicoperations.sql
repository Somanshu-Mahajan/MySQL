drop table customer

create table customer(
    id int unique not null,
    name varchar(45) null,
    age int null,
    address varchar(100) null,
    product varchar(45) null,
    purchasedate date null,
    primary key(id)
);

select * from customer;

-> insert into value
insert into customer (id, name, age, address, product, purchasedate)
values (1001, 'Amit Kumar', 30, 'Bangalore, India', 'Laptop', '2023-01-01'),
       (1002, 'Priya Sharma', 25, 'Delhi, India', 'Phone', '2023-02-14'),
       (1003, 'Rahul Singh', 40, 'Mumbai, India', 'Camera', '2023-03-15'),
       (1004, 'Sita Devi', 60, 'Chennai, India', 'Television', '2023-04-20'),
       (1005, 'Mohan Sharma', 50, 'Kolkata, India', 'Washing Machine', '2023-05-25');
       
-> delete rows from table
delete from customer where id > 1003;

-> to get count of records in table
select count(*) from customer;

-> adding a new column
alter table customer add column aadhar int not null;

desc customer;
-> desc here is describe

-> modifying the colums
alter table customer change column address city varchar(40);
-> to change datatype of the column
alter table customer modify column aadhar varchar(12);
-> to add default values
alter table customer alter column aadhar set default 'xxxxxxxxxxxx';
-> drop column
alter table customer drop column aadhar;

->adding default values
alter table customer modify product default 'Laptop';
