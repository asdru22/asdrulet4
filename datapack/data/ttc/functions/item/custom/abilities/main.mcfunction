scoreboard players add @s timer 20
execute if entity @s[tag=ttc.ability.frostspark_blade,scores={timer=120..}] run function ttc:item/custom/melee/frostspark_blade/reset_model