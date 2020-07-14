scoreboard players operation Seconds timer = time timer
scoreboard players operation Seconds timer /= 20 timer
scoreboard players operation Minutes timer = Seconds timer
scoreboard players operation Minutes timer /= 60 timer
scoreboard players operation Reduction timer = Seconds timer
scoreboard players operation Reduction timer *= 20 timer
scoreboard players operation Miliseconds timer = time timer
scoreboard players operation Miliseconds timer -= Reduction timer
scoreboard players operation Miliseconds timer *= 50 timer
scoreboard players operation Reduction timer = Minutes timer
scoreboard players operation Reduction timer *= 60 timer
scoreboard players operation Seconds timer -= Reduction timer
scoreboard players reset Reduction timer
scoreboard players reset <9s timer
execute if score Seconds timer matches ..9 run scoreboard players set <9s timer 0
scoreboard players reset <99m timer
execute if score Miliseconds timer matches ..99 run scoreboard players set <99m timer 0
scoreboard players reset <49m timer
execute if score Miliseconds timer matches ..49 run scoreboard players set <49m timer 0