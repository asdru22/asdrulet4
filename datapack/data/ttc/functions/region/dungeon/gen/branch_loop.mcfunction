# starter wont have g1 tag
execute as @e[type=marker,tag=ttc.rgd_g1] at @s run function ttc:region/dungeon/gen/branch
# if this room has no connections run stalemate_fix
execute unless entity @e[type=marker,tag=ttc.rgd_g1] if score rooms ttc.d matches 1.. run function ttc:region/dungeon/gen/stalemate_fix
# if there are more rooms to generate, do so
execute if score rooms ttc.d matches 1.. run function ttc:region/dungeon/gen/branch_loop