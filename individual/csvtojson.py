import sys
import csv
import json

if len(sys.argv) != 2:
    print(f'Usage: {sys.argv[0]} csvfile')
    exit()

csvfile = sys.argv[1]
with open("../individual/pokemon.csv") as f:
    reader = csv.reader(f)
    pokemon_list = []
    for pokemon_row in reader:
        pokemon_list.append({'name':pokemon_row[2], 'type1':pokemon_row[5], 'type2':pokemon_row[6]})

    print(json.dumps(pokemon_list, indent=4))