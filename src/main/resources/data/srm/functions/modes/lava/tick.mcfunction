execute as @a run function srm:modes/lava/movecheck
execute if score hasmoved srm matches 1 run scoreboard players add time timer 1

execute as @e[tag=center] at @s run setblock ~ ~ ~2 minecraft:stone_button

execute unless score completeportal srm matches 1 as @p at @s if block ~ ~ ~ nether_portal run function srm:modes/lava/complete
execute unless score completeportal srm matches 1 as @p at @s if block ~ ~ ~1 nether_portal run function srm:modes/lava/complete
execute unless score completeportal srm matches 1 as @p at @s if block ~ ~ ~-1 nether_portal run function srm:modes/lava/complete

execute as @e[tag=center] at @s run tp @a[distance=20..] ~ ~ ~
execute as @e[tag=center] at @s run tp @a[nbt={Dimension:"minecraft:the_nether"}] ~ ~ ~

function srm:calctime
execute as @a run function srm:displaytime