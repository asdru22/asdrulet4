execute if entity @s[tag=ttc.entity.mob] run function ttc:entity/mob/tick
execute if entity @s[tag=ttc.vsfix] run function ttc:particle/motion_fix
execute if entity @s[tag=ttc.entity.block_breaking.animation] run function ttc:block/mine/animation/tick
execute if entity @s[tag=ttc.entity.projectile] run function ttc:entity/technical/projectile/tick
