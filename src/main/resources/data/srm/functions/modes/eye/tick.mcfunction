scoreboard players add time timer 1
execute if score time timer matches -1 run function srm:modes/eye/load2
execute if score time timer matches 0.. run function srm:modes/eye/game
execute as @e[tag=center] at @s run setblock ~ ~ ~2 minecraft:stone_button