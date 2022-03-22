execute if entity @s[predicate=ttc:player/on_fire] run function ttc:effects/on_fire/main
scoreboard players remove @s[scores={ttc.ability_cooldown=1..}] ttc.ability_cooldown 1
