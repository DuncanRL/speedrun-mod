execute store result score InFront temp positioned ^ ^ ^5 run locate stronghold
execute store result score Here temp run locate stronghold

execute if score Here temp < InFront temp run tp @s ~ ~ ~ ~90 0
execute unless score Here temp < InFront temp run tp @s ^ ^ ^5

execute unless score Here temp matches ..2 at @s run function srm:tpstructure/stronghold/loop