execute unless data storage ttc:data root.temp.equipment.chest.tag.base.Durability.current run function ttc:item/custom/durability/chest/lore 
data remove storage ttc:data root.temp.equipment.chest.tag.display.Lore[-1]
execute store result score dur ttc.d run data get storage ttc:data root.temp.equipment.chest.tag.base.Durability.current
scoreboard players remove dur ttc.d 1
execute store result storage ttc:data root.temp.equipment.chest.tag.base.Durability.current int 1 run scoreboard players get dur ttc.d
execute if score dur ttc.d matches 1.. run item modify entity @s armor.chest ttc:display_durability/chest
execute if score dur ttc.d matches ..0 run function ttc:item/custom/durability/chest/destroy