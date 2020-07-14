execute as @a[tag=!loaded] at @s run function srm:playerload
execute as @a[tag=!loaded] at @s run function #srm:playerload
tag @a add loaded
scoreboard players enable @a srmModeSet
execute as @p[scores={srmModeSet=1..}] run function srm:setmode