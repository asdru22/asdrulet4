summon minecraft:marker ~ ~ ~ {Tags:["ttc.rgd_start","ttc.rgd_g2"]}
setblock ~ ~ ~ minecraft:diamond_block
setblock ~1 ~ ~ minecraft:iron_block
setblock ~-1 ~ ~ minecraft:iron_block
setblock ~ ~ ~1 minecraft:iron_block
setblock ~ ~ ~-1 minecraft:iron_block
# branch off in all 4 directions
function ttc:region/dungeon/gen/build_e
function ttc:region/dungeon/gen/build_n
function ttc:region/dungeon/gen/build_s
function ttc:region/dungeon/gen/build_w