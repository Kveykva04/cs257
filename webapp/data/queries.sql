SELECT pokemon_generation.generation, pokemon_type_stats.type1, pokemon_generation.name
FROM pokemon_generation
JOIN pokemon_type_stats
ON pokemon_generation.name = pokemon_type_stats.name
WHERE pokemon_generation.generation = 1
AND pokemon_type_stats.type1 = 'grass';

SELECT pokemon_generation.generation, pokemon_type_stats.base_total, pokemon_generation.name
FROM pokemon_generation
JOIN pokemon_type_stats
ON pokemon_generation.name = pokemon_type_stats.name
WHERE pokemon_generation.generation = 3 
AND pokemon_type_stats.base_total > 300
ORDER BY pokemon_type_stats.base_total DESC

SELECT pokemon_generation.is_legendary, pokemon_type_stats.type1, pokemon_generation.name
FROM pokemon_generation
JOIN pokemon_type_stats
ON pokemon_generation.name = pokemon_type_stats.name
WHERE pokemon_generation.is_legendary = 1
AND pokemon_type_stats.type1 = 'dragon';

