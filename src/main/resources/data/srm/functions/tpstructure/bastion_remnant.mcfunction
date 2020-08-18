execute align xz run tp @s ~.5 ~ ~.5 0 0
execute at @s run function srm:tpstructure/bastion_remnant/loop
execute if score Here temp matches 1..2 at @s run function srm:tpstructure/bastion_remnant/close