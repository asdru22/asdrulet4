scoreboard players operation @s map.id = d.3 map.d
execute if data storage mdata root.temp.block_broken{id:"minecraft:deepslate_diamond_ore"} run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:2}}]}
execute rotated ~ 0 facing entity @p[scores={use_nether_pick=1..}] eyes positioned ^ ^ ^1.75 run function map:entity/block_drop/summon_animation
tag @s add map.block.broken.marker.setup