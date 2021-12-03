execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.damage_reduction
execute if data storage mdata root.temp.equipment.mainhand.tag.base{type:"shield"} store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.damage_reduction
scoreboard players set d.1 map.d 100
scoreboard players operation d.1 map.d -= d.0 map.d

scoreboard players operation dmg.recived map.d *= d.1 map.d
scoreboard players operation dmg.recived map.d /= const.100 map.d