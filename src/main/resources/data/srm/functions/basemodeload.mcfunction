scoreboard players set ModeLoaded srm 1
execute if score Mode srm matches 1 run function srm:modes/stronghold/load
execute if score Mode srm matches 2 run function srm:modes/end/load
execute if score Mode srm matches 3 run function srm:modes/nether/load
execute if score Mode srm matches 4 run function srm:modes/fortress/load
execute if score Mode srm matches 5 run function srm:modes/trading/load
execute if score Mode srm matches 6 run function srm:modes/eye/load
execute if score Mode srm matches 7 run function srm:modes/lava/load
execute if score Mode srm matches 8 run function srm:modes/tnt/load
execute if score Mode srm matches 9 run function srm:modes/bastion/load
execute if score Mode srm matches 10 in minecraft:the_end run function srm:modes/onecycle/load