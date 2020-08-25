scoreboard players add slab srm 1
execute if score slab srm matches 2 run scoreboard players set slab srm 0

execute if score slab srm matches 1 run tellraw @a "Slab Enabled"
execute if score slab srm matches 0 run tellraw @a "Slab Disabled"

function srm:modes/onecycle/reset