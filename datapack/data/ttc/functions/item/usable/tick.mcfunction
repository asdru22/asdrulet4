execute if score @s ttc.using_item = @s ttc.prev_using_item run function ttc:item/usable/release
scoreboard players operation @s ttc.prev_using_item = @s ttc.using_item