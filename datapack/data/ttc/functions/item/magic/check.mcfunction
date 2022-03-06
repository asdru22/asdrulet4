execute store result score d.0 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.stats.mana_req
execute store result score d.1 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.level_req
execute if score @s ttc.level >= d.1 ttc.d if score @s ttc.stat.mana >= d.0 ttc.d run function ttc:item/magic/main

tag @e[type=#ttc:mobs,tag=ttc.entity.raycast.hit] remove ttc.entity.raycast.hit