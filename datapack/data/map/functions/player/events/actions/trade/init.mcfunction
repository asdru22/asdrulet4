scoreboard players set $trade map.id 0
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit0=true}}] run scoreboard players add $trade map.id 1
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit1=true}}] run scoreboard players add $trade map.id 2
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit2=true}}] run scoreboard players add $trade map.id 4
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit3=true}}] run scoreboard players add $trade map.id 8
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit4=true}}] run scoreboard players add $trade map.id 16
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit5=true}}] run scoreboard players add $trade map.id 32
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit6=true}}] run scoreboard players add $trade map.id 64
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit7=true}}] run scoreboard players add $trade map.id 128
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit8=true}}] run scoreboard players add $trade map.id 256
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit9=true}}] run scoreboard players add $trade map.id 512
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit10=true}}] run scoreboard players add $trade map.id 1024
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit11=true}}] run scoreboard players add $trade map.id 2048
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit12=true}}] run scoreboard players add $trade map.id 4096
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit13=true}}] run scoreboard players add $trade map.id 8192
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit14=true}}] run scoreboard players add $trade map.id 16384
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit15=true}}] run scoreboard players add $trade map.id 32768
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit16=true}}] run scoreboard players add $trade map.id 65536
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit17=true}}] run scoreboard players add $trade map.id 131072
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit18=true}}] run scoreboard players add $trade map.id 262144
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit19=true}}] run scoreboard players add $trade map.id 524288
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit20=true}}] run scoreboard players add $trade map.id 1048576
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit21=true}}] run scoreboard players add $trade map.id 2097152
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit22=true}}] run scoreboard players add $trade map.id 4194304
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit23=true}}] run scoreboard players add $trade map.id 8388608
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit24=true}}] run scoreboard players add $trade map.id 16777216
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit25=true}}] run scoreboard players add $trade map.id 33554432
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit26=true}}] run scoreboard players add $trade map.id 67108864
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit27=true}}] run scoreboard players add $trade map.id 134217728
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit28=true}}] run scoreboard players add $trade map.id 268435456
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit29=true}}] run scoreboard players add $trade map.id 536870912
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit30=true}}] run scoreboard players add $trade map.id 1073741824
execute if entity @s[advancements={map:technical/player/interact_with_villager={bit31=true}}] run scoreboard players operation $trade map.id *= const.-1 map.d
scoreboard players operation d.2 map.d = @s map.id
data remove storage mdata root.core.player_trade
data modify storage mdata root.core.player_trade.Inventory set from entity @s Inventory
data modify storage mdata root.core.player_trade.SelectedItem set from entity @s SelectedItem
execute as @e[type=#map:mobs,tag=map.entity.mob.setup] if score @s map.mob_id = $trade map.id run function map:entity/mob/npc/trader/traded_with
advancement revoke @s only map:technical/player/interact_with_villager