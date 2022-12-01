-- safari queries 

-- MVP

-- names of all animals and their enclosures
SELECT animals.name AS animal_name, enclosures.name FROM animals
inner join enclosures 
on enclosures.id = animals.enclosure_id;

-- names of all animals in big cat field enclosure
SELECT animals.name AS animal_name, enclosures.name FROM animals
inner join enclosures 
on enclosures.id = animals.enclosure_id
WHERE enclosures.name = 'big cat field';

-- names of all staff and the enclosures they work in
SELECT staff.name AS staff_name, enclosures.name FROM staff
inner join assignments 
on staff.id = assignments.employee_id
inner join enclosures
on enclosures.id = assignments.enclosure_id;

-- Extention 
-- names of staff working in enclosures that are closed for maintenance
SELECT staff.name AS staff_name, enclosures.name FROM staff
inner join assignments 
on staff.id = assignments.employee_id
inner join enclosures
on enclosures.id = assignments.enclosure_id
WHERE enclosures.closedformaintenance = true;

