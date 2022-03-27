execute if entity @s[predicate=ttc:player/on_fire] run function ttc:effects/on_fire/main
scoreboard players remove @s[scores={ttc.ability_cooldown=1..}] ttc.ability_cooldown 1

execute if entity @s[scores={ttc.t=-2147483648..-1}] run function ttc:player/events/trigger/main
execute if entity @s[scores={ttc.t=1..2147483647}] run function ttc:player/events/trigger/main