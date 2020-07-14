execute as @p[tag=randomselected] at @s run function srm:tpstructure/stronghold
execute as @p[tag=randomselected] at @s run tp @s ~-4 70 ~-4
execute as @p[tag=randomselected] at @s run function srm:modes/stronghold/downtobrick
execute as @p[tag=randomselected] at @s run tp @a ~ ~ ~ 0 0
scoreboard players reset * temp
clear @a
execute as @a run function srm:modes/stronghold/items