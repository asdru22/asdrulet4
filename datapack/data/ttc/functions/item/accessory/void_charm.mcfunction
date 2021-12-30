scoreboard players set void_charm ttc.d 100
scoreboard players operation void_charm ttc.d -= @s ttc.perc_psychosis
scoreboard players operation void_charm ttc.d *= const.100 ttc.d

scoreboard players operation s.psychosis_used ttc.d += void_charm ttc.d

say void charm