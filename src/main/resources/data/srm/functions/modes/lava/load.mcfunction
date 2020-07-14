tellraw @a [{"text":"Lava Practice Loaded","color":"green"}]

execute at @p align zx run summon minecraft:area_effect_cloud ~.5 220 ~.5 {Duration:2147483647,Tags:["center"]}
execute at @p run tp @a ~ 220 ~ 
execute at @p run setworldspawn
gamerule spawnRadius 0
function srm:modes/lava/reset

scoreboard objectives add srmlmove minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add srmljump minecraft.custom:minecraft.jump
scoreboard objectives add srmlsneak minecraft.custom:minecraft.sneak_time