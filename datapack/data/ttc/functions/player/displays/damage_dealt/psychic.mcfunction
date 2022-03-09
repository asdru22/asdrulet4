execute unless score lifesteal.val ttc.d matches 1.. run summon item ~ ~2.1 ~ {Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["ttc.entity.technical.display_dmg.psychic"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}

###
execute if score lifesteal.val ttc.d matches 1.. run summon item ~ ~2.4 ~ {Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["ttc.entity.technical.display_dmg.psychic"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
###
data merge block 0 0 0 {Text1:'{"translate":"display.ttc.damage_dealt","with":[{"translate":"space.-max"},{"score":{"name":"psychic.dmg","objective":"ttc.d"}},{"text":"\\u003b","font":"ttc:main"},{"translate":"space.-max"}]}'}

execute as @e[type=item,tag=ttc.entity.technical.display_dmg.psychic,tag=!ttc.entity.technical.display_dmg.psychic.setup] at @s run function ttc:player/displays/damage_dealt/psychic_setup