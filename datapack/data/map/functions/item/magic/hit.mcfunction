summon area_effect_cloud ~ ~1 ~ {Tags:["map.entity.aec.apply_effect"],ReapplicationDelay:0,Radius:.1f,Duration:20,DurationOnUse:-10,Age:0,WaitTime:0,Effects:[{Id:6b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
execute as @e[type=area_effect_cloud,tag=!map.entity.aec.apply_effect.setup,tag=map.entity.aec.apply_effect,limit=1] run function map:item/magic/aec_setup
tag @s add map.entity.raycast.hit
scoreboard players set .hit map.d 0