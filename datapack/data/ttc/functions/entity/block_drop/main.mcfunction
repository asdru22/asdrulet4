kill @e[type=experience_orb,distance=..1]
setblock ~ ~ ~ barrier
execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Tags:["ttc.block.broken.marker","ttc.entity"],Marker:1b,Invulnerable:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=ttc.block.broken.marker,tag=!ttc.block.broken.marker.setup] run function ttc:entity/block_drop/set
kill @s