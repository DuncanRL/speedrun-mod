tellraw @a [{"text":"One Cycle Practice Loaded","color":"green"}]

execute in minecraft:the_end run forceload add 8 8
execute in minecraft:the_end run forceload add -8 8
execute in minecraft:the_end run forceload add -8 -8
execute in minecraft:the_end run forceload add 8 -8
execute in minecraft:the_end run function srm:modes/onecycle/placeblocks

gamerule doImmediateRespawn true
gamerule keepInventory true

execute in minecraft:the_end run spawnpoint @a 0 103 -1

scoreboard objectives add deaths deathCount

execute unless score crystal srm matches 0.. run scoreboard players set crystal srm 0
scoreboard players set 100 srm 100



bossbar add dragonhealth "Dragon Health"
bossbar set minecraft:dragonhealth players @a
bossbar set minecraft:dragonhealth max 200