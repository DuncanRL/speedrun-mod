scoreboard players add crystal srm 1
execute if score crystal srm matches 2 run scoreboard players set crystal srm 0

execute if score crystal srm matches 1 run tellraw @a "Crystals Enabled."
execute if score crystal srm matches 0 run tellraw @a "Crystals Disabled."

function srm:modes/onecycle/reset