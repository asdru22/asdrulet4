execute as @a at @s run function map:player/tick
scoreboard players operation asc.vs_fix map.d *= const.-1 map.d

execute as @e[tag=map.entity] at @s run function map:entity/tick