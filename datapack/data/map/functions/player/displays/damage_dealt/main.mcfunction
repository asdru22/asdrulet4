summon item ~ ~1.8 ~ {CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["map.entity.technical.display_dmg"],Item:{id:"minecraft:polished_blackstone_button",Count:1b}}
execute if score .crit map.d matches 0 run data merge block 0 0 0 {Text1:'{"score":{"name":"s.damage","objective":"map.d"},"color":"#FF0505"}'}
execute if score .crit map.d matches 1 run data merge block 0 0 0 {Text1:'{"score":{"name":"s.damage","objective":"map.d"},"color":"#FFC300"}'}
execute as @e[type=item,tag=map.entity.technical.display_dmg,tag=!map.entity.technical.display_dmg.setup] run function map:player/displays/damage_dealt/item
execute if score s.lifesteal map.d matches 1.. run function map:player/displays/lifesteal/main