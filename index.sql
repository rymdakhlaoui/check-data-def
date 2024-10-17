 -- Create the customer table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    phone VARCHAR(20),
    
);

-- Create the product table
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    
    price DECIMAL(10, 2),
    
);

-- Create the orders table
 
CREATE TABLE orders (
    customer_id INT,
    product_id INT,
    total_amount DECIMAL(10, 2),
    quantity INT,
    PRIMARY KEY (customer_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Insert new customers into the customer table
INSERT INTO customer (customer_id, customer_name, phone) 
VALUES (1, 'Alice Johnson', '1234567890'),
       (2, 'Bob Smith', '0987654321'),
       (3, 'Carol White', '5555555555'),
       (4, 'David Brown', '6666666666'),
       (5, 'Eva Green', '7777777777');

-- Insert new product  into  product  table
INSERT INTO product (product_id, product_name, price) 
VALUES (1, 'Laptop', 999.99),
       (2, 'Smartphone', 499.99),
       (3, 'Headphones', 89.99),
       (4, 'Monitor', 299.99),
       (5, 'Keyboard', 69.99);
-- Insert new orders into the orders table
INSERT INTO orders (id, customer_id, product_id, quantity)
VALUES (1, 1, 1, 1),
       (2, 2, 2, 2),
       (3, 3, 3, 1),
       (4, 4, 4, 1),
       (5, 5, 5, 3);

-- Add Category column to the PRODUCT  
ALTER TABLE product
ADD Category VARCHAR2(20);

-- Add OrderDate column to the ORDERS 
ALTER TABLE orders
ADD OrderDate DATE DEFAULT SYSDATE;


 