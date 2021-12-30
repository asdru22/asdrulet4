scoreboard players remove @s stat.mana 50
scoreboard players operation .id ttc.d = @s ttc.id
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^0.5 {Tags:["ttc.entity.trig"]}
execute positioned ~ ~.7 ~ positioned ^ ^ ^.5 run function ttc:item/custom/melee/frostspark_blade/summon_particle

kill @e[type=marker,tag=ttc.entity.trig]

tag @s add ttc.ability.frostspark_blade
tag @s add ttc.ability
item modify entity @s weapon.mainhand ttc:custom/frostspark_blade

execute positioned ~ ~1 ~ run particle minecraft:item diamond_sword{CustomModelData:4} ^ ^ ^.25 0.2 0.2 .2 0 10