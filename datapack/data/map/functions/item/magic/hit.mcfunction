effect give @s[type=#map:undead] instant_health 1 30 true
effect give @s[type=!#map:undead] instant_damage 1 30 true
tag @s add map.entity.raycast.hit
scoreboard players set .hit map.d 0
scoreboard players set magic.triggered map.d 1
advancement grant @a[scores={use_coas=1..}] only map:technical/player/on_hit magic_hit
function map:entity/mob/when_hit
scoreboard players reset magic.triggered map.d

## SPECIAL HIT EFFECTS