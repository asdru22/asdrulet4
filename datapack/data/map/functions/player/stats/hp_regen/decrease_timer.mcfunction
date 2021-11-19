scoreboard players remove @s[scores={regen.delay=1..}] regen.delay 1
execute if score @s regen.delay matches 0 if score @s stat.health < @s max_health run function map:player/stats/hp_regen/get