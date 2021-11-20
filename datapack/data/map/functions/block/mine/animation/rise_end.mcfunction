scoreboard players set d.1 map.d 290
tag @s remove map.entity.block_breaking.animation.rise
tag @s add map.entity.block_breaking.animation.descent
execute at @s run playsound minecraft:block.stone.break block @a[distance=..16] 