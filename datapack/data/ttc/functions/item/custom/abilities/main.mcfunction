scoreboard players add @s ttc.timer 20
execute if entity @s[tag=ttc.ability.frostspark_blade,scores={ttc.timer=120..}] run function ttc:item/custom/melee/frostspark_blade/reset_model