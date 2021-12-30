scoreboard players remove d.0 ttc.d 1
execute if block ~ ~ ~ barrel if data block ~ ~ ~ Lock run function ttc:block/locked/found
execute if score d.0 ttc.d matches 1 positioned ^ ^ ^.5 run function ttc:block/locked/cast