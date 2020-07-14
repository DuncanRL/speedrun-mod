scoreboard players add time timer 1
execute if score time timer matches -5 at @p[tag=randomselected] run setblock ~ ~ ~ nether_portal
execute if score time timer matches -1 run function srm:modes/nether/load2 
execute if score time timer matches 0.. run function srm:modes/nether/game