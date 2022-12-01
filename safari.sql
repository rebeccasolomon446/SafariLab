
DROP TABLE animals;

CREATE TABLE animal (
    id SERIAL,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT

);


CREATE TABLE enclosures (
    id SERIAL,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance boolean

);


CREATE TABLE staff (
    id SERIAL,
    name VARCHAR(255),
    employeeNumber INT
);


CREATE TABLE assignments (
    employeeId INT,
    enclosureId INT,
    day VARCHAR(255)
);    
    