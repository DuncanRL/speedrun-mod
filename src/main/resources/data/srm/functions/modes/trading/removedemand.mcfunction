data modify storage srm:villagerpatch Recipes[0].demand set value 0
data modify storage srm:villagerpatch NewRecipes append from storage srm:villagerpatch Recipes[0]
data remove storage srm:villagerpatch Recipes[0]
execute if data storage srm:villagerpatch Recipes[0] run function srm:modes/trading/removedemand