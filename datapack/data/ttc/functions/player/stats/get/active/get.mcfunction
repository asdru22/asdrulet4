execute if entity @s[advancements={ttc:technical/player/on_hit={melee_hit=true}}] run data modify storage ttc:data root.temp.attack.type set value {type:"melee",display:'{"text":"🗡"}'}
execute if entity @s[advancements={ttc:technical/player/on_hit={ranged_hit=true}}] run data modify storage ttc:data root.temp.attack.type set value {type:"ranged",display:'{"text":"🏹"}'}
execute if entity @s[advancements={ttc:technical/player/on_hit={ranged_exp_hit=true}}] run data modify storage ttc:data root.temp.attack.type set value {type:"ranged",display:'{"text":"🏹"}'}
execute if entity @s[advancements={ttc:technical/player/on_hit={magic_hit=true}}] run data modify storage ttc:data root.temp.attack.type set value {type:"magic",display:'{"text":"⚗"}'}

function ttc:player/stats/get/get_items
function ttc:player/stats/damage/get
function ttc:player/stats/crit_chance/get
function ttc:player/stats/psychosis_used/get
function ttc:player/stats/lifesteal/get
#tellraw @s ["TOT DAMAGE OUTPUT: ",{"score":{"name": "s.damage","objective": "ttc.d"}}]

advancement revoke @s only ttc:technical/player/on_hit