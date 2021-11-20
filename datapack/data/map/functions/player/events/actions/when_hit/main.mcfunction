execute as @e[type=#map:mobs,tag=map.entity.mob.setup] if score @s map.mob_id = $hit map.id run function map:entity/mob/on_hit
function map:player/stats/defense/calc