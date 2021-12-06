scoreboard players set void_charm map.d 100
scoreboard players operation void_charm map.d -= @s perc_psychosis
scoreboard players operation void_charm map.d *= const.100 map.d

scoreboard players operation s.psychosis_used map.d += void_charm map.d

say void charm