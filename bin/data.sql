CREATE table Pokemon (
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
)

CREATE table Evolution (
    evoName VARCHAR(25) PRIMARY KEY,
    pokeName VARCHAR(25),
    description VARCHAR(25)
)

CREATE table Stats (
    pokeName VARCHAR(25) PRIMARY KEY,
    attack INTEGER,
    defense INTEGER,
    hp INTEGER,
    specialAttack INTEGER,
    specialDefense INTEGER,
    speed INTEGER
)



