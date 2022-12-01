
DROP TABLE assignments;
DROP TABLE staff;
DROP TABLE animals;
DROP TABLE enclosures;

CREATE TABLE enclosures (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance boolean
);

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)
);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);


CREATE TABLE assignments (
    id SERIAL PRIMARY KEY,
    day VARCHAR(255),
    employee_id INT REFERENCES staff(id),
    enclosure_id INT REFERENCES enclosures(id)
);    

-- Enclosures inserts
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES('big cat field', 20, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES('Sea life', 30, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES('Reptiles', 10, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES('Birds', 15, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES('Insects', 30, true);


-- Animals inserts
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Tony", "Tiger", 10, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Simba", "Lion", 15, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Nemo", "Clownfish", 15, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Crush", "Turtle", 15, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Scaley", "Lizard", 12, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Slimey", "Snake", 25, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Blu", "Macaw", 8, 4);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Nigel", "Pelican", 32, 4);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Sticky", "Stick insect", 4, 5);
INSERT INTO animals (name, type, age, enclosure_id) VALUES("Tarzan", "Tarantulla", 6, 5);

-- Staff inserts
INSERT INTO staff (name, employeeNumber) VALUES("Captain Rik", 12345);
INSERT INTO staff (name, employeeNumber) VALUES("Rebecca", 78314);
INSERT INTO staff (name, employeeNumber) VALUES("Solomon", 24871);
INSERT INTO staff (name, employeeNumber) VALUES("Fatimah", 02383);
INSERT INTO staff (name, employeeNumber) VALUES("Ed", 11811);
INSERT INTO staff (name, employeeNumber) VALUES("Zsolt", 41460);
INSERT INTO staff (name, employeeNumber) VALUES("Anna", 53821);
INSERT INTO staff (name, employeeNumber) VALUES("Richard", 90909);
INSERT INTO staff (name, employeeNumber) VALUES("Iain", 33322);
INSERT INTO staff (name, employeeNumber) VALUES("Colin", 76890);

-- Assignment inserts

