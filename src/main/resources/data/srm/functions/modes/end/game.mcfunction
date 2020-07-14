function srm:calctime
execute as @a run function srm:displaytime

execute unless score endbeat srm matches 1 if entity @p[nbt={seenCredits:1b}] run function srm:modes/end/endbeat 