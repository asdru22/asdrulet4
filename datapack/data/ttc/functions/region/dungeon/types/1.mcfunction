scoreboard players set dung_type ttc.d 1
execute store result score max_rooms ttc.d run loot spawn ~ ~ ~ loot ttc:technical/rng/1-10
scoreboard players add max_rooms ttc.d 46
execute positioned 0 100 260 run function ttc:region/dungeon/actions/generate