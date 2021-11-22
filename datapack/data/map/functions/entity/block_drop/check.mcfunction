data modify storage mdata root.temp.block_broken set from entity @s Item.tag.base.block_drop
execute if entity @a[tag=map.player.block_breaking] run function map:entity/block_drop/ignore
execute if entity @a[tag=!map.player.block_breaking] run function map:entity/block_drop/main