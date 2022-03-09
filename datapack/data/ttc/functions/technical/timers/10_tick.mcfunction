execute as @a at @s run function ttc:player/10_ticks
execute as @e[type=#ttc:mobs,tag=ttc.entity] at @s run function ttc:entity/10_ticks

schedule function ttc:technical/timers/10_tick 10t