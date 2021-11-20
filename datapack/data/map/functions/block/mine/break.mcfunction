data modify storage mdata root.temp.block_broken set from entity @s ArmorItems[3].tag.base.id
scoreboard players operation d.0 map.d = @s map.id
execute as @a if score @s map.id = d.0 map.d run function map:block/mine/give_loot
execute as @e[type=armor_stand,tag=map.block.broken.marker] if score @s map.id = d.0 map.d at @s run function map:block/mine/reset_block

scoreboard players set block.breaking_percentage map.d 100
item modify entity @s armor.head map:block_progress_display
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name

kill @s