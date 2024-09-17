INSERT towns(name)
VALUES ('Sofia'), ('Plovdiv'), ('Varna'), ('Burgas');

INSERT addresses(address_text)
VALUES ('Sofia ul buzludja'), ('Plovdiv kvartal man. livadi'), ('Varna kvartal zelena livada'), ('Burgas kvartal meden rudnik');

INSERT departments(name)
VALUES ('Engineering'), ('Sales'), ('Marketing'), ('Software Development'), ('Quality Assurance');

INSERT employees(first_name, middle_name, last_name, job_title,department_id, hire_date, salary)
VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4 , '2013-02-01 00:00:00', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1 , '2004-03-02 00:00:00', 4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5 , '2016-08-28 00:00:00', 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2 , '2007-12-09 00:00:00', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3 , '2016-08-28 00:00:00', 599.88);