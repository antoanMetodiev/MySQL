CREATE TABLE people (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DOUBLE(3, 2),
    weight DOUBLE(3, 2),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people(name, gender, birthdate)
VALUES ('Antoan', 'm', DATE(NOW())),
	   ('Aleksandar', 'm', DATE(NOW())),
       ('Yomov', 'm', DATE(NOW())),
       ('Eric', 'm', DATE(NOW())),
       ('Ico', 'm', DATE(NOW()));