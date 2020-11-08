INSERT INTO Trainer (ownerId, name, nickName, address)
VALUES (1, 'Gabriel Ramirez', 'Gabe', 'San Jose'),
(2, 'Phu Luc', 'Phu', 'San Francisco')


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
('Golduck', 'Psyduck', 'gold / duck')


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
('fairy', '', '', '')



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
('Low Kick', 'fighting'),
------- https://pokemondb.net/move/generation/1
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
('Low Kick', 'fighting')

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
('Geodude', 80, 100, 40, 30, 30, 20),
-------- https://pokemondb.net/pokedex/all
('Meowth', 45, 35, 40, 40, 40, 90),
('Psyduck', 52, 48, 50, 65, 50, 55),
('Mankey', 80, 35, 40, 35, 45, 70),
('Growlithe', 70, 45, 55, 70, 50, 60),
('Poliwag', 50, 40, 40, 40, 40, 90),
('Abra', 20, 15, 25, 105, 55, 90),
('Machop', 80, 50, 70, 35, 35, 35),
('Bellsprout', 75, 35, 50, 70, 30, 40),
('Tentacool', 40, 35, 40, 50, 100, 70),
('Geodude', 80, 100, 40, 30, 30, 20)