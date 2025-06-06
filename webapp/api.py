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

    return json.dumps(types)


@api.route('/type/<pokemon_type>')
def get_pokemon_by_type(pokemon_type):
    chosen_type = pokemon_type
    pokemon_by_type = []
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        # Execute the query
        query = '''SELECT pokemon_type_stats.name, pokemon_type_stats.type1, pokemon_type_stats.type2, pokemon_type_stats.base_total
                        FROM pokemon_type_stats
                        WHERE pokemon_type_stats.type1 = %s
                        OR pokemon_type_stats.type2 = %s
                        ORDER BY pokemon_type_stats.base_total DESC;'''
        cursor.execute(query, (chosen_type, chosen_type,))

        # Iterate over the query results to produce the list of pokemon of a given type.
        for row in cursor:
            pokemon_by_type.append({'Name':row[0], 'Type1':row[1], 'Type2':row[2], 'Base Total':row[3]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(pokemon_by_type)

@api.route('/allPokemon/')
def get_all_pokemon():

    names = []
    query = '''Select pokemon_type_stats.name
                    FROM pokemon_type_stats
                    ORDER BY pokemon_type_stats.name'''
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())

        # Iterate over the query results to produce the list of pokemon of a given type.
        for row in cursor:
            names.append({'name':row[0]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(names)

@api.route('/pokemon/<pokemon_name>')
def get_pokemon_stats_by_name(pokemon_name):
    pokemon_by_name = []
    ilike_argument = '%' + pokemon_name + '%'
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        # Execute the query
        query = '''SELECT pokemon_type_stats.name, pokemon_type_stats.type1, pokemon_type_stats.type2, pokemon_type_stats.base_total, pokemon_type_stats.hp, pokemon_type_stats.attack, pokemon_type_stats.defense, pokemon_type_stats.sp_attack, pokemon_type_stats.sp_defense, pokemon_type_stats.speed
                    FROM pokemon_type_stats
                    WHERE pokemon_type_stats.name ILIKE %s; '''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (ilike_argument,))

        # Iterate over the query results to produce the list of a given pokemon stats.
        for row in cursor:
            pokemon_by_name.append({'Name':row[0],
                                    'Type1':row[1],
                                    'Type2':row[2],
                                    'Total base stats': row[3],
                                    'hp': row[4],
                                    'attack': row[5],
                                    'defense': row[6],
                                    'sp attack': row[7],
                                    'sp defense': row[8],
                                    'speed': row[9]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(pokemon_by_name)

@api.route('/generation/<generation_number>/[is_legendary={LEGENDARY}]')
def get_pokemon_by_generation(generation_number, is_legendary):
    gen_num = generation_number
    legnedary_bool = is_legendary

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

    return json.dumps(pokemon_by_generation)


    ########

@api.route('/strong_weak/<pokemon_name>')
def get_pokemon_strength_and_weakness(pokemon_name):
    ilike_argument = '%' + pokemon_name + '%'
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        pokemon_strength_and_weakness  = []
        # Execute the query
        query = '''SELECT pokemon_strong.strong1, pokemon_strong.strong2, pokemon_strong.strong3, pokemon_strong.strong4, pokemon_strong.strong5, pokemon_weak.weak1, pokemon_weak.weak2, pokemon_weak.weak3, pokemon_weak.weak4, pokemon_weak.weak5
        FROM pokemon_strong, pokemon_type_stats, pokemon_weak
        WHERE pokemon_strong.type = pokemon_weak.type
        AND pokemon_type_stats.name ILIKE %s
        AND (pokemon_type_stats.type1 = pokemon_strong.type
        OR pokemon_type_stats.type2 = pokemon_strong.type)
        AND (pokemon_type_stats.type1 = pokemon_weak.type
        OR pokemon_type_stats.type2 = pokemon_weak.type);'''
    
        cursor.execute(query, (ilike_argument,))

        # Iterate over the query results to produce the list of a given pokemon stats.
        for row in cursor:
            pokemon_strength_and_weakness.append({'strong1':row[0], 
                                                  'strong2':row[1], 
                                                  'strong3':row[2], 
                                                  'strong4': row[3], 
                                                  'strong5': row[4], 
                                                  'weak1': row[5], 
                                                  'weak2': row[6], 
                                                  'weak3': row[7], 
                                                  'weak4': row[8], 
                                                  'weak5': row[9]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(pokemon_strength_and_weakness)

@api.route('/pokemon_class/<pokemon_name>')
def get_pokemon_class(pokemon_name):
    ilike_argument = '%' + pokemon_name + '%'
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        pokemon_class  = []
        # Execute the query
        query = '''SELECT pokemon_class_and_gender.pokemon_class
                    FROM pokemon_class_and_gender
                    WHERE pokemon_class_and_gender.name ILIKE %s;'''
    
        cursor.execute(query, (ilike_argument,))

        # Iterate over the query results to produce the list of a given pokemon stats.
        for row in cursor:
            pokemon_class.append({'pokemon_class':row[0]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(pokemon_class)

@api.route('/pokemon_gender/<pokemon_name>')
def get_pokemon_gender(pokemon_name):
    ilike_argument = '%' + pokemon_name + '%'
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        pokemon_gender  = []
        # Execute the query
        query = '''SELECT pokemon_class_and_gender.gender
                    FROM pokemon_class_and_gender
                    WHERE pokemon_class_and_gender.name ILIKE %s;'''
    
        cursor.execute(query, (ilike_argument,))

        # Iterate over the query results to produce the list of a given pokemon stats.
        for row in cursor:
            pokemon_gender.append({'gender':row[0]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(pokemon_gender)

    #####

@api.route('/pokemon_sprite/<pokemon_name>')
def get_pokemon_sprite(pokemon_name):
    ilike_argument = '%' + pokemon_name + '%'
    try:
        # Create a "cursor", which is an object with which you can iterate
        # over query results.
        connection = get_connection()
        cursor = connection.cursor()

        pokemon_sprite  = []
        # Execute the query
        query = '''SELECT png.png
                    FROM png
                    WHERE png.name ILIKE %s;'''
    
        cursor.execute(query, (ilike_argument,))

        # Iterate over the query results to produce the list of a given pokemon stats.
        for row in cursor:
            pokemon_sprite.append({'sprite':row[0]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(pokemon_sprite)