insert into Pokemon(pokename, isCaptured, weight, height, species, gen, gender, type1, type2, locationIndex)
values 
('Bulbasaur','yes',6.9,0.7,'Seed',1,'both','grass','poison',1),
('Charmander','yes',8.5,0.6,'Lizard',1,'both','fire',NULL,4),
('Squirtle','no',9.0,0.5,'Tiny Turtle',1,'both','water',NULL,7),
('Caterpie','yes',2.9,0.3,'Worm',1,'both','bug',NULL,10),
('Weedle','no',100.0,2.0,'Hairy Bug',1,'both','bug','poison',13),
('Pidgey','yes',1.8,0.3,'Tiny Bird',1,'both','normal','flying',16),
('Rattata','no',3.5,0.3,'Mouse',1,'both','normal','flying',19),
('Spearow','no',2.0,0.3,'Tiny Bird',1,'both','normal','flying',21),
('Ekans','no',6.9,2.0,'Snake',1,'both','poison',NULL,23),
('Pikachu','yes',6.0,0.4,'Mouse',1,'both','electric',NULL,25),
('Sandshrew','no',12.0,0.6,'Mouse',1,'both','ground',NULL,27),
('Nidoran','yes',7.0,0.4,'Poison Pin',1,'female','poison',NULL,29)

-- 1. select all pokemon that got captured
select pokename
from Pokemon
where isCaptured = 'yes';

-- 2. select the pokemon with max weight
select pokename
from Pokemon
where weight in (select max(weight) from Pokemon);

-- 3. select the pokemon with matching name
select *
from Pokemon
where pokeman = 'Pikachu';

-- 4. select pokemon with the matching type
select pokename
from Pokemon, Type
where (Pokemon.type1 = Type.type
    or pokemon.type2 = Type.type)
    and Type.type = 'poison';

-- 5. search the previous evolution of the matching name
select Evolution.pokename
from Evolution, Pokemon
where Evolution.evoName = 'Ivysuar'
and Pokemon.pokename = Evolution.pokename;

-- 6.
