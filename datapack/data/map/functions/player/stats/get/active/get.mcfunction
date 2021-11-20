execute if entity @s[advancements={map:technical/player/on_hit={melee_hit=true}}] run data modify storage mdata root.temp.attack.type set value {type:"melee",display:'{"text":"🗡"}'}
execute if entity @s[advancements={map:technical/player/on_hit={ranged_hit=true}}] run data modify storage mdata root.temp.attack.type set value {type:"ranged",display:'{"text":"🏹"}'}
execute if entity @s[advancements={map:technical/player/on_hit={ranged_exp_hit=true}}] run data modify storage mdata root.temp.attack.type set value {type:"ranged",display:'{"text":"🏹"}'}

function map:player/stats/get/get_items

function map:player/stats/damage/get
function map:player/stats/crit_chance/get

function map:player/stats/lifesteal/get
#tellraw @s ["TOT DAMAGE OUTPUT: ",{"score":{"name": "s.damage","objective": "map.d"}}]