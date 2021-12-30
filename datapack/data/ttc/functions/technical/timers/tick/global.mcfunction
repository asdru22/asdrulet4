execute as @a at @s run function ttc:player/tick
scoreboard players operation asc.vs_fix ttc.d *= const.-1 ttc.d

execute as @e[tag=ttc.entity] at @s run function ttc:entity/tick