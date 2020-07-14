tellraw @a [{"text":"Fortress Practice Loaded","color":"green"}]

tag @a[limit=1,sort=random] add randomselected
gamemode creative @p[tag=randomselected]

scoreboard players set time timer -10
effect give @a resistance 1 100 true
effect give @a instant_health 1 100 true
effect give @a saturation 1 100 true