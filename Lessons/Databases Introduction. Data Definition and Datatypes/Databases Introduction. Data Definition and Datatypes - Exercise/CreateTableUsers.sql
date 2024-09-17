CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR(26),
    profile_picture BLOB,
    last_login_time DATE,
    is_deleted BOOLEAN
);

INSERT INTO users(username, password)
VALUES ('Ganio', '123'),
 ('Ganio2', '123'),
 ('Gani3', '123'),
 ('Ganio4', '123'),
 ('Gani5', '123');