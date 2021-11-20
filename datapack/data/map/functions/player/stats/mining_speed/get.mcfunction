scoreboard players operation s.mining_speed map.d = const.100 map.d
scoreboard players set s.mining_speed map.d 512
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.mining_speed
scoreboard players operation s.mining_speed map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.mining_speed
scoreboard players operation s.mining_speed map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.mining_speed
scoreboard players operation s.mining_speed map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.mining_speed
scoreboard players operation s.mining_speed map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.mining_speed
scoreboard players operation s.mining_speed map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.mining_speed
scoreboard players operation s.mining_speed map.d += d.0 map.d