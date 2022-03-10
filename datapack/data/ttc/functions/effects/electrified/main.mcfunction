scoreboard players operation d.1 ttc.d = @s ttc.max_health
scoreboard players operation d.1 ttc.d /= const.100 ttc.d
execute if score d.1 ttc.d matches 0 run scoreboard players set d.1 ttc.d 1
scoreboard players operation @s ttc.stat.health -= d.1 ttc.d
function ttc:player/displays/effects/electrified
execute if score @s[type=player] ttc.stat.health matches ..0 run function ttc:player/events/actions/on_death/main
execute if score @s[type=!player] ttc.stat.health matches ..0 run function ttc:entity/mob/on_death

scoreboard players set @s ttc.regen.delay 10
execute if predicate ttc:technical/rng/20 anchored eyes if entity @e[type=#ttc:mobs,distance=..5,nbt=!{Invulnerable:1b}] facing entity @e[type=#ttc:mobs,distance=0.1..5,nbt=!{Invulnerable:1b},limit=1,sort=random] eyes run function ttc:effects/electrified/attempt_cast
execute if entity @s[type=!player] run function ttc:entity/mob/update_hp_display

effect give @s[type=!#ttc:undead] instant_damage 1 0 true
effect give @s[type=#ttc:undead] instant_health 1 0 false