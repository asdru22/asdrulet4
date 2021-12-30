effect give @s[type=#ttc:undead] instant_health 1 30 true
effect give @s[type=!#ttc:undead] instant_damage 1 30 true

## remove hp based on damage dealt by the player
scoreboard players operation @s ttc.stat.health -= s.damage ttc.d
function ttc:entity/mob/update_hp_display
execute if score @s ttc.stat.health matches ..0 run function ttc:entity/mob/on_death

summon item ~ ~1.8 ~ {CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["ttc.entity.technical.display_dmg"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
data merge block 0 0 0 {Text1:'{"translate":"display.ttc.damage_dealt","with":[{"score":{"name":"s.damage","objective":"ttc.d"}},{"text":"\\u0015","font":"ttc:main","color":"#FFF700"}]}'}
execute as @e[type=item,tag=ttc.entity.technical.display_dmg,tag=!ttc.entity.technical.display_dmg.setup] run function ttc:player/displays/damage_dealt/item
execute if score lifesteal.val ttc.d matches 1.. run function ttc:player/displays/lifesteal/main