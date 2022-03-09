tag @s add ttc.particle.setup
scoreboard players set @s ttc.damage.base 13
data modify entity @s Motion set from entity @e[type=marker,tag=ttc.entity.trig,limit=1] Pos
execute store result entity @s Motion[1] double 0.0005 run loot spawn ~ ~ ~ loot ttc:technical/rng/random_1_100
scoreboard players operation @s ttc.id = .id ttc.d