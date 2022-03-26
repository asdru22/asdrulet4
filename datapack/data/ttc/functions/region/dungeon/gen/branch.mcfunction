## if rooms, there is a 0.5 chance to build in that direction
execute if score rooms ttc.d matches 1.. if predicate ttc:region/dungeon/rcheck/e run function ttc:region/dungeon/gen/build_e
execute if score rooms ttc.d matches 1.. if predicate ttc:region/dungeon/rcheck/n run function ttc:region/dungeon/gen/build_n
execute if score rooms ttc.d matches 1.. if predicate ttc:region/dungeon/rcheck/s run function ttc:region/dungeon/gen/build_s
execute if score rooms ttc.d matches 1.. if predicate ttc:region/dungeon/rcheck/w run function ttc:region/dungeon/gen/build_w
## edit tags to say that this room has already checked
tag @s remove ttc.rgd_g1
tag @s add ttc.rgd_g2