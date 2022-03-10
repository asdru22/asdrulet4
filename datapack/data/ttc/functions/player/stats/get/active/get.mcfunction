tellraw @s[tag=ttc.dmg_out] ["\n| Damage recived by target: ",{"score":{"name": "real.damage_recived","objective": "ttc.d"}}]


execute if entity @s[advancements={ttc:technical/player/on_hit={melee_hit=true}}] run data modify storage ttc:data root.temp.attack.type set value {type:"melee",display:'{"text":"\\u0036","font":"ttc:main"}'}
execute if entity @s[advancements={ttc:technical/player/on_hit={ranged_hit=true}}] run data modify storage ttc:data root.temp.attack.type set value {type:"ranged",display:'{"text":"\\u0037","font":"ttc:main"}'}
execute if entity @s[advancements={ttc:technical/player/on_hit={ranged_exp_hit=true}}] run data modify storage ttc:data root.temp.attack.type set value {type:"ranged",display:'{"text":"\\u0037","font":"ttc:main"}'}
execute if entity @s[advancements={ttc:technical/player/on_hit={magic_hit=true}}] run data modify storage ttc:data root.temp.attack.type set value {type:"magic",display:'{"text":"\\u0038","font":"ttc:main"}'}
execute if entity @s[advancements={ttc:technical/player/on_hit={magic_hit=true}}] run scoreboard players set real.damage_recived ttc.d 100
function ttc:player/stats/get/get_items
function ttc:player/stats/damage/get
function ttc:player/stats/crit_chance/get
function ttc:player/stats/psychosis_used/get
function ttc:player/stats/lifesteal/get
tellraw @s[tag=ttc.dmg_out] ["| Overall damage: ",{"score":{"name": "s.damage","objective": "ttc.d"}}]

advancement revoke @s only ttc:technical/player/on_hit