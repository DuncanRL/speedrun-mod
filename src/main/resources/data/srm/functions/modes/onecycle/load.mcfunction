tellraw @a [{"text":"One Cycle Practice Loaded","color":"green"}]

execute in minecraft:the_end run forceload add 8 8
execute in minecraft:the_end run forceload add -8 8
execute in minecraft:the_end run forceload add -8 -8
execute in minecraft:the_end run forceload add 8 -8
execute in minecraft:the_end run function srm:modes/onecycle/placeblocks

gamerule doImmediateRespawn true
gamerule keepInventory true

execute in minecraft:the_end run spawnpoint @a 0 103 -1