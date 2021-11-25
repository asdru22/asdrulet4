execute store result score d.0 map.d run data get entity @s SelectedItem.tag.base.stats.mana_req
execute if score @s stat.mana >= d.0 map.d run function map:item/magic/main

tag @e[type=#map:mobs,tag=map.entity.raycast.hit] remove map.entity.raycast.hit