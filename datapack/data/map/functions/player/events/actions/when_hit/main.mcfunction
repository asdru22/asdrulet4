execute as @e[type=#map:mobs,tag=map.entity.mob.setup] if score @s map.mob_id = $hit map.id run function map:entity/mob/on_hit
execute if entity @s[advancements={map:technical/player/when_hit={blocked_by_shield=true}}] run function map:player/stats/defense/dmg_reduction

function map:player/stats/defense/calc