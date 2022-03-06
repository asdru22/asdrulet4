execute unless data storage ttc:data root.temp.equipment.mainhand.tag.base.Durability.current run function ttc:item/custom/durability/lore 
data remove storage ttc:data root.temp.equipment.mainhand.tag.display.Lore[-1]
execute store result score dur ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.Durability.current
scoreboard players remove dur ttc.d 1
execute store result storage ttc:data root.temp.equipment.mainhand.tag.base.Durability.current int 1 run scoreboard players get dur ttc.d
#item modify entity @s weapon.mainhand ttc:display_durability
execute if score dur ttc.d matches 1.. run item modify entity @s weapon.mainhand ttc:display_durability/mainhand
execute if score dur ttc.d matches ..0 run function ttc:item/custom/durability/destroy 