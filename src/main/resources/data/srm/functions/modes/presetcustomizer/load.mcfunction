forceload add 0 0
forceload add -1 0
forceload add 0 -1
forceload add -1 -1

tp @a 0.0 64 0.0 -45 0

fill -16 63 15 15 68 -16 glass hollow
fill 15 63 15 -16 63 -16 black_concrete
fill 14 67 13 4 64 13 minecraft:iron_block
fill 13 67 12 4 64 12 minecraft:stone_button[face=wall,facing=north,powered=false]

function srm:modes/presetcustomizer/blocks

gamemode creative @a
difficulty peaceful
effect give @a night_vision 1000000 0 true
kill @e[type=item]

gamerule doWeatherCycle false
weather clear