execute as @a[tag=ttc.in_tower] at @s run function ttc:player/tower_tick
scoreboard players operation vsfix ttc.d *= const.-1 ttc.d

execute as @e[tag=ttc.entity] at @s run function ttc:entity/tick