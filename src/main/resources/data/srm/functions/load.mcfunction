gamerule maxCommandChainLength 2147483647

scoreboard objectives add srm dummy
scoreboard objectives add temp dummy
scoreboard objectives add timer dummy
scoreboard objectives add srmModeSet trigger

execute unless score Mode srm matches 0.. run scoreboard players set Mode srm 0
execute unless score ModeLoaded srm matches 0.. run scoreboard players set ModeLoaded srm 0
scoreboard players set 20 timer 20
scoreboard players set 50 timer 50
scoreboard players set 60 timer 60


#Plans:
#7-Lava (Done)
#3-Nether (Done)
#4-Fortress (Done)
#6-Eye (Done)
#1-Stronghold (Done)
#2-End (Done)
#5-Trading (Done)
#8-Tnt (Done)