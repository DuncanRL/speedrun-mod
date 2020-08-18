scoreboard players set end_stone temp 0
execute if block ~1 ~ ~ minecraft:end_stone run scoreboard players set end_stone temp 1
execute if block ~-1 ~ ~ minecraft:end_stone run scoreboard players set end_stone temp 1
execute if block ~ ~ ~-1 minecraft:end_stone run scoreboard players set end_stone temp 1
execute if block ~ ~ ~1 minecraft:end_stone run scoreboard players set end_stone temp 1
execute if block ~ ~ ~ obsidian run setblock ~ ~ ~ air
execute if score end_stone temp matches 1 run fill ~ ~ ~ ~ ~-1 ~ end_stone
execute positioned ~ ~-1 ~ if block ~ ~ ~ obsidian run function srm:114pillars/trimmer