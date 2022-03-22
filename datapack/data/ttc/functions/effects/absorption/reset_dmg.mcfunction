function ttc:player/displays/damage_dealt/absorption
scoreboard players operation @s ttc.effect.absorption -= true_dmg_recived ttc.d
scoreboard players reset true_dmg_recived ttc.d