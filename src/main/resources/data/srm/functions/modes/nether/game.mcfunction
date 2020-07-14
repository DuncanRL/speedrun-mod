function srm:calctime
execute as @a run function srm:displaytime

tag @a[nbt={Dimension:"minecraft:the_nether"}] add FromNether

tag @a[scores={srmndeath=1..}] remove FromNether
scoreboard players reset * srmndeath

execute unless score netherbeat srm matches 1 if entity @p[nbt={Dimension:"minecraft:overworld"}] run function srm:modes/nether/netherbeat