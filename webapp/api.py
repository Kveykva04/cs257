import sys
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a database connection object with which you can create cursors,
        issue SQL queries, etc. This function is extremely aggressive about
        failed connections--it just prints an error message and kills the whole
        program. Sometimes that's the right choice, but it depends on your
        error-handling needs. '''
    try:
        return psycopg2.connect(database=config.database,
                                user=config.user,
                                password=config.password)
    except Exception as e:
        print(e, file=sys.stderr)
        exit()

@api.route('/types/')
def get_types():

    types = []
    query = '''Select pokemon_types.type_id, pokemon_types.type_name
                    FROM pokemon_types'''
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())

        # Iterate over the query results to produce the list of pokemon of a given type.
        for row in cursor:
            types.append({'type_id':row[0], 'type_name':row[1]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    result = {'pokemon_types':types}
    return json.dumps(result)

@api.route('/type/<pokemon_type>/[best={BEST}]')
def get_pokemon_by_type(search_text, best):
    chosen_type = '%' + search_text + '%'
    best_bool = '?' + best

    pokemon_by_type = []
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        # Execute the query
        query = '''SELECT pokemon_type_stats.name, pokemon_type_stats.type1, pokemon_type_stats.type2
                    FROM pokemon_type_stats
                    WHERE pokemon_type_stats.type1 = %s
                    OR pokemon_type_stats.type2 = %s;'''
        connection = get_connection()
        cursor = connection.cursor()
        if(best_bool == True):
            new_query = '''SELECT pokemon_type_stats.name, pokemon_type_stats.type1, pokemon_type_stats.type2, pokemon_type_stats.base_total
                        FROM pokemon_type_stats
                        WHERE pokemon_type_stats.type1 = %s
                        OR pokemon_type_stats.type2 = %s
                        ORDER BY pokemon_type_stats.base_total;'''
            cursor.execute(new_query, (chosen_type, best_bool,))
        else:
            cursor.execute(query, (chosen_type,))

        # Iterate over the query results to produce the list of pokemon of a given type.
        for row in cursor:
            pokemon_by_type.append({'Name':row[0], 'Type1':row[1], 'Type2':row[2]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    result2 = {'pokemon_by_type':pokemon_by_type}
    return json.dumps(result2)

@api.route('/pokemon/<pokemon_name>')
def get_pokemon_stats_by_name(search_text):
    like_argument = '%' + search_text + '%'
    pokemon_by_name = []
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        # Execute the query
        query = '''SELECT pokemon_type_stats.name, pokemon_generation.generation, pokemon_type_stats.type1, pokemon_type_stats.type2, pokemon_type_stats.base_total, pokemon_type_stats.hp, pokemon_type_stats.attack, pokemon_type_stats.defence, pokemon_type_stats.sp_attack, pokemon_type_stats.sp_defence, pokemon_type_stats.speed
                    FROM pokemon_generation
                    JOIN pokemon_type_stats
                    ON pokemon_generation.name = pokemon_type_stats.name
                    WHERE (pokemon_type_stats.type1 = %s
                    OR pokemon_type_stats.type2 = %s);'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (like_argument,))

        # Iterate over the query results to produce the list of a given pokemon stats.
        for row in cursor:
            pokemon_by_name.append({'Name':row[0], 'Type1':row[1], 'Type2':row[2], 'Total base stats': row[3], 'hp': row[4], 'attack': row[5], 'defence': row[6], 'sp attack': row[7], 'sp defense': row[8], 'speed': row[9]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(pokemon_by_name)

@api.route('/generation/<generation_number>/[is_legendary={LEGENDARY}]')
def get_pokemon_by_generation(generation_number, is_legendary):
    gen_num = '%' + generation_number + '%'
    legnedary_bool = '?' + is_legendary

    pokemon_by_generation = []
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        # Execute the query
        query = '''SELECT pokemon_generation.name, pokemon_generation.generation
                    FROM pokemon_generation
                    WHERE pokemon_genaration.generation = %s
                    AND (%s IS NULL OR pokemon_generation.is_legendary == %s);'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (gen_num, legnedary_bool,))

        # Iterate over the query results to produce the list of pokemon in a generation.
        for row in cursor:
            pokemon_by_generation.append({'Name':row[0], 'Type1':row[1], 'Type2':row[2], 'Legendary':row[3]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return pokemon_by_generation
