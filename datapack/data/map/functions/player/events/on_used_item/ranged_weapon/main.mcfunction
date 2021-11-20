function map:player/stats/arrow_speed/get
execute as @e[type=#map:projectiles,tag=!map.entity.projectile.arrow.found_owner] run function map:player/events/on_used_item/ranged_weapon/as_arrow

## reset scores
scoreboard players reset @s use_bow
scoreboard players reset @s use_crossbow
scoreboard players reset @s use_trident
