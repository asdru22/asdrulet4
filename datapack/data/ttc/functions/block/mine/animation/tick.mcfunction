execute store result score d.1 ttc.d run data get entity @s Pose.RightArm[0] 1

execute if entity @s[tag=ttc.entity.block_breaking.animation.rise] run function ttc:block/mine/animation/rise
execute if entity @s[tag=ttc.entity.block_breaking.animation.descent] run function ttc:block/mine/animation/descent

execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get d.1 ttc.d