title @s actionbar ""
stopsound @s * block.chest.locked
scoreboard players set d.0 ttc.d 20
function ttc:block/locked/cast
advancement revoke @s only ttc:technical/block/locked