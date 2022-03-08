execute as @e[type=#ttc:mobs,tag=ttc.entity.mob.setup] if score @s ttc.mob_id = $hit ttc.id run function ttc:entity/mob/on_hit
execute if entity @s[advancements={ttc:technical/player/when_hit={blocked_by_shield=true}}] run function ttc:player/stats/defense/dmg_reduction
execute if entity @s[advancements={ttc:technical/player/when_hit={blocked_by_shield=false}}] run function ttc:player/events/actions/when_hit/dur
function ttc:player/stats/defense/calc