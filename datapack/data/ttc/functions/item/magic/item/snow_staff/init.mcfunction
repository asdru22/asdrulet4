execute anchored eyes positioned ^ ^ ^.3 run summon potion ~ ~ ~ {Silent:1b,Tags:["ttc.entity","ttc.potion","ttc.vsfix"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomPotionColor:16777215,CustomPotionEffects:[{Id:6b,Amplifier:0b,Duration:10,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:10,ShowParticles:0b}]}}}
execute rotated as @s positioned 0.0 0 0.0 run tp @e[type=marker,tag=ttc.trig,limit=1] ^ ^ ^0.5
data modify storage ttc:data root.temp.UUID set from entity @s UUID
execute as @e[type=potion,tag=ttc.potion,tag=!ttc.setup] run function ttc:item/magic/item/snow_staff/setup
playsound entity.snowball.throw player @a[distance=..10] ~ ~ ~ 50 0.5