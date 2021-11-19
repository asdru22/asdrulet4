execute store result score d.1 map.d run scoreboard players operation true_dmg_recived map.d = dmg.recived map.d
scoreboard players operation true_dmg_recived map.d *= true_dmg_recived map.d
scoreboard players operation d.1 map.d += @s stat.defense
scoreboard players operation true_dmg_recived map.d /= d.1 map.d

scoreboard players operation @s stat.health -= true_dmg_recived map.d
execute if score @s stat.health matches ..0 run function map:player/events/actions/on_death/main
scoreboard players set @s regen.delay 10