execute store result score d.0 ttc.d run data get entity @s Owner[0]
tag @s add ttc.entity.temp.me
execute as @a run function ttc:player/events/on_used_item/ranged_weapon/get_owner
tag @s add ttc.entity.projectile.arrow.found_owner
tag @s remove ttc.entity.temp.me
execute if score t.lvl ttc.d < lvl.mainhand ttc.d run function ttc:player/events/on_used_item/ranged_weapon/no_lvl_req