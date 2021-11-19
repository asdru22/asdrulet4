tag @s add map.entity.mob.setup
function map:entity/mob/load_stats

# Assign a new id to the entity
execute store result score @s map.id run scoreboard players add map.id map.id 1
scoreboard players operation @s map.mob_id = @s map.id
# Get bit 0
scoreboard players operation @s map.id.0 = @s map.id
scoreboard players operation @s map.id.0 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 1
scoreboard players operation @s map.id.1 = @s map.id
scoreboard players operation @s map.id.1 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 2
scoreboard players operation @s map.id.2 = @s map.id
scoreboard players operation @s map.id.2 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 3
scoreboard players operation @s map.id.3 = @s map.id
scoreboard players operation @s map.id.3 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 4
scoreboard players operation @s map.id.4 = @s map.id
scoreboard players operation @s map.id.4 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 5
scoreboard players operation @s map.id.5 = @s map.id
scoreboard players operation @s map.id.5 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 6
scoreboard players operation @s map.id.6 = @s map.id
scoreboard players operation @s map.id.6 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 7
scoreboard players operation @s map.id.7 = @s map.id
scoreboard players operation @s map.id.7 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 8
scoreboard players operation @s map.id.8 = @s map.id
scoreboard players operation @s map.id.8 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 9
scoreboard players operation @s map.id.9 = @s map.id
scoreboard players operation @s map.id.9 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 10
scoreboard players operation @s map.id.10 = @s map.id
scoreboard players operation @s map.id.10 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 11
scoreboard players operation @s map.id.11 = @s map.id
scoreboard players operation @s map.id.11 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 12
scoreboard players operation @s map.id.12 = @s map.id
scoreboard players operation @s map.id.12 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 13
scoreboard players operation @s map.id.13 = @s map.id
scoreboard players operation @s map.id.13 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 14
scoreboard players operation @s map.id.14 = @s map.id
scoreboard players operation @s map.id.14 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 15
scoreboard players operation @s map.id.15 = @s map.id
scoreboard players operation @s map.id.15 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 16
scoreboard players operation @s map.id.16 = @s map.id
scoreboard players operation @s map.id.16 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 17
scoreboard players operation @s map.id.17 = @s map.id
scoreboard players operation @s map.id.17 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 18
scoreboard players operation @s map.id.18 = @s map.id
scoreboard players operation @s map.id.18 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 19
scoreboard players operation @s map.id.19 = @s map.id
scoreboard players operation @s map.id.19 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 20
scoreboard players operation @s map.id.20 = @s map.id
scoreboard players operation @s map.id.20 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 21
scoreboard players operation @s map.id.21 = @s map.id
scoreboard players operation @s map.id.21 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 22
scoreboard players operation @s map.id.22 = @s map.id
scoreboard players operation @s map.id.22 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 23
scoreboard players operation @s map.id.23 = @s map.id
scoreboard players operation @s map.id.23 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 24
scoreboard players operation @s map.id.24 = @s map.id
scoreboard players operation @s map.id.24 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 25
scoreboard players operation @s map.id.25 = @s map.id
scoreboard players operation @s map.id.25 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 26
scoreboard players operation @s map.id.26 = @s map.id
scoreboard players operation @s map.id.26 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 27
scoreboard players operation @s map.id.27 = @s map.id
scoreboard players operation @s map.id.27 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 28
scoreboard players operation @s map.id.28 = @s map.id
scoreboard players operation @s map.id.28 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 29
scoreboard players operation @s map.id.29 = @s map.id
scoreboard players operation @s map.id.29 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get bit 30
scoreboard players operation @s map.id.30 = @s map.id
scoreboard players operation @s map.id.30 %= const.2 map.d
scoreboard players operation @s map.id /= const.2 map.d
# Get sign bit
scoreboard players operation @s map.id.31 = @s map.id
scoreboard players operation @s map.id.31 %= const.2 map.d

scoreboard players operation @s map.id = $highest map.id

execute if score @s map.id.0 matches 0 run tag @s add map.entity.mob.matching.nbit0
execute if score @s map.id.0 matches 1 run tag @s add map.entity.mob.matching.bit0
execute if score @s map.id.1 matches 0 run tag @s add map.entity.mob.matching.nbit1
execute if score @s map.id.1 matches 1 run tag @s add map.entity.mob.matching.bit1
execute if score @s map.id.2 matches 0 run tag @s add map.entity.mob.matching.nbit2
execute if score @s map.id.2 matches 1 run tag @s add map.entity.mob.matching.bit2
execute if score @s map.id.3 matches 0 run tag @s add map.entity.mob.matching.nbit3
execute if score @s map.id.3 matches 1 run tag @s add map.entity.mob.matching.bit3
execute if score @s map.id.4 matches 0 run tag @s add map.entity.mob.matching.nbit4
execute if score @s map.id.4 matches 1 run tag @s add map.entity.mob.matching.bit4
execute if score @s map.id.5 matches 0 run tag @s add map.entity.mob.matching.nbit5
execute if score @s map.id.5 matches 1 run tag @s add map.entity.mob.matching.bit5
execute if score @s map.id.6 matches 0 run tag @s add map.entity.mob.matching.nbit6
execute if score @s map.id.6 matches 1 run tag @s add map.entity.mob.matching.bit6
execute if score @s map.id.7 matches 0 run tag @s add map.entity.mob.matching.nbit7
execute if score @s map.id.7 matches 1 run tag @s add map.entity.mob.matching.bit7
execute if score @s map.id.8 matches 0 run tag @s add map.entity.mob.matching.nbit8
execute if score @s map.id.8 matches 1 run tag @s add map.entity.mob.matching.bit8
execute if score @s map.id.9 matches 0 run tag @s add map.entity.mob.matching.nbit9
execute if score @s map.id.9 matches 1 run tag @s add map.entity.mob.matching.bit9
execute if score @s map.id.10 matches 0 run tag @s add map.entity.mob.matching.nbit10
execute if score @s map.id.10 matches 1 run tag @s add map.entity.mob.matching.bit10
execute if score @s map.id.11 matches 0 run tag @s add map.entity.mob.matching.nbit11
execute if score @s map.id.11 matches 1 run tag @s add map.entity.mob.matching.bit11
execute if score @s map.id.12 matches 0 run tag @s add map.entity.mob.matching.nbit12
execute if score @s map.id.12 matches 1 run tag @s add map.entity.mob.matching.bit12
execute if score @s map.id.13 matches 0 run tag @s add map.entity.mob.matching.nbit13
execute if score @s map.id.13 matches 1 run tag @s add map.entity.mob.matching.bit13
execute if score @s map.id.14 matches 0 run tag @s add map.entity.mob.matching.nbit14
execute if score @s map.id.14 matches 1 run tag @s add map.entity.mob.matching.bit14
execute if score @s map.id.15 matches 0 run tag @s add map.entity.mob.matching.nbit15
execute if score @s map.id.15 matches 1 run tag @s add map.entity.mob.matching.bit15
execute if score @s map.id.16 matches 0 run tag @s add map.entity.mob.matching.nbit16
execute if score @s map.id.16 matches 1 run tag @s add map.entity.mob.matching.bit16
execute if score @s map.id.17 matches 0 run tag @s add map.entity.mob.matching.nbit17
execute if score @s map.id.17 matches 1 run tag @s add map.entity.mob.matching.bit17
execute if score @s map.id.18 matches 0 run tag @s add map.entity.mob.matching.nbit18
execute if score @s map.id.18 matches 1 run tag @s add map.entity.mob.matching.bit18
execute if score @s map.id.19 matches 0 run tag @s add map.entity.mob.matching.nbit19
execute if score @s map.id.19 matches 1 run tag @s add map.entity.mob.matching.bit19
execute if score @s map.id.20 matches 0 run tag @s add map.entity.mob.matching.nbit20
execute if score @s map.id.20 matches 1 run tag @s add map.entity.mob.matching.bit20
execute if score @s map.id.21 matches 0 run tag @s add map.entity.mob.matching.nbit21
execute if score @s map.id.21 matches 1 run tag @s add map.entity.mob.matching.bit21
execute if score @s map.id.22 matches 0 run tag @s add map.entity.mob.matching.nbit22
execute if score @s map.id.22 matches 1 run tag @s add map.entity.mob.matching.bit22
execute if score @s map.id.23 matches 0 run tag @s add map.entity.mob.matching.nbit23
execute if score @s map.id.23 matches 1 run tag @s add map.entity.mob.matching.bit23
execute if score @s map.id.24 matches 0 run tag @s add map.entity.mob.matching.nbit24
execute if score @s map.id.24 matches 1 run tag @s add map.entity.mob.matching.bit24
execute if score @s map.id.25 matches 0 run tag @s add map.entity.mob.matching.nbit25
execute if score @s map.id.25 matches 1 run tag @s add map.entity.mob.matching.bit25
execute if score @s map.id.26 matches 0 run tag @s add map.entity.mob.matching.nbit26
execute if score @s map.id.26 matches 1 run tag @s add map.entity.mob.matching.bit26
execute if score @s map.id.27 matches 0 run tag @s add map.entity.mob.matching.nbit27
execute if score @s map.id.27 matches 1 run tag @s add map.entity.mob.matching.bit27
execute if score @s map.id.28 matches 0 run tag @s add map.entity.mob.matching.nbit28
execute if score @s map.id.28 matches 1 run tag @s add map.entity.mob.matching.bit28
execute if score @s map.id.29 matches 0 run tag @s add map.entity.mob.matching.nbit29
execute if score @s map.id.29 matches 1 run tag @s add map.entity.mob.matching.bit29
execute if score @s map.id.30 matches 0 run tag @s add map.entity.mob.matching.nbit30
execute if score @s map.id.30 matches 1 run tag @s add map.entity.mob.matching.bit30
execute if score @s map.id.31 matches 0 run tag @s add map.entity.mob.matching.nbit31
execute if score @s map.id.31 matches 1 run tag @s add map.entity.mob.matching.bit31