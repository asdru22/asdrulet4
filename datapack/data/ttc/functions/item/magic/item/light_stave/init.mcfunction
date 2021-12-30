scoreboard players set d.1 ttc.d 60
scoreboard players set .hit ttc.d 1
function ttc:item/magic/item/light_stave/cast
scoreboard players set d.1 ttc.d 60
scoreboard players set .hit ttc.d 1
execute rotated ~-5 ~ run function ttc:item/magic/item/light_stave/aux_cast
scoreboard players set d.1 ttc.d 60
scoreboard players set .hit ttc.d 1
execute rotated ~5 ~ run function ttc:item/magic/item/light_stave/aux_cast