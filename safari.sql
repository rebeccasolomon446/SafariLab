
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
    