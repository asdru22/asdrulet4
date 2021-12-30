scoreboard players add @s ttc.level 1
scoreboard players operation @s ttc.xp -= @s ttc.max_xp
#new max xp calculations
scoreboard players operation d.0 ttc.max_xp = @s ttc.max_xp
scoreboard players operation d.0 ttc.max_xp *= const.25 ttc.d
scoreboard players operation d.0 ttc.max_xp /= const.10 ttc.d
scoreboard players operation d.0 ttc.d = @s ttc.level
scoreboard players operation d.0 ttc.d *= const.10 ttc.d
scoreboard players operation d.0 ttc.max_xp += d.0 ttc.d
scoreboard players operation @s ttc.max_xp = d.0 ttc.max_xp
#new if xp >= max_xp, level up again
function ttc:player/events/levelling/effects
execute if score @s ttc.xp >= @s ttc.max_xp run function ttc:player/events/levelling/levelup