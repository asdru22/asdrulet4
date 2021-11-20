function map:player/displays/actionbar/main
execute store result score @s using_slot run data get entity @s SelectedItemSlot
execute unless score @s using_slot = @s p_using_slot run function map:player/events/key_inputs/scroll/main
execute if entity @s[scores={use_crossbow=1..}] run function map:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_bow=1..}] run function map:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_trident=1..}] run function map:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={use_nether_pick=1..}] run function map:player/events/on_used_item/netherite_pickaxe/main
