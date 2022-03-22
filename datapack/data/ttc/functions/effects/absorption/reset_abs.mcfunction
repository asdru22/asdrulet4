scoreboard players operation true_dmg_recived ttc.d -= @s ttc.effect.absorption
scoreboard players set @s ttc.effect.absorption 0
execute positioned ~ ~.23 ~ run function ttc:player/displays/damage_dealt/absorption