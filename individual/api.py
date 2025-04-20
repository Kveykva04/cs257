'''
    api.py
    Tara Wright
'''
import sys
import csv
import argparse
import flask
import json

app = flask.Flask(__name__)

with open("../individual/pokemon.csv") as f:
    reader = csv.reader(f)
    pokemon_list = []
    for pokemon_row in reader:
        pokemon_list.append({'name':pokemon_row[2], 'type1':pokemon_row[5], 'type2':pokemon_row[6]})
json.dumps(pokemon_list, indent=4)


@app.route('/')
def hello():
    return 'Hello, Pokemon Lovers!'

@app.route('/type/<pokemontype>')
def get_pokemon(pokemontype):
    ''' Returns the pokemon that have a given type '''
    pokemon_by_type = []
    lower_type = pokemontype.lower()
    for pokemon in pokemon_list:
        if pokemon['type1'].lower().startswith(lower_type) or pokemon['type2'].lower().startswith(lower_type):
            pokemon_by_type.append(pokemon['name'])
    return json.dumps(pokemon_by_type)

@app.route('/pokemon')
def get_type():
    ''' Returns a list of all pokemon and their types '''
    all_pokemon = []
    for pokemon in pokemon_list:
        if(pokemon['name'] != 'name'):
            all_pokemon.append(pokemon)

    return json.dumps(all_pokemon)

@app.route('/help')
def get_help():
    return flask.render_template('help.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A Flask aplication that lists pokemon of a given type')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
