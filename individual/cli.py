#Name: cli.py - command-line interface exercise
#Written by Tara Wright 
#Synopsis: python3 cli.py pokemontype
#Description: Shows a list of pokemon who contain the type given by the specified pokemontype string, case-insensitively.

import csv
import sys
import argparse

def get_parsed_arguments():
    parser = argparse.ArgumentParser(description='Shows a list of pokemon who contain the given type.')
    parser.add_argument('pokemontype', metavar='pokemontype', nargs= '+', help = 'the type of pokemon you wish to list')
    parsed_arguments = parser.parse_args()
    return parsed_arguments

def get_pokemon_list(pokemontype):
    with open('../individual/pokemon.csv') as f:
        reader = csv.reader(f)
        for pokemon_row in reader:
            if(pokemon_row[5] == pokemontype[0].lower() or pokemon_row[6] == pokemontype[0].lower()):
                pokemon = pokemon_row[2]
                print(pokemon)

def main():
    arguments = get_parsed_arguments()
    if len(sys.argv) != 2:
        print(f'Please input a correct pokemon type')
        exit()
    get_pokemon_list(arguments.pokemontype)
        
if __name__ == '__main__':
    main()