scoreboard players set s.mana_regen map.d 2
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.mana_regen
scoreboard players operation s.mana_regen map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.mana_regen
scoreboard players operation s.mana_regen map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.mana_regen
scoreboard players operation s.mana_regen map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.mana_regen
scoreboard players operation s.mana_regen map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.mana_regen
scoreboard players operation s.mana_regen map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.mana_regen
scoreboard players operation s.mana_regen map.d += d.0 map.d

scoreboard players operation regen_val map.d = s.mana_regen map.d
scoreboard players operation regen_val map.d *= @s max_mana
scoreboard players operation regen_val map.d /= const.100 map.d
execute if score regen_val map_d matches ..0 run scoreboard players set regen_val map_d 0

scoreboard players operation @s stat.mana += regen_val map.d
execute if score @s stat.mana >= @s max_mana run scoreboard players operation @s stat.mana = @s max_mana