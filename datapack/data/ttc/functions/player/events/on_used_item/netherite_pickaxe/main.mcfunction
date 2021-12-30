scoreboard players operation d.3 ttc.d = @s ttc.id
execute store result score d.1 ttc.d run data get entity @s Rotation[0] 100
function ttc:player/stats/get/get_items
function ttc:player/stats/mining_speed/get
execute as @e[type=item,predicate=ttc:entity/block_drop] at @s run function ttc:entity/block_drop/check
tag @s add ttc.player.block_breaking
scoreboard players reset @s use_nether_pick