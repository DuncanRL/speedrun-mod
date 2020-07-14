tellraw @a [{"text":"Eye Practice Loaded","color":"green"}]

tag @a[limit=1,sort=random] add randomselected
tp @a 0 250 0
scoreboard players set time timer -10
effect give @a resistance 1 100 true
effect give @a instant_health 1 100 true
effect give @a saturation 1 100 true