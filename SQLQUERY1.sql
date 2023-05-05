CREATE TABLE Product (
    ProductID int IDENTITY PRIMARY KEY ,
    ProductName varchar(255),
    CategoryID int,
);

CREATE TABLE Category (
    CategoryID int IDENTITY PRIMARY KEY ,
    CategoryName varchar(255),
);

select * from Category

insert into Product (ProductName,CategoryID) values ('Sandals',1);
insert into Product (ProductName,CategoryID) values ('Heels',1);
insert into Product (ProductName,CategoryID) values ('Skirt',1);
insert into Product (ProductName,CategoryID) values ('Lipstick',1);
insert into Product (ProductName,CategoryID) values ('Nailpaint',1);

insert into Product (ProductName,CategoryID) values ('Shirt',2);
insert into Product (ProductName,CategoryID) values ('Shoes',2);
insert into Product (ProductName,CategoryID) values ('Coat',2);
insert into Product (ProductName,CategoryID) values ('Tie',2);
insert into Product (ProductName,CategoryID) values ('Watch',2);

insert into Product (ProductName,CategoryID) values ('Bottle',3);
insert into Product (ProductName,CategoryID) values ('School bag',3);
insert into Product (ProductName,CategoryID) values ('Uniform',3);
insert into Product (ProductName,CategoryID) values ('Cap',3);
insert into Product (ProductName,CategoryID) values ('Books',3);

insert into Product (ProductName,CategoryID) values ('Brush',1);
insert into Product (ProductName,CategoryID) values ('Gloss',1);
insert into Product (ProductName,CategoryID) values ('Kurti',1);
insert into Product (ProductName,CategoryID) values ('Dupatta',1);
insert into Product (ProductName,CategoryID) values ('Hair color',1);

insert into Product (ProductName,CategoryID) values ('Gel',2);
insert into Product (ProductName,CategoryID) values ('Pink shirt',2);
insert into Product (ProductName,CategoryID) values ('Blur shirt',2);
insert into Product (ProductName,CategoryID) values ('Red shoes',2);
insert into Product (ProductName,CategoryID) values ('Hair die',2);

insert into Product (ProductName,CategoryID) values ('Eraser',3);
insert into Product (ProductName,CategoryID) values ('shoes',3);
insert into Product (ProductName,CategoryID) values ('Pens',3);
insert into Product (ProductName,CategoryID) values ('Sharpner',3);
insert into Product (ProductName,CategoryID) values ('School tie',3);


select * from Product

SELECT Product.ProductID, Product.ProductName, Category.CategoryID, Category.CategoryName
FROM Product
JOIN Category ON Product.CategoryID=Category.CategoryID;
