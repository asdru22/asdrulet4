scoreboard players remove d.1 map.d 1
particle end_rod
execute as @e[type=#map:mobs,tag=map.entity.mob,dx=0,tag=!map.entity.raycast.hit,limit=1,sort=nearest] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function map:item/magic/hit
execute if score d.1 map.d matches 1.. if score .hit map.d matches 1 positioned ^ ^ ^.33 if block ~ ~ ~ #map:passable run function map:item/magic/item/test/cast