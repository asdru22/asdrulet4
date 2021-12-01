execute store result score d.0 map.d run data get entity @s Owner[0]
tag @s add map.entity.temp.me
execute as @a run function map:player/events/on_used_item/ranged_weapon/get_owner
tag @s add map.entity.projectile.arrow.found_owner
tag @s remove map.entity.temp.me
execute if score t.lvl map.d < lvl.mainhand map.d run function map:player/events/on_used_item/ranged_weapon/no_lvl_req
