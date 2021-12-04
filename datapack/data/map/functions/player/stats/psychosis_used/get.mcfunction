scoreboard players set s.psychosis_used map.d 0
scoreboard players set psychic_hit map.d 0

#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.mainhand map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.offhand map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.head map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.chest map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.legs map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.feet map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
#acc 1
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessory[0].tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.acc1 map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
#acc 2
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessory[1].tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.acc2 map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
#acc 3
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.Accessory[2].tag.base.stats.psychosis_used 
execute if score @s map.level >= lvl.acc3 map.d run scoreboard players operation s.psychosis_used map.d += d.0 map.d
scoreboard players operation s.psychosis_used map.d *= const.100 map.d

execute if score s.psychosis_used map.d matches 1.. if score @s stat.psychosis >= s.psychosis_used map.d run function map:player/stats/psychosis_used/apply
