tp @s ~ ~ ~ facing entity @e[limit=1,tag=ttc.block.broken.marker,tag=!ttc.block.broken.marker.setup] eyes
execute store result score @s block.m_timer run data get storage mdata root.temp.block_broken.break_time
data modify entity @s HandItems[0] set from storage mdata root.temp.equipment.mainhand
scoreboard players set @s block.c_timer 0
execute store result entity @s ArmorItems[3].tag.base.mining_speed int 1 run scoreboard players get s.mining_speed ttc.d
data modify entity @s ArmorItems[3].tag.base.id set from storage mdata root.temp.block_broken
scoreboard players set block.breaking_percentage ttc.d 0
scoreboard players operation @s ttc.id = d.3 ttc.d
item modify entity @s armor.head ttc:block_progress_display
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
tag @s add ttc.entity.block_breaking.animation.setup