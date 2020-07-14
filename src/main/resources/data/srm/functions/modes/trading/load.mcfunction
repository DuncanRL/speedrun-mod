tellraw @a [{"text":"1.14.4 Trading Practice Loaded","color":"green"}]

kill @e[type=!player]
kill @e[type=!player]
gamerule doMobSpawning false
time set 3500
gamerule doDaylightCycle false

tag @a[limit=1,sort=random] add randomselected
execute at @p[tag=randomselected] run tp @a ~ 64 ~

execute at @p[tag=randomselected] run summon villager ~ ~ ~ {Tags:["114V"]}
execute at @p[tag=randomselected] run summon villager ~ ~ ~ {Tags:["114V"]}
execute at @p[tag=randomselected] run summon villager ~ ~ ~ {Tags:["114V"]}
execute at @p[tag=randomselected] run summon villager ~ ~ ~ {Tags:["114V"]}

execute at @p[tag=randomselected] run fill ~10 ~10 ~10 ~-10 ~-1 ~-10 shroomlight hollow


clear @a
execute as @a run function srm:modes/trading/items