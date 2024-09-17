CREATE TABLE directors(
	id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(100) NOT NULL,
    notes TEXT
);

INSERT directors(director_name)
VALUES ('Game of THRONES'),
	   ('House of the Dragon'),
       ('The Witcher'),
       ('You'),
       ('Narcos');

CREATE TABLE genres(
	id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(8) NOT NULL,
    notes TEXT
);

INSERT genres(genre_name)
VALUES ('Game'),
	   ('House'),
       ('Witcher'),
       ('You'),
       ('Narcos');

CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL,
    notes TEXT
);

INSERT categories(category_name)
VALUES ('Game of THRONES'),
	   ('House of the Dragon'),
       ('The Witcher'),
       ('You'),
       ('Narcos');

CREATE TABLE movies(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    director_id INT,
	copyright_year INT NOT NULL,
    length DOUBLE (10, 2) NOT NULL,
    genre_id INT,
    category_id INT,
    rating DOUBLE (2, 2),
    notes TEXT,

    CONSTRAINT FOREIGN KEY (director_id) REFERENCES directors(id),
    CONSTRAINT FOREIGN KEY (genre_id) REFERENCES genres(id),
    CONSTRAINT FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT movies(title, copyright_year, length)
VALUES ('Game of THRONES', 1, 1.30),
	   ('House of the Dragon', 1, 1.05),
       ('The Witcher',1,  1.03),
       ('You',1,  1.01),
       ('Narcos',1, 0.58);
