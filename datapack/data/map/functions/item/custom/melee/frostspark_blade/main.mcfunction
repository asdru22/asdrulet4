scoreboard players remove @s stat.mana 50
scoreboard players operation .id map.d = @s map.id
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^0.5 {Tags:["map.entity.trig"]}
execute positioned ~ ~.7 ~ positioned ^ ^ ^.5 run function map:item/custom/melee/frostspark_blade/summon_particle

kill @e[type=marker,tag=map.entity.trig]

tag @s add map.ability.frostspark_blade
tag @s add map.ability
item modify entity @s weapon.mainhand map:custom/frostspark_blade