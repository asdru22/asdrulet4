scoreboard players operation psy.int ttc.d = @s ttc.stat.psychosis

scoreboard players operation psy.int ttc.d *= const.1000 ttc.d
execute store result score psy.dec ttc.d run scoreboard players operation psy.int ttc.d /= @s ttc.max_psychosis

scoreboard players operation psy.dec ttc.d %= const.10 ttc.d
scoreboard players operation psy.int ttc.d /= const.10 ttc.d
scoreboard players operation @s ttc.perc_psychosis = psy.int ttc.d

execute if score @s ttc.perc_psychosis matches ..19 run function ttc:effects/scrambling/main