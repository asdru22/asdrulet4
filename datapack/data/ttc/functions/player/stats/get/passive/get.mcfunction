function ttc:player/stats/get/get_items
function ttc:player/stats/dodge_chance/get

execute if entity @s[advancements={ttc:technical/player/when_hit={fire_damage=true}}] run function ttc:player/events/on_fire/main