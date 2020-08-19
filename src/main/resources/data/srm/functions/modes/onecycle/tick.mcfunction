execute store result score DragonPhase srm run data get entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase
setblock 0 102 -1 minecraft:bedrock
setblock 0 103 -1 minecraft:air
setblock 0 105 0 air
fill 2 101 -2 -2 101 2 air replace minecraft:end_portal
kill @e[type=item]
gamerule keepInventory true