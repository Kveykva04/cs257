#!/usr/bin/env python3
'''
    csv2tables.py
    Tara Wright and Lauren
    Template by Jeff Ondich

'''

import sys
import csv

def main(input_file_name):
    # Collect the data and assign ids to books and authors
    pokemon_class_and_gender = {}
    with open(input_file_name) as f:
        reader = csv.reader(f)
        for pokemon_row in reader:
            name = pokemon_row[2]
            poke_class = pokemon_row[3]
            male = pokemon_row[36]
            pokemon_key = f'{name}'

            if pokemon_key not in pokemon_class_and_gender:
                pokemon_class_and_gender[pokemon_key] = {'name': name,
                                       'classification': poke_class,
                                       'gender_male': male}

    # Write to the table files

    with open('pokemon_class_and_gender.csv', 'w') as f:
        writer = csv.writer(f)
        for pokemon_key in pokemon_class_and_gender:
            pokemon = pokemon_class_and_gender[pokemon_key]
            row = (pokemon['name'], pokemon['classification'], pokemon['gender_male'])
            writer.writerow(row)

if len(sys.argv) != 2:
    print(f'Usage: {sys.argv[0]} original_csv_file', file=sys.stderr)
    exit()

main(sys.argv[1])
