execute as @p[tag=randomselected] at @s run function srm:tpbiome/dark_forest
execute as @p[tag=randomselected] at @s run tp @s ~ 250 ~
execute as @p[tag=randomselected] at @s run function srm:modes/tnt/downtoblock
execute as @p[tag=randomselected] at @s run tp @a ~ ~ ~ 0 0
scoreboard players reset * temp
clear @a
execute as @a run function srm:modes/tnt/items
