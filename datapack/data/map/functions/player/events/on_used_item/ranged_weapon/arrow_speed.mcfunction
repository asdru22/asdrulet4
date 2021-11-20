execute store result score m.x map.d run data get entity @s Motion[0] 1000
execute store result score m.y map.d run data get entity @s Motion[1] 1000
execute store result score m.z map.d run data get entity @s Motion[2] 1000

scoreboard players operation m.x map.d += s.arrow_speed map.d
scoreboard players operation m.y map.d += s.arrow_speed map.d
scoreboard players operation m.z map.d += s.arrow_speed map.d

execute store result entity @s Motion[0] double 0.001 run scoreboard players get m.x map.d
execute store result entity @s Motion[1] double 0.001 run scoreboard players get m.y map.d
execute store result entity @s Motion[2] double 0.001 run scoreboard players get m.z map.d