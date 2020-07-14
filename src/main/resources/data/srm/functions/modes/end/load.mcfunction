tellraw @a [{"text":"End Practice Loaded","color":"green"}]

execute in minecraft:the_end run tp @a 100.00 49.00 0.00
scoreboard players set time timer -10
effect give @a resistance 1 100 true
effect give @a instant_health 1 100 true
effect give @a saturation 1 100 true