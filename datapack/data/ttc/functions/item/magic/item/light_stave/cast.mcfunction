scoreboard players remove d.1 ttc.d 1
particle end_rod
execute as @e[type=#ttc:mobs,tag=ttc.entity.mob,dx=0,tag=!ttc.entity.raycast.hit,limit=1,sort=nearest] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function ttc:item/magic/hit
execute if score d.1 ttc.d matches 1.. if score .hit ttc.d matches 1 positioned ^ ^ ^.33 if block ~ ~ ~ #ttc:passable run function ttc:item/magic/item/light_stave/cast