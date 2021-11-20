execute store result score d.0 map.d run data get entity @s ArmorItems[3].tag.base.mining_speed
scoreboard players operation @s block.c_timer += d.0 map.d
scoreboard players set block.breaking_percentage map.d 100
scoreboard players operation block.breaking_percentage map.d *= @s block.c_timer
scoreboard players operation block.breaking_percentage map.d /= @s block.m_timer
item modify entity @s armor.head map:block_progress_display
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
execute if score @s block.c_timer >= @s block.m_timer run function map:block/mine/break