scoreboard players operation lifesteal.val ttc.d = s.damage ttc.d
scoreboard players operation lifesteal.val ttc.d *= s.lifesteal ttc.d
scoreboard players operation lifesteal.val ttc.d /= const.100 ttc.d
scoreboard players operation @s ttc.stat.health += lifesteal.val ttc.d
scoreboard players operation heal.val ttc.d = lifesteal.val ttc.d
execute if score heal.val ttc.d matches 1.. run function ttc:player/displays/player_health/recive_health
execute if score @s ttc.stat.health > @s ttc.max_health run scoreboard players operation @s ttc.stat.health = @s ttc.max_health