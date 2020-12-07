import sqlite3
from sqlite3 import Error
# from prettytable import PrettyTable
from prettytable import from_db_cursor

def openConnection(_dbFile):
    #print("++++++++++++++++++++++++++++++++++")
    #print("Open database: ", _dbFile)

    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
    except Error as e:
        print(e)

    #print("++++++++++++++++++++++++++++++++++")

    return conn

def closeConnection(_conn, _dbFile):
    #print("++++++++++++++++++++++++++++++++++")
    #print("Close database: ", _dbFile)

    try:
        _conn.close()
    except Error as e:
        print(e)

    #print("++++++++++++++++++++++++++++++++++")

def pokemonList(_conn):
    try:
        sql = """SELECT *
                from Pokemon
                """
        cur = _conn.cursor()
        cur.execute(sql)
        mytable = from_db_cursor(cur)
        print(mytable)
    except Error as e:
        _conn.rollback()
        print(e)

def findPokemonWithSpecies(_conn, _species, _type):
    try:
        if _type == "all":
            sql = """SELECT *
                    from Pokemon 
                    where species = ?"""
            args = [_species]
        else:
            sql = """SELECT *
                    from Pokemon
                    where species = ?
                    and (type1 = ? or type2 = ?)"""
            args = [_species,_type,_type]
        cur = _conn.cursor()
        cur.execute(sql, args)
        row = cur.fetchone()
        if row == None:
            print("There are no results for this query")
            return
        cur.execute(sql, args)
        mytable = from_db_cursor(cur)
        print(mytable)
        
    except Error as e:
        _conn.rollback()
        print(e)

def findPokemon(_conn, _pokemon, _command):
    try:
        # saving the the maker of the model
        if (_command == "yes"):
            sql = """SELECT Pokemon.pokeName, 
                            weight, 
                            height, 
                            species, 
                            gen, 
                            gender, 
                            type1, 
                            type2, 
                            locationIndex, 
                            attack, 
                            defense,
                            hp,
                            specialAttack,
                            specialDefense,
                            speed
                    from Pokemon, Stats
                    where Pokemon.pokeName = ?
                    and Stats.pokeName = Pokemon.pokeName
                """
        else:
            sql = """SELECT *
                    from Pokemon
                    where pokeName = ?
                    """
        cur = _conn.cursor()
        args = [_pokemon]
        cur.execute(sql, args)
        row = cur.fetchone()
        if row == None:
            print("There are no results for this query")
            return
        cur.execute(sql, args)
        mytable = from_db_cursor(cur)
        print(mytable)
        
    except Error as e:
        _conn.rollback()
        print(e)

def statsList(_conn):
    try:
        sql= """SELECT *
                from Stats
                """
        cur = _conn.cursor()
        cur.execute(sql)
        mytable = from_db_cursor(cur)
        print(mytable)
        
    except Error as e:
        _conn.rollback()
        print(e)

def addTrainer(_conn,_name,_nick,_loc):
    try:
        sql= """INSERT into Trainer
                VALUES (?,?,?) 
                """
        args = [_name,_nick,_loc]
        cur = _conn.cursor()        
        cur.execute(sql, args)
        sql= """SELECT * from Trainer
                """
        cur.execute(sql)
        mytable = from_db_cursor(cur)
        print(mytable)
        
    except Error as e:
        _conn.rollback()
        print(e)

def deleteTrainer(_conn,_name):
    try:
        sql= """DELETE from Trainer
                WHERE name = ?
                """
        args = [_name]
        cur = _conn.cursor()
        cur.execute(sql, args)
        sql= """SELECT * from Trainer
                """
        cur.execute(sql)
        mytable = from_db_cursor(cur)
        print(mytable)
    except Error as e:
        _conn.rollback()
        print(e)

def evolution(_conn,_name,_command):
    try:
        if _command == "evolve":
            sql= """SELECT *
                    FROM Evolution
                    WHERE pokeName = ?
                    """
        elif _command == "devolve":
            sql= """SELECT *
                    FROM Evolution
                    WHERE evoName = ?
                    """
        else:
            print("Invalid command")
            return
        args = [_name]
        cur = _conn.cursor()
        cur.execute(sql, args)
        mytable = from_db_cursor(cur)
        print(mytable)
    except Error as e:
        _conn.rollback()
        print(e)

def findMoveWithType(_conn, _move, _type):
    try:
        if _move == "all":
            sql = """SELECT 
                        type, count(move)
                    FROM Move
                    where type = ?
                    GROUP BY type;"""
            cur = _conn.cursor()
            args = [_type]
        else:
            sql = """SELECT 
                        type, count(move)
                    FROM Move
                    WHERE type = ?
                    and move = ?
                    GROUP BY type;"""
            cur = _conn.cursor()
            args = [_type, _move]
        cur.execute(sql, args)
        row = cur.fetchone()
        if row == None:
            print("There are no results for this query")
            return
        cur.execute(sql, args)
        mytable = from_db_cursor(cur)
        print(mytable)
        
    except Error as e:
        _conn.rollback()
        print(e)

def findPokemonWithLocation(_conn, _locationID):
    try:
        args = [_locationID]
        if _locationID == "all":
            sql = """SELECT 
                        Location.locationId, Location.name, Pokemon.pokeName
                    FROM Pokemon, Location
                    WHERE Pokemon.locationIndex = Location.locationId;"""
            cur = _conn.cursor()
            cur.execute(sql)
        else:
            sql = """SELECT 
                        Location.locationId, Location.name, Pokemon.pokeName
                    FROM Pokemon, Location
                    WHERE Pokemon.locationIndex = Location.locationId
                    and Location.locationId = ?"""
                    
            cur = _conn.cursor()
            cur.execute(sql, args)
        
        row = cur.fetchone()
        if row == None:
            print("There are no results for this query")
            return
        if _locationID == "all":
            cur.execute(sql)
        else:
            cur.execute(sql, args)
        mytable = from_db_cursor(cur)
        print(mytable)
        
    except Error as e:
        _conn.rollback()
        print(e)

def findStrongestPokemon(_conn, _type):
    try:
        args = [_type, _type]
        if _type == "all":
            sql = """select Pokemon.pokeName, max(attack + defense)
                    from Pokemon, Stats
                    where type2 = 'NULL'
                    and Stats.pokeName = Pokemon.pokeName;"""
            cur = _conn.cursor()
            cur.execute(sql)
        else:
            sql = """select Pokemon.pokeName, max(attack + defense)
            from Pokemon, Stats
            where (type1 = ? or type2 = ?)
            and Stats.pokeName = Pokemon.pokeName;"""
            cur = _conn.cursor()
            cur.execute(sql, args)
        
        row = cur.fetchone()
        if row == None:
            print("There are no results for this query")
            return
        if _type == "all":
            cur.execute(sql)
        else:
            cur.execute(sql, args)
        mytable = from_db_cursor(cur)
        print(mytable)
        
    except Error as e:
        _conn.rollback()
        print(e)

MENU = """ 
                                                  
                 ...*/////////*..                       Please choose one of the following options:
            ..///////////////////////.                  1)  Pokemon List
         ./@@@@@@@@/////////////////////..              2)  Stats List
       .&@@@@@@@@@@////////////////////////.            3)  Find pokemon (show stats?)
     .//@@@@@@@@@@///////////////////////////.          4)  Find pokemon with the species (type?) 
    .///@@@@@@@&///////////.*****,.///////////.         5)  Add / Delete Trainer (location id)(nickName)
   .////////////////////.**,#@@@@%,***/////////.        6)  Pokemon Evolution (previous/nextOne)
  .////////////...********@&@@@@@@%@**./////////.       7)  Find number of move of type? (all/specific)
  .///,.*****************.@#@@@@@@&@.*******.///.       8)  Show all pokemons in the location based on locationId (all/specific) 
  .,,**************.....**.@&@@@@#@.************.       9)  Find the strongest pokemon in the selected type?
  .,,,,,.##@@@@@@@@@@@@@@,****,,****.@@@@@,.****.       10) Exit
  .(#######@@@@@@@@@@@@@@@@@@(..&@@@@@@@@@@@@@@(        
   .#########@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.        
    .#########&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.   
      .##########@@@@@@@@@@@@@@@@@@@@@@@@@@%.     
        .###########&@@@@@@@@@@@@@@@@@@@##.       
          .*#################%%########,.         
             ..*###################,.             
                    ...........                   
Your Input: """ 

def main():
    database = r"data.sqlite"
    # create a database connection
    conn = openConnection(database)
    #findPokemon(conn, 'Ekans', 'no')
    with conn:
        while (user_input := input(MENU)) != "10":
            if user_input == '1':
                pokemonList(conn)
            elif (user_input == '2'):
                statsList(conn)
            elif (user_input == '3'):
                pokemon = input("Pokemon Name: ")
                command = input("Show Stats (yes/no): ")
                findPokemon(conn, pokemon, command)
            elif (user_input == '4'):
                a0 = input("Species Name: ")
                a1 = input("Type (all/specific): ")
                findPokemonWithSpecies(conn, a0, a1)
            elif (user_input == '5'):
                a0 = input("add/delete: ")
                if a0 == "add":
                    a1 = input("Trainer Name: ")
                    a2 = input("Nickname: ")
                    a3 = input("LocationID: ")
                    addTrainer(conn, a1, a2, a3)
                elif a0 == "delete":
                    a1 = input("Trainer Name: ")
                    deleteTrainer(conn,a1)
            elif (user_input == '6'):
                a0 = input("Pokemon Name: ")
                a1 = input("evolve/devolve: ")
                evolution(conn,a0,a1)
            elif (user_input == '7'):
                a0 = input("Move Name (all/specific): ")
                a1 = input("Type: ")
                findMoveWithType(conn, a0, a1)
            elif (user_input == '8'):
                a0 = input("Location ID (all/specific): ")
                findPokemonWithLocation(conn, a0)
            elif (user_input == '9'): 
                a0 = input("Pokemon Type: ")
                findStrongestPokemon(conn, a0)


    closeConnection(conn, database)

if __name__ == '__main__':
    main()