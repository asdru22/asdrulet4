kill @e[type=experience_orb,distance=..1]
setblock ~ ~ ~ barrier
data modify storage mdata root.temp.block_broken set from entity @s Item.tag.base.block_drop
execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Tags:["map.block.broken.marker","map.entity"],Marker:1b,Invulnerable:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=map.block.broken.marker,tag=!map.block.broken.marker.setup] run function map:entity/block_drop/set
kill @s