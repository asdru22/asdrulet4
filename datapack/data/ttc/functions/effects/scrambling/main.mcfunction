scoreboard players operation d.1 ttc.d = @s max_health
scoreboard players operation d.1 ttc.d /= const.50 ttc.d
execute if score d.1 ttc.d matches 0 run scoreboard players set d.1 ttc.d 1
scoreboard players operation @s stat.health -= d.1 ttc.d
function ttc:player/displays/effects/scrambled
execute if score @s stat.health matches ..0 run function ttc:player/events/actions/on_death/main
scoreboard players set @s regen.delay 10
function ttc:particle/spawn/scrambled