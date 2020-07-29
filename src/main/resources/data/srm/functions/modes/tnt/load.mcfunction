tellraw @a [{"text":"TNT Practice Loaded","color":"green"}]

tag @a[limit=1,sort=random] add randomselected
execute as @p[tag=randomselected] at @s run function srm:tpbiome/dark_forest
scoreboard players set time timer -10
effect give @a resistance 1000000 100 true
effect give @a instant_health 1000000 100 true
effect give @a saturation 1000000 100 true
difficulty peaceful

scoreboard players set 100 srm 100
scoreboard players set logstacks srm 0