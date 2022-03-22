execute store result score real.damage_recived ttc.d run data get entity @s Health -10
scoreboard players operation real.damage_recived ttc.d += @s ttc.health.base
execute if score magic.triggered ttc.d matches 1 run scoreboard players set real.damage_recived ttc.d 100

## store real damage dealt by the player in real.damage_recived
execute as @a[advancements={ttc:technical/player/on_hit=true}] run function ttc:player/stats/get/active/get
execute as @a[scores={ttc.use_coas=1..}] run function ttc:player/stats/get/active/get
execute at @s run function ttc:player/displays/damage_dealt/main

## remove health given by psychic damage
execute if score psychic_hit ttc.d matches 1 run function ttc:entity/mob/psychic_hit

## remove hp based on damage dealt by the player
scoreboard players operation @s ttc.stat.health -= s.damage ttc.d
function ttc:entity/mob/update_hp_display
execute if score @s ttc.stat.health matches ..0 run function ttc:entity/mob/on_death
## prevent death
effect give @s[type=!#ttc:undead] instant_health 1 10 true
effect give @s[type=#ttc:undead] instant_damage 1 10 true
## other "when_hit" events

execute if data storage ttc:data root.temp.equipment.mainhand.tag.base{id:"snow_staff"} run effect give @s slowness 2 1 false