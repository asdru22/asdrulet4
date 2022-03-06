scoreboard players operation @s ttc.id = d.3 ttc.d
execute if data storage ttc:data root.temp.block_broken{id:"minecraft:deepslate_diamond_ore"} run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:2}}]}
execute facing entity @p[scores={ttc.use_nether_pick=1..}] eyes rotated ~ 0 positioned ^ ^ ^1.5 run function ttc:entity/block_drop/summon_animation
tag @s add ttc.block.broken.marker.setup