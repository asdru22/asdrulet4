scoreboard players operation psychic.dmg ttc.d = s.damage ttc.d
scoreboard players operation psychic.dmg ttc.d *= s.psychosis_used ttc.d
scoreboard players operation psychic.dmg ttc.d /= const.1000 ttc.d
scoreboard players set psychic_hit ttc.d 1
scoreboard players operation @s stat.psychosis -= s.psychosis_used ttc.d
function ttc:player/stats/max_psychosis/calc_perc