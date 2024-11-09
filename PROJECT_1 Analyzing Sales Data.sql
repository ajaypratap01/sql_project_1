/*creating a database */
CREATE database Sales;

/*using a database */
USE SALES;				

/*CHECKING EXISTING TABLES*/
SHOW tables;

/*CREATING A TABLE*/
CREATE TABLE SALES ( Order_ID int, 					
					Customer_ID varchar (255),
                    Product_Category varchar(255),
                    Product_Name varchar (255),
                    Quantity int,
                    Price float,
                    Order_Date date );

/*SELELCTING TABLE TO SEE RESULTS */
SELECT * FROM SALES;

/*INSERTING DATA INTO SALES TABLE*/
INSERT INTO SALES (Order_ID, Customer_ID, Product_Category, 
			Product_Name, Quantity, Price, Order_date) VALUES
				(1001, 'C101', 'Electronics', 'Laptop', 2, 800, '2023-11-10'),
				(1002, 'C102', 'Electronics', 'Smartphone', 3, 400, '2023-11-11'),
				(1003, 'C101', 'Appliances', 'Refrigerator', 1, 800, '2023-11-12'),
				(1004, 'C103', 'Furniture', 'Sofa', 1, 500, '2023-11-13'),
				(1005, 'C102', 'Electronics', 'TV', 1, 1000, '2023-11-14'),
				(1006, 'C104', 'Books', 'Novel', 5, 20, '2023-11-15'),
				(1007, 'C101', 'Electronics', 'Headphone', 2, 50, '2023-11-16'),
				(1008, 'C103', 'Furniture', 'Table', 1, 200, '2023-11-17');
                
/*Calculate total sales by product category.*/
SELECT Product_Category, sum(QUANTITY) AS 'TOTAL_PRODUCT' FROM sales GROUP BY Product_category;

/*Identify top-selling products.*/
SELECT PRODUCT_NAME, sum(QUANTITY) AS 'TOP_SELLIING' FROM sales group by PRODUCT_NAME order by TOP_SELLIING desc;

/*Find customers with the highest order value.*/
SELECT CUSTOMER_ID, SUM(QUANTITY * PRICE) AS 'HEIGHEST' FROM SALES GROUP BY CUSTOMER_ID ORDER BY HEIGHEST DESC;


