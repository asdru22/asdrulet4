scoreboard players operation lifesteal.val map.d = s.damage map.d
scoreboard players operation lifesteal.val map.d *= s.lifesteal map.d
scoreboard players operation lifesteal.val map.d /= const.100 map.d
scoreboard players operation @s stat.health += lifesteal.val map.d
scoreboard players operation heal.val map.d = lifesteal.val map.d
execute if score heal.val map.d matches 1.. run function map:player/displays/player_health/recive_health
execute if score @s stat.health > @s max_health run scoreboard players operation @s stat.health = @s max_health