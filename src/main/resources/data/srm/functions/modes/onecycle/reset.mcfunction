scoreboard players set @a deaths 0
tp @a 0 103 -1 0 0
effect give @a saturation 1 200 true
effect give @a instant_health 1 200 true
effect give @a resistance 1 200 true
clear @a
execute as @a run function srm:modes/onecycle/items
setblock 0 105 0 air

kill @e[type=ender_dragon]
kill @e[type=end_crystal]

 execute unless score randangle srm matches 0 run summon area_effect_cloud 0 0 10 {Tags:["dragondir"]}
 execute unless score randangle srm matches 1 positioned 0 0 0 run function srm:modes/onecycle/randangle

execute positioned 0 0 0 facing entity @e[tag=dragondir,limit=1,sort=random] feet run function srm:modes/onecycle/dragon

execute if score crystal srm matches 1 run function srm:modes/onecycle/crystals
