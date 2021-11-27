effect give @s[type=#map:undead] instant_health 1 30 true
effect give @s[type=!#map:undead] instant_damage 1 30 true


## remove hp based on damage dealt by the player
scoreboard players operation @s stat.health -= s.damage map.d
function map:entity/mob/update_hp_display
execute if score @s stat.health matches ..0 run function map:entity/mob/on_death

summon item ~ ~1.8 ~ {CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["map.entity.technical.display_dmg"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
data merge block 0 0 0 {Text1:'{"translate":"display.map.damage_dealt","with":[{"score":{"name":"s.damage","objective":"map.d"},"font":"map:numbers"},{"text":"🏹","color":"#FFF700"}]}'}
execute as @e[type=item,tag=map.entity.technical.display_dmg,tag=!map.entity.technical.display_dmg.setup] run function map:player/displays/damage_dealt/item
execute if score lifesteal.val map.d matches 1.. run function map:player/displays/lifesteal/main