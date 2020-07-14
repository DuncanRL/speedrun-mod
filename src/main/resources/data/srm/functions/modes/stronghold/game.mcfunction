function srm:calctime
execute as @a run function srm:displaytime

execute unless score endfound srm matches 1 if entity @p[nbt={Dimension:"minecraft:the_end"}] run function srm:modes/stronghold/endfound
execute unless score endbeat srm matches 1 if entity @p[nbt={seenCredits:1b}] run function srm:modes/stronghold/endbeat