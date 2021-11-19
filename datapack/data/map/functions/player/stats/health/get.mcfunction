scoreboard players operation s.health map.d = @s health.base
#get mainhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.health
scoreboard players operation s.health map.d += d.0 map.d
#get offhand item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.offhand.tag.base.stats.health
scoreboard players operation s.health map.d += d.0 map.d
#get head item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.head.tag.base.stats.health
scoreboard players operation s.health map.d += d.0 map.d
#get chest item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.chest.tag.base.stats.health
scoreboard players operation s.health map.d += d.0 map.d
#get legs item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.legs.tag.base.stats.health
scoreboard players operation s.health map.d += d.0 map.d
#get feet item
execute store result score d.0 map.d run data get storage mdata root.temp.equipment.feet.tag.base.stats.health
scoreboard players operation s.health map.d += d.0 map.d

scoreboard players operation @s max_health = s.health map.d
execute if score @s stat.health > @s max_health run scoreboard players operation @s stat.health = @s max_health 