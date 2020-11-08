-- 1. select the pokemon with matching name
select *
from Pokemon
where pokeName = 'Pikachu';

-- 2. select the pokemon with max weight
select pokename
from Pokemon
where weight in (select max(weight) from Pokemon);

-- 3. select the fire type pokemon that has the highest height
select pokeName
from Pokemon
where (type1 = 'fire' or type2 = 'fire')
and height in (select max(height) 
                from Pokemon 
                where (type1 = 'fire' or type2 = 'fire'))

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

-- 6. select the count of moves of type normal
select count(Move.move)
from Move
where type = 'normal';

-- 7. display the count of pokemon in the location sorted by count desc
select LivingLocation.name, count(*)
from LivingLocation
group by LivingLocation.locationId
order by count(*) desc;

-- 8. list all the pokemon and their evolution
select Pokemon.pokeName, Evolution.evoName
from Pokemon, Evolution
where Pokemon.pokeName = Evolution.pokeName
union 
select Evolution.pokeName, Evolution.evoName
from Evolution
where Evolution.pokeName in (select Evolution.evoName from Evolution)

-- 9. select pokemon with only one type with highest sum of attack and defense
select Pokemon.pokeName, max(attack + defense)
from Pokemon, Stats
where type2 is NULL
and Stats.pokeName = Pokemon.pokeName;

-- 10. display the pokemon name, location, speed, move , 
select Pokemon.pokeName, Location.name, Stats.speed, Stats.specialAttack, Pokemon.type1, Type.vulnerable 
from Stats, Pokemon, Type, Location
where Pokemon.locationIndex = Location.locationId
and Pokemon.type1 = Type.type
and Stats.pokeName = Pokemon.pokeName
and specialAttack in (select max(specialAttack)
                        from Stats
                        )

-- 11. same as 10 with top 2 move
select Pokemon.pokeName, Location.name, Stats.speed, Stats.specialAttack, Pokemon.type1, Type.vulnerable, MOVE.move 
from Stats, Pokemon, Type, Location, Move
where Pokemon.locationIndex = Location.locationId
and Pokemon.type1 = Type.type
and Type.type = Move.type
and Stats.pokeName = Pokemon.pokeName
and specialAttack in (select max(specialAttack)
                        from Stats
                        )
limit 2

-- 12. insert the new trainer
update Trainer 
set name = "pluc"
where name like 'Phu%'