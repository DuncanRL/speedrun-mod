execute as @e[tag=center] at @s run fill ~-12 ~-4 ~-12 ~12 ~12 ~6 barrier hollow
execute as @e[tag=center] at @s run fill ~-12 ~-5 ~-12 ~12 ~-5 ~6 bedrock
execute as @e[tag=center] at @s run fill ~-11 ~-1 ~-11 ~11 ~-3 ~5 stone
execute as @e[tag=center] at @s run fill ~-10 ~-1 ~-10 ~10 ~-1 ~-1 lava
execute as @e[tag=center] at @s run setblock ~ ~ ~3 minecraft:command_block{Command:"function srm:modes/lava/reset"}
execute as @e[tag=center] at @s run setblock ~ ~ ~2 minecraft:stone_button
execute as @e[tag=center] at @s run setblock ~ ~1 ~3 minecraft:oak_sign[rotation=8,waterlogged=false]{Color:"black",Text4:'{"text":""}',Text3:'{"text":"\\\\/"}',Text2:'{"text":"|"}',Text1:'{"text":"Reset"}'}

execute as @e[tag=center] at @s run tp @p ~ ~ ~-.69 0 20
scoreboard players set hasmoved srm 0
scoreboard players reset * srmlmove
scoreboard players reset * srmljump
scoreboard players reset * srmlsneak
scoreboard players set completeportal srm 0

kill @e[type=item]
clear @a
scoreboard players set time timer 0
effect give @a minecraft:instant_health 1 100 true
effect give @a minecraft:saturation 1 100 true

execute as @a run function srm:modes/lava/items