-- \sql
-- \connect root@localhost:3306
-- show databases;

-- create database client_master;

-- use client_master;
-- show tables;

-- create new table
-- create table client_master(
--     clientNo varchar(6),
--     name varchar(20),
--     city varchar(15),
--     pincode int(8),
--     state varchar(15),
--     balDue int(10)
-- );


--insert into client_master values ("C00001" , "Ivan Bayross" , "Mumbai" , 400054, "Maharashtra" , 15000);

--select * from client_master;

--insert into client_master values 
 --("C00002" , "Mamta Muzumdar" , "Madras" , 780001, "Tamil Nadu" , 0),
 --("C00003" , "Chhaya Bankar" , "Mumbai" , 400057 , "Maharashtra" ,5000),
-- ("C00004" , "Ashwini Joshi" , "Bangalore" , 560001 , "karnataka" , 0),
 --("C00005" , "Hansel Colaco" , "Mumbai" , 400060 , "Maharastra", 2000), 
 --("C00006", "Deepak Sharma" , "Mangalore" , 560050 , "Karnataka" , 0);




 --2.

 create database product_master;
 use product_master;
 show tables;

 create table product_master(
    productNo varchar(6),
    description varchar(15),
    profitpercent int(6),
    unitmeasure varchar(10),
    qtyonhand int(8),
    reorderlvl int(8),
    sellprice int(10),
    costprice int(10)
 );

 insert into product_master values
 ("P0001" , "t-shirts" , 5 , "piece" , 200 , 50 , 350 , 250),
 ("P0345" , "shirts" , 6 , "piece" , 150 , 50 , 500 , 350),
 ("P06734" , "cotton jeans" , 5 , "piece" , 100 , 20 , 600 , 450),
 ("P07865" , "jeans" , 5 , "piece" , 100 , 20 , 750 , 500),
 ("P07868" , "trousers" , 2 , "piece" , 150 , 50 , 850 , 550),
 ("P07885" , "pull overs" , 2 , "piece" , 80 , 30 , 700 , 450),
 ("P07965" , "denim shirts" , 4 , "piece" , 100 , 40 , 350 , 250),
 ("P07975" , "lycra tops" , 5 , "piece" , 70 , 30 , 300 , 175),
 ("P08865" , "skirts" , 5 , "piece" , 75 , 30 , 450 , 300);





 --3.

create table salesman_master(
    salesmanNo varchar(6),
    name varchar(20),
    address1 varchar(30),
    address2 varchar(30),
    city varchar(20),
    pincode int(8),
    state varchar(20),
    salamt int(10),
    tgttoget int ,
    ytdsales int ,
    remarks varchar(60)
);

insert into salesman_master values ("S00001" , "Aman" , "A/14" , "Worli" , "Mumbai" , 400002 ,"Maharashtra" , 3000 , 100, 50 ,"Good");

select * from salesman_master;

insert into salesman_master values 
("S00002" , "Omkar" , "65" , "Nariman" , "Mumbai" , 400001 ,"Maharashtra" , 3000 , 200, 100 ,"Good"),
("S00003" , "Raj" , "P-7" , "Bandra" , "Mumbai" , 400032 ,"Maharashtra" , 3000 , 200, 100 ,"Good"),
("S00004" , "Ashish" , "A/5" , "Juhu" , "Mumbai" , 400044 ,"Maharashtra" , 3000 , 200, 150 ,"Good");


-- new lec. 


-- list all clients who are located at Mumbai
select * from CLIENT_MASTER where city = 'mumbai';

select SALESMANNAME from SALESMAN_MASTER where SALAMT = 3000;


-- update data
update CLIENT_MASTER set city = 'Bangalore' where clientno = "C0005";

-- delete data
delete from CLIENT_MASTER where clientno = "C0005";


-- drop statement
drop table CLIENT_MASTER;



-- querry

-- 1.  find out the names of all the clients.

select name
