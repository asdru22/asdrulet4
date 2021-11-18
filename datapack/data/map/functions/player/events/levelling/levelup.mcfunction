scoreboard players add @s map.level 1
scoreboard players operation @s map.xp -= @s map.max_xp
#new max xp calculations
scoreboard players operation d.0 map.max_xp = @s map.max_xp
scoreboard players operation d.0 map.max_xp *= const.25 map.d
scoreboard players operation d.0 map.max_xp /= const.10 map.d
scoreboard players operation d.0 map.d = @s map.level
scoreboard players operation d.0 map.d *= const.10 map.d
scoreboard players operation d.0 map.max_xp += d.0 map.d
scoreboard players operation @s map.max_xp = d.0 map.max_xp
#new if xp >= max_xp, level up again
function map:player/events/levelling/effects
execute if score @s map.xp >= @s map.max_xp run function map:player/events/levelling/levelup