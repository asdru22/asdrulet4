execute store result score d.0 ttc.d run data get entity @s ArmorItems[3].tag.base.mining_speed
scoreboard players operation @s ttc.block_current_break_time += d.0 ttc.d
scoreboard players set block.breaking_percentage ttc.d 100
scoreboard players operation block.breaking_percentage ttc.d *= @s ttc.block_current_break_time
scoreboard players operation block.breaking_percentage ttc.d /= @s ttc.block_total_break_time
item modify entity @s armor.head ttc:block_progress_display
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
execute if score @s ttc.block_current_break_time >= @s ttc.block_total_break_time run function ttc:block/mine/break