CREATE TABLE customers (id INT  NOT NULL PRIMARY KEY, name varchar(255)  NOT NULL);

INSERT INTO customers (id, name) VALUES (1, 'Amy');
INSERT INTO customers (id, name) VALUES (2, 'Blake');
INSERT INTO customers (id, name) VALUES (3, 'Carlos');
INSERT INTO customers (id, name) VALUES (4, 'Drake');
INSERT INTO customers (id, name) VALUES (5, 'Emily');

CREATE TABLE products (id INT  NOT NULL PRIMARY KEY, name varchar(255)  NOT NULL, price DECIMAL);

INSERT INTO products (id, name, price) VALUES (1, 'Apple', 10);
INSERT INTO products (id, name, price) VALUES (2, 'Box', 20);
INSERT INTO products (id, name, price) VALUES (3, 'Cookie', 10);
INSERT INTO products (id, name, price) VALUES (4, 'Laptop', 1000);


CREATE TABLE transactions (id INT  NOT NULL PRIMARY KEY,
customer_id INT,
FOREIGN KEY(customer_id) REFERENCES customers(id),
product_id INT,
FOREIGN KEY(product_id) REFERENCES products(id),
amount INT,
time_created DATE,
rewards INT
);

INSERT INTO transactions (id, customer_id, product_id, amount,time_created, rewards) VALUES ( 1, 1,2,10, '2023-11-11',200);
INSERT INTO transactions (id, customer_id, product_id, amount,time_created, rewards) VALUES ( 2, 1,2,15, '2023-10-11',400);
INSERT INTO transactions (id, customer_id, product_id, amount,time_created, rewards) VALUES ( 6, 1,3,20, '2023-10-1',200);
INSERT INTO transactions (id, customer_id, product_id, amount,time_created, rewards) VALUES ( 7, 1,4,1, '2023-10-1',1800);
INSERT INTO transactions (id, customer_id, product_id, amount,time_created, rewards) VALUES ( 3, 1,2,20, '2023-12-11',600);
INSERT INTO transactions (id, customer_id, product_id, amount,time_created, rewards) VALUES ( 4, 2,2,15, '2023-10-11',400);
INSERT INTO transactions (id, customer_id, product_id, amount,time_created, rewards) VALUES ( 5, 2,2,15, '2023-11-11',400);



