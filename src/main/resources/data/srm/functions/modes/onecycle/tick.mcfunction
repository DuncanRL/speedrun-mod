setblock 0 102 -1 minecraft:bedrock
setblock 0 103 -1 minecraft:air
execute if block 0 105 0 dragon_egg run setblock 0 105 0 air
fill 2 101 -2 -2 101 2 air replace minecraft:end_portal
kill @e[type=item]
kill @e[type=ender_dragon,tag=!oc]
kill @e[type=end_crystal,tag=!oc]

execute store result bossbar minecraft:dragonhealth value run data get entity @e[type=minecraft:ender_dragon,limit=1] Health
scoreboard players operation LastHealth srm = DragonHealth srm
execute store result score DragonHealth srm run data get entity @e[type=minecraft:ender_dragon,limit=1] Health 100
execute if score DragonHealth srm < LastHealth srm run function srm:modes/onecycle/damaged

execute if entity @e[type=minecraft:ender_dragon,limit=1,nbt={Health:1.0f}] run function srm:modes/onecycle/dragondied
execute store result score DragonPhase srm run data get entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase
execute unless score DragonPhase srm matches 3 run function srm:modes/onecycle/finishperch
execute as @a if score @s deaths matches 1.. run function srm:modes/onecycle/reset


execute if score slab srm matches 0 run fill -1 102 1 1 102 -1 minecraft:stone_bricks
execute if score slab srm matches 1 run fill -1 102 1 1 102 -1 minecraft:stone_brick_slab
setblock 0 102 0 minecraft:bedrock
execute as @a run function srm:modes/onecycle/check