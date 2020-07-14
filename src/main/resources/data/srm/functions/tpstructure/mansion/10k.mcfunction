execute store result score InFront temp positioned ^ ^ ^10000 run locate mansion
execute store result score Here temp run locate mansion

execute if score Here temp < InFront temp run tp @s ~ ~ ~ ~90 0
execute unless score Here temp < InFront temp run tp @s ^ ^ ^10000

execute unless score Here temp matches ..15000 at @s run function srm:tpstructure/mansion/10k