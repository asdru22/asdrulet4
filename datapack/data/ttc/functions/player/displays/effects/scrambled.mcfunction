execute positioned ~ ~.8 ~ run summon item ^-.45 ^ ^0.6 {Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["ttc.entity.technical.display_dmg"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
data merge block 0 0 0 {Text1:'{"translate":"display.ttc.damage_recived","with":[{"translate":"space.-max"},{"text":"-","font":"ttc:numbers"},{"score":{"name":"d.1","objective":"ttc.d"},"font":"ttc:numbers"},{"text":"❤","color":"dark_purple"},{"translate":"space.-max"}]}'}
execute as @e[type=item,tag=ttc.entity.technical.display_dmg,tag=!ttc.entity.technical.display_dmg.setup] run function ttc:player/displays/damage_dealt/item

effect give @s instant_damage 1 30 true
