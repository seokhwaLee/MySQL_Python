create database shoppingmall;
create user teamproject@localhost identified by 'project';
grant all privileges on shoppingmall.* to 'teamproject'@'localhost' with grant option;
use shoppingmall;

CREATE TABLE CUSTOMER(
CUS_ID varchar(20) PRIMARY KEY,
PASSWD varchar(20) NOT NULL,
GENDER varchar(20),
BIRTH DATE);
desc customer;
SHOW TABLES;
select * FROM CUSTOMER;

CREATE TABLE BUY(
BUY_NO INT auto_increment PRIMARY KEY,
CUS_ID varchar(20) NOT NULL,
ITEM_NO int,
BUY_DATE DATEtime NOT NULL default current_timestamp);

DESC BUY;

CREATE TABLE ITEM(
ITEM_NO INT auto_increment PRIMARY KEY,
ITEM_NAME varchar(30) NOT NULL,
PRICE INT NOT NULL,
CATEGORY varchar(20));

DESC ITEM;

alter table buy
add constraint buy_fk foreign key(cus_id)
references customer(cus_id);

alter table buy
add constraint buy_fk2 foreign key(item_no)
references item(item_no);

select * from customer;
insert customer values('customer1','qwer','F',null);
insert customer values('customer2','qsdfwer','F','1984-05-11');
insert customer values('customer3','qwerdfse','M','1996-02-29');
insert customer values('customer4','qwdsffsder','F','1993-09-16');
insert customer values('customer5','qwe4345r','M','1997-05-21');
insert customer values('root','root','M','2000-02-22');

select * from buy;
insert buy(cus_id,item_no) values('customer3',5);
insert buy(cus_id,item_no) values('customer2',5);
insert buy(cus_id,item_no) values('customer1',3);
insert buy(cus_id,item_no) values('customer1',4);
insert buy(cus_id,item_no) values('customer4',2);
insert buy(cus_id,item_no) values('customer1',7);
insert buy(cus_id,item_no) values('customer2',6);
insert buy(cus_id,item_no) values('customer4',5);
insert buy(cus_id,item_no) values('customer1',2);
insert buy(cus_id,item_no) values('customer4',6);
insert buy(cus_id,item_no) values('customer2',3);
insert buy(cus_id,item_no) values('customer5',2);
insert buy(cus_id,item_no) values('customer5',1);
insert buy(cus_id,item_no) values('customer3',1);
insert buy(cus_id,item_no) values('customer4',4);
insert buy(cus_id,item_no) values('customer2',6);
insert buy(cus_id,item_no) values('customer3',7);
insert buy(cus_id,item_no) values('customer1',2);
insert buy(cus_id,item_no) values('customer2',3);

select * from item;
insert item(item_name,price,category) values('ipad',10000,'전자제품');
insert item(item_name,price,category) values('laptop',220000,'전자제품');
insert item(item_name,price,category) values('t_shirt',10000,'의류');
insert item(item_name,price,category) values('jeans',30000,'의류');
insert item(item_name,price,category) values('coffee',5000,'음식');
insert item(item_name,price,category) values('pizza',7000,'음식');
insert item(item_name,price,category) values('ring',1000000,'악세사리');