execute if data storage ttc:data root.temp.equipment.offhand.tag.base.Durability run function ttc:item/custom/durability/offhand/init
execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.stats.damage_reduction
execute if data storage ttc:data root.temp.equipment.mainhand.tag.base{type:"shield"} store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.stats.damage_reduction
execute if data storage ttc:data root.temp.equipment.offhand.tag.base{type:"shield"} store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.offhand.tag.base.stats.damage_reduction

scoreboard players set d.1 ttc.d 100
scoreboard players operation d.1 ttc.d -= d.0 ttc.d

execute if entity @s[scores={ttc.using_item=2..10}] run function ttc:item/accessory/shield/parry
scoreboard players operation dmg.recived ttc.d *= d.1 ttc.d
scoreboard players operation dmg.recived ttc.d /= const.100 ttc.d