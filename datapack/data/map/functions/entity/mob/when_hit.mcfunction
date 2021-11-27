## prevent death
effect give @s[type=!#map:undead] instant_health 1 10 true
effect give @s[type=#map:undead] instant_damage 1 10 true
execute store result score real.damage_recived map.d run data get entity @s Health -10
scoreboard players operation real.damage_recived map.d += @s map.mob_health
execute if score magic.triggered map.d matches 1 run scoreboard players set real.damage_recived map.d 100
#tellraw @p {"score":{"name": "real.damage_recived","objective": "map.d"}}

## store real damage dealt by the player in real.damage_recived
execute as @a[advancements={map:technical/player/on_hit=true}] run function map:player/stats/get/active/get
execute as @a[scores={use_coas=1..}] run function map:player/stats/get/active/get
execute at @s run function map:player/displays/damage_dealt/main

## remove hp based on damage dealt by the player
scoreboard players operation @s stat.health -= s.damage map.d
function map:entity/mob/update_hp_display
execute if score @s stat.health matches ..0 run function map:entity/mob/on_death