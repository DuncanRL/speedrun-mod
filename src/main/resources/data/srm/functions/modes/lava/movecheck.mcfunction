execute store result score rotation temp run data get entity @s Rotation[0] 1000
execute unless score rotation temp matches 0 run scoreboard players set hasmoved srm 1
execute store result score rotation temp run data get entity @s Rotation[1] 1000
execute unless score rotation temp matches 20000 run scoreboard players set hasmoved srm 1
execute if score @s srmlmove matches 1.. run scoreboard players set hasmoved srm 1
execute if score @s srmljump matches 1.. run scoreboard players set hasmoved srm 1
execute if score @s srmlsneak matches 1.. run scoreboard players set hasmoved srm 1