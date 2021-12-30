execute store result score m.x ttc.d run data get entity @s Motion[0] 1000
execute store result score m.y ttc.d run data get entity @s Motion[1] 1000
execute store result score m.z ttc.d run data get entity @s Motion[2] 1000

scoreboard players operation m.x ttc.d += s.arrow_speed ttc.d
scoreboard players operation m.y ttc.d += s.arrow_speed ttc.d
scoreboard players operation m.z ttc.d += s.arrow_speed ttc.d

execute store result entity @s Motion[0] double 0.001 run scoreboard players get m.x ttc.d
execute store result entity @s Motion[1] double 0.001 run scoreboard players get m.y ttc.d
execute store result entity @s Motion[2] double 0.001 run scoreboard players get m.z ttc.d