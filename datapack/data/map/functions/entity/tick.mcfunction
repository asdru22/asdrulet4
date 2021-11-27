execute if entity @s[tag=map.entity.mob] run function map:entity/mob/tick
execute if entity @s[tag=map.particle] run function map:particle/motion_fix
execute if entity @s[tag=map.entity.block_breaking.animation] run function map:block/mine/animation/tick
execute if entity @s[tag=map.entity.projectile] run function map:entity/technical/projectile/tick
