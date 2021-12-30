## copy UUID
execute store result score d.1 ttc.d run data get entity @s UUID[0]
## copy id
scoreboard players operation d.2 ttc.d = @s ttc.id
## check uuids
execute if score d.1 ttc.d = d.0 ttc.d as @e[type=#ttc:projectiles,tag=ttc.entity.temp.me,tag=!ttc.entity.projectile.arrow.found_owner] run function ttc:player/events/on_used_item/ranged_weapon/found_owner