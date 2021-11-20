## copy UUID
execute store result score d.1 map.d run data get entity @s UUID[0]
## copy id
scoreboard players operation d.2 map.d = @s map.id
## check uuids
execute if score d.1 map.d = d.0 map.d as @e[type=#map:projectiles,tag=map.entity.temp.me,tag=!map.entity.projectile.arrow.found_owner] run function map:player/events/on_used_item/ranged_weapon/found_owner