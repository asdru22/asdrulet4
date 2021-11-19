scoreboard players reset s.lifesteal map.d
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.lifesteal
scoreboard players operation s.lifesteal map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.lifesteal
scoreboard players operation s.lifesteal map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.lifesteal
scoreboard players operation s.lifesteal map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.lifesteal
scoreboard players operation s.lifesteal map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.lifesteal
scoreboard players operation s.lifesteal map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.lifesteal
scoreboard players operation s.lifesteal map.d += d.0 map.d

execute if score s.lifesteal map.d matches 1.. run function map:player/stats/lifesteal/calc