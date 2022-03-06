tag @s add ttc.me
execute if data storage ttc:data root.temp.equipment.mainhand.tag.base.Durability run function ttc:item/custom/durability/init
function ttc:player/stats/get/get_items
function ttc:player/stats/arrow_speed/get
scoreboard players operation t.lvl ttc.d = @s ttc.level
execute as @e[type=#ttc:projectiles,tag=!ttc.entity.projectile.arrow.found_owner] run function ttc:player/events/on_used_item/ranged_weapon/as_arrow

## custom crossbow items
execute if entity @s[scores={ttc.use_crossbow=1..},predicate=ttc:item/crossbow_melee] run function ttc:item/crossbow/replace
## reset scores
scoreboard players reset @s ttc.use_bow
scoreboard players reset @s ttc.use_crossbow
scoreboard players reset @s ttc.use_trident
tag @s remove ttc.me