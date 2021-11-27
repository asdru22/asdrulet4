tag @s add map.particle.setup
scoreboard players set @s damage.base 13
data modify entity @s Motion set from entity @e[type=marker,tag=map.entity.trig,limit=1] Pos
execute store result entity @s Motion[1] double 0.0005 run loot spawn ~ ~ ~ loot map:technical/rng/random_1_100
scoreboard players operation @s map.id = .id map.d
