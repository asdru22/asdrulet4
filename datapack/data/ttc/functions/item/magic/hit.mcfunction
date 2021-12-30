effect give @s[type=#ttc:undead] instant_health 1 30 true
effect give @s[type=!#ttc:undead] instant_damage 1 30 true
tag @s add ttc.entity.raycast.hit
scoreboard players set .hit ttc.d 0
scoreboard players set magic.triggered ttc.d 1
advancement grant @a[scores={ttc.use_coas=1..}] only ttc:technical/player/on_hit magic_hit
function ttc:entity/mob/when_hit
scoreboard players reset magic.triggered ttc.d

## SPECIAL HIT EFFECTS