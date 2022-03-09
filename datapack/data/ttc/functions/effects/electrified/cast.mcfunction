scoreboard players remove dist ttc.d 1
execute positioned ~ ~-0.5 ~ run function ttc:particle/spawn/electricity
execute as @e[type=#ttc:mobs,tag=!ttc.ignore,tag=ttc.entity.mob,dx=0,limit=1,sort=nearest,nbt={HurtTime:0s,Invulnerable:0b}] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function ttc:effects/electrified/hit


execute if score dist ttc.d matches 1.. positioned ^ ^ ^.5 if block ~ ~ ~ #ttc:passable run function ttc:effects/electrified/cast