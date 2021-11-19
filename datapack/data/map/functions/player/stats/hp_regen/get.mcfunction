scoreboard players set s.hp_regen map.d 5
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.hp_regen
scoreboard players operation s.hp_regen map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.hp_regen
scoreboard players operation s.hp_regen map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.hp_regen
scoreboard players operation s.hp_regen map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.hp_regen
scoreboard players operation s.hp_regen map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.hp_regen
scoreboard players operation s.hp_regen map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.hp_regen
scoreboard players operation s.hp_regen map.d += d.0 map.d

scoreboard players operation regen_val map.d = s.hp_regen map.d
scoreboard players operation regen_val map.d *= @s max_health
scoreboard players operation regen_val map.d /= const.100 map.d
execute if score regen_val map_d matches 0 run scoreboard players set regen_val map_d 1

scoreboard players operation @s stat.health += regen_val map.d
execute if score @s stat.health >= @s max_health run scoreboard players operation @s stat.health = @s max_health