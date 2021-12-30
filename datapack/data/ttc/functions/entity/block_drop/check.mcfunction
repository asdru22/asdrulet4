data modify storage mdata root.temp.block_broken set from entity @s Item.tag.base.block_drop
execute if entity @a[tag=ttc.player.block_breaking] run function ttc:entity/block_drop/ignore
execute if entity @a[tag=!ttc.player.block_breaking] run function ttc:entity/block_drop/main