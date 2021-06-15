DROP DATABASE IF EXISTS lab_mysql;

CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
    car_id INT PRIMARY KEY, 
    VIN VARCHAR (30) NOT NULL,
	manufacturer VARCHAR (30) NOT NULL, 
	model VARCHAR (50) NOT NULL, 
	year_ YEAR, 
	color VARCHAR (20)
	);
  
CREATE TABLE customers (
	id INT PRIMARY KEY, 
    customer_id INT NOT NULL,
    name_ VARCHAR (30),
    phone VARCHAR (30),
    email VARCHAR (30),
    address VARCHAR (70),
    city VARCHAR (30),
    province VARCHAR (50), 
    country VARCHAR (15),
    postal VARCHAR (15)
    ); 
    
CREATE TABLE salesperson (
    id INT PRIMARY KEY,
    staff_id INT, 
    name_ VARCHAR (30),
    store VARCHAR (30)
    );
    
CREATE TABLE invoices (
    id INT PRIMARY KEY,
    invoice_number INT, 
    date_ VARCHAR (15), 
    car_id INT,
    FOREIGN KEY (car_id) REFERENCES cars (car_id),
    customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES customers (id),
    sales_person INT,
    FOREIGN KEY (sales_person) REFERENCES salesperson (id)
	);
