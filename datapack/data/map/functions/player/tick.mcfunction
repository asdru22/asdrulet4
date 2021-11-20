title @s actionbar ["health: ",{"score":{"name":"@s","objective":"stat.health"}},{"text":"/"},{"score":{"name":"@s","objective":"max_health"}},{"text":"   defense: "},{"score":{"name":"@s","objective":"stat.defense"}},"     ","mana: ",{"score":{"name":"@s","objective":"stat.mana"}},{"text":"/"},{"score":{"name":"@s","objective":"max_mana"}}]
execute store result score @s using_slot run data get entity @s SelectedItemSlot
execute unless score @s using_slot = @s p_using_slot run function map:player/events/key_inputs/scroll/main
execute if entity @s[scores={use_crossbow=1..}] run function map:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_bow=1..}] run function map:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_trident=1..}] run function map:player/events/on_used_item/ranged_weapon/main