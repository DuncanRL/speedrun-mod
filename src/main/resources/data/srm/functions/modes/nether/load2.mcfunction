gamemode survival @a
tp @a @p[tag=randomselected]
tag @a remove randomselected
clear @a
execute as @a run function srm:modes/nether/items

scoreboard objectives add srmndeath deathCount