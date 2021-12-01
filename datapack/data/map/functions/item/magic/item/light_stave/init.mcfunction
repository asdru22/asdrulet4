scoreboard players set d.1 map.d 60
scoreboard players set .hit map.d 1
function map:item/magic/item/light_stave/cast
scoreboard players set d.1 map.d 60
scoreboard players set .hit map.d 1
execute rotated ~-5 ~ run function map:item/magic/item/light_stave/aux_cast
scoreboard players set d.1 map.d 60
scoreboard players set .hit map.d 1
execute rotated ~5 ~ run function map:item/magic/item/light_stave/aux_cast