execute store result score d.0 ttc.d run data get entity @s ArmorItems[3].tag.base.mining_speed
scoreboard players operation @s block.c_timer += d.0 ttc.d
scoreboard players set block.breaking_percentage ttc.d 100
scoreboard players operation block.breaking_percentage ttc.d *= @s block.c_timer
scoreboard players operation block.breaking_percentage ttc.d /= @s block.m_timer
item modify entity @s armor.head ttc:block_progress_display
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
execute if score @s block.c_timer >= @s block.m_timer run function ttc:block/mine/break