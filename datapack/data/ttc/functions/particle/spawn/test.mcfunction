summon item ~ ~ ~ {Tags:["ttc.entity","ttc.particle"],NoGravity:1b,Age:5950,PickupDelay:100,CustomName:'{"translate":"space.-16","with":[{"text":"\\u000c","font":"ttc:main","obfuscated":true}]}',Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}},CustomNameVisible:1b}
execute as @e[type=item,tag=ttc.particle,tag=!ttc.particle.setup] run function ttc:particle/setup
