summon item ~ ~ ~ {Tags:["map.entity","map.particle"],NoGravity:1b,Age:5950,PickupDelay:100,CustomName:'{"translate":"space.-16","with":[{"text":"\\u000c","font":"map:main","obfuscated":true}]}',Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}},CustomNameVisible:1b}
execute as @e[type=item,tag=map.particle,tag=!map.particle.setup] run function map:particle/setup
