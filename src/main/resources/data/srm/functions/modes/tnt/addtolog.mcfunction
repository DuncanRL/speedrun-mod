data merge entity @s {Item:{tag:{Counted:1b}}}
execute store result score log temp run data get entity @s Item.Count 1
scoreboard players operation logs srm += log temp
scoreboard players operation totallogs srm += log temp
scoreboard players operation logtick temp += log temp