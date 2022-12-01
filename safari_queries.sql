-- safari queries 

-- names of all animals and their enclosures
SELECT animals.name AS animal_name, enclosures.name FROM animals
inner join enclosures 
on enclosures.id = animals.enclosure_id;
SELECT * FROM enclosures;