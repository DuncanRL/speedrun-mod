execute positioned ~ ~ ~ store result score here temp run locatebiome dark_forest
execute positioned ~32 ~ ~ store result score x1 temp run locatebiome dark_forest
execute positioned ~-32 ~ ~ store result score x2 temp run locatebiome dark_forest
execute positioned ~ ~ ~32 store result score z1 temp run locatebiome dark_forest
execute positioned ~ ~ ~-32 store result score z2 temp run locatebiome dark_forest
execute if score x1 temp < x2 temp at @s run tp @s ~32 ~ ~
execute if score x1 temp > x2 temp at @s run tp @s ~-32 ~ ~
execute if score z1 temp < z2 temp at @s run tp @s ~ ~ ~32
execute if score z1 temp > z2 temp at @s run tp @s ~ ~ ~-32
execute at @s if score here temp matches 50.. run function srm:tpbiome/dark_forest/loop