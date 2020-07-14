tellraw @a [{"text":"Stronghold Practice Loaded","color":"green"}]

tag @a[limit=1,sort=random] add randomselected
execute as @p[tag=randomselected] at @s run function srm:tpstructure/stronghold
execute as @p[tag=randomselected] at @s run tp @s ~-4 70 ~-4
scoreboard players set time timer -10
effect give @a resistance 1 100 true
effect give @a instant_health 1 100 true
effect give @a saturation 1 100 true