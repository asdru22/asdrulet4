scoreboard players operation lifesteal.val map.d = s.damage map.d
scoreboard players operation lifesteal.val map.d *= s.lifesteal map.d
scoreboard players operation lifesteal.val map.d /= const.100 map.d
scoreboard players operation @s stat.health += lifesteal.val map.d