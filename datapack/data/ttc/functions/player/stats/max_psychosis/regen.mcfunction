execute if score @s stat.psychosis matches ..104 run scoreboard players set regen_val ttc.d 105
execute if score @s stat.psychosis matches 105.. run scoreboard players operation regen_val ttc.d = @s stat.psychosis
scoreboard players operation regen_val ttc.d -= const.5 ttc.d
scoreboard players operation regen_val ttc.d /= const.100 ttc.d
scoreboard players operation regen_val ttc.d *= regen_val ttc.d
scoreboard players add regen_val ttc.d 60
scoreboard players operation @s stat.psychosis += regen_val ttc.d
execute if score @s stat.psychosis >= @s max_psychosis run scoreboard players operation @s stat.psychosis = @s max_psychosis

function ttc:player/stats/max_psychosis/calc_perc