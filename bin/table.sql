CREATE TABLE Pokemon (
    pokeName VARCHAR(25) PRIMARY KEY,
    isCaptured INTEGER,
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
    vulnerable VARCHAR(25), 
);

CREATE TABLE Move (
    move VARCHAR(25) PRIMARY KEY,
    type VARCHAR(25),
);

CREATE TABLE Ability (
    abilityName CHAR(25),
    type CHAR(25),
    move1 CHAR(25),
    move2 CHAR(25)
); 

CREATE TABLE Trainer (
    ownerId INTEGER PRIMARY KEY,
    name VARCHAR(25),
    nickName VARCHAR(25),
    address CHAR(25)
); 

CREATE TABLE Location (
    locationId INTEGER PRIMARY KEY,
    name VARCHAR(25),
    comment VARCHAR(25),
    danger CHAR(25)
); 

CREATE TABLE LivingLocation (
    locationId INTEGER PRIMARY KEY,
    pokeName VARCHAR(25)
); 