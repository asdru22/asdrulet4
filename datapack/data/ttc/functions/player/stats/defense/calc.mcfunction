execute store result score d.1 ttc.d run scoreboard players operation true_dmg_recived ttc.d = dmg.recived ttc.d
scoreboard players operation true_dmg_recived ttc.d *= true_dmg_recived ttc.d
scoreboard players operation d.1 ttc.d += @s ttc.stat.defense
scoreboard players operation true_dmg_recived ttc.d /= d.1 ttc.d
execute if entity @s[scores={ttc.effect.absorption=1..}] run function ttc:effects/absorption/main
scoreboard players operation @s ttc.stat.health -= true_dmg_recived ttc.d
function ttc:player/displays/healthbar
execute if score true_dmg_recived ttc.d matches 1.. run function ttc:player/displays/player_health/remove_health
execute if score @s ttc.stat.health matches ..0 run function ttc:player/events/actions/on_death/main
scoreboard players set @s ttc.regen.delay 10