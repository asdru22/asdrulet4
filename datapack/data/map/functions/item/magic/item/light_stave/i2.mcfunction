tag @s add map.entity.raycast.hit
scoreboard players set .aux map.d 1
scoreboard players set d.1 map.d 60
scoreboard players set .hit map.d 1
execute as @a[scores={use_coas=1..}] at @s positioned ^1 ^ ^ rotated ~-65 0 run function map:item/magic/item/light_stave/aux_cast
tag @s add map.entity.raycast.hit
scoreboard players set d.1 map.d 60
scoreboard players set .hit map.d 1
execute as @a[scores={use_coas=1..}] at @s positioned ^-1 ^ ^ rotated ~65 0 run function map:item/magic/item/light_stave/aux_cast