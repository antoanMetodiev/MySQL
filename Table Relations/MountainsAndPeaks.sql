CREATE TABLE mountains(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE peaks(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    mountain_id INT,

    CONSTRAINT fk_mountain_id FOREIGN KEY(mountain_id) REFERENCES mountains(id)
);
