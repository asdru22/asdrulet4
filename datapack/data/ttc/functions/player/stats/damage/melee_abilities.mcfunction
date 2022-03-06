execute if data storage ttc:data root.temp.equipment.mainhand.tag.base.Durability run function ttc:item/custom/durability/init
execute unless data storage ttc:data root.temp.equipment.mainhand.tag.base{type:"melee"} run scoreboard players set d.0 ttc.d 0

execute if data storage ttc:data root.temp.equipment.mainhand.tag{CustomModelData:4,base:{id:"frostspark_blade"}} if predicate ttc:player/sneaking if score @s ttc.stat.mana matches 50.. run function ttc:item/custom/melee/frostspark_blade/main