scoreboard players operation psy.int ttc.d = @s stat.psychosis

scoreboard players operation psy.int ttc.d *= const.1000 ttc.d
execute store result score psy.dec ttc.d run scoreboard players operation psy.int ttc.d /= @s max_psychosis

scoreboard players operation psy.dec ttc.d %= const.10 ttc.d
scoreboard players operation psy.int ttc.d /= const.10 ttc.d
scoreboard players operation @s perc_psychosis = psy.int ttc.d

execute if score @s perc_psychosis matches ..19 run function ttc:effects/scrambling/main