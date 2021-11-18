title @s actionbar ""
stopsound @s * block.chest.locked
scoreboard players set d.0 map.d 20
function map:block/locked/cast
advancement revoke @s only map:technical/block/locked