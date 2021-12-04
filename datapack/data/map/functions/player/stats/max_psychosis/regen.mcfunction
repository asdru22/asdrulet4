execute if score @s stat.psychosis matches ..104 run scoreboard players set regen_val map.d 105
execute if score @s stat.psychosis matches 105.. run scoreboard players operation regen_val map.d = @s stat.psychosis
scoreboard players operation regen_val map.d -= const.5 map.d
scoreboard players operation regen_val map.d /= const.100 map.d
scoreboard players operation regen_val map.d *= regen_val map.d
scoreboard players add regen_val map.d 60
scoreboard players operation @s stat.psychosis += regen_val map.d
execute if score @s stat.psychosis >= @s max_psychosis run scoreboard players operation @s stat.psychosis = @s max_psychosis

function map:player/stats/max_psychosis/calc_perc