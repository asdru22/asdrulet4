summon item ~ ~2.1 ~ {CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["map.entity.technical.lifesteal_heal"],Item:{id:"minecraft:polished_blackstone_button",Count:1b}}
data merge block 0 0 0 {Text1:'{"translate":"display.map.damage_dealt","with":[{"score":{"name":"lifesteal.val","objective":"map.d"}},{"text":"✣","color":"dark_red"}]}'}
execute as @e[type=item,tag=map.entity.technical.lifesteal_heal,tag=!map.entity.technical.lifesteal_heal.setup] run function map:player/displays/lifesteal/item