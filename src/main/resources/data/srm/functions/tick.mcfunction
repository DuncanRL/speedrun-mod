execute if score Mode srm matches 0 run function srm:waitingformode

execute if score Mode srm matches 1.. if score ModeLoaded srm matches 0 run function srm:basemodeload
execute if score Mode srm matches 1.. if score ModeLoaded srm matches 0 run function #srm:modeload
execute if score Mode srm matches 1.. run function srm:basemodetick
execute if score Mode srm matches 1.. run function #srm:modetick