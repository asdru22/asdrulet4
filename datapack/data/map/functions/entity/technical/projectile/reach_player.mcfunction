kill @e[tag=map.entity.projectile,limit=1,sort=nearest,distance=..0.1]
execute if entity @s[tag=map.ability.frostspark_blade] run function map:item/custom/melee/frostspark_blade/reset_model