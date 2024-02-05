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
timeStamp DATETIME,
rewardAmount INT
)
