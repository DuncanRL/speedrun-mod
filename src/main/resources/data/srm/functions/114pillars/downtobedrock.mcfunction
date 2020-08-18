scoreboard players reset dtbdone temp
execute if block ~ ~-1 ~ bedrock run scoreboard players set dtbdone temp 1
execute if score dtbdone temp matches 1 run tp @s ~ ~ ~ 
execute unless score dtbdone temp matches 1 positioned ~ ~-1 ~ run function srm:114pillars/downtobedrock