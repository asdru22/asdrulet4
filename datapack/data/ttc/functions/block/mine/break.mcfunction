data modify storage ttc:mdata root.temp.block_broken set from entity @s ArmorItems[3].tag.base.id
scoreboard players operation d.0 ttc.d = @s ttc.id
execute as @a if score @s ttc.id = d.0 ttc.d at @s run function ttc:block/mine/give_loot
execute as @e[type=armor_stand,tag=ttc.block.broken.marker] if score @s ttc.id = d.0 ttc.d at @s run function ttc:block/mine/reset_block

scoreboard players set block.breaking_percentage ttc.d 100
item modify entity @s armor.head ttc:block_progress_display
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
execute at @s run playsound minecraft:block.amethyst_block.place block @a[distance=..16] ~ ~ ~ 10 0.6
kill @s