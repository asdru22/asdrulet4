data modify storage ttc:data root.temp.equipment.mainhand set from entity @s SelectedItem
execute if data storage ttc:data root.temp.equipment.mainhand.tag.base.Durability run function ttc:item/custom/durability/init
execute if data storage ttc:data root.temp.equipment.mainhand.tag.base{type:"magic"} run function ttc:item/magic/check
execute if data storage ttc:data root.temp.equipment.mainhand.tag.base{type:"ranged"} run function ttc:item/shortbows/check