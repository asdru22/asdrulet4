execute store result score d.0 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.stats.mana_req
execute store result score d.1 map.d run data get storage mdata root.temp.equipment.mainhand.tag.base.level_req
execute if score @s map.level >= d.1 map.d if score @s stat.mana >= d.0 map.d run function map:item/magic/main

tag @e[type=#map:mobs,tag=map.entity.raycast.hit] remove map.entity.raycast.hit