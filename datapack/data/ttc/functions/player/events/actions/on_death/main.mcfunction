title @s title "YOU DIED!"
scoreboard players operation @s ttc.stat.health = @s ttc.health.base
function ttc:player/displays/healthbar
effect give @s saturation 100000 10 true