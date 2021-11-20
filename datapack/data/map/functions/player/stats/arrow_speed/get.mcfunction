scoreboard players set s.arrow_speed map.d 10
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.arrow_speed 
scoreboard players operation s.arrow_speed map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.arrow_speed 
scoreboard players operation s.arrow_speed map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.arrow_speed 
scoreboard players operation s.arrow_speed map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.arrow_speed 
scoreboard players operation s.arrow_speed map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.arrow_speed 
scoreboard players operation s.arrow_speed map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.arrow_speed 
scoreboard players operation s.arrow_speed map.d += d.0 map.d