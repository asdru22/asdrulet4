execute store result score d.1 ttc.d run scoreboard players operation true_dmg_recived ttc.d = dmg.recived ttc.d
scoreboard players operation true_dmg_recived ttc.d *= true_dmg_recived ttc.d
scoreboard players operation d.1 ttc.d += @s stat.defense
scoreboard players operation true_dmg_recived ttc.d /= d.1 ttc.d
scoreboard players operation @s stat.health -= true_dmg_recived ttc.d
function ttc:player/displays/player_health/remove_health
execute if score @s stat.health matches ..0 run function ttc:player/events/actions/on_death/main
scoreboard players set @s regen.delay 10