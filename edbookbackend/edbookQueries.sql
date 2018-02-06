create database edbook;

use edbook;

create table category (
catId int not null primary key auto_increment,
name varchar(80)
);

insert into category (name) values('Cookery Books'),
('Dystopian & Utopian'),
('Novels'),
('Political'),
('Psychological'),
('Romance'),
('Science'),
('Sports'),
('Temp'),
('War & Military');

create table suppliers(
supId int not null primary key auto_increment,
firstName varchar(60),
lastName varchar(60),
address varchar(150),
mobile varchar(20),
email varchar(60),
joinDate varchar(12),
active int
);

create table books (
bookId int not null primary key auto_increment,
name varchar(100),
code varchar(50),
author varchar(60),
description text,
unitPrice decimal(5,2),
salePrice decimal(5,2),
qty int,
active int,
purchases int,
views int,
bookCode varchar(50),
categoryId int ,foreign key(categoryId) references category(catId),
supplierId int ,foreign key(supplierId) references suppliers(supId)
);


insert into suppliers(firstName,lastName,address,mobile,email,joinDate,active) values 
('Jnaith','Perera','Gampaha','0774569008','janiya@gmail.com','2017/07/06',1);

insert into books (name,code,author,description,unitprice,saleprice,qty,active,purchases,views,bookCode,categoryId,supplierId) values
('Breakfast Dainties','','dd','This is breakfast book',230.25,250.00,10,1,2,5,'aaa',1,1),
('Fifty Salads','','dd','This is breakfast book',230.25,250.00,10,1,2,5,'aab',2,1),
('Animal Farm','','dd','This is breakfast book',230.25,250.00,10,1,2,5,'aac',1,1),
('Anthem','','dd','This is breakfast book',230.25,250.00,10,1,2,5,'aad',3,1),
('Herland','','dd','This is breakfast book',230.25,250.00,10,1,2,5,'aae',2,1),
('Lord of the World','','dd','This is breakfast book',230.25,250.00,10,1,2,5,'aaf',3,1),
('The Iron Heel','','dd','This is breakfast book',230.25,250.00,10,1,2,5,'aag',1,1);



