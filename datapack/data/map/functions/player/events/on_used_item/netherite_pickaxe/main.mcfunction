scoreboard players operation d.3 map.d = @s map.id
execute store result score d.1 map.d run data get entity @s Rotation[0] 100
function map:player/stats/get/get_items
function map:player/stats/mining_speed/get
execute as @e[type=item,predicate=map:entity/block_drop] at @s run function map:entity/block_drop/main
scoreboard players reset @s use_nether_pick