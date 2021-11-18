scoreboard players remove d.0 map.d 1
execute if block ~ ~ ~ barrel if data block ~ ~ ~ Lock run function map:block/locked/found
execute if score d.0 map.d matches 1 positioned ^ ^ ^.5 run function map:block/locked/cast