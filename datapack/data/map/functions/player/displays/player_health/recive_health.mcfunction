execute positioned ~ ~.8 ~ run summon item ^-.45 ^ ^0.6 {Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["map.entity.technical.display_dmg"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
data merge block 0 0 0 {Text1:'{"translate":"display.map.heal_recived","with":[{"translate":"space.-max"},{"text":"+","font":"map:numbers"},{"score":{"name":"heal.val","objective":"map.d"},"font":"map:numbers"},{"text":"❤","color":"green"},{"translate":"space.-max"}]}'}
execute as @e[type=item,tag=map.entity.technical.display_dmg,tag=!map.entity.technical.display_dmg.setup] run function map:player/displays/damage_dealt/item