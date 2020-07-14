data remove entity @s[nbt={RestocksToday:1}] RestocksToday

data modify storage srm:villagerpatch Recipes set from entity @s Offers.Recipes
data remove storage srm:villagerpatch NewRecipes
function srm:modes/trading/removedemand

data modify entity @s Offers.Recipes set from storage srm:villagerpatch NewRecipes