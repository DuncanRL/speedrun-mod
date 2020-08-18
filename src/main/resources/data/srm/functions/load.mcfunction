gamerule maxCommandChainLength 2147483647
gamerule sendCommandFeedback false

scoreboard objectives add srm dummy
scoreboard objectives add temp dummy
scoreboard objectives add timer dummy
scoreboard objectives add srmModeSet trigger
scoreboard objectives add setting trigger

execute unless score Mode srm matches 0.. run scoreboard players set Mode srm 0
execute unless score ModeLoaded srm matches 0.. run scoreboard players set ModeLoaded srm 0
scoreboard players set 20 timer 20
scoreboard players set 50 timer 50
scoreboard players set 60 timer 60

execute unless score disable116mobs srm matches 0.. run scoreboard players set disable116mobs srm 0
execute unless score 114pillars srm matches 0.. run scoreboard players set 114pillars srm 0

#summon ender_dragon ~ ~ ~ {DragonPhase:3}