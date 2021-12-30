execute store result score d.0 ttc.d run data get storage ttc:mdata root.temp.equipment.offhand.tag.base.stats.damage_reduction
execute if data storage ttc:mdata root.temp.equipment.mainhand.tag.base{type:"shield"} store result score d.0 ttc.d run data get storage ttc:mdata root.temp.equipment.mainhand.tag.base.stats.damage_reduction
scoreboard players set d.1 ttc.d 100
scoreboard players operation d.1 ttc.d -= d.0 ttc.d

scoreboard players operation dmg.recived ttc.d *= d.1 ttc.d
scoreboard players operation dmg.recived ttc.d /= const.100 ttc.d