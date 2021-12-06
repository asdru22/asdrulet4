execute unless score lifesteal.val map.d matches 1.. run summon item ~ ~2.1 ~ {Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["map.entity.technical.display_dmg.psychic"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}

###
execute if score lifesteal.val map.d matches 1.. run summon item ~ ~2.4 ~ {Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["map.entity.technical.display_dmg.psychic"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
###
data merge block 0 0 0 {Text1:'{"translate":"display.map.damage_dealt","with":[{"translate":"space.-max"},{"score":{"name":"psychic.dmg","objective":"map.d"},"font":"map:numbers"},{"text":"❁","color":"light_purple"},{"translate":"space.-max"}]}'}

execute as @e[type=item,tag=map.entity.technical.display_dmg.psychic,tag=!map.entity.technical.display_dmg.psychic.setup] at @s run function map:player/displays/damage_dealt/psychic_setup