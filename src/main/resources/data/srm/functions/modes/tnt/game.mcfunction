#Count tnt usage (just count entities)
#Count logs dropped (use custom item nbt)
#Average per TNT

execute as @e[type=minecraft:tnt,tag=!counted,nbt={Fuse:1s}] run scoreboard players add tntcount srm 1
tag @e[type=minecraft:tnt,nbt={Fuse:1s}] add counted
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log"}}] unless entity @s[nbt={Item:{tag:{Counted:1b}}}] run function srm:modes/tnt/addtolog

execute if score logtick temp matches 1.. run function srm:modes/tnt/adddisplay

execute if score logs srm matches 64.. run scoreboard players add logstacks srm 1
execute if score logs srm matches 64.. run scoreboard players remove logs srm 64

scoreboard players operation average srm = totallogs srm
scoreboard players operation average srm *= 100 srm
scoreboard players operation average srm /= tntcount srm
scoreboard players operation average100th srm = average srm
scoreboard players operation average srm /= 100 srm

scoreboard players operation Reducation srm = average srm
scoreboard players operation Reducation srm *= 100 srm
scoreboard players operation average100th srm -= Reducation srm

title @a actionbar [{"text":"Logs: ","color":"green"},{"score":{"name":"logstacks","objective":"srm"},"color":"green"},{"text":" stacks + ","color":"green"},{"score":{"name":"logs","objective":"srm"},"color":"green"},{"text":" TNT: ","color":"red"},{"score":{"name":"tntcount","objective":"srm"},"color":"red"},{"text":" Average: ","color":"gold"},{"score":{"name":"average","objective":"srm"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"average100th","objective":"srm"},"color":"gold"}]