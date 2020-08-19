scoreboard players operation MissingHealth srm = LastHealth srm
scoreboard players operation MissingHealth srm -= DragonHealth srm
scoreboard players operation MissingHealthD srm = MissingHealth srm
scoreboard players operation MissingHealth srm /= 100 srm
scoreboard players operation Reduction srm = MissingHealth srm
scoreboard players operation Reduction srm *= 100 srm
scoreboard players operation MissingHealthD srm -= Reduction srm
tellraw @a [{"text":"Dragon damaged for "},{"score": {"objective": "srm","name": "MissingHealth"}},{"text": "."},{"score": {"objective": "srm","name": "MissingHealthD"}}]