execute unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"melee"} run scoreboard players set d.0 map.d 0

execute if data storage mdata root.temp.equipment.mainhand.tag.base{id:"frostspark_blade"} if predicate map:player/sneaking if score @s stat.mana matches 50.. run function map:item/custom/melee/frostspark_blade/main