#(1) Write  a query to create a database named SQL basics --(Start with create database then add given name after)
Create database SQL_Basics;

#(2) Write a query to select the database SQL basics -- (Start with show database command followed by which database being used)
Use SQL_Basics;

#(3) Write a query to create a product table with fields as product code, product name, price, stock and category, customer table with the fields as customer id, customer name, customer location, and customer phone number and, sales table with the fields as date, order number, product code, product name, quantity, and price -- (start with create table (name) then add each column individually followed with a int or varchar(#) command then not null) 
create table product(
product_code int not null,
product_name varchar(100) not null,
price int not null,
stock int not null,
category varchar(50)
);

create table customer(
customer_id int not null,
customer_name varchar(100) not null,
customer_location varchar(100) not null,
customer_phoneno int not null
);

create table sales(
sale_date date not null,
order_number varchar(100) not null,
customer_id int not null,
customer_name varchar(50) not null,
product_code int not null,
product_name varchar(100) not null, 
sales_quantity int not null,
price decimal(10,2) not null
);

#(4) Write a query to insert values into the tables -- (first start with insert to (list columns added before, followed by values, then add all the data from excel sheet in the order of how you listed the columns)
Insert into Product(product_code, product_name, price, stock, category)
Values
(1, 'tulip', 198, 5, 'perfume'),
(2, 'cornoto', 50, 21, 'icecream'),
(3, 'Pen', 10, 52, 'Stationary'), 
(4, 'Lays', 10, 20, 'snacks'),
(5, 'mayanoise', 90, 10, 'dip'),
(6, 'jam', 105, 10, 'spread'),
(7, 'shampoo', 5, 90, 'hair products'), 
(8, 'axe', 210, 4, 'perfume'),
(9, 'park avenue', 901, 2, 'perfume'),
(10, 'wattagirl', 201, 3, 'perfume'),
(11, 'pencil', 4, 10, 'Stationary'),
(12, 'sharpener', 5, 90, 'Stationary'),
(13, 'sketch pen', 30, 10, 'Stationary'),
(14, 'tape', 15, 30, 'Stationary'),
(15, 'paint', 60, 12, 'Stationary'),
(16, 'chocolate', 25, 50, 'snacks'),
(17, 'biscuts', 60, 26, 'snacks'),
(18, 'mango', 100, 21, 'fruits'),
(19, 'apple', 120, 9, 'fruits'),
(20, 'kiwi', 140, 4, 'fruits'),
(21, 'carrot', 35, 12, 'vegetable'),
(22, 'onion', 22, 38, 'vegetable'),
(23, 'tomato', 21, 15, 'vegetable'),
(24, 'serum', 90, 4, 'hair product'),
(25, 'conditioner', 200, 5, 'hair product'),
(26, 'oil bottle', 40, 2, 'kictchen utensil');

Select * from product;

Insert into Customer(customer_id, customer_name, customer_location, customer_phoneno)
values 
	(1111, 'Nisha', 'kerala', 8392320),
    (1212, 'Oliver', 'kerala', 4353891),
    (1216, 'Nila', 'delhi', 3323242),
    (1246, 'Vignesh', 'chennai', 1111212),
    (1313, 'shiny', 'Maharastra', 5454543),
    (1910, 'Mohan', 'mumbai', 9023941),
    (2123, 'Biyush', 'Bombay', 1253358),
    (3452, 'Alexander', 'West Bengal', 1212134),
    (3921, 'Mukesh', 'Manipur', 4232321),
    (5334, 'Christy', 'pakistan', 2311111),
    (9021, 'Rithika', 'Kashmir', 1121344),
    (9212, 'Jessica', 'banglore', 1233435),
    (9875, 'Stephen', 'chennai', 1212133);

Select * from customer;

Insert into sales(sale_date, order_number, customer_id, customer_name, product_code, product_name, sales_quantity, price)
values 
	('2016-07-24', 'HM06', 9212, 'Jessica', 11, 'pencil', 3, 30),
	('2016-10-19', 'HM09', 3921, 'Mukesh', 17, 'biscuits', 10, 600),
	('2016-10-30', 'HM10', 9875, 'Stephen', 2, 'cornoto', 10, 500),
	('2018-04-12', 'HM03', 1212, 'Oliver', 20, 'kiwi', 3, 420),
	('2018-05-02', 'HM05', 1910, 'Mohan', 20, 'kiwi', 2, 280),
	('2018-09-20', 'HM08', 5334, 'Chirsty', 16, 'chocolate', 2, 50),
	('2019-01-11', 'HM07', 1246, 'Vignesh', 19, 'apple', 5, 600),
	('2019-03-15', 'HM01', 1910, 'Mohan', 5, 'mayanoise', 4, 360),
	('2021-02-10', 'HM04', 1111, 'Nisha', 25, 'conditioner', 5, 1000),
	('2021-02-12', 'HM02', 2123, 'Biyush', 3, 'Pen', 2, 20);

    Select * From Sales;
    
#(5) Write a query to add two new columns such as S_no and categories to the sales table -- (first alter table name then add columns individually followed by int or varchar(#) followed by not null command)
    Alter Table Sales
    Add Column S_no int not null, 
    Add Column Catergories varchar(50) not null; 
    
#(6) Write a query to change the column type of stock in the product table to varchar -- (Alter table then modify column varchar(#) command followed by not null)
    Alter Table Product
    Modify Stock varchar(50) not null; 

#(7) Write a query to change the table name from customer-to-customer details -- (Start with rename command then table name to new table name)
Rename table Customer to Customer_Details; 

#(8) Write a query to drop the columns S_no and categories from the sales table -- (first write to alter which table and then drop each column individually)
Alter table Sales
Drop column S_no,
Drop column Catergories; 

#(9) Write a query to display order id, customer id, order date, price, and quantity from the sales table -- (write to select each individual column from which table)
Select order_number, customer_id, sale_date, price, sales_quantity 
From Sales; 

# (10) Write a query to display all the details in the product table if the category is stationary -- (start with select * from table name followed by the where clause)
Select * From Product where category = 'Stationary';

#(11) Write a query to display a unique category from the product table -- (start with select then distinct command column name from table)
Select distinct category from product;

#(12) Write a query to display the sales details if quantity is greater than 2 and price is lesser than 500 from the sales table -- (start with select * from table followed with where clause for each column referenced) 
Select * From Sales where sales_quantity >= 2 and price <= 500;

#(13) Write a query to display the customer’s name if the name ends with a -- (start with select * from table followed by where clause then like "%letter" or "letter%" depending if it ends or starts with)
Select * From Customer_details where customer_name like "%a";

#(14) Write a query to display the product details in descending order of the price -- (start with select * from table, followed by order by command, then column name desc)
Select * from product order by price desc;

#(15) Write a query to display the product code and category from similar categories that are greater than or equal to 2 -- Select column names, from table name, where primary key column (IN command) followed by select primary key column from table name (group by primary key column) having count of what's displayed)
 Select product_code, category
 From product
 where category IN (
 Select category 
 From product
 Group By category
 Having count(*) >=2
 );
 
 #(16) Write a query to display the order number and the customer name to combine the results of the order and the customer tables including duplicate rows
SELECT sales.order_number, customer_details.customer_name
FROM sales
JOIN customer_details ON sales.customer_id = customer_details.customer_id;

