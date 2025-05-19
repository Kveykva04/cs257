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
    pokemon_types_stats = {}
    pokemon_generation = {}
    with open(input_file_name) as f:
        reader = csv.reader(f)
        for pokemon_row in reader:
            name = pokemon_row[2]
            type1 = pokemon_row[5]
            type2 = pokemon_row[6] if pokemon_row[6] else 'NULL'
            stat_total = pokemon_row[29]
            hp = pokemon_row[30]
            atk = pokemon_row[31]
            defence = pokemon_row[32]
            sp_atk = pokemon_row[33]
            sp_def = pokemon_row[34]
            speed = pokemon_row[35]
            generation = pokemon_row[39]
            is_legendary = pokemon_row[40]
            pokemon_key = f'{name}'

            if pokemon_key not in pokemon_types_stats:
                pokemon_types_stats[pokemon_key] = {'name': name,
                                   'type1': type1,
                                   'type2': type2,
                                   'stat_total': stat_total,
                                   'hp': hp,
                                   'atk': atk,
                                   'def': defence,
                                   'sp_atk': sp_atk,
                                   'sp_def': sp_def,
                                   'speed': speed}

            if pokemon_key not in pokemon_generation:
                pokemon_generation[pokemon_key] = {'name': name,
                                       'generation': generation,
                                       'is_legendary': is_legendary}

    # Write to the table files
    with open('pokemon_types_stats.csv', 'w') as f:
        writer = csv.writer(f)
        for pokemon_key in pokemon_types_stats:
            pokemon = pokemon_types_stats[pokemon_key]
            row = (pokemon['name'], pokemon['type1'], pokemon['type2'], pokemon['stat_total'], pokemon['hp'], pokemon['atk'], pokemon['def'], pokemon['sp_atk'], pokemon['sp_def'], pokemon['speed'])
            writer.writerow(row)

    with open('pokemon_generation.csv', 'w') as f:
        writer = csv.writer(f)
        for pokemon_key in pokemon_generation:
            pokemon = pokemon_generation[pokemon_key]
            row = (pokemon['name'], pokemon['generation'], pokemon['is_legendary'])
            writer.writerow(row)

if len(sys.argv) != 2:
    print(f'Usage: {sys.argv[0]} original_csv_file', file=sys.stderr)
    exit()

main(sys.argv[1])
