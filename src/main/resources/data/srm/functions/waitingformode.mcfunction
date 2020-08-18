execute as @a[tag=!loaded] at @s run function srm:playerload
execute as @a[tag=!loaded] at @s run function #srm:playerload
tag @a add loaded

execute if entity @p[scores={setting=1}] run scoreboard players set disable116mobs srm 1
execute if entity @p[scores={setting=2}] run scoreboard players set disable116mobs srm 0
execute if entity @p[scores={setting=3}] run scoreboard players set 114pillars srm 1
execute if entity @p[scores={setting=4}] run scoreboard players set 114pillars srm 0


execute if entity @p[scores={setting=1..}] as @a run function srm:menu
scoreboard players reset * setting
scoreboard players enable @a setting


scoreboard players enable @a srmModeSet
execute as @p[scores={srmModeSet=1..}] run function srm:setmode