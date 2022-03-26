# Allows the number of rooms to be changed by other datapacks (Default is 25)
scoreboard players operation rooms ttc.d = max_rooms ttc.d
execute align xyz positioned ~0.5 ~ ~0.5 run function ttc:region/dungeon/gen/start
function ttc:region/dungeon/gen/branch_loop

# This command tags the armor stand of the last room to generate
tag @e[type=marker,tag=ttc.rgd_g1,sort=random,limit=1] add ttc.rgd_last
execute as @e[type=marker,tag=ttc.rgd_g1] at @s run function ttc:region/dungeon/gen/branch
execute as @e[type=marker,tag=ttc.rgd_g2] at @s run function ttc:region/dungeon/gen/build_room
tellraw @s {"text":"Finished!","color":"green"}