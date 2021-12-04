scoreboard players operation d.1 map.d = @s max_health
scoreboard players operation d.1 map.d /= const.50 map.d
execute if score d.1 map.d matches 0 run scoreboard players set d.1 map.d 1
scoreboard players operation @s stat.health -= d.1 map.d
function map:player/displays/effects/scrambled
execute if score @s stat.health matches ..0 run function map:player/events/actions/on_death/main
scoreboard players set @s regen.delay 10
function map:particle/spawn/scrambled