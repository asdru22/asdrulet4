scoreboard players set d.1 ttc.d 290
tag @s remove ttc.entity.block_breaking.animation.rise
tag @s add ttc.entity.block_breaking.animation.descent
execute at @s run playsound minecraft:block.stone.break block @a[distance=..16] 