summon item ~ ~1.8 ~ {Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["ttc.entity.technical.display_dmg"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
execute if score .crit ttc.d matches 0 run data merge block 0 0 0 {Text1:'{"translate":"display.ttc.damage_dealt","with":[{"translate":"space.-max"},{"score":{"name":"s.damage","objective":"ttc.d"},"font":"ttc:numbers"},{"nbt":"root.temp.attack.type.display","storage":"mdata","color":"#FFF700","interpret":true},{"translate":"space.-max"}]}'}
execute if score .crit ttc.d matches 1 run data merge block 0 0 0 {Text1:'{"translate":"display.ttc.damage_dealt","with":[{"translate":"space.-max"},{"score":{"name":"s.damage","objective":"ttc.d"},"font":"ttc:numbers"},{"nbt":"root.temp.attack.type.display","storage":"mdata","color":"#FF0000","interpret":true},{"translate":"space.-max"}]}'}
execute as @e[type=item,tag=ttc.entity.technical.display_dmg,tag=!ttc.entity.technical.display_dmg.setup] run function ttc:player/displays/damage_dealt/item
execute if score lifesteal.val ttc.d matches 1.. run function ttc:player/displays/lifesteal/main