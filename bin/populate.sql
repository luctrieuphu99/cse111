insert into Pokemon(pokeName, weight, height, species, gen, gender, type1, type2, locationIndex)
values 
('Bulbasaur',6.9,0.7,'Seed',1,'both','grass','poison',1),
-- ('Ivysaur',13.0,1.0,'Seed',1,'both','grass','poison',1),
-- ('Venusaur',100.0,2.0,'Seed',1,'both','grass','poison',1),
('Charmander',8.5,0.6,'Lizard',1,'both','fire',NULL,2),
('Squirtle',9.0,0.5,'Tiny Turtle',1,'both','water',NULL,3),
('Caterpie',2.9,0.3,'Worm',1,'both','bug',NULL,4),
('Weedle',100.0,2.0,'Hairy Bug',1,'both','bug','poison',5),
('Pidgey',1.8,0.3,'Tiny Bird',1,'both','normal','flying',6),
('Rattata',3.5,0.3,'Mouse',1,'both','normal','flying',7),
('Spearow',2.0,0.3,'Tiny Bird',1,'both','normal','flying',8),
('Ekans',6.9,2.0,'Snake',1,'both','poison',NULL,9),
('Pikachu',6.0,0.4,'Mouse',1,'both','electric',NULL,10),
('Sandshrew',12.0,0.6,'Mouse',1,'both','ground',NULL,11),
('Nidoran',7.0,0.4,'Poison Pin',1,'female','poison',NULL,12),
('Clefairy',7.5,0.6,'Fairy',1,'both','fairy',NULL,13),
('Vulpix',9.9,0.6,'Fox',1,'both','fire',NULL,14),
('Jigglypuff',5.5,0.5,'Balloon',1,'both','normal','fairy',15),
('Zubat',7.5,0.8,'Bat',1,'both','poison','flying',16),
('Oddish',5.4,0.5,'Weed',1,'both','grass','poison',17),
('Paras',5.4,0.3,'Mushroom',1,'both','bug','grass',18),
('Venonat',30.0,1.0,'Insect',1,'both','bug','poison',19),
('Diglett',0.8,0.2,'Mole',1,'both','ground',NULL,20),
('Meowth',4.2,0.4,'Scratch Cat',1,'both','normal',NULL,21),
('Psyduck',19.6,0.8,'Duck',1,'both','water',NULL,22),
('Mankey',28.0,0.5,'Pig Monkey',1,'both','fighting',NULL,23),
('Growlithe',19.0,0.7,'Puppy',1,'both','fire',NULL,24),
('Poliwag',12.4,0.6,'Tadpole',1,'both','water',null,25),
('Abra',19.5,0.9,'Psi',1,'both','psychic',null,26),
('Machop',19.5,0.8,'Superpower',1,'both','fighting',null,27),
('Bellsprout',4.0,0.7,'Flower',1,'both','grass','poison',28),
('Tentacool',45.5,0.9,'Jellyfish',1,'both','water','poison',29),
('Geodude',20.0,0.4,'Rock',1,'both','rock','ground',29);

INSERT INTO Location (locationId,name,comment)
VALUES 
(1, "Pallet Town", 'a small town located in southwestern Kanto'),
(2, "Viridian City", 'a small city located in western Kanto'),
(3, "Pewter City",'a city located in northwestern Kanto'),
(4, "Cerulean City", 'a seaside city located in northern Kanto'),
(5, "Lavender Town", 'a small town located in northeast Kanto'),
(6, "Vermilion City",'a popular sea port for ships such as the S.S. Anne'),
(7, "Celadon City",'located in central Kanto'),
(8, "Fuchsia City",'a city located in southwest Kanto'),
(9, "Cinnabar Island",'a large island located off the southern coast of the Kanto region'),
(10, "Indigo Plateau",'the capital for the Pokémon League in the Kanto region'),
(11, "Saffron City","a sprawling metropolis in the Kanto region"),
(12, "Kanto Route 1","a route located in western Kanto"),
(13, "Kanto Route 2","a route located in western Kanto"),
(14, "Kanto Route 3","a route located in northwestern Kanto"),
(15, "Kanto Route 4","a route located in northern Kanto"),
(16, "Kanto Route 5","a route located in northern Kanto"),
(17, "Kanto Route 6","is a route located in central Kanto"),
(18, "Kanto Route 7","a route located in central Kanto"),
(19, "Kanto Route 8","a route located in eastern Kanto"),
(20, "Kanto Route 9","a route located in northeastern Kanto"),
(21, "Kanto Route 10","a route located in northeastern Kanto"),
(22, "Kanto Route 11","a route located in eastern Kanto"),
(23, "Kanto Route 12","a route located in eastern Kanto"),
(24, "Kanto Route 14","a route located in southeastern Kanto"),
(25,"Kanto Route 15","a route located in southern Kanto"),
(26,"Kanto Route 16","a route located in central Kanto"),
(27,"Kanto Route 17","a route located in western Kanto"),
(28,"Kanto Route 18","a route located in southern Kanto"),
(29,"Kanto Route 19","a water route located in southern Kanto"),
(30,"Kanto Route 20","a water route located in southern Kanto"),
(31,"Kanto Route 21","a water route located in southwestern Kanto"),
(32,"Kanto Route 22","a route located in western Kanto"),
(33,"Kanto Route 23","a route located in western Kanto"),
(34,"Kanto Route 24","a route located in northern Kanto"),
(35,"Kanto Route 25","a route located in northeastern Kanto"),
(36,"Professor Oak's Laboratory","a Pokémon lab located in Pallet Town"),
(37,"Pokémon Center (Viridian City)","PMC"),
(38,"Poké Mart (Viridian City)","a convenience store that sells supplies necessary for Pokémon training"),
(39,"Pokémon Gym (Viridian City)","a place where Pokémon Trainers go to train their Pokémon"),
(40,"Poké Mart (Cerulean City)","a convenience store that sells supplies necessary for Pokémon training"),
(41,"Pokémon Center (Route 4)"," PMC"),
(42,"Saffron City","a sprawling metropolis in the Kanto region"),
(43,"Entrance to Underground Path (Route 5)","located directly underneath Saffron City"),
(44,"Daycare Center (Route 5)","a place for Pokémon Trainers to drop off their Pokémon to be raised in the care of other people"),
(45,"Entrance to Underground Path (Route 7)","route 7"),
(46,"Safari Zone", "a special Pokémon preserve in Kanto that Trainers can enter to capture Pokémon"),
(47,"Seafoam Islands", "a pair of islands that are situated on Route 20"),
(48,"Team Rocket Hideout", "a four-floored underground complex beneath the Rocket Game Corner in Celadon City"),
(49,"Rock Tunnel", "a naturally formed underground tunnel."),
(50,"Diglett's Cave", "a long tunnel dug by wild Diglett and Dugtrio in Kanto");

insert into LivingLocation (locationid, name, pokeName)
select Location.locationId, Location.name, Pokemon.pokeName
from Location, Pokemon
where Location.locationId = Pokemon.locationIndex;

INSERT INTO Trainer (ownerId, name, nickName, address)
VALUES 
(1, 'Gabriel Ramirez', 'Gabe', 'San Jose'),
(2, 'Phu Luc', 'Phu', 'San Francisco');

INSERT INTO Evolution (evoName, pokeName, description)
VALUES ('Ivysaur', 'Bulbasaur', 'plant / lizard'),
('Venusaur', 'Ivysaur', 'meat-eating plant / lizard'),
('Charmeleon', 'Charmander', 'fire / chamaeleon'),
('Charizard', 'Charmeleon', 'fire / lizard'),
('Wartortle', 'Squirtle', 'war / turtle'),
('Blastoise', 'Wartortle', 'explosion / turtle'),
('Metapod', 'Caterpie', 'transformation / cacoon'),
('Butterfree', 'Metapod', 'butterfly / free'),
('Kakuna', 'Weedle', 'cocoon'),
('Beedrill', 'Kakuna', 'bee / drill'),
('Pidgeotto', 'Pidgey', 'pigeon'),
('Pidgeot', 'Pidgeotto', 'pigeon'),
('Raticate', 'Rattata', 'rat / eradicate'),
('Fearow', 'Spearow', 'fear / sparrow'),
('Arbok', 'Ekans', 'cobra'),
('Raichu', 'Pikachu', 'thunder / squeak'),
('Sandslash', 'Sandshrew', 'sand / slash'),
('Nidorina', 'Nidoran', 'needle / rhino'),
('Nidoqueen', 'Nidorina', 'needle / queen'),
('Nidorino', 'Nidoran', 'needle / rhino'),
('Nidoking', 'Nidorino', 'needle / king'),
--('Clefairy', 'Cleffa', 'war / turtle'),
('Clefable', 'Clefairy', 'explosion / turtle'),
('Ninetales', 'Vulpix', 'nine / tails'),
('Wigglytuff', 'Jigglypuff', 'wiggle / tough'),
('Golbat', 'Zubat', 'gollop / bat'),
('Gloom', 'Oddish', 'gloom / bloom'),
('Vileplume', 'Gloom', 'vile / plume'),
('Parasect', 'Paras', 'parasite / insect'),
('Venomoth', 'Venonat', 'venom / moth'),
('Dugtrio', 'Diglett', 'dug / trio'),
('Persian', 'Meowth', 'persian'),
('Golduck', 'Psyduck', 'gold / duck');

INSERT INTO Type (type, weak, effective, vulnerable)
VALUES ('normal', '', '', ''),
('fire', '', '', ''),
('water', '', '', ''),
('electric', '', '', ''),
('grass', '', '', ''),
('ice', '', '', ''),
('fighting', '', '', ''),
('poison', '', '', ''),
('ground', '', '', ''),
('flying', '', '', ''),
('psychic', '', '', ''),
('bug', '', '', ''),
('rock', '', '', ''),
('ghost', '', '', ''),
('dragon', '', '', ''),
('dark', '', '', ''),
('steel', '', '', ''),
('fairy', '', '', '');

INSERT INTO Move (move, type)
VALUES ('Absorb', 'grass'),
('Acid', 'poison'),
('Acid Armor', 'poison'),
('Agility', 'psychic'),
('Amnesia', 'psychic'),
('Aurora Beam', 'ice'),
('Barrage', 'normal'),
('Barrier', 'psychic'),
('Bide', 'normal'),
('Bind', 'normal'),
('Bite', 'dark'),
('Blizzard', 'ice'),
('Body Slam', 'normal'),
('Bone Club', 'ground'),
('Bonerang', 'ground'),
('Bubble', 'water'),
('Bubble Beam', 'water'),
('Clamp', 'water'),
('Comet Punch', 'normal'),
('Confuse Ray', 'ghost'),
('Confusion', 'psychic'),
('Constrict', 'normal'),
('Conversion', 'normal'),
('Counter', 'fighting'),
('Crabhammer', 'water'),
('Cut', 'normal'),
('Defense Curl', 'normal'),
('Dig', 'ground'),
('Disable', 'normal'),
('Dizzy Punch', 'normal'),
('Double Kick', 'fighting'),
('Double Slap', 'normal'),
('Double Team', 'normal'),
('Double-Edge', 'normal'),
('Dragon Rage', 'dragon'),
('Dream Eater', 'psychic'),
('Drill Peck', 'flying'),
('Earthquake', 'ground'),
('Egg Bomb', 'normal'),
('Ember', 'fire'),
('Explosion', 'normal'),
('Fire Blast', 'fire'),
('Fire Punch', 'fire'),
('Fire Spin', 'fire'),
('Fissure', 'ground'),
('Flamethrower', 'fire'),
('Flash', 'normal'),
('Fly', 'flying'),
('Focus Energy', 'normal'),
('Fury Attack', 'normal'),
('Fury Swipes', 'normal'),
('Glare', 'normal'),
('Growl', 'normal'),
('Growth', 'normal'),
('Guillotine', 'normal'),
('Gust', 'flying'),
('Hardem', 'normal'),
('Haze', 'ice'),
('Headbutt', 'normal'),
('High Jump Kick', 'fighting'),
('Horn Attack', 'normal'),
('Horn Drill', 'normal'),
('Hydro Pump', 'water'),
('Hyper Beam', 'normal'),
('Hyper Fang', 'normal'),
('Hypnosis', 'psychic'),
('Ice Beam', 'ice'),
('Ice Punch', 'ice'),
('Jump Kick', 'fighting'),
('Karate Chop', 'fighting'),
('Kinesis', 'psychic'),
('Leech Life', 'bug'),
('Leech Seed', 'grass'),
('Leer', 'normal'),
('Lick', 'ghost'),
('Light Screen', 'psychic'),
('Lovely Kiss', 'normal'),
('Low Kick', 'fighting');
------- https://pokemondb.net/move/generation/1

INSERT INTO Stats (pokeName, attack, defense, hp, specialAttack, specialDefense, speed)
VALUES ('Bulbasaur', 49, 49, 45, 65, 65, 45),
('Charmander', 52, 43, 39, 60, 50, 65),
('Squirtle', 48, 65, 44, 50, 64, 43),
('Caterpie', 30, 35, 45, 20, 20, 45),
('Weedle', 35, 30, 40, 20, 20, 50),
('Pidgey', 45, 40, 40, 35, 35, 56),
('Rattata', 56, 30, 35, 25, 35, 72),
('Spearow', 60, 30, 40, 31, 31, 70),
('Ekans', 60, 44, 35, 40, 54, 55),
('Pikachu', 55, 40, 35, 50, 50, 90),

('Sandshrew', 75, 85, 50, 20, 30, 40),
('Nidoran', 47, 52, 55, 40, 40, 41),
('Clefairy', 45, 48, 70, 60, 65, 35),
('Vulpix', 41, 40, 38, 50, 65, 65),
('Jigglypuff', 20, 45, 115, 45, 25, 20),
('Zubat', 45, 35, 40, 30, 40, 55),
('Oddish', 50, 55, 45, 75, 65, 30),
('Paras', 70, 55, 35, 45, 55, 25),
('Venonat', 55, 50, 60, 40, 55, 45),
('Diglett', 55, 25, 10, 35, 45, 95),

('Meowth', 45, 35, 40, 40, 40, 90),
('Psyduck', 52, 48, 50, 65, 50, 55),
('Mankey', 80, 35, 40, 35, 45, 70),
('Growlithe', 70, 45, 55, 70, 50, 60),
('Poliwag', 50, 40, 40, 40, 40, 90),
('Abra', 20, 15, 25, 105, 55, 90),
('Machop', 80, 50, 70, 35, 35, 35),
('Bellsprout', 75, 35, 50, 70, 30, 40),
('Tentacool', 40, 35, 40, 50, 100, 70),
('Geodude', 80, 100, 40, 30, 30, 20);
-------- https://pokemondb.net/pokedex/all

select pokeName, Type.type, Move.move
from Pokemon, Type, Move
where Move.type = Type.type
and Type.type = Pokemon.type1


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