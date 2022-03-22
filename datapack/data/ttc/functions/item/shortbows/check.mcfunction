execute store result score d.0 ttc.d run clear @s #arrows 0
execute store result score d.1 ttc.d run data get storage ttc:data root.temp.equipment.mainhand.tag.base.level_req
execute if score @s[scores={ttc.ability_cooldown=0}] ttc.level >= d.1 ttc.d if score @s ttc.stat.mana >= d.0 ttc.d run function ttc:item/shortbows/main