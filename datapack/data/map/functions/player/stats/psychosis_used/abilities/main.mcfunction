scoreboard players operation psychic.dmg map.d = s.damage map.d
scoreboard players operation psychic.dmg map.d *= s.psychosis_used map.d
scoreboard players operation psychic.dmg map.d /= const.1000 map.d
scoreboard players set psychic_hit map.d 1
scoreboard players operation @s stat.psychosis -= s.psychosis_used map.d
function map:player/stats/max_psychosis/calc_perc