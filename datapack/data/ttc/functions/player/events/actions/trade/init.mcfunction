scoreboard players set $trade ttc.id 0
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit0=true}}] run scoreboard players add $trade ttc.id 1
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit1=true}}] run scoreboard players add $trade ttc.id 2
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit2=true}}] run scoreboard players add $trade ttc.id 4
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit3=true}}] run scoreboard players add $trade ttc.id 8
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit4=true}}] run scoreboard players add $trade ttc.id 16
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit5=true}}] run scoreboard players add $trade ttc.id 32
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit6=true}}] run scoreboard players add $trade ttc.id 64
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit7=true}}] run scoreboard players add $trade ttc.id 128
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit8=true}}] run scoreboard players add $trade ttc.id 256
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit9=true}}] run scoreboard players add $trade ttc.id 512
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit10=true}}] run scoreboard players add $trade ttc.id 1024
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit11=true}}] run scoreboard players add $trade ttc.id 2048
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit12=true}}] run scoreboard players add $trade ttc.id 4096
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit13=true}}] run scoreboard players add $trade ttc.id 8192
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit14=true}}] run scoreboard players add $trade ttc.id 16384
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit15=true}}] run scoreboard players add $trade ttc.id 32768
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit16=true}}] run scoreboard players add $trade ttc.id 65536
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit17=true}}] run scoreboard players add $trade ttc.id 131072
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit18=true}}] run scoreboard players add $trade ttc.id 262144
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit19=true}}] run scoreboard players add $trade ttc.id 524288
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit20=true}}] run scoreboard players add $trade ttc.id 1048576
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit21=true}}] run scoreboard players add $trade ttc.id 2097152
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit22=true}}] run scoreboard players add $trade ttc.id 4194304
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit23=true}}] run scoreboard players add $trade ttc.id 8388608
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit24=true}}] run scoreboard players add $trade ttc.id 16777216
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit25=true}}] run scoreboard players add $trade ttc.id 33554432
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit26=true}}] run scoreboard players add $trade ttc.id 67108864
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit27=true}}] run scoreboard players add $trade ttc.id 134217728
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit28=true}}] run scoreboard players add $trade ttc.id 268435456
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit29=true}}] run scoreboard players add $trade ttc.id 536870912
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit30=true}}] run scoreboard players add $trade ttc.id 1073741824
execute if entity @s[advancements={ttc:technical/player/interact_with_villager={bit31=true}}] run scoreboard players operation $trade ttc.id *= const.-1 ttc.d
scoreboard players operation d.2 ttc.d = @s ttc.id
data remove storage ttc:data root.core.player_trade
data modify storage ttc:data root.core.player_trade.Inventory set from entity @s Inventory
data modify storage ttc:data root.core.player_trade.SelectedItem set from entity @s SelectedItem
execute as @e[type=#ttc:mobs,tag=ttc.entity.mob.setup] if score @s ttc.mob_id = $trade ttc.id run function ttc:entity/mob/npc/trader/traded_with
advancement revoke @s only ttc:technical/player/interact_with_villager