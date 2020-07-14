scoreboard players add time timer 1
execute if score time timer matches -6 at @p[tag=randomselected] run setblock ~ ~ ~ nether_portal
execute if score time timer matches -3 at @p[tag=randomselected] run function srm:modes/fortress/prepos
execute if score time timer matches -1 run function srm:modes/fortress/load2 
execute if score time timer matches 0.. run function srm:modes/fortress/game