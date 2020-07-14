gamemode survival @a

execute as @p[tag=randomselected] at @s run tp @a ~ 64 ~
execute as @p[tag=randomselected] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian
execute as @p[tag=randomselected] at @s run fill ~-2 ~2 ~-2 ~2 ~ ~2 air
execute as @p[tag=randomselected] at @s run fill ~1 ~ ~ ~-2 ~3 ~ obsidian
execute as @p[tag=randomselected] at @s run fill ~ ~ ~ ~-1 ~2 ~ air
execute as @p[tag=randomselected] at @s run setblock ~ ~ ~ fire

tag @a remove randomselected
clear @a
execute as @a run function srm:modes/nether/items

scoreboard objectives add srmndeath deathCount