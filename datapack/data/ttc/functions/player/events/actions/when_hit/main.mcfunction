execute as @e[type=#ttc:mobs,tag=ttc.entity.mob.setup] if score @s ttc.mob_id = $hit ttc.id run function ttc:entity/mob/on_hit
execute if entity @s[advancements={ttc:technical/player/when_hit={blocked_by_shield=true}}] run function ttc:player/stats/defense/dmg_reduction

function ttc:player/stats/defense/calc