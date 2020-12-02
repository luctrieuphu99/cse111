DROP table Pokemon;
--DROP table Ability;
Drop table Evolution;
drop table Move;
drop table pokeLocation;
drop table Stats;
drop table Trainer;
drop table Type;
drop table Location;
drop table trainerLocation;


CREATE TABLE Pokemon (
    pokeName VARCHAR(25) PRIMARY KEY,
    --isCaptured INTEGER,
    weight INTEGER,
    height INTEGER,
    species VARCHAR(25),
    gen INTEGER,
    gender VARCHAR(25),
    type1 VARCHAR(25),
    type2 VARCHAR(25),
    locationIndex INTEGER
);

CREATE table Evolution (
    evoName VARCHAR(25) PRIMARY KEY,
    pokeName VARCHAR(25),
    description VARCHAR(25)
);

CREATE TABLE Stats (
    pokeName VARCHAR(25) PRIMARY KEY,
    attack INTEGER,
    defense INTEGER,
    hp INTEGER,
    specialAttack INTEGER,
    specialDefense INTEGER,
    speed INTEGER
);

CREATE TABLE Type (
    type VARCHAR(25),
    weak VARCHAR(25),
    effective VARCHAR(25),
    vulnerable VARCHAR(25)
);

CREATE TABLE Move (
    move VARCHAR(25) PRIMARY KEY,
    type VARCHAR(25)
);

-- CREATE TABLE Ability (
--     pokeName CHAR(25),
--     type1 CHAR(25),
--     type2 CHAR(25),
--     move1 CHAR(25),
--     move2 CHAR(25)
-- ); 

CREATE TABLE trainerLocation(
    trainerName VARCHAR(25),
    locationName VARCHAR(25),
    locationId integer
);

CREATE TABLE Trainer (
    ownerId INTEGER PRIMARY KEY,
    name VARCHAR(25) PRIMARY KEY,
    nickName VARCHAR(25),
    locationId integer
); 

CREATE TABLE Location (
    locationId INTEGER PRIMARY KEY,
    name VARCHAR(25),
    comment VARCHAR(25)
); 

CREATE TABLE pokeLocation (
    pokeName VARCHAR(25),
    name VARCHAR(25),
    locationId INTEGER
); 