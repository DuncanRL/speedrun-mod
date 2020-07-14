execute store result score InFront temp positioned ^ ^ ^1000 run locate mansion
execute store result score Here temp run locate mansion

execute if score Here temp < InFront temp run tp @s ~ ~ ~ ~90 0
execute unless score Here temp < InFront temp run tp @s ^ ^ ^1000

execute unless score Here temp matches ..1500 at @s run function srm:tpstructure/mansion/1k