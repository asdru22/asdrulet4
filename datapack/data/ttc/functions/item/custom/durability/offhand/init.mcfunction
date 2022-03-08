execute unless data storage ttc:data root.temp.equipment.offhand.tag.base.Durability.current run function ttc:item/custom/durability/lore 
data remove storage ttc:data root.temp.equipment.offhand.tag.display.Lore[-1]
execute store result score dur ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.Durability.current
scoreboard players remove dur ttc.d 1
execute store result storage ttc:data root.temp.equipment.offhand.tag.base.Durability.current int 1 run scoreboard players get dur ttc.d
execute if score dur ttc.d matches 1.. run item modify entity @s weapon.offhand ttc:display_durability/offhand
execute if score dur ttc.d matches ..0 run function ttc:item/custom/durability/destroy