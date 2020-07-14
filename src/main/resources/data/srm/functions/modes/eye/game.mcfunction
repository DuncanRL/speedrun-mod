function srm:calctime
execute as @a run function srm:displaytime


execute unless score strongholdfound srm matches 1 if entity @p[advancements={minecraft:story/follow_ender_eye=true}] run function srm:modes/eye/strongholdfound
execute unless score endfound srm matches 1 if entity @p[nbt={Dimension:"minecraft:the_end"}] run function srm:modes/eye/endfound
execute unless score endbeat srm matches 1 if entity @p[nbt={seenCredits:1b}] run function srm:modes/eye/endbeat



#@p[advancements={minecraft:story/follow_ender_eye=true}]