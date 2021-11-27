scoreboard players add @s timer 20
execute if entity @s[tag=map.ability.frostspark_blade,scores={timer=120..}] run function map:item/custom/melee/frostspark_blade/reset_model