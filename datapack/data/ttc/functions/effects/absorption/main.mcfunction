
execute if score true_dmg_recived ttc.d >= @s ttc.effect.absorption run function ttc:effects/absorption/reset_abs
execute if score true_dmg_recived ttc.d < @s ttc.effect.absorption run function ttc:effects/absorption/reset_dmg