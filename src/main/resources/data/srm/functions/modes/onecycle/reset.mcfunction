scoreboard players set @a deaths 0

tp @a 0 103 -1 0 0

effect give @a saturation 1 200 true
effect give @a instant_health 1 200 true
effect give @a resistance 1 200 true

kill @e[type=ender_dragon]
kill @e[type=end_crystal]

clear @a
execute as @a run function srm:modes/onecycle/items

summon minecraft:area_effect_cloud 0 125 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 127 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 129 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 131 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 131 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 133 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 135 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 137 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 139 10 {Tags:["spawnspot"]}
summon minecraft:area_effect_cloud 0 141 10 {Tags:["spawnspot"]}

execute at @e[tag=spawnspot,limit=1,sort=random] run summon ender_dragon ~ ~ ~ {DragonPhase:3,Tags:["oc"]}

execute if score crystal srm matches 1 run summon end_crystal 0 150 20 {Tags:["oc"]}
execute if score crystal srm matches 1 run summon end_crystal 0 140 20 {Tags:["oc"]}
execute if score crystal srm matches 1 run summon end_crystal 0 130 20 {Tags:["oc"]}
execute if score crystal srm matches 1 run summon end_crystal 0 135 20 {Tags:["oc"]}
execute if score crystal srm matches 1 run summon end_crystal 0 145 20 {Tags:["oc"]}