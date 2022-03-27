scoreboard players set lvl_avg ttc.d 0
execute as @a run scoreboard players operation lvl_avg ttc.d += @s ttc.level
execute store result score t ttc.d if entity @a[tag=ttc.in_tower]
scoreboard players operation lvl_avg ttc.d /= t ttc.d