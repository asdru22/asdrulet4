clear @s[gamemode=!creative] #arrows 1
execute anchored eyes run summon arrow ^ ^ ^.24 {pickup:0b,damage:10d,Tags:["ttc.shortbow_arrow"]}
execute rotated as @s positioned 0.0 0 0.0 run tp @e[type=marker,tag=ttc.trig,limit=1] ^ ^ ^1
data modify storage ttc:data root.temp.UUID set from entity @s UUID
execute store result score @s ttc.ability_cooldown run data get entity @s SelectedItem.tag.base.ability_cooldown
execute as @e[type=#arrows,tag=!ttc.entity.projectile.arrow.found_owner] run function ttc:item/shortbows/arrow_motion