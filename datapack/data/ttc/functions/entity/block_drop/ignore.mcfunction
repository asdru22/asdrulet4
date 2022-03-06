kill @e[type=experience_orb,distance=..1]
execute if data storage ttc:data root.temp.block_broken{id:"minecraft:deepslate_diamond_ore"} run setblock ~ ~ ~ deepslate_diamond_ore
kill @s