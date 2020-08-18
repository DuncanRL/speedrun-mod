scoreboard players reset dtbdone temp
execute if block ~ ~ ~ cave_air if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players set dtbdone temp 1
execute if block ~ ~-1 ~ bedrock run scoreboard players set dtbdone temp 1
execute if score dtbdone temp matches 1 run tp @s ~ ~ ~ 
execute unless score dtbdone temp matches 1 positioned ~ ~-1 ~ run function srm:modes/stronghold/downtobrick