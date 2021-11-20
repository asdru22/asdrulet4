scoreboard players operation s.max_mana map.d = @s mana.base
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.max_mana
scoreboard players operation s.max_mana map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.max_mana
scoreboard players operation s.max_mana map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.max_mana
scoreboard players operation s.max_mana map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.max_mana
scoreboard players operation s.max_mana map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.max_mana
scoreboard players operation s.max_mana map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.max_mana
scoreboard players operation s.max_mana map.d += d.0 map.d

scoreboard players operation @s max_mana = s.max_mana map.d
execute if score @s stat.mana > @s max_mana run scoreboard players operation @s stat.mana = @s max_mana 