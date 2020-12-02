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

def findPokemonWithSpecies(_conn, _species):
    try:
        sql = """SELECT *
                from Pokemon
                where species = ?
                """
        cur = _conn.cursor()
        args = [_species]
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
        mytable = from_db_cursor(cur)
        temp = mytable
        print(mytable)
        
    except Error as e:
        _conn.rollback()
        print(e)

# def statsList(_conn):
#     try:
#         # saving the the maker of the model
#         if (_command == "yes"):
#             sql = """SELECT Pokemon.pokeName, 
#                             weight, 
#                             height, 
#                             species, 
#                             gen, 
#                             gender, 
#                             type1, 
#                             type2, 
#                             locationIndex, 
#                             attack, 
#                             defense,
#                             hp,
#                             specialAttack,
#                             specialDefense,
#                             speed
#                     from Pokemon, Stats
#                     where Pokemon.pokeName = ?
#                     and Stats.pokeName = Pokemon.pokeName
#                 """
#         else:
#             sql = """SELECT *
#                     from Pokemon
#                     where pokeName = ?
#                     """
#         cur = _conn.cursor()
#         args = [_pokemon]
#         cur.execute(sql, args)
#         mytable = from_db_cursor(cur)
#         temp = mytable
    
#         print print("row: " + row)
#         print(temp)
        
#     except Error as e:
#         _conn.rollback()
#         print(e)


# MENU = """
# -------------- Pokedex ---------------

# 1) Find pokemon
# 2) do something
# 3) whatever 

# """
MENU = """ 
                                                  
                 ...*/////////*..                   Please choose one of the following option:
            ..///////////////////////.              1) Pokemon List
         ./@@@@@@@@/////////////////////..          2) Find pokemon
       .&@@@@@@@@@@////////////////////////.        3) Find pokemon with the same species 
     .//@@@@@@@@@@///////////////////////////.      4) Pokemon Stats
    .///@@@@@@@&///////////.*****,.///////////.     5) Adding/Delete Trainer
   .////////////////////.**,#@@@@%,***/////////.    6) 
  .////////////...********@&@@@@@@%@**./////////. 
  .///,.*****************.@#@@@@@@&@.*******.///. 
  .,,**************.....**.@&@@@@#@.************. 
  .,,,,,.##@@@@@@@@@@@@@@,****,,****.@@@@@,.****. 
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
        while (user_input := input(MENU)) != "7":
            if user_input == '1':
                pokemonList(conn)
            elif (user_input == '2'):
                pokemon = input("Pokemon Name: ")
                command = input("Show Stats (yes/no): ")
                findPokemon(conn, pokemon, command)
            elif (user_input == '3'):
                a0 = input("Species Name: ")
                findPokemonWithSpecies(conn, a0)
            #elif (user_input == '4'):
                #statsList(conn)


            
    closeConnection(conn, database)

if __name__ == '__main__':
    main()
