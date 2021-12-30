scoreboard players remove d.1 ttc.d 1
particle wax_on
execute as @e[type=#ttc:mobs,tag=ttc.entity.mob,dx=0,tag=!ttc.entity.raycast.hit,limit=1,sort=nearest] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function ttc:item/magic/hit
execute if score d.1 ttc.d matches 1.. if score .hit ttc.d matches 1 if block ^ ^ ^.33 #ttc:passable positioned ^ ^ ^.33 run function ttc:item/magic/item/light_stave/aux_cast