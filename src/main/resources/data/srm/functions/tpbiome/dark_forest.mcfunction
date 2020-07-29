tag @p add tpbiomer
execute at @p[tag=tpbiomer] run summon area_effect_cloud ~ ~ ~ {Tags:["tpbiome"]}
execute as @e[tag=tpbiome] at @s store result score x temp run data get entity @s Pos[0] 0.03125
execute as @e[tag=tpbiome] at @s store result score z temp run data get entity @s Pos[2] 0.03125
execute as @e[tag=tpbiome] store result entity @s Pos[0] double 32 run scoreboard players get x temp
execute as @e[tag=tpbiome] store result entity @s Pos[2] double 32 run scoreboard players get z temp
execute as @e[tag=tpbiome] at @s run tp @p[tag=tpbiomer] ~.5 250 ~.5 0 0
kill @e[tag=tpbiome]

execute as @p[tag=tpbiomer] at @s run function srm:tpbiome/dark_forest/loop

tag @a remove tpbiomer