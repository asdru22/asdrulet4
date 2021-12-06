scoreboard players operation psy.int map.d = @s stat.psychosis

scoreboard players operation psy.int map.d *= const.1000 map.d
execute store result score psy.dec map.d run scoreboard players operation psy.int map.d /= @s max_psychosis

scoreboard players operation psy.dec map.d %= const.10 map.d
scoreboard players operation psy.int map.d /= const.10 map.d
scoreboard players operation @s perc_psychosis = psy.int map.d

execute if score @s perc_psychosis matches ..19 run function map:effects/scrambling/main