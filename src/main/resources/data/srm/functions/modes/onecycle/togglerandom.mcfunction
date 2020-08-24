scoreboard players add randangle srm 1
execute if score randangle srm matches 2 run scoreboard players set randangle srm 0

execute if score randangle srm matches 1 run tellraw @a "Random Angle Enabled."
execute if score randangle srm matches 0 run tellraw @a "Random Angle Disabled."

function srm:modes/onecycle/reset