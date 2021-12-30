execute unless data storage mdata root.temp.equipment.mainhand.tag.base{type:"melee"} run scoreboard players set d.0 ttc.d 0

execute if data storage mdata root.temp.equipment.mainhand.tag{CustomModelData:4,base:{id:"frostspark_blade"}} if predicate ttc:player/sneaking if score @s stat.mana matches 50.. run function ttc:item/custom/melee/frostspark_blade/main