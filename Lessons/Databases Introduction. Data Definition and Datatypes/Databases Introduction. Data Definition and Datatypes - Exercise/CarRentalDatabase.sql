CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL,
    daily_rate DOUBLE (2,2),
	weekly_rate DOUBLE (2,2),
	monthly_rate DOUBLE (2,2),
	weekend_rate DOUBLE (2,2)
);

INSERT categories(category)
VALUES ('VAN'), ('VAN'), ('VAN');


CREATE TABLE cars(
	id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number INT NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50),
    car_year INT,
    doors INT,
    picture BLOB,
    car_condition TEXT,
    available BOOLEAN
);

INSERT cars(plate_number)
VALUES (08122), (123), (124124);

CREATE TABLE employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    notes TEXT
);

INSERT employees(first_name, last_name)
VALUES ('LILYAN', 'ivanov'), ('aleksandar', 'petrov'), ('LILYAN', 'robertov');


CREATE TABLE customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    driver_licence_number INT NOT NULL,
    full_name TEXT,
    address TEXT,
    city VARCHAR(50),
    zip_code INT,
    notes TEXT
);

INSERT customers(driver_licence_number, full_name)
VALUES (1234, 'Gencho Minev'), (143212, 'Gencho Petrov'), (54121, 'Qsen Minev');


CREATE TABLE rental_orders (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    customer_id INT,
    car_condition TEXT,
    tank_level DECIMAL(10,2),
    kilometrage_start INT NOT NULL,
    kilometrage_end INT NOT NULL,
    total_kilometrage INT,
    start_date DATETIME DEFAULT NOW(),
    end_date DATETIME DEFAULT NOW(),
    total_days INT,
    rate_applied DECIMAL(10,2),
    tax_rate DECIMAL(10,2),
    order_status VARCHAR(20),
    notes TEXT,

    CONSTRAINT FOREIGN KEY (employee_id) REFERENCES employees(id),
    CONSTRAINT FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT rental_orders(kilometrage_start, kilometrage_end)
VALUES (3, 7), (3, 7), (3, 7);
