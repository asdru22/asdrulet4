summon item ~ ~1.8 ~ {Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["map.entity.technical.display_dmg"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
execute if score .crit map.d matches 0 run data merge block 0 0 0 {Text1:'{"translate":"display.map.damage_dealt","with":[{"translate":"space.-max"},{"score":{"name":"s.damage","objective":"map.d"},"font":"map:numbers"},{"nbt":"root.temp.attack.type.display","storage":"mdata","color":"#FFF700","interpret":true},{"translate":"space.-max"}]}'}
execute if score .crit map.d matches 1 run data merge block 0 0 0 {Text1:'{"translate":"display.map.damage_dealt","with":[{"translate":"space.-max"},{"score":{"name":"s.damage","objective":"map.d"},"font":"map:numbers"},{"nbt":"root.temp.attack.type.display","storage":"mdata","color":"#FF0000","interpret":true},{"translate":"space.-max"}]}'}
execute as @e[type=item,tag=map.entity.technical.display_dmg,tag=!map.entity.technical.display_dmg.setup] run function map:player/displays/damage_dealt/item
execute if score lifesteal.val map.d matches 1.. run function map:player/displays/lifesteal/main